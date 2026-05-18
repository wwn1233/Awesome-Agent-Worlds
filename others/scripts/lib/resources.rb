# frozen_string_literal: true

require "yaml"
require_relative "schema"

module AgentWorlds
  ROOT = File.expand_path("../..", __dir__)
  RESOURCE_PATH = File.join(ROOT, "data", "resources.yaml")
  SCALE_FIELDS = [
    ["task_count", "tasks"],
    ["instance_count", "instances"],
    ["scenario_count", "scenarios"],
    ["safety_moment_count", "safety moments"],
    ["competition_count", "competitions"],
    ["api_count", "APIs"],
    ["paper_count", "papers"],
    ["app_count", "apps"],
    ["app_count_min", "apps"]
  ].freeze

  module_function

  def load_resources
    YAML.load_file(RESOURCE_PATH)
  end

  def normalize(value)
    value.to_s.downcase
  end

  def positive?(value)
    value == true || %w[yes true public].include?(normalize(value))
  end

  def content_evidence?(item)
    item["content_evidence"] != false
  end

  def world_like?(item)
    %w[world benchmark dataset].include?(item["resource_kind"])
  end

  def public_trajectory?(item)
    item["trajectory_availability"] == "public" || item["trajectory_public"] == true
  end

  def source_hash
    require "digest"

    Digest::SHA256.file(RESOURCE_PATH).hexdigest[0, 12]
  end

  def format_count(value)
    value.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end

  def scale_value(item)
    SCALE_FIELDS.each_with_object([]) do |(key, label), values|
      value = item[key]
      next if value.nil? || value == ""

      prefix = key.end_with?("_min") ? ">=" : ""
      values << "#{prefix}#{format_count(value)} #{label}"
    end.first(2).join("; ")
  end

  def partial?(value)
    PARTIAL_VALUES.include?(normalize(value))
  end

  def runtime_score(item)
    sandbox = normalize(item["sandbox"])
    return 2 if RUNNABLE_SANDBOXES.include?(sandbox)
    return 1 if sandbox != "" && sandbox != "n/a" && sandbox != "null"

    0
  end

  def verifier_score(item)
    verifier = normalize(item["verifier"])
    return 2 if STRONG_VERIFIER_HINTS.any? { |hint| verifier.include?(hint) }
    return 0 if verifier == "" || verifier == "unknown" || verifier == "external"

    1
  end

  def reset_score(item)
    case item["reset_support"]
    when "episode_reset", "dataset_replay" then return 2
    when "partial", "closed_or_private" then return 1
    when "not_applicable" then return 0
    end

    return 2 if positive?(item["resettable"])
    return 1 if partial?(item["resettable"])

    0
  end

  def trajectory_score(item)
    case item["trajectory_availability"]
    when "public" then return 2
    when "partial", "synthetic", "private_telemetry" then return 1
    when "not_applicable" then return 0
    end

    return 2 if positive?(item["trajectories"])
    return 1 if partial?(item["trajectories"])

    0
  end

  def trainability_score(item)
    case item["trainability_status"]
    when "public_training_ready" then return 2
    when "framework_ready", "private_only" then return 1
    when "not_applicable", "evaluation_only" then return 0
    end

    return 2 if positive?(item["trainable"])
    return 1 if partial?(item["trainable"])

    0
  end

  def sandbox_score(item)
    sandbox = normalize(item["sandbox"])
    return 2 if RUNNABLE_SANDBOXES.include?(sandbox)
    return 0 if sandbox == "" || sandbox == "n/a" || sandbox == "null"

    1
  end

  def production_score(item)
    signal = normalize(item["production_signal"])
    return 0 if signal == "" || signal == "none" || signal == "false"

    2
  end

  def readiness_details(item)
    {
      "runtime" => runtime_score(item),
      "verifier" => verifier_score(item),
      "reset" => reset_score(item),
      "trajectories" => trajectory_score(item),
      "trainability" => trainability_score(item),
      "sandbox" => sandbox_score(item),
      "production" => production_score(item)
    }
  end

  def readiness_score(item)
    readiness_details(item).values.sum
  end

  def readiness_label(score)
    case score
    when 0..4 then "reference"
    when 5..8 then "eval candidate"
    when 9..12 then "training candidate"
    else "production-grade"
    end
  end

  def display_label(item)
    return "excluded reference" unless content_evidence?(item)

    case item["resource_kind"]
    when "agent_infrastructure" then "infrastructure"
    when "closed_product_signal" then "product signal"
    when "model_release" then "model release"
    when "protocol" then "protocol"
    when "safety_control" then "safety control"
    when "training_framework" then "training infrastructure"
    else readiness_label(readiness_score(item))
    end
  end

  def lost_points(item)
    readiness_details(item).each_with_object([]) do |(field, score), points|
      points << "#{field}:#{2 - score}" if score < 2
    end
  end

  def primary_source_confidence(item)
    sources = item["sources"]
    return "missing" unless sources.is_a?(Array) && sources.any?

    sources.map { |source| source["confidence"].to_s }.find { |value| value != "" } || "missing"
  end
end
