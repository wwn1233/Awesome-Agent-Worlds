#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "CHANGELOG.md")

errors = []
errors << "missing changelog" unless File.exist?(PATH)

if File.exist?(PATH)
  changelog = File.read(PATH)

  [
    "## 2026-05-17",
    "CITATION.cff",
    "generated flagship matrix",
    "scheduled hot-paper refresh workflow",
    "release-check workflow",
    "pull request template",
    "field grammar",
    "World Surface Map",
    "structured scale signals",
    "validators"
  ].each do |marker|
    errors << "changelog missing #{marker}" unless changelog.include?(marker)
  end
end

if errors.any?
  warn "Changelog validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated changelog."
