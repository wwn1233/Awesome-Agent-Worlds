#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
TEMPLATE_PATH = File.join(ROOT, ".github", "pull_request_template.md")

errors = []
errors << "missing pull request template" unless File.exist?(TEMPLATE_PATH)

if File.exist?(TEMPLATE_PATH)
  template = File.read(TEMPLATE_PATH)

  [
    "Primary source:",
    "Source support tags:",
    "Resource kind:",
    "Agent World surface:",
    "Verifier or reward:",
    "Reset or replay support:",
    "Trajectory access:",
    "Sandbox or safety boundary:",
    "controlled vocabulary",
    "others/data/resources.yaml",
    "ruby others/scripts/run_release_checks.rb"
  ].each do |marker|
    errors << "pull request template missing #{marker}" unless template.include?(marker)
  end
end

if errors.any?
  warn "Pull request template validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated pull request template."
