#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"
require "time"
require_relative "lib/resources"

path = File.join(AgentWorlds::ROOT, "data", "hot_papers.yaml")
doc_path = File.join(AgentWorlds::ROOT, "docs", "hot-papers.md")
script_path = File.join(AgentWorlds::ROOT, "scripts", "update_hot_papers.rb")
profile_path = File.join(AgentWorlds::ROOT, "scripts", "lib", "hot_paper_profile.rb")
readme_path = File.join(AgentWorlds::ROOT, "..", "README.md")
errors = []
data = nil
now = Time.now.utc
max_scan_age = 30 * 24 * 60 * 60
resources = AgentWorlds.load_resources
content_names = resources.select { |item| AgentWorlds.content_evidence?(item) }.map { |item| item["name"] }
readme = File.exist?(readme_path) ? File.read(readme_path) : ""

errors << "missing data/hot_papers.yaml" unless File.exist?(path)
errors << "missing docs/hot-papers.md" unless File.exist?(doc_path)
errors << "missing hot-paper updater" unless File.exist?(script_path)
errors << "missing hot-paper profile" unless File.exist?(profile_path)

if File.exist?(path)
  data = YAML.load_file(path)
  papers = data["papers"]
  ids = {}

  errors << "generated_at is required" if data["generated_at"].to_s.empty?
  errors << "source must be arxiv" unless data["source"] == "arxiv"
  errors << "papers must be a list" unless papers.is_a?(Array)
  query = data["query"] || {}
  legacy_refresh_key = %w[refresh status].join("_")
  errors << "legacy refresh metadata should not be published" if data.key?(legacy_refresh_key)
  if query["max_results"].to_i < 160
    errors << "hot-paper query should fetch at least 160 arXiv results"
  end
  if query["days"].to_i < 45
    errors << "hot-paper query should retain at least 45 days of candidates"
  end
  if query["focused_max_results"].to_i < 120
    errors << "hot-paper focused query should fetch at least 120 arXiv results"
  end
  unless data["source_urls"].is_a?(Array) && data["source_urls"].length >= 2
    errors << "hot-paper data should record broad and focused source URLs"
  end

  begin
    generated_at = Time.iso8601(data["generated_at"].to_s)
    errors << "generated_at is in the future" if generated_at > now
    errors << "generated_at is older than 30 days" if generated_at < now - max_scan_age
  rescue ArgumentError
    errors << "generated_at must be ISO-8601"
  end

  Array(papers).each do |paper|
    label = paper["title"] || paper["id"] || "unknown"
    %w[
      id title url published score matched_terms bucket reason curated_match
      watchlist_status watchlist_candidate watchlist_checklist
    ].each do |field|
      errors << "#{label}: missing #{field}" unless paper.key?(field)
    end

    errors << "#{label}: duplicate id" if ids[paper["id"]]
    ids[paper["id"]] = true
    errors << "#{label}: url must point to arXiv" unless paper["url"].to_s.start_with?("https://arxiv.org/abs/")
    errors << "#{label}: score must be numeric" unless paper["score"].is_a?(Numeric)
    errors << "#{label}: matched_terms must be a list" unless paper["matched_terms"].is_a?(Array)
    errors << "#{label}: curated_match must be boolean" unless [true, false].include?(paper["curated_match"])
    if Array(paper["authors"]).any? { |author| author.to_s.match?(/\bauthors?\z/i) || author.to_s.downcase.include?("placeholder") }
      errors << "#{label}: authors contain placeholder text"
    end
    unless %w[indexed watchlist monitor].include?(paper["watchlist_status"])
      errors << "#{label}: watchlist_status must be indexed, watchlist, or monitor"
    end
    unless [true, false].include?(paper["watchlist_candidate"])
      errors << "#{label}: watchlist_candidate must be boolean"
    end
    errors << "#{label}: watchlist_checklist must be a list" unless paper["watchlist_checklist"].is_a?(Array)

    begin
      published = Time.iso8601(paper["published"].to_s)
      errors << "#{label}: published is in the future" if published > now
    rescue ArgumentError
      errors << "#{label}: published must be ISO-8601"
    end
  end

  phone_safety = Array(papers).find do |paper|
    paper["id"].to_s.start_with?("2605.07630") ||
      paper["title"].to_s.include?("Safe, or Simply Incapable?")
  end
  if phone_safety.nil?
    errors << "hot-paper feed missing PhoneSafety regression sentinel"
  elsif phone_safety["watchlist_status"] != "indexed"
    errors << "PhoneSafety sentinel should remain indexed"
  end

  agent_world = Array(papers).find do |paper|
    paper["id"].to_s.start_with?("2604.18292") ||
      paper["title"].to_s.include?("Agent-World: Scaling Real-World Environment Synthesis")
  end
  if agent_world.nil?
    errors << "hot-paper feed missing Agent-World environment-synthesis sentinel"
  elsif agent_world["watchlist_status"] != "indexed"
    errors << "Agent-World sentinel should remain indexed"
  else
    title = agent_world["title"].to_s
    unless content_names.include?(title)
      errors << "Agent-World sentinel title must be the canonical resources.yaml name"
    end
    errors << "README must expose the Agent-World sentinel title" unless readme.include?(title)
  end

  {
    "MCP-Atlas" => "2602.00933",
    "AgentHazard" => "2604.02947",
    "GUI-GENESIS" => "2602.14093"
  }.each do |name, id|
    paper = Array(papers).find { |item| item["id"].to_s.start_with?(id) || item["title"].to_s.include?(name) }
    if paper.nil?
      errors << "hot-paper feed missing #{name} regression sentinel"
    elsif name != "GUI-GENESIS" && paper["watchlist_status"] != "indexed"
      errors << "#{name} sentinel should remain indexed"
    end
  end
