#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require_relative "lib/resources"

LIMIT = 20

# Renders a markdown link when a resource URL is available.
def markdown_link(item)
  url = item["url"].to_s
  return item["name"] if url.empty?

  "[#{item['name']}](#{url})"
end

# Keeps table cells compact and safe for markdown rendering.
def cell(value)
  value.to_s.gsub("|", "/").gsub(/\s+/, " ").strip
end

# Selects recommended resources first, then fills with high-readiness entries.
def flagship_resources(resources)
  resources
    .select { |item| AgentWorlds.content_evidence?(item) }
    .sort_by do |item|
      rank = item["recommended_rank"] || 999
      [rank, -AgentWorlds.readiness_score(item), item["name"]]
    end
    .first(LIMIT)
end

resources = AgentWorlds.load_resources
selected = flagship_resources(resources)
out_path = File.join(AgentWorlds::ROOT, "docs", "flagship-matrix.md")

lines = []
lines << "# Flagship Matrix"
lines << ""
lines << "A compact decision matrix for the most important Agent World resources."
lines << ""
lines << "_Generated from `others/data/resources.yaml` at source hash `#{AgentWorlds.source_hash}`._"
lines << ""
lines << "Selection prioritizes explicit `recommended_rank` metadata, then readiness"
lines << "score. Use this matrix to choose starter resources before reading the full"
lines << "resource index."
lines << ""
lines << "| Resource | Surface | Score | Verifier | Trajectory | Reset | Sandbox | Training | Why it matters |"
lines << "| --- | --- | ---: | --- | --- | --- | --- | --- | --- |"

selected.each do |item|
  lines << [
    markdown_link(item),
    item["canonical_category"].to_s.tr("-", " "),
    "#{AgentWorlds.readiness_score(item)}/14",
    cell(item["verifier_family"]),
    cell(item["trajectory_availability"]),
    cell(item["reset_support"]),
    cell(item["sandbox"]),
    cell(item["trainability_status"]),
    cell(item["why_it_matters"] || item["notes"])
  ].join(" | ").then { |row| "| #{row} |" }
end

lines << ""
lines << "## Reading Notes"
lines << ""
lines << "1. High score means stronger world readiness, not broader scientific impact."
lines << "2. Product signals are included when they show frontier direction, even if"
lines << "   their trajectories or sandboxes are private."
lines << "3. Use `resource-index.md` for the complete list and lost-point details."

FileUtils.mkdir_p(File.dirname(out_path))
File.write(out_path, lines.join("\n"))
puts "Wrote #{out_path}"
