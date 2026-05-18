#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "key-concepts.md")

errors = []
errors << "missing key concepts" unless File.exist?(PATH)

if File.exist?(PATH)
  doc = File.read(PATH)

  [
    "## Core Definition",
    "Agent World = executable/resettable task environment",
    "## Evidence Axes",
    "## Readiness Score",
    "14-point readiness score",
    "## Reward Families",
    "## Trajectory Value",
    "## Failure Modes",
    "## Verifier Integrity",
    "Answer leakage",
    "Evaluator tampering",
    "Reward hacking",
    "Contamination",
    "Judge drift",
    "Safety leakage",
    "negative_side_effect_checks"
  ].each do |marker|
    errors << "key concepts missing #{marker}" unless doc.include?(marker)
  end
end

if errors.any?
  warn "Key concepts validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated key concepts."
