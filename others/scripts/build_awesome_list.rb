#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require_relative "lib/audit"

resources = AgentWorlds.load_resources.select { |item| AgentWorlds.content_evidence?(item) }
out_path = File.join(AgentWorlds::ROOT, "docs", "awesome-list.md")

SECTIONS = [
  {
    title: "Agent Infrastructure and Protocols",
    categories: %w[agent-infrastructure],
    description: "Core protocols, memory layers, tool interfaces, and agent-system infrastructure that make worlds composable across products."
  },
  {
    title: "Computer and GUI Worlds",
    categories: %w[computer-world gui-world],
    description: "Desktop and graphical-interface environments where agents observe pixels or UI state and act through mouse, keyboard, or grounded actions."
  },
  {
    title: "Web Worlds",
    categories: %w[web-world],
    description: "Browser-based worlds with websites, DOM state, navigation, forms, and functional verifiers for realistic web tasks."
  },
  {
    title: "Mobile Worlds",
    categories: %w[mobile-world],
    description: "Phone and app environments where agents interact through taps, typing, app state, and emulator-backed reset loops."
  },
  {
    title: "Code, Terminal, and Software Worlds",
    categories: %w[code-world],
    description: "Repository, terminal, and software-engineering worlds where patches, tests, commands, and artifacts define success."
  },
  {
    title: "Tool and API Worlds",
    categories: %w[api-world],
    description: "Structured tool-use and API environments that turn business processes into executable state transitions and policy checks."
  },
  {
    title: "Research and Knowledge-Work Worlds",
    categories: %w[research-world],
    description: "Long-horizon research, analysis, and knowledge-work tasks where execution traces, evidence, and rubrics matter as much as final answers."
  },
  {
    title: "Embodied and Generative Worlds",
    categories: %w[embodied-world generative-3d-world],
    description: "Robotics, simulation, 3D, game, and generative environments that provide richer state spaces for embodied or multimodal agents."
  },
  {
    title: "Training, Rewards, and Post-Training Infrastructure",
    categories: %w[training-framework],
    description: "Frameworks and pipelines that convert rollouts, verifier reports, and rewards into SFT, RL, RLVR, or release-gating workflows."
  }
].freeze

def compact_signal(item)
  return "Closed product" if item["resource_kind"] == "closed_product_signal"
  return "Protocol" if item["resource_kind"] == "protocol"
  return "Infrastructure" if item["resource_kind"] == "agent_infrastructure"
  return "Public trajectories" if AgentWorlds.public_trajectory?(item)
  return "Synthetic trajectories" if item["trajectory_availability"] == "synthetic"
  return "Private telemetry" if item["trajectory_availability"] == "private_telemetry"
  return "Partial trajectories" if item["trajectory_availability"] == "partial"
  return "Runnable" if item["reproducibility"] == "public_runnable"
  return "Dataset" if item["reproducibility"] == "public_dataset"
  return "Policy spec" if item["reproducibility"] == "policy_spec"
  return "Protocol spec" if item["reproducibility"] == "protocol_spec"
  return "Sandbox" if AgentWorlds.normalize(item["sandbox"]) != "n/a"

  "Reference"
end

# Renders one resource in the Awesome-style grammar: source link, optional code
# link, then compact readiness and signal text.
def entry(item)
  has_repo = !item["repo"].to_s.empty?
  star = has_repo ? "🌟 " : ""
  repo = has_repo ? " [[Code](#{item['repo']})]" : ""
  score = AgentWorlds.readiness_score(item)
  label = AgentWorlds.display_label(item).split.map(&:capitalize).join(" ")
  suffix = [label, compact_signal(item)].uniq.join(" · ")

  "- #{star}[#{item['name']}](#{item['url']})#{repo} — #{suffix}"
end

lines = []
lines << "# Awesome Agent Worlds"
lines << ""
lines << "A curated reading list of environments, benchmarks, verifiers, sandboxes,"
lines << "trajectories, and training loops for LLM/VLM agents."
lines << ""
lines << "_Generated from `others/data/resources.yaml` at source hash `#{AgentWorlds.source_hash}`._"
lines << ""
lines << "Resources with public repositories are marked with 🌟. Entries use inline"
lines << "`[[Code](https://example.com/repo)]` links when verified repositories are available."
lines << ""

SECTIONS.each do |section|
  title = section.fetch(:title)
  categories = section.fetch(:categories)
  items = resources.select { |item| categories.include?(item["canonical_category"]) }
  lines << "## #{title}"
  lines << ""
  lines << "> #{section.fetch(:description)}"
  lines << ""

  if items.empty?
    lines << "- No retained resources after metadata review."
    lines << ""
    next
  end

  items.group_by { |item| item["year"] }
       .sort_by { |year, _| -year.to_i }
       .each do |year, year_items|
    lines << "### #{year}"
    year_items.sort_by { |item| item["name"] }.each do |item|
      lines << entry(item)
    end
  end
end

FileUtils.mkdir_p(File.dirname(out_path))
File.write(out_path, lines.join("\n"))
puts "Wrote #{out_path}"
