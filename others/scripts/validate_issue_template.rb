#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "lib/resources"

ROOT = File.expand_path("../..", __dir__)
TEMPLATE_PATH = File.join(ROOT, ".github", "ISSUE_TEMPLATE", "add-resource.md")

errors = []
errors << "missing add-resource issue template" unless File.exist?(TEMPLATE_PATH)

if File.exist?(TEMPLATE_PATH)
  template = File.read(TEMPLATE_PATH)

  errors << "issue template missing inclusion criteria" unless template.include?("Before submitting")

  %w[other hot_paper_candidate].each do |forbidden|
    errors << "issue template should not include #{forbidden}" if template.include?("- #{forbidden}")
  end

  AgentWorlds::CATEGORIES.each do |category|
    errors << "issue template missing category #{category}" unless template.include?("- #{category}")
  end

  AgentWorlds::RESOURCE_KINDS.each do |kind|
    errors << "issue template missing resource kind #{kind}" unless template.include?("- #{kind}")
  end

  [
    "Runnable environment",
    "Verifier/reward",
    "Reset/replay support",
    "Trajectories/logs",
    "Training support",
    "Production signal",
    "Primary source",
    "Source support tags",
    "Source checked at",
    "Source confidence"
  ].each do |field|
    errors << "issue template missing evidence field #{field}" unless template.include?("#{field}:")
  end

  AgentWorlds::SOURCE_SUPPORT_TAGS.each do |tag|
    errors << "issue template missing source support tag #{tag}" unless template.include?("`#{tag}`")
  end
end

if errors.any?
  warn "Issue template validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated resource issue template."
