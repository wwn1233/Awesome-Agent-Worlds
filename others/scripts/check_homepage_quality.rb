#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require_relative "lib/resources"

readme = File.read(File.join(AgentWorlds::ROOT, "..", "README.md"))
site_index = File.read(File.join(AgentWorlds::ROOT, "..", "site", "index.html"))
i18n = File.read(File.join(AgentWorlds::ROOT, "..", "site", "i18n.js"))
resources = AgentWorlds.load_resources
content_count = resources.count { |item| AgentWorlds.content_evidence?(item) }
category_count = resources
                 .select { |item| AgentWorlds.content_evidence?(item) }
                 .map { |item| item["canonical_category"] }
                 .uniq
                 .length
excluded_names = resources.reject { |item| AgentWorlds.content_evidence?(item) }.map { |item| item["name"] }
content_names = resources.select { |item| AgentWorlds.content_evidence?(item) }.map { |item| item["name"] }
errors = []
english_thesis = "The limiting feedback channel for agents is not more chat transcripts alone. It is verifiable worlds that produce reusable trajectories."
chinese_thesis = "智能体的反馈瓶颈不只是更多聊天语料，而是能产出可复用轨迹的可验证世界。"

if readme.match?(/shields\.io|cdn\.rawgit|PRs-welcome|badge\.svg|Resources-\d+|Categories-\d+/)
  errors << "README should not expose badges or stale badge counters"
end
errors << "README missing current bottleneck thesis" unless readme.include?(english_thesis)
errors << "README missing Agent World formula" unless readme.include?("World = runtime + state/reset + observation/action")
errors << "README missing evidence tiers" unless readme.include?("| Evidence tier | Included when |")
errors << "README missing non-goals policy" unless readme.include?("**Non-goals.**")
errors << "README missing production loop section" unless readme.include?("## From Environment to Reward")
errors << "README missing reader-goal routing" unless readme.include?("| Reader goal | Start with |")
errors << "README missing label legend" unless readme.include?("| Label | Meaning |")
errors << "README should expose CITATION.cff" unless readme.include?("CITATION.cff")
errors << "README should expose a citation section" unless readme.include?("## Citation")
errors << "README should link the source map" unless readme.include?("source-map.md")
errors << "README should link the flagship matrix" unless readme.include?("flagship-matrix.md")
errors << "README should link the static explorer" unless readme.include?("./site/README.md")
errors << "README should link contribution criteria" unless readme.include?("./others/CONTRIBUTING.md")

structured_views = readme[/## Structured Views.*?## Citation/m].to_s
view_order = [
  "./site/README.md",
  "./others/docs/resource-index.md",
  "./others/docs/source-map.md",
  "./others/docs/flagship-matrix.md"
].map { |marker| [marker, structured_views.index(marker)] }

if view_order.any? { |_, index| index.nil? } || view_order.map { |_, index| index }.compact != view_order.map { |_, index| index }.compact.sort
  errors << "README structured views should keep Explorer, Resource Index, Source Map, Flagship Matrix order"
end

errors << "README should not expose the internal survey PDF" if readme.include?("./paper/")

errors << "site should keep the Chinese language button" unless site_index.include?('data-lang="zh"')
errors << "site should keep the English language button" unless site_index.include?('data-lang="en"')
errors << "site should keep the World Surface Map" unless site_index.include?("worldMap")
errors << "site i18n should include English hero copy" unless i18n.include?('heroTitle: "Verifiable Agent World Index"')
errors << "site i18n should include Chinese hero copy" unless i18n.include?('heroTitle: "可验证智能体世界索引"')
errors << "site i18n missing English thesis" unless i18n.include?(english_thesis)
errors << "site i18n missing Chinese thesis" unless i18n.include?(chinese_thesis)
errors << "site i18n should include map copy" unless i18n.include?("mapTitle")

excluded_names.each do |name|
  errors << "README must not list excluded reference #{name}" if readme.include?(name)
end

content_names.each do |name|
  errors << "README missing content resource #{name}" unless readme.include?(name)
end

%w[
  OSWorld-Verified
  BrowserGym
  WebArena-Verified
  AndroidWorld
  tau-bench
].each do |name|
  errors << "README should keep #{name} in the reader path" unless readme.include?(name)
end

unless readme.include?("Gemini 2.5 Computer Use") && readme.include?("Product Signal · Closed product")
  errors << "README should distinguish closed computer-use products from public worlds"
end

site_data = File.read(File.join(AgentWorlds::ROOT, "..", "site", "data.js"))
json = site_data.sub(/\Awindow\.AGENT_WORLDS_DATA = /, "").sub(/;\s*\z/, "")
summary = JSON.parse(json).fetch("summary")
errors << "site summary content count is stale" unless summary.fetch("resources") == content_count
errors << "site summary category count is stale" unless summary.fetch("categories") == category_count

if errors.any?
  warn "Homepage quality check failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Homepage quality checks passed for #{content_count} content resources."
