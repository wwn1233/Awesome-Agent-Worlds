#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "yaml"
require_relative "lib/resources"

repo_root = File.expand_path("..", File.expand_path("..", __dir__))
site_dir = File.join(repo_root, "site")
index_path = File.join(site_dir, "index.html")
data_path = File.join(site_dir, "data.js")
readme_path = File.join(site_dir, "README.md")
hot_path = File.join(repo_root, "others", "data", "hot_papers.yaml")

errors = []
index = File.read(index_path)
site_readme = File.exist?(readme_path) ? File.read(readme_path) : ""

errors << "missing site README" unless File.exist?(readme_path)

index.scan(/(?:href|src)="([^"]+)"/).flatten.each do |ref|
  next if ref.start_with?("http", "#", "data:")

  asset = ref.split("#", 2).first.split("?", 2).first
  path = File.expand_path(asset, site_dir)
  errors << "missing site asset: #{ref}" unless File.exist?(path)
end

data_text = File.read(data_path)
json = data_text
       .sub(/\Awindow\.AGENT_WORLDS_DATA = /, "")
       .sub(/;\s*\z/, "")
payload = JSON.parse(json)
resources = payload.fetch("resources")
summary = payload.fetch("summary")
hot_papers = payload.fetch("hot_papers")
source_resources = AgentWorlds.load_resources
content_resources = source_resources.select { |item| AgentWorlds.content_evidence?(item) }
content_count = content_resources.length
category_count = content_resources
                 .map { |item| item["canonical_category"] }
                 .uniq
                 .length
source_hot_papers = File.exist?(hot_path) ? Array(YAML.load_file(hot_path)["papers"]) : []
source_watchlist_count = source_hot_papers.count { |paper| paper["watchlist_candidate"] }

[
  "ruby -run -e httpd site -p 8026",
  "http://127.0.0.1:8026/index.html",
  "others/data/resources.yaml",
  "weekly hot-paper feed"
].each do |marker|
  errors << "site README missing #{marker}" unless site_readme.include?(marker)
end

errors << "summary content count does not match others/data/resources.yaml" unless summary.fetch("resources") == content_count
errors << "summary must not expose total_entries" if summary.key?("total_entries")
errors << "summary must not expose excluded_references" if summary.key?("excluded_references")
errors << "summary categories does not match canonical content categories" unless summary.fetch("categories") == category_count
errors << "hot_papers papers must be a list" unless hot_papers.fetch("papers").is_a?(Array)
errors << "hot_papers candidates must match hot_papers.yaml" unless hot_papers.fetch("candidates") == source_hot_papers.length
unless hot_papers.fetch("watchlist_candidates") == source_watchlist_count
  errors << "hot_papers watchlist count must match hot_papers.yaml"
end
errors << "hot_papers candidates must cover visible papers" if hot_papers.fetch("candidates") < hot_papers.fetch("papers").length
errors << "hot_papers visible_candidates must match papers" unless hot_papers.fetch("visible_candidates") == hot_papers.fetch("papers").length

unless resources.length == content_resources.length
  errors << "site resource count does not match public content resources"
end

site_names = resources.map { |item| item.fetch("name") }.sort
source_names = content_resources.map { |item| item.fetch("name") }.sort
errors << "site resource names do not match public content resources" unless site_names == source_names
excluded_names = (source_resources - content_resources).map { |item| item.fetch("name") }
excluded_names.each do |name|
  errors << "site data must not expose excluded reference #{name}" if site_names.include?(name)
end

required = %w[
  id
  name
  category
  canonical_category
  resource_kind
  display_label
  trajectory_availability
  reset_support
  reproducibility
  reader_paths
  readiness_score
  readiness_label
  source_confidence
  strictness_labels
  scale
  url
]

resources.each do |item|
  missing = required.reject { |key| item.key?(key) }
  errors << "#{item['name'] || 'unknown'} missing #{missing.join(', ')}" if missing.any?
end

if errors.any?
  warn "Site validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated static site with #{content_count} public content resources."
