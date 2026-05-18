#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "fileutils"
require "net/http"
require "rexml/document"
require "set"
require "time"
require "uri"
require "yaml"
require_relative "lib/hot_paper_docs"
require_relative "lib/hot_paper_pins"
require_relative "lib/hot_paper_profile"
require_relative "lib/resources"

QUERY_TERMS = AgentWorlds::HotPaperProfile::QUERY_TERMS
FOCUSED_QUERY_TERMS = AgentWorlds::HotPaperProfile::FOCUSED_QUERY_TERMS
CATEGORIES = AgentWorlds::HotPaperProfile::CATEGORIES
WEIGHTS = AgentWorlds::HotPaperProfile::WEIGHTS
ANCHOR_TERMS = AgentWorlds::HotPaperProfile::ANCHOR_TERMS
OFF_TOPIC_TERMS = AgentWorlds::HotPaperProfile::OFF_TOPIC_TERMS
WATCHLIST_CHECKLIST = AgentWorlds::HotPaperProfile::WATCHLIST_CHECKLIST

def option_value(name, default)
  (index = ARGV.index("--#{name}")) ? ARGV.fetch(index + 1) : default
end

def query_string(terms = QUERY_TERMS)
  "(#{CATEGORIES.map { |category| "cat:#{category}" }.join(" OR ")}) AND (#{terms.map { |term| "all:\"#{term}\"" }.join(" OR ")})"
end

def arxiv_query_url(limit, terms = QUERY_TERMS)
  uri = URI("https://export.arxiv.org/api/query")
  uri.query = URI.encode_www_form(
    search_query: query_string(terms),
    start: 0,
    max_results: limit,
    sortBy: "submittedDate",
    sortOrder: "descending"
  )
  uri.to_s
end

def fetch_arxiv(limit, terms = QUERY_TERMS)
  uri = URI(arxiv_query_url(limit, terms))
  request = Net::HTTP::Get.new(uri)
  request["User-Agent"] = "awesome-agent-worlds hot-paper-updater"
  response = Net::HTTP.start(uri.host, uri.port, use_ssl: true, read_timeout: 60) { |http| http.request(request) }
  raise "arXiv API returned HTTP #{response.code}" unless response.is_a?(Net::HTTPSuccess)

  [uri.to_s, response.body]
end

def entry_text(entry, xpath)
  node = REXML::XPath.first(entry, xpath, "atom" => "http://www.w3.org/2005/Atom")
  node&.text.to_s.gsub(/\s+/, " ").strip
end

def entry_values(entry, xpath)
  REXML::XPath.match(entry, xpath, "atom" => "http://www.w3.org/2005/Atom").map do |node|
    node.text.to_s.gsub(/\s+/, " ").strip
  end
end

def category_values(entry)
  REXML::XPath.match(entry, "atom:category", "atom" => "http://www.w3.org/2005/Atom").map { |node| node.attributes["term"] }.compact
end

def score_for(title, summary, published)
  text = "#{title} #{summary}".downcase
  matched = WEIGHTS.keys.select { |term| text.include?(term) }
  return [0, matched] if OFF_TOPIC_TERMS.any? { |term| text.include?(term) }

  anchored = matched.any? { |term| ANCHOR_TERMS.include?(term) } ||
             text.match?(/\b(llm|language model|vla|vision-language-action|multi-agent|agentic)\b/)
  return [0, matched] unless anchored

  score = matched.sum { |term| WEIGHTS.fetch(term) }
  age_days = [(Time.now - published) / 86_400, 0].max
  score += 3 if age_days <= 7
  score += 2 if age_days > 7 && age_days <= 14
  [score, matched]
end

def reason_for(score, matched)
  return "watchlist" if score >= 12 && matched.any?
  return "monitor" if score >= 7

  "below_threshold"
end

def normalized_title(value)
  value.to_s.downcase.gsub(/[^a-z0-9]+/, " ").strip
end

def curated_signatures
  resources = AgentWorlds.load_resources
  titles = Set.new
  arxiv_ids = Set.new

  resources.each do |item|
    titles << normalized_title(item["name"])
    Array(item["sources"]).each do |source|
      source["url"].to_s.scan(%r{arxiv\.org/(?:abs|pdf)/([0-9.]+v?\d*)}) { |match| arxiv_ids << match.first }
    end
    item["url"].to_s.scan(%r{arxiv\.org/(?:abs|pdf)/([0-9.]+v?\d*)}) { |match| arxiv_ids << match.first }
  end

  { titles: titles, arxiv_ids: arxiv_ids }
end

