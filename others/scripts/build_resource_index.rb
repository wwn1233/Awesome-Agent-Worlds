#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require_relative "lib/audit"

all_resources = AgentWorlds.load_resources
resources = all_resources.select { |item| AgentWorlds.content_evidence?(item) }
out_path = File.join(AgentWorlds::ROOT, "docs", "resource-index.md")

def markdown_link(item)
  url = item["url"]
  return item["name"] if url.nil? || url.to_s.empty?

  "[#{item['name']}](#{url})"
end

def first_metadata_value(item, keys)
  keys.map { |key| item[key] }.find { |value| !value.nil? && value != "" }.to_s
end

def table_row(item)
  score = AgentWorlds.readiness_score(item)
  [
    markdown_link(item),
    item["resource_kind"].tr("_", " "),
    item["year"],
    "#{score}/14",
    AgentWorlds.display_label(item),
    item["runtime_host"],
    item["verifier_family"],
    AgentWorlds.scale_value(item),
    item["trajectory_availability"],
    first_metadata_value(item, %w[trajectory_count trajectory_total num_trajectories trajectories_count]),
    item["reset_support"],
    AgentWorlds::Audit.source_confidence(item),
    AgentWorlds.lost_points(item).join(", ")
  ].join(" | ")
end

categories = resources.group_by { |item| item["canonical_category"] }.sort.to_h
scores = resources.map { |item| AgentWorlds.readiness_score(item) }

lines = []
lines << "# Resource Index"
lines << ""
lines << "A compact readiness index for comparing Agent Worlds by runtime,"
lines << "verifier, reset support, trajectory availability, trainability, sandboxing,"
lines << "and production signal."
lines << ""
lines << "_Generated from `others/data/resources.yaml` at source hash `#{AgentWorlds.source_hash}`._"
lines << ""
lines << "## Summary"
lines << ""
lines << "- Content resources: #{resources.length}"
lines << "- Categories: #{categories.length}"
lines << "- Average readiness score: #{(scores.sum.to_f / scores.length).round(1)}/14"
lines << "- Resources with readiness score >=9: #{scores.count { |score| score >= 9 }}"
lines << "- Production-grade candidates: #{resources.count { |item| AgentWorlds.display_label(item) == 'production-grade' }}"
lines << ""
lines << "## Score Interpretation"
lines << ""
lines << "| Score | Meaning |"
lines << "| --- | --- |"
lines << "| 0-4 | Reference only |"
lines << "| 5-8 | Evaluation candidate |"
lines << "| 9-12 | Training candidate |"
lines << "| 13-14 | Production-grade world |"
lines << ""
lines << "The score is a heuristic across runtime, verifier, reset, trajectories,"
lines << "trainability, sandbox, and production signal. It is designed to compare"
lines << "world readiness, not to rank scientific merit. Non-world product,"
lines << "protocol, and infrastructure entries keep their resource-kind labels even"
lines << "when they carry strong production signals."
lines << "Scale and trajectory count columns are populated only when structured"
lines << "metadata is available."
lines << ""

categories.each do |category, items|
  lines << "## #{category}"
  lines << ""
  lines << "| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |"
  lines << "| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |"

  items.sort_by { |item| [-AgentWorlds.readiness_score(item), item["name"]] }.each do |item|
    lines << "| #{table_row(item)} |"
  end

  lines << ""
end

FileUtils.mkdir_p(File.dirname(out_path))
File.write(out_path, lines.join("\n"))
puts "Wrote #{out_path}"
