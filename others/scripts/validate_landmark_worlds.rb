#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "landmark-worlds.md")
LANDMARKS = [
  "MiniWoB++",
  "WebArena",
  "OSWorld",
  "SWE-bench",
  "PaperBench",
  "AgentGym",
  "Agent Lightning"
].freeze

errors = []
errors << "missing landmark worlds" unless File.exist?(PATH)

if File.exist?(PATH)
  doc = File.read(PATH)

  [
    "# Landmark Agent Worlds",
    "## Emerging 2025-2026 Landmarks",
    "MCPWorld",
    "MobileWorld",
    "MCP-SafetyBench",
    "AgentGym-RL",
    "Genie 3",
    "## Why They Still Matter in 2026",
    "## What These Landmarks Have in Common",
    "## What They Still Do Not Solve",
    "readiness, reset support",
    "trajectory access",
    "verifier family"
  ].each do |marker|
    errors << "landmark worlds missing #{marker}" unless doc.include?(marker)
  end

  LANDMARKS.each do |name|
    errors << "landmark worlds missing #{name}" unless doc.include?(name)
  end
end

if errors.any?
  warn "Landmark worlds validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated landmark worlds."
