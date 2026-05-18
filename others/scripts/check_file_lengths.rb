#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("..", File.expand_path("..", __dir__))
LIMIT = 300
CHECK_GLOBS = %w[
  CHANGELOG.md
  README.md
  .github/**/*.md
  .github/workflows/*.yml
  others/docs/*.md
  others/scripts/**/*.rb
  site/*.md
  site/*.js
  site/*.css
  utils/*.svg
].freeze

ignored = %w[
  README.md
  site/data.js
].map { |path| File.expand_path(path, ROOT) }

files = CHECK_GLOBS.flat_map { |pattern| Dir[File.join(ROOT, pattern)] }
                   .uniq
                   .reject { |path| ignored.include?(File.expand_path(path)) }

too_long = files.each_with_object([]) do |path, acc|
  lines = File.readlines(path, chomp: true).size
  next unless lines > LIMIT

  acc << "#{path.delete_prefix("#{ROOT}/")}: #{lines} lines"
end

if too_long.any?
  warn "File length check failed:"
  too_long.each { |entry| warn "- #{entry}" }
  exit 1
end

puts "Checked #{files.size} files; all non-README files are <= #{LIMIT} lines."
