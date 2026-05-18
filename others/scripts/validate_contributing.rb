#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "CONTRIBUTING.md")

errors = []
errors << "missing contributing guide" unless File.exist?(PATH)

if File.exist?(PATH)
  guide = File.read(PATH)

  [
    "## What Belongs Here",
    "## What Usually Does Not Belong",
    "## Entry Format",
    "## Metadata Crosswalk",
    "## Review Checklist",
    "others/data/resources.yaml",
    "why_it_matters",
    "sources[].checked_at",
    "sources[].confidence",
    "`overview`",
    "`reproducibility`",
    "`benchmark_design`",
    "`trajectories`",
    "Repository sources must use both `code` and `reproducibility`",
    "`official_announcement`",
    "`paper_or_dataset`",
    "`build-evals`",
    "`production-direction`",
    "ruby others/scripts/run_release_checks.rb"
  ].each do |marker|
    errors << "contributing guide missing #{marker}" unless guide.include?(marker)
  end
end

if errors.any?
  warn "Contributing guide validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated contributing guide."
