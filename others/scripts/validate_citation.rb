#!/usr/bin/env ruby
# frozen_string_literal: true

require "date"
require "yaml"

ROOT = File.expand_path("..", File.expand_path("..", __dir__))
CITATION_PATH = File.join(ROOT, "CITATION.cff")
EXPECTED_TITLE = "Awesome Agent Worlds"

errors = []
errors << "missing CITATION.cff" unless File.exist?(CITATION_PATH)

if File.exist?(CITATION_PATH)
  citation = YAML.load_file(CITATION_PATH)
  preferred = citation["preferred-citation"]

  errors << "citation cff-version should be 1.2.0" unless citation["cff-version"] == "1.2.0"
  errors << "citation title mismatch" unless citation["title"] == EXPECTED_TITLE
  errors << "citation license should be MIT" unless citation["license"] == "MIT"
  if citation.key?("url") && !citation["url"].to_s.start_with?("https://github.com/")
    errors << "citation URL should be a GitHub URL when present"
  end
  errors << "citation message should mention citation" unless citation["message"].to_s.downcase.include?("cite")
  errors << "citation needs at least one author" unless citation["authors"].is_a?(Array) && citation["authors"].any?
  errors << "citation missing preferred citation" unless preferred.is_a?(Hash)

  if preferred.is_a?(Hash)
    errors << "preferred citation type should be software" unless preferred["type"] == "software"
    errors << "preferred citation title mismatch" unless preferred["title"] == EXPECTED_TITLE
    errors << "preferred citation needs at least one author" unless preferred["authors"].is_a?(Array) && preferred["authors"].any?
  end

  %w[date-released version].each do |field|
    errors << "citation missing #{field}" if citation[field].to_s.empty?
  end

  begin
    released = Date.iso8601(citation["date-released"].to_s)
    errors << "citation date-released is in the future" if released > Date.today
  rescue Date::Error
    errors << "citation date-released is not ISO date"
  end
end

if errors.any?
  warn "Citation validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated CITATION.cff metadata."
