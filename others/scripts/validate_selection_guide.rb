#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "selection-guide.md")

errors = []
errors << "missing selection guide" unless File.exist?(PATH)

if File.exist?(PATH)
  guide = File.read(PATH)

  [
    "## Practitioner Decision Tree",
    "## Comparison Matrix",
    "## Reader Starter Packs",
    "## Inclusion Criteria",
    "## When Not To Use an Agent World",
    "Researcher",
    "Evaluation builder",
    "Post-training engineer",
    "Safety auditor",
    "Product lead"
  ].each do |marker|
    errors << "selection guide missing #{marker}" unless guide.include?(marker)
  end

  required_starter_resources = {
    "Researcher" => %w[WebArena OSWorld SWE-bench AppWorld PaperBench],
    "Evaluation builder" => %w[OSWorld-Verified WebArena-Verified BrowserGym AndroidWorld MCPWorld MobileWorld tau-bench],
    "Post-training engineer" => %w[AgentGym AgentGym-RL Agent-World Agent-RLVR GUI-GENESIS Orchard RAGEN VAGEN rLLM Agent\ Lightning],
    "Safety auditor" => ["PhoneSafety", "MyPhoneBench", "SkillSafetyBench", "CUAHarm", "RiOSWorld", "CORA / Phone-Harm", "OS-Harm", "OS-BLIND", "AgentHazard", "LPS-Bench", "MCP-SafetyBench", "MCPSecBench", "MCPTox"],
    "Product lead" => ["OpenAI Agents SDK Sandbox", "Gemini 2.5 Computer Use", "Claude Managed Agents"]
  }

  required_starter_resources.each do |reader, resources|
    row = guide.lines.find { |line| line.start_with?("| #{reader} |") }.to_s
    resources.each do |resource|
      errors << "selection guide #{reader} starter pack missing #{resource}" unless row.include?(resource)
    end
  end
end

if errors.any?
  warn "Selection guide validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated selection guide."
