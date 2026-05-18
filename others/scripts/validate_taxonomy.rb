#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "lib/resources"

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "taxonomy.md")

errors = []
errors << "missing taxonomy" unless File.exist?(PATH)

if File.exist?(PATH)
  taxonomy = File.read(PATH)

  [
    "## Field Grammar",
    "| Surface |",
    "| Action loop |",
    "| Verifier |",
    "| Trajectory |",
    "| Governance |",
    "others/data/resources.yaml"
  ].each do |marker|
    errors << "taxonomy missing #{marker}" unless taxonomy.include?(marker)
  end

  AgentWorlds::CATEGORIES.each do |category|
    errors << "taxonomy missing category #{category}" unless taxonomy.include?("`#{category}`")
  end
end

if errors.any?
  warn "Taxonomy validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated taxonomy."
