#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "benchmark-landscape.md")

errors = []
errors << "missing benchmark landscape" unless File.exist?(PATH)

if File.exist?(PATH)
  doc = File.read(PATH)

  [
    "## Benchmark Repair and Verified Variants",
    "OSWorld-Verified",
    "WebArena-Verified",
    "SWE-bench Verified",
    "## Safety Benchmarks and Governance Worlds",
    "PhoneSafety",
    "MyPhoneBench",
    "OS-Harm",
    "OS-BLIND",
    "AgentHazard",
    "CUAHarm",
    "RiOSWorld",
    "LPS-Bench",
    "MCP-SafetyBench",
    "MCPSecBench",
    "## Synthetic World Factories and World Models",
    "Verifier-backed synthetic factories",
    "World models and asset generators",
    "HY-World 2.0",
    "## Agent Training Infrastructure",
    "AgentGym-RL",
    "Agent-RLVR",
    "RAGEN",
    "VAGEN"
  ].each do |marker|
    errors << "benchmark landscape missing #{marker}" unless doc.include?(marker)
  end
end

if errors.any?
  warn "Benchmark landscape validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated benchmark landscape."
