#!/usr/bin/env ruby
# frozen_string_literal: true

require "open3"
require "rbconfig"
require_relative "lib/public_surfaces"

ROOT = File.expand_path("../..", __dir__)
RUBY = RbConfig.ruby

CHECKS = [
  ["ruby syntax", "others/scripts/check_ruby_syntax.rb"],
  ["repository hygiene", "others/scripts/check_repository_hygiene.rb"],
  ["file lengths", "others/scripts/check_file_lengths.rb"],
  ["public surface registry", "others/scripts/validate_public_surface_registry.rb"],
  ["resources", "others/scripts/validate_resources.rb"],
  ["schema", "others/scripts/validate_schema.rb"],
  ["changelog", "others/scripts/validate_changelog.rb"],
  ["license", "others/scripts/validate_license.rb"],
  ["citation", "others/scripts/validate_citation.rb"],
  ["issue template", "others/scripts/validate_issue_template.rb"],
  ["pull request template", "others/scripts/validate_pr_template.rb"],
  ["release workflow", "others/scripts/validate_release_workflow.rb"],
  ["hot papers", "others/scripts/validate_hot_papers.rb"],
  ["hot-paper workflow", "others/scripts/validate_hot_paper_workflow.rb"],
  ["site", "others/scripts/validate_site.rb"],
  ["survey doc", "others/scripts/validate_survey_doc.rb"],
  ["source map", "others/scripts/validate_source_map.rb"],
  ["taxonomy", "others/scripts/validate_taxonomy.rb"],
  ["production signals", "others/scripts/validate_production_signals.rb"],
  ["reward atlas", "others/scripts/validate_reward_atlas.rb"],
  ["landmark worlds", "others/scripts/validate_landmark_worlds.rb"],
  ["benchmark landscape", "others/scripts/validate_benchmark_landscape.rb"],
  ["selection guide", "others/scripts/validate_selection_guide.rb"],
  ["reading order", "others/scripts/validate_reading_order.rb"],
  ["key concepts", "others/scripts/validate_key_concepts.rb"],
  ["maturity model", "others/scripts/validate_maturity_model.rb"],
  ["generated artifacts", "others/scripts/check_generated_artifacts.rb"],
  ["homepage quality", "others/scripts/check_homepage_quality.rb"],
  ["public local links", "others/scripts/check_public_links.rb"],
  ["links", "others/scripts/check_links.rb"]
].freeze

TRACEABLE_EXTENSIONS = %w[
  .cff .css .html .js .json .md .rb .svg .tex .yaml .yml
].freeze

PUBLIC_TRACE_MARKERS = [
  "\\bTODO\\b",
  "\\bTBD\\b",
  "\\bWIP\\b",
  "Excluded\\s+References"
].freeze

PRIVATE_TRACE_MARKERS_PATH = File.join(ROOT, "others/private/public_trace_markers.txt")

STALE_PUBLIC_REFERENCES = {
  /(?<!others\/)data\/resources\.yaml/ => "use others/data/resources.yaml",
  /(?<!others\/data\/)resources\.yaml/ => "use others/data/resources.yaml"
}.freeze

def run_check(label, script)
  puts "== #{label}"
  ok = system(RUBY, script, chdir: ROOT)
  abort "FAILED: #{label}" unless ok
end

def check_stale_public_references
  errors = []

  AgentWorlds::PUBLIC_LINK_FILES.each do |relative_path|
    File.readlines(File.join(ROOT, relative_path)).each_with_index do |line, index|
      STALE_PUBLIC_REFERENCES.each do |pattern, message|
        errors << "#{relative_path}:#{index + 1}: #{message}" if line.match?(pattern)
      end
    end
  end

  abort "FAILED: stale public references\n#{errors.join("\n")}" if errors.any?
end

def check_public_surfaces_not_ignored
  errors = []

  AgentWorlds::PUBLIC_TRACE_FILES.each do |relative_path|
    absolute_path = File.join(ROOT, relative_path)
    errors << "#{relative_path} is missing" unless File.exist?(absolute_path)

    _stdout, _stderr, status = Open3.capture3("git", "check-ignore", "--quiet", "--", relative_path, chdir: ROOT)
    errors << "#{relative_path} is ignored by git" if status.success?
  end

  abort "FAILED: public commit surface\n#{errors.join("\n")}" if errors.any?
end

def public_trace_targets
  stdout, stderr, status = Open3.capture3("git", "ls-files", "--cached", "--others", "--exclude-standard", "--", ".", chdir: ROOT)
  abort "FAILED: public trace target discovery\n#{stderr}" unless status.success?

  stdout.lines.map(&:strip).select do |path|
    next true if path == ".gitignore"

    TRACEABLE_EXTENSIONS.include?(File.extname(path))
  end
end

def trace_pattern
  private_markers = if File.exist?(PRIVATE_TRACE_MARKERS_PATH)
                      File.readlines(PRIVATE_TRACE_MARKERS_PATH, chomp: true).reject do |line|
                        line.strip.empty? || line.start_with?("#")
                      end
                    else
                      []
                    end

  (PUBLIC_TRACE_MARKERS + private_markers).join("|")
end

CHECKS.each { |label, script| run_check(label, script) }

puts "== public stale references"
check_stale_public_references

puts "== public commit surface"
check_public_surfaces_not_ignored

puts "== public trace"
stdout, stderr, status = Open3.capture3("rg", "-n", trace_pattern, *public_trace_targets, chdir: ROOT)
abort "FAILED: public trace matched\n#{stdout}" if status.success?
abort "FAILED: public trace command error\n#{stderr}" unless status.exitstatus == 1

puts "Release checks passed."
