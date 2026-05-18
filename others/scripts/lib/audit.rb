# frozen_string_literal: true

require_relative "resources"

module AgentWorlds
  module Audit
    REVIEW_URL_PATTERNS = [
      "huggingface.co/papers",
      "openai.com/index/why-we-no-longer",
      "lrc.perdanauniversity.edu.my"
    ].freeze

    module_function

    def source_confidence(item)
      normalized = AgentWorlds.primary_source_confidence(item)
      return normalized unless normalized == "missing"

      return "high" unless item["repo"].to_s.empty?
      return "review" if REVIEW_URL_PATTERNS.any? { |pattern| item["url"].to_s.include?(pattern) }
      return "medium" unless item["url"].to_s.empty?

      "missing"
    end

    def strictness_labels(item)
      labels = []
      score = AgentWorlds.readiness_score(item)
      kind = item["resource_kind"].to_s

      labels << "excluded-reference" unless AgentWorlds.content_evidence?(item)
      labels << kind.tr("_", "-") unless kind.empty?
      labels << "closed-product" if closed_product?(item)
      labels << "eval-only" if AgentWorlds.world_like?(item) && (score < 9 || AgentWorlds.normalize(item["trainable"]) == "no")
      labels << "paper-only" if paper_only?(item)
      labels << "no-public-repo" if item["repo"].to_s.empty? && AgentWorlds.content_evidence?(item)
      labels.concat(trajectory_labels(item))
      labels << "reset-unclear" if reset_unclear?(item)
      labels << "judge-risk" if judge_risk?(item)
      labels << "source-check" if source_confidence(item) == "medium"
      labels << "training-ready" if score >= 9
      labels << "production-grade" if score >= 13

      labels.uniq
    end

    def curation_priority(item)
      labels = strictness_labels(item)
      score = AgentWorlds.readiness_score(item)
      priority = 0

      priority += 4 if labels.include?("paper-only")
      priority += 3 if labels.include?("no-public-repo")
      priority += 3 if source_confidence(item) == "medium"
      priority += 2 if labels.include?("closed-product")
      priority += 2 if labels.include?("reset-unclear")
      priority += 1 if labels.include?("no-public-trajectories")
      priority += 1 if score >= 9

      priority
    end

    def closed_product?(item)
      item["resource_kind"] == "closed_product_signal"
    end

    def paper_only?(item)
      item["repo"].to_s.empty? && item["url"].to_s.include?("huggingface.co/papers")
    end

    def reset_unclear?(item)
      return true if item["reset_support"] == "none" && AgentWorlds.world_like?(item)

      reset = AgentWorlds.normalize(item["resettable"])
      %w[
        unknown
        n/a
        client_loop
        client_managed
        product_dependent
        task_dependent
        environment_dependent
        website_dependent
        benchmark_dependent
      ].include?(reset)
    end

    def judge_risk?(item)
      return true if item["verifier_family"] == "judge"

      verifier = AgentWorlds.normalize(item["verifier"])
      reward = AgentWorlds.normalize(item["reward_type"])
      verifier.include?("judge") || verifier.include?("human") || reward.include?("rubric")
    end

    def trajectory_labels(item)
      case item["trajectory_availability"]
      when "public" then ["public-trajectories"]
      when "partial" then ["partial-trajectories"]
      when "synthetic" then ["synthetic-trajectories"]
      when "private_telemetry" then ["private-telemetry"]
      when "not_applicable" then []
      else
        AgentWorlds.world_like?(item) ? ["no-public-trajectories"] : []
      end
    end
  end
end