end

if File.exist?(doc_path)
  doc = File.read(doc_path)
  errors << "hot-papers doc missing Watchlist Criteria" unless doc.include?("## Watchlist Criteria")
  errors << "hot-papers doc missing Last scanned" unless doc.include?("Last scanned")
  errors << "hot-papers doc missing Watchlist candidates" unless doc.include?("Watchlist candidates")
  errors << "hot-papers doc missing discovery-feed framing" unless doc.include?("discovery feed")

  if data
    papers = Array(data["papers"])
    ready_count = papers.count { |paper| paper["watchlist_candidate"] }
    errors << "hot-papers doc has stale candidate count" unless doc.include?("- Candidates: #{papers.length}")
    unless doc.include?("- Watchlist candidates: #{ready_count}")
      errors << "hot-papers doc has stale watchlist-candidate count"
    end
  end

  if data && Array(data["papers"]).length > 50
    month = data["generated_at"].to_s[0, 7]
    archive = File.join(AgentWorlds::ROOT, "docs", "hot-paper-archive-#{month}.md")
    errors << "hot-papers doc missing archive link" unless doc.include?("hot-paper-archive-#{month}.md")
    errors << "missing hot-paper archive #{month}" unless File.exist?(archive)
  end
end

if File.exist?(script_path) && File.exist?(profile_path)
  script = [script_path, profile_path].map { |path| File.read(path) }.join("\n")
  [
    "phone-use agent",
    "phone-use agents",
    "computer-use agents",
    "phone-use safety",
    "phone safety",
    "safe unsafe incapable",
    "FOCUSED_QUERY_TERMS",
    "focused_terms",
    "safety-critical moments",
    "environment synthesis",
    "environment generation",
    "agent training arena",
    "mcp benchmark",
    "mcp server",
    "mcp tools",
    "tool routing",
    "multi-server routing",
    "tool composition",
    "tool poisoning",
    "agentic world modeling",
    "generative sketch world model",
    "skill environment",
    "language world model",
    "environment simulation",
    "hybrid verifier",
    "professional task"
  ].each do |marker|
    errors << "hot-paper updater missing #{marker}" unless script.include?(marker)
  end
end

if errors.any?
  warn "Hot paper validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated #{YAML.load_file(path)['papers'].length} hot paper candidates."
