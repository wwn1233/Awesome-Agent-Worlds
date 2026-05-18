#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "survey.md")
TITLE = "Agent Worlds Survey"
THESIS = "The limiting feedback channel for agents is not more chat transcripts alone."
OLD_THESIS = "The next scaling law for agents is not more chat transcripts."

errors = []
errors << "missing survey doc" unless File.exist?(PATH)

if File.exist?(PATH)
  survey = File.read(PATH)

  [
    "# #{TITLE}",
    "## Executive Thesis",
    "## Frontier-Lab Evidence",
    "## Landscape",
    "## What Makes a Strong Agent World",
    "## Repository Positioning",
    THESIS,
    "action loop, verifier, reward, trajectory, sandbox, and production readiness",
    "OpenAI",
    "Anthropic",
    "Google and Gemini",
    "ByteDance Seed",
    "Tencent Hunyuan",
    "PhoneSafety",
    "MyPhoneBench",
    "OS-Harm",
    "OS-BLIND",
    "AgentHazard",
    "LPS-Bench",
    "Safety and governance worlds"
  ].each do |marker|
    errors << "survey doc missing #{marker}" unless survey.include?(marker)
  end

  errors << "survey doc still uses old scaling-law thesis" if survey.include?(OLD_THESIS)
end

if errors.any?
  warn "Survey doc validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated survey doc."
