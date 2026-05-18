#!/usr/bin/env ruby
# frozen_string_literal: true

require "open3"
require "rbconfig"

ROOT = File.expand_path("../..", __dir__)
RUBY = RbConfig.ruby

errors = []

def ignored_by_git?(path)
  _stdout, _stderr, status = Open3.capture3("git", "check-ignore", "--quiet", path, chdir: ROOT)
  status.success?
end

files = Dir[File.join(ROOT, "others", "scripts", "**", "*.rb")].sort
           .reject { |path| ignored_by_git?(path) }

files.each do |path|
  stdout, stderr, status = Open3.capture3(RUBY, "-c", path)
  next if status.success?

  relative = path.delete_prefix("#{ROOT}/")
  errors << "#{relative}: #{stdout}#{stderr}".strip
end

if errors.any?
  warn "Ruby syntax check failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Ruby syntax valid for #{files.length} files."
