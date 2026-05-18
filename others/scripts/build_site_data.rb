#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "json"
require "yaml"
require_relative "lib/audit"

resources = AgentWorlds.load_resources.select { |item| AgentWorlds.content_evidence?(item) }
site_dir = File.expand_path("../site", AgentWorlds::ROOT)
out_path = File.join(site_dir, "data.js")

def public_strictness_labels(item)
  AgentWorlds::Audit.strictness_labels(item)
end

items = resources.map do |item|
  score = AgentWorlds.readiness_score(item)
  {
    id: item["id"],
    name: item["name"],
    category: item["canonical_category"],
    canonical_category: item["canonical_category"],
    resource_kind: item["resource_kind"],
    subtype: item["subtype"],
    status: item["status"],
    year: item["year"],
    modality: item["modality"],
    action_space: item["action_space"],
    reward_type: item["reward_type"],
    reward_family: item["reward_family"],
    verifier: item["verifier"],
    verifier_family: item["verifier_family"],
    trainable: item["trainable"],
    trainability_status: item["trainability_status"],
    resettable: item["resettable"],
    reset_support: item["reset_support"],
    reset_mechanism: item["reset_mechanism"],
    trajectories: item["trajectories"],
    trajectory_availability: item["trajectory_availability"],
    trajectory_access: item["trajectory_access"],
    trajectory_type: item["trajectory_type"],
    trajectory_public: item["trajectory_public"],
    sandbox: item["sandbox"],
    reproducibility: item["reproducibility"],
    access: item["access"],
    evidence_type: item["evidence_type"],
    sources: item["sources"],
    reader_paths: item["reader_paths"],
    production_signal: item["production_signal"],
    url: item["url"],
    repo: item["repo"],
    notes: item["notes"],
    scale: AgentWorlds.scale_value(item),
    why_it_matters: item["why_it_matters"],
    readiness_score: score,
    readiness_label: AgentWorlds.readiness_label(score),
    display_label: AgentWorlds.display_label(item),
    lost_points: AgentWorlds.lost_points(item),
    source_confidence: AgentWorlds::Audit.source_confidence(item),
    strictness_labels: public_strictness_labels(item),
    curation_priority: AgentWorlds::Audit.curation_priority(item),
    recommended_rank: item["recommended_rank"]
  }
end

categories = items.group_by { |item| item[:canonical_category] }
                .transform_values(&:length)
                .sort.to_h
labels = items.group_by { |item| item[:display_label] }
              .transform_values(&:length)
              .sort.to_h
kinds = items.group_by { |item| item[:resource_kind] }
                     .transform_values(&:length)
                     .sort.to_h
hot_path = File.join(AgentWorlds::ROOT, "data", "hot_papers.yaml")
hot_data = File.exist?(hot_path) ? YAML.load_file(hot_path) : {}
all_hot_papers = Array(hot_data["papers"])
hot_papers = all_hot_papers.first(12).map do |paper|
  {
    id: paper["id"],
    title: paper["title"],
    url: paper["url"],
    published: paper["published"],
    score: paper["score"],
    matched_terms: paper["matched_terms"],
    watchlist_status: paper["watchlist_status"],
    watchlist_candidate: paper["watchlist_candidate"]
  }
end

payload = {
  summary: {
    resources: items.length,
    categories: categories.length,
    average_score: (items.sum { |item| item[:readiness_score] }.to_f / items.length).round(1),
    with_repo: items.count { |item| !item[:repo].to_s.empty? },
    public_runnable: items.count { |item| item[:reproducibility] == "public_runnable" },
    trajectory_assets: items.count { |item| %w[public partial synthetic].include?(item[:trajectory_availability]) },
    source_check: items.count { |item| item[:source_confidence] == "medium" }
  },
  categories: categories,
  labels: labels,
  kinds: kinds,
  hot_papers: {
    candidates: all_hot_papers.length,
    visible_candidates: hot_papers.length,
    watchlist_candidates: all_hot_papers.count { |paper| paper["watchlist_candidate"] },
    papers: hot_papers
  },
  resources: items.sort_by { |item| [item[:recommended_rank] || 999, -item[:readiness_score], item[:name]] }
}

FileUtils.mkdir_p(site_dir)
File.write(out_path, "window.AGENT_WORLDS_DATA = #{JSON.generate(payload)};\n")
puts "Wrote #{out_path}"
