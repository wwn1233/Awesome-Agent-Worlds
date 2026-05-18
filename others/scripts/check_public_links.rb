#!/usr/bin/env ruby
# frozen_string_literal: true

require "set"
require_relative "lib/resources"
require_relative "lib/public_surfaces"

ROOT = File.expand_path("..", AgentWorlds::ROOT)

def local_target?(target)
  return false if target.nil? || target.empty?
  return false if target.start_with?("http://", "https://", "mailto:", "data:")

  true
end

def markdown_links(content)
  content.scan(/!?\[[^\]]*\]\(([^)\s]+)(?:\s+"[^"]*")?\)/).flatten
end

def html_links(content)
  content.scan(/href="([^"]+)"/).flatten
end

def normalize_anchor(text)
  text.downcase
      .gsub(/<[^>]+>/, "")
      .gsub(/[^\p{Alnum}\s-]/, "")
      .strip
      .gsub(/\s+/, "-")
end

def anchors_for(path)
  content = File.read(path)
  anchors = Set.new
  anchors.merge(content.scan(/(?:id|name)="([^"]+)"/).flatten)

  if File.extname(path) == ".md"
    content.each_line do |line|
      match = line.match(/^#+\s+(.+)$/)
      anchors << normalize_anchor(match[1]) if match
    end
  end

  anchors
end

def resolve_path(source_path, target)
  file_part, anchor = target.split("#", 2)
  base = file_part.to_s.empty? ? source_path : File.expand_path(file_part, File.dirname(source_path))
  base = File.join(base, "README.md") if File.directory?(base)
  [base, anchor]
end

errors = []

AgentWorlds::PUBLIC_LINK_FILES.each do |relative_path|
  source_path = File.join(ROOT, relative_path)
  content = File.read(source_path)
  targets = markdown_links(content) + html_links(content)

  targets.select { |target| local_target?(target) }.each do |target|
    path, anchor = resolve_path(source_path, target)
    label = "#{relative_path}: #{target}"

    if !File.exist?(path)
      errors << "#{label} points to missing file"
    elsif !anchor.to_s.empty? && !anchors_for(path).include?(anchor)
      errors << "#{label} points to missing anchor"
    end
  end
end

if errors.any?
  warn "Public link check failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Public local links and anchors are valid."
