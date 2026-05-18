#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "lib/resources"

hash = AgentWorlds.source_hash
repo_root = File.expand_path("..", AgentWorlds::ROOT)
resources = AgentWorlds.load_resources
content_names = resources.select { |item| AgentWorlds.content_evidence?(item) }.map { |item| item["name"] }
flagship_names = resources.select { |item| item["recommended_rank"].is_a?(Integer) }
                          .sort_by { |item| item["recommended_rank"] }
                          .map { |item| item["name"] }

checks = {
  "others/docs/flagship-matrix.md" => "source hash `#{hash}`",
  "others/docs/awesome-list.md" => "source hash `#{hash}`",
  "others/docs/resource-index.md" => "source hash `#{hash}`"
}

required_markers = {
  "others/docs/resource-index.md" => [
    "| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |",
    "Scale and trajectory count columns are populated only when structured",
    "metadata is available."
  ],
  "site/data.js" => [
    "\"scale\":\"116 tasks; 20 apps\"",
    "\"scale\":\"457 APIs; 9 apps\""
  ]
}

forbidden_markers = {
  "others/docs/flagship-matrix.md" => [
    "..."
  ]
}

missing = checks.each_with_object([]) do |(relative_path, marker), errors|
  path = File.join(repo_root, relative_path)
  if !File.exist?(path)
    errors << "#{relative_path}: missing generated artifact"
  elsif !File.read(path).include?(marker)
    errors << "#{relative_path}: missing current source hash #{hash}"
  end
end

required_markers.each do |relative_path, markers|
  path = File.join(repo_root, relative_path)
  next unless File.exist?(path)

  content = File.read(path)
  markers.each do |marker|
    missing << "#{relative_path}: missing required marker #{marker.inspect}" unless content.include?(marker)
  end
end

forbidden_markers.each do |relative_path, markers|
  path = File.join(repo_root, relative_path)
  next unless File.exist?(path)

  content = File.read(path)
  markers.each do |marker|
    missing << "#{relative_path}: contains forbidden generated marker #{marker.inspect}" if content.include?(marker)
  end
end

%w[
  others/docs/awesome-list.md
  others/docs/resource-index.md
  site/data.js
].each do |relative_path|
  content = File.read(File.join(repo_root, relative_path))
  content_names.each do |name|
    missing << "#{relative_path}: missing content resource #{name}" unless content.include?(name)
  end
end

if File.exist?(File.join(repo_root, "others/docs/flagship-matrix.md"))
  flagship = File.read(File.join(repo_root, "others/docs/flagship-matrix.md"))
  flagship_names.each do |name|
    missing << "others/docs/flagship-matrix.md: missing flagship resource #{name}" unless flagship.include?(name)
  end
end

if missing.any?
  warn "Generated artifact check failed:"
  missing.each { |error| warn "- #{error}" }
  exit 1
end

puts "Generated artifacts match resources.yaml source hash #{hash}."
