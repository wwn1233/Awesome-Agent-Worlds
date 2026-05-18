#!/usr/bin/env ruby
# frozen_string_literal: true

require "date"
require_relative "lib/resources"

errors = []
resources = AgentWorlds.load_resources
today = Date.today
stale_before = today - 365

resources.each do |item|
  label = item["name"]
  kind = item["resource_kind"]
  evidence = item["content_evidence"]
  sources = item["sources"] || []
  repo = item["repo"].to_s
  url = item["url"].to_s
  year = item["year"]
  source_urls = sources.map { |source| source["url"].to_s }
  repository_source_urls = sources
                           .select { |source| source["type"] == "repository" }
                           .map { |source| source["url"].to_s }

  unless year.is_a?(Integer) && year.between?(2010, today.year)
    errors << "#{label}: year must be an integer between 2010 and #{today.year}"
  end

  if kind == "closed_product_signal"
    errors << "#{label}: closed products must use closed_product reproducibility" unless item["reproducibility"] == "closed_product"
    errors << "#{label}: closed products must expose product_or_api access" unless item["access"] == "product_or_api"
  end

  if AgentWorlds.world_like?(item) && !evidence
    errors << "#{label}: world-like resources cannot be excluded from content evidence"
  end

  if AgentWorlds.world_like?(item) && item["reader_paths"].empty?
    errors << "#{label}: world-like resources need at least one reader path"
  end

  if item["trajectory_public"] != (item["trajectory_availability"] == "public")
    errors << "#{label}: trajectory_public disagrees with trajectory_availability"
  end

  sources.each do |source|
    source_label = "#{label}: source #{source['url']}"
    checked_at = source["checked_at"].to_s
    confidence = source["confidence"].to_s
    source_type = source["type"].to_s

    if source_type.empty?
      errors << "#{source_label} needs type"
    elsif !AgentWorlds::SOURCE_TYPES.include?(source_type)
      errors << "#{source_label} has unknown type #{source_type.inspect}"
    end

    if !checked_at.match?(/\A\d{4}-\d{2}-\d{2}\z/)
      errors << "#{label}: source #{source['url']} has invalid checked_at"
    else
      begin
        checked_date = Date.iso8601(checked_at)
        errors << "#{source_label} has future checked_at #{checked_at}" if checked_date > today
        errors << "#{source_label} has stale checked_at #{checked_at}" if evidence && checked_date < stale_before
      rescue Date::Error
        errors << "#{source_label} has invalid checked_at #{checked_at}"
      end
    end

    unless source["supports"].is_a?(Array) && source["supports"].any?
      errors << "#{source_label} needs supports tags"
    else
      source["supports"].each do |tag|
        next if AgentWorlds::SOURCE_SUPPORT_TAGS.include?(tag)

        errors << "#{source_label} has unknown supports tag #{tag.inspect}"
      end
    end

    if confidence.empty?
      errors << "#{source_label} needs confidence"
    elsif !AgentWorlds::SOURCE_CONFIDENCE.include?(confidence)
      errors << "#{source_label} has unknown confidence #{confidence.inspect}"
    end

    if source["type"] == "repository"
      supports = Array(source["supports"])
      required_tags = %w[code reproducibility]
      missing_tags = required_tags - supports
      unless missing_tags.empty?
        errors << "#{source_label} repository source missing #{missing_tags.join(', ')} support"
      end
    end
  end

  if repo.start_with?("http") && !repository_source_urls.include?(repo)
    errors << "#{label}: repo URL must appear as a repository source"
  elsif !repo.start_with?("http") && repository_source_urls.any?
    errors << "#{label}: repository source requires matching repo field"
  end

  if url.start_with?("http") && !source_urls.include?(url)
    errors << "#{label}: primary URL must appear in sources"
  elsif url != "" && !url.start_with?("http")
    errors << "#{label}: primary URL must be empty or absolute HTTP(S)"
  end
end

if errors.any?
  warn "Schema validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

content_count = resources.count { |item| AgentWorlds.content_evidence?(item) }
puts "Validated schema for #{content_count} content resources."
