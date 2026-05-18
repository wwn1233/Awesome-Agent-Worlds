#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "reading-order.md")

errors = []
errors << "missing reading order" unless File.exist?(PATH)

if File.exist?(PATH)
  order = File.read(PATH)

  [
    "## If You Only Read Five",
    "## Fast Routes",
    "15 minutes",
    "Building this week",
    "## By Reader Goal",
    "Audit agent safety",
    "PhoneSafety",
    "MyPhoneBench",
    "CUAHarm",
    "RiOSWorld",
    "CORA / Phone-Harm",
    "OS-Harm",
    "OS-BLIND",
    "AgentHazard",
    "LPS-Bench",
    "MCP-SafetyBench",
    "MCPSecBench",
    "## Four-Level Curriculum",
    "## How to Take Notes",
    "others/data/resources.yaml"
  ].each do |marker|
    errors << "reading order missing #{marker}" unless order.include?(marker)
  end
end

if errors.any?
  warn "Reading order validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated reading order."
