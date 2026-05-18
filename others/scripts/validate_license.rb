#!/usr/bin/env ruby
# frozen_string_literal: true

ROOT = File.expand_path("../..", __dir__)
LICENSE_PATH = File.join(ROOT, "LICENSE")
README_PATH = File.join(ROOT, "README.md")

errors = []
errors << "missing LICENSE" unless File.exist?(LICENSE_PATH)

if File.exist?(LICENSE_PATH)
  license = File.read(LICENSE_PATH)
  [
    "MIT License",
    "Copyright (c) 2026 Awesome Agent Worlds contributors",
    "Permission is hereby granted, free of charge",
    'THE SOFTWARE IS PROVIDED "AS IS"'
  ].each do |marker|
    errors << "LICENSE missing #{marker}" unless license.include?(marker)
  end
end

if File.exist?(README_PATH)
  readme = File.read(README_PATH)
  errors << "README missing MIT license section" unless readme.include?("## License")
  errors << "README missing LICENSE link" unless readme.include?("[MIT License](LICENSE)")
end

if errors.any?
  warn "License validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

puts "Validated MIT license."
