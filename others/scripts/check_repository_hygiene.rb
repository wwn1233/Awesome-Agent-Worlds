#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
GITIGNORE_PATH = File.join(ROOT, ".gitignore")

forbidden = Dir.glob(File.join(ROOT, "**", ".DS_Store"), File::FNM_DOTMATCH)
            .map { |path| path.delete_prefix("#{ROOT}/") }
            .sort
errors = forbidden.map { |path| "remove #{path}" }

if !File.exist?(GITIGNORE_PATH) || !File.read(GITIGNORE_PATH).lines.map(&:strip).include?(".DS_Store")
  errors << ".gitignore should ignore .DS_Store"
end

if errors.any?
  warn "Repository hygiene check failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Repository hygiene checks passed."
