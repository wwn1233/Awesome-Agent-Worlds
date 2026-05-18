#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "maturity-model.md")

errors = []
errors << "missing maturity model" unless File.exist?(PATH)

if File.exist?(PATH)
  doc = File.read(PATH)

  [
    "It is not a community standard",
    "AWML-0",
    "AWML-1",
    "AWML-2",
    "AWML-3",
    "AWML-4",
    "AWML-5",
    "## Relationship To Readiness Score",
    "## Integrity Requirement",
    "evaluator must be isolated"
  ].each do |marker|
    errors << "maturity model missing #{marker}" unless doc.include?(marker)
  end
end

if errors.any?
  warn "Maturity model validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated maturity model."
