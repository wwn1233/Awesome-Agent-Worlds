#!/usr/bin/env ruby
# frozen_string_literal: true

require "set"
require_relative "lib/public_surfaces"

ROOT = File.expand_path("../..", __dir__)
ENTRYPOINTS = %w[
  README.md
].freeze
TRACEABLE_EXTENSIONS = Set.new(%w[
  .cff .css .html .js .md .svg .tex
]).freeze

def local_target?(target)
  !target.to_s.empty? && !target.start_with?("http://", "https://", "mailto:", "data:")
end

def linked_targets(content)
  markdown = content.scan(/!?\[[^\]]*\]\(([^)\s]+)(?:\s+"[^"]*")?\)/).flatten
  html = content.scan(/href="([^"]+)"/).flatten
  markdown + html
end

def normalize_link(source_path, target)
  file_part = target.split("#", 2).first.to_s
  return nil if file_part.empty?

  path = File.expand_path(file_part, File.dirname(source_path))
  path = File.join(path, "README.md") if File.directory?(path)
  return nil unless File.exist?(path)
  return nil unless TRACEABLE_EXTENSIONS.include?(File.extname(path))

  path.delete_prefix("#{ROOT}/")
end

counts = AgentWorlds::PUBLIC_TRACE_FILES.each_with_object(Hash.new(0)) do |path, acc|
  acc[path] += 1
end
duplicates = counts.select { |_path, count| count > 1 }.keys
missing_registered = AgentWorlds::PUBLIC_TRACE_FILES.reject do |path|
  File.exist?(File.join(ROOT, path))
end
registered = AgentWorlds::PUBLIC_TRACE_FILES.to_set
linked = ENTRYPOINTS.each_with_object(Set.new) do |entrypoint, acc|
  source_path = File.join(ROOT, entrypoint)
  linked_targets(File.read(source_path)).each do |target|
    next unless local_target?(target)

    normalized = normalize_link(source_path, target)
    acc << normalized if normalized
  end
end

missing = linked.reject { |path| registered.include?(path) }.sort

errors = []
duplicates.each { |path| errors << "duplicate registered public surface #{path}" }
missing_registered.each { |path| errors << "registered public surface missing #{path}" }
missing.each { |path| errors << "add #{path} to PUBLIC_TRACE_FILES" }

if errors.any?
  warn "Public surface registry validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated public surface registry."
