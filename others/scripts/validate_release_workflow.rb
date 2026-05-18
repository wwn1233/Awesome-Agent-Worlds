#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

ROOT = File.expand_path("../..", __dir__)
WORKFLOW_PATH = File.join(ROOT, ".github", "workflows", "release-checks.yml")

errors = []
errors << "missing release-checks workflow" unless File.exist?(WORKFLOW_PATH)

if File.exist?(WORKFLOW_PATH)
  workflow = YAML.load_file(WORKFLOW_PATH)
  triggers = workflow["on"] || workflow[true] || {}
  steps = workflow.dig("jobs", "validate", "steps") || []
  runs = steps.map { |step| step["run"].to_s }.join("\n")
  uses = steps.map { |step| step["uses"].to_s }.join("\n")

  %w[push pull_request workflow_dispatch].each do |trigger|
    errors << "workflow missing #{trigger} trigger" unless triggers.key?(trigger)
  end

  errors << "workflow must be read-only" unless workflow.dig("permissions", "contents") == "read"
  errors << "workflow must use checkout" unless uses.include?("actions/checkout@v4")
  errors << "workflow must set up Ruby" unless uses.include?("ruby/setup-ruby@v1")
  errors << "workflow must install ripgrep" unless runs.include?("ripgrep")
  errors << "workflow must run release checks" unless runs.include?("ruby others/scripts/run_release_checks.rb")
end

if errors.any?
  warn "Release workflow validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated release-checks workflow."