def decorate_paper(paper, curated)
  id = paper["id"].to_s
  title = paper["title"].to_s
  base_id = id.sub(/v\d+\z/, "")
  curated_match = curated[:arxiv_ids].include?(id) ||
                  curated[:arxiv_ids].include?(base_id) ||
                  curated[:titles].include?(normalized_title(title))
  score = paper["score"].to_i

  paper.merge(
    "curated_match" => curated_match,
    "watchlist_status" => curated_match ? "indexed" : (score >= 12 ? "watchlist" : "monitor"),
    "watchlist_candidate" => score >= 12 && !curated_match,
    "watchlist_checklist" => WATCHLIST_CHECKLIST
  )
end

def parse_entries(xml, days, curated)
  cutoff = Time.now - (days * 86_400)
  document = REXML::Document.new(xml)
  REXML::XPath.match(document, "//atom:entry", "atom" => "http://www.w3.org/2005/Atom").each_with_object([]) do |entry, papers|
    title = entry_text(entry, "atom:title")
    summary = entry_text(entry, "atom:summary")
    published = Time.parse(entry_text(entry, "atom:published"))
    next if published < cutoff

    score, matched = score_for(title, summary, published)
    next if score < 7

    id = entry_text(entry, "atom:id").split("/").last
    papers << decorate_paper({
      "id" => id,
      "title" => title,
      "url" => "https://arxiv.org/abs/#{id}",
      "pdf_url" => "https://arxiv.org/pdf/#{id}",
      "published" => published.utc.iso8601,
      "updated" => Time.parse(entry_text(entry, "atom:updated")).utc.iso8601,
      "authors" => entry_values(entry, "atom:author/atom:name").first(8),
      "categories" => category_values(entry),
      "score" => score,
      "matched_terms" => matched,
      "bucket" => score >= 12 ? "likely_agent_world" : "watch",
      "reason" => reason_for(score, matched)
    }, curated)
  end
end

def merge_pinned(papers, curated)
  (papers + AgentWorlds::HotPaperPins.papers).each_with_object({}) do |paper, by_id|
    decorated = decorate_paper(paper, curated)
    current = by_id[decorated["id"]]
    by_id[decorated["id"]] = decorated if current.nil? || decorated["pinned"] || decorated["score"].to_i > current["score"].to_i
  end.values
end

def fallback_existing_papers(curated, limit, focus_limit)
  path = File.join(AgentWorlds::ROOT, "data", "hot_papers.yaml")
  raise "No existing hot_papers.yaml fallback is available." unless File.exist?(path)

  data = YAML.load_file(path)
  papers = Array(data["papers"]).map { |paper| decorate_paper(paper, curated) }
  source_urls = [arxiv_query_url(limit), arxiv_query_url(focus_limit, FOCUSED_QUERY_TERMS)]
  [source_urls, papers, data["generated_at"] || Time.now.utc.iso8601]
end

limit = Integer(option_value("limit", 160))
focus_limit = Integer(option_value("focus-limit", 120))
days = Integer(option_value("days", 90))
curated = curated_signatures

begin
  source_url, xml = fetch_arxiv(limit)
  focused_url, focused_xml = fetch_arxiv(focus_limit, FOCUSED_QUERY_TERMS)
  source_urls = [source_url, focused_url]
  papers = parse_entries(xml, days, curated) + parse_entries(focused_xml, days, curated)
  papers = papers.each_with_object({}) do |paper, by_id|
    current = by_id[paper["id"]]
    by_id[paper["id"]] = paper if current.nil? || paper["score"] > current["score"]
  end.values
  generated_at = Time.now.utc.iso8601
rescue StandardError => e
  warn "Live arXiv refresh failed: #{e.message}; using existing hot-paper feed."
  source_urls, papers, generated_at = fallback_existing_papers(curated, limit, focus_limit)
  source_url = source_urls.first
end

papers = merge_pinned(papers, curated).sort_by do |paper|
  [-paper["score"].to_i, -Time.iso8601(paper["updated"] || paper["published"]).to_i, paper["title"]]
end
data = {
  "generated_at" => generated_at,
  "source" => "arxiv",
  "source_url" => source_url,
  "source_urls" => source_urls,
  "query" => {
    "days" => days,
    "max_results" => limit,
    "focused_max_results" => focus_limit,
    "categories" => CATEGORIES,
    "terms" => QUERY_TERMS,
    "focused_terms" => FOCUSED_QUERY_TERMS,
    "scoring_terms" => WEIGHTS.keys
  },
  "papers" => papers
}

FileUtils.mkdir_p(File.join(AgentWorlds::ROOT, "data"))
File.write(File.join(AgentWorlds::ROOT, "data", "hot_papers.yaml"), YAML.dump(data))
AgentWorlds::HotPaperDocs.write(data)
puts "Wrote #{papers.length} hot paper candidates."
