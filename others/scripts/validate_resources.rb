#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "lib/resources"

resources = AgentWorlds.load_resources

names = Set.new
normalized_names = {}
ids = Set.new
normalized_ids = {}
ranks = {}
errors = []

FLAGSHIP_REQUIRED_FIELDS = %w[
  canonical_category verifier_family trajectory_availability reset_support
  sandbox trainability_status sources why_it_matters
].freeze

COUNT_FIELDS = %w[
  task_count instance_count scenario_count safety_moment_count
  competition_count api_count paper_count app_count app_count_min
  trajectory_count trajectory_total num_trajectories trajectories_count
].freeze

unless resources.is_a?(Array)
  warn "Resource validation failed: top-level YAML must be a list."
  exit 1
end

resources.each_with_index do |item, index|
  label = item["name"] || "resource ##{index + 1}"
  missing = AgentWorlds::REQUIRED_FIELDS.reject { |key| item.key?(key) }
  errors << "#{label}: missing #{missing.join(', ')}" unless missing.empty?

  name = item["name"]
  errors << "#{label}: duplicate name" if name && names.include?(name)
  names << name if name
  normalized_name = name.to_s.downcase.gsub(/\s+/, " ").strip
  if normalized_name != "" && normalized_names.key?(normalized_name)
    errors << "#{label}: normalized duplicate name also used by #{normalized_names[normalized_name]}"
  end
  normalized_names[normalized_name] = label if normalized_name != ""

  id = item["id"]
  errors << "#{label}: duplicate id #{id.inspect}" if id && ids.include?(id)
  ids << id if id
  normalized_id = id.to_s.downcase.strip
  if normalized_id != "" && normalized_ids.key?(normalized_id)
    errors << "#{label}: normalized duplicate id also used by #{normalized_ids[normalized_id]}"
  end
  normalized_ids[normalized_id] = label if normalized_id != ""

  if item.key?("recommended_rank")
    rank = item["recommended_rank"]
    if !rank.is_a?(Integer) || rank <= 0
      errors << "#{label}: recommended_rank must be a positive integer"
    elsif ranks.key?(rank)
      errors << "#{label}: duplicate recommended_rank #{rank} also used by #{ranks[rank]}"
    else
      ranks[rank] = label
    end
  end

  category = item["category"]
  unless AgentWorlds::CATEGORIES.include?(category)
    errors << "#{label}: unknown category #{category.inspect}"
  end

  canonical_category = item["canonical_category"]
  unless AgentWorlds::CANONICAL_CATEGORIES.include?(canonical_category)
    errors << "#{label}: unknown canonical category #{canonical_category.inspect}"
  end

  kind = item["resource_kind"]
  errors << "#{label}: unknown resource kind #{kind.inspect}" unless AgentWorlds::RESOURCE_KINDS.include?(kind)

  status = item["status"]
  errors << "#{label}: unknown status #{status.inspect}" unless AgentWorlds::RESOURCE_STATUSES.include?(status)

  reproducibility = item["reproducibility"]
  unless AgentWorlds::REPRODUCIBILITY_VALUES.include?(reproducibility)
    errors << "#{label}: unknown reproducibility #{reproducibility.inspect}"
  end

  access = item["access"]
  errors << "#{label}: unknown access #{access.inspect}" unless AgentWorlds::ACCESS_VALUES.include?(access)

  evidence_type = item["evidence_type"]
  unless AgentWorlds::EVIDENCE_TYPES.include?(evidence_type)
    errors << "#{label}: unknown evidence type #{evidence_type.inspect}"
  end

  COUNT_FIELDS.each do |field|
    next unless item.key?(field)

    value = item[field]
    unless value.is_a?(Integer) && value.positive?
      errors << "#{label}: #{field} must be a positive integer"
    end
  end

  trajectory = item["trajectory_availability"]
  unless AgentWorlds::TRAJECTORY_AVAILABILITY.include?(trajectory)
    errors << "#{label}: unknown trajectory availability #{trajectory.inspect}"
  end

  reset = item["reset_support"]
  errors << "#{label}: unknown reset support #{reset.inspect}" unless AgentWorlds::RESET_SUPPORT.include?(reset)

  trainability = item["trainability_status"]
  unless AgentWorlds::TRAINABILITY_STATUS.include?(trainability)
    errors << "#{label}: unknown trainability status #{trainability.inspect}"
  end

  sources = item["sources"]
  if !sources.is_a?(Array) || sources.empty?
    errors << "#{label}: sources must be a non-empty list"
  elsif sources.any? { |source| source["url"].to_s.empty? || source["type"].to_s.empty? }
    errors << "#{label}: each source needs url and type"
  end

  if item["recommended_rank"].is_a?(Numeric) && item["recommended_rank"] <= 20
    FLAGSHIP_REQUIRED_FIELDS.each do |field|
      value = item[field]
      missing = value.nil? || value == "" || (value.respond_to?(:empty?) && value.empty?)
      errors << "#{label}: flagship resource missing #{field}" if missing
    end

    if AgentWorlds.primary_source_confidence(item) == "missing"
      errors << "#{label}: flagship resource missing source confidence"
    end
  end

  errors << "#{label}: content_evidence must be boolean" unless [true, false].include?(item["content_evidence"])
  errors << "#{label}: reader_paths must be a list" unless item["reader_paths"].is_a?(Array)
  if item["reader_paths"].is_a?(Array)
    item["reader_paths"].each do |path|
      errors << "#{label}: unknown reader path #{path.inspect}" unless AgentWorlds::READER_PATHS.include?(path)
    end
  end
end

if ranks.any? && ranks.keys.sort != (1..ranks.length).to_a
  errors << "recommended_rank values must be contiguous from 1 to #{ranks.length}"
end

if errors.any?
  warn "Resource validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated #{resources.length} resources across #{resources.map { |item| item['category'] }.uniq.length} categories."
