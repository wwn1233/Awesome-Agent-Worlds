#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "lib/resources"

ROOT = File.expand_path("..", AgentWorlds::ROOT)
SOURCE_MAP = File.join(ROOT, "others", "docs", "source-map.md")
TRACKED_KINDS = %w[
  closed_product_signal
  protocol
  safety_control
].freeze

def kind_label(kind)
  kind.tr("_", " ")
end

source_map = File.read(SOURCE_MAP)
errors = []

[
  "Mobile agents need emulator-backed tasks and safety/privacy evaluation",
  "AndroidWorld, MyPhoneBench, and PhoneSafety",
  "safe/unsafe/incapable outcomes",
  "https://arxiv.org/abs/2605.07630"
].each do |marker|
  errors << "source-map missing mobile-safety claim marker #{marker}" unless source_map.include?(marker)
end

AgentWorlds.load_resources
           .select { |item| TRACKED_KINDS.include?(item["resource_kind"]) }
           .sort_by { |item| item["name"] }
           .each do |item|
  source = Array(item["sources"]).first || {}
  checked_at = source["checked_at"]
  row = "| #{item['name']} | #{kind_label(item['resource_kind'])} | #{checked_at} |"
  source_urls = Array(item["sources"]).map { |entry| entry["url"].to_s }.reject(&:empty?)

  errors << "source-map missing source-date row for #{item['name']}" unless source_map.include?(row)
  unless source_urls.any? { |url| source_map.include?(url) }
    errors << "source-map missing YAML source URL for #{item['name']}"
  end
end

AgentWorlds.load_resources
           .select { |item| item["recommended_rank"].is_a?(Integer) }
           .sort_by { |item| item["recommended_rank"] }
           .each do |item|
  source_urls = Array(item["sources"]).map { |entry| entry["url"].to_s }.reject(&:empty?)
  next if source_urls.any? { |url| source_map.include?(url) }

  errors << "source-map missing flagship source URL for #{item['recommended_rank']}: #{item['name']}"
end

if errors.any?
  warn "Source map validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated source-map dates and URLs for tracked signals and flagship resources."
