#!/usr/bin/env ruby
# frozen_string_literal: true

require "net/http"
require "uri"
require_relative "lib/resources"

LIVE = ENV["CHECK_LINKS"] == "1"
TIMEOUT_SECONDS = 8

def urls_for(item)
  urls = %w[url repo].each_with_object([]) do |field, acc|
    value = item[field]
    next if value.nil? || value.to_s.empty?

    acc << [field, value.to_s]
  end

  Array(item["sources"]).each do |source|
    value = source["url"]
    urls << ["source", value.to_s] unless value.nil? || value.to_s.empty?
  end

  urls.uniq
end

def valid_url?(url)
  uri = URI.parse(url)
  %w[http https].include?(uri.scheme) && uri.host
rescue URI::InvalidURIError
  false
end

def live_check(url)
  uri = URI.parse(url)
  request = Net::HTTP::Head.new(uri)
  response = Net::HTTP.start(
    uri.host,
    uri.port,
    use_ssl: uri.scheme == "https",
    open_timeout: TIMEOUT_SECONDS,
    read_timeout: TIMEOUT_SECONDS
  ) { |http| http.request(request) }

  return response.code.to_i if response.code.to_i < 400

  fallback = Net::HTTP.get_response(uri)
  fallback.code.to_i
rescue StandardError
  nil
end

errors = []
warnings = []

AgentWorlds.load_resources.each do |item|
  urls_for(item).each do |field, url|
    label = "#{item['name']} #{field}"
    unless valid_url?(url)
      errors << "#{label}: invalid URL #{url.inspect}"
      next
    end

    next unless LIVE

    status = live_check(url)
    if status.nil?
      warnings << "#{label}: request failed"
    elsif status >= 400
      warnings << "#{label}: HTTP #{status}"
    end
  end
end

if errors.any?
  warn "Link validation failed:"
  errors.each { |error| warn "- #{error}" }
  exit 1
end

warnings.each { |warning| warn "- #{warning}" }
mode = LIVE ? "live" : "offline"
puts "Checked resource links in #{mode} mode with #{warnings.length} warnings."
