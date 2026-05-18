#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
PATH = File.join(ROOT, "others", "docs", "reward-atlas.md")

errors = []
errors << "missing reward atlas" unless File.exist?(PATH)

if File.exist?(PATH)
  atlas = File.read(PATH)

  [
    "## Reward Families",
    "## Verifier Families",
    "## Training Use Mapping",
    "SFT",
    "RLVR",
    "Audit",
    "Release gate",
    "## Failure Modes",
    "## Training Readiness Checklist",
    "Prefer verifiers that inspect world state after actions"
  ].each do |marker|
    errors << "reward atlas missing #{marker}" unless atlas.include?(marker)
  end
end

if errors.any?
  warn "Reward atlas validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated reward atlas."
