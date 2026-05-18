#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "production-signals.md")

errors = []
errors << "missing production signals doc" unless File.exist?(PATH)

if File.exist?(PATH)
  doc = File.read(PATH)

  [
    "## Public Hook",
    "## First-Party Signals",
    "## Signal Classes",
    "Closed product signal",
    "not reproducible public Agent Worlds",
    "Public artifact",
    "Safety control",
    "OpenAI Codex safety controls",
    "PhoneSafety-style benchmarks",
    "permission, sandbox, approval, and harmful-action boundaries",
    "Protocol or interface",
    "Training infrastructure",
    "Use directionally; do not infer public trajectories",
    "## Watch Criteria"
  ].each do |marker|
    errors << "production signals doc missing #{marker}" unless doc.include?(marker)
  end
end

if errors.any?
  warn "Production signals validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated production signals."
