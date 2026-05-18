#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

ROOT = File.expand_path("../..", __dir__)
WORKFLOW_PATH = File.join(ROOT, ".github", "workflows", "update-hot-papers.yml")
EXPECTED_CRON = "17 2 * * 1"

errors = []
errors << "missing update-hot-papers workflow" unless File.exist?(WORKFLOW_PATH)

if File.exist?(WORKFLOW_PATH)
  workflow = YAML.load_file(WORKFLOW_PATH)
  triggers = workflow["on"] || workflow[true] || {}
  schedule = Array(triggers["schedule"])
  steps = workflow.dig("jobs", "update", "steps") || []
  runs = steps.map { |step| step["run"].to_s }.join("\n")

  unless schedule.any? { |entry| entry["cron"] == EXPECTED_CRON }
    errors << "workflow must run weekly with cron #{EXPECTED_CRON.inspect}"
  end

  errors << "workflow missing manual dispatch" unless triggers.key?("workflow_dispatch")
  unless triggers.dig("workflow_dispatch", "inputs", "days", "default") == "90"
    errors << "workflow dispatch should default to a 90-day window"
  end
  errors << "workflow must write contents" unless workflow.dig("permissions", "contents") == "write"
  errors << "workflow must refresh hot papers" unless runs.include?("ruby others/scripts/update_hot_papers.rb")
  errors << "workflow must rebuild site data" unless runs.include?("ruby others/scripts/build_site_data.rb")
  errors << "workflow must validate hot papers" unless runs.include?("ruby others/scripts/validate_hot_papers.rb")
  errors << "workflow must validate site data" unless runs.include?("ruby others/scripts/validate_site.rb")
  errors << "workflow must include hot-paper archives in commits" unless runs.include?("others/docs/hot-paper-archive-*.md")
  errors << "workflow must commit hot-paper artifacts" unless runs.include?("git commit -m \"chore: update hot papers\"")
end

if errors.any?
  warn "Hot-paper workflow validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated weekly hot-paper workflow."
