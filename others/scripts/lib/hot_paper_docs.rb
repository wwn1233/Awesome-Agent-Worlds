# frozen_string_literal: true

require_relative "resources"

module AgentWorlds
  module HotPaperDocs
    ACTIVE_LIMIT = 30
    ARCHIVE_THRESHOLD = 50

    module_function

    def write(data)
      archive_path = write_archive(data) if papers(data).length > ARCHIVE_THRESHOLD
      write_active(data, archive_path)
    end

    def write_active(data, archive_path)
      docs_path = File.join(AgentWorlds::ROOT, "docs", "hot-papers.md")
      watchlist_candidates = papers(data).count { |paper| paper["watchlist_candidate"] }
      lines = header_lines(data, watchlist_candidates)
      lines << "- Archive: #{archive_link(archive_path)}" if archive_path
      lines.concat(criteria_lines)
      lines.concat(candidate_table(papers(data).first(ACTIVE_LIMIT)))
      lines.concat(footer_lines)
      File.write(docs_path, lines.join("\n"))
    end

    def write_archive(data)
      month = data["generated_at"].to_s[0, 7]
      path = File.join(AgentWorlds::ROOT, "docs", "hot-paper-archive-#{month}.md")
      lines = [
        "# Hot Paper Archive #{month}",
        "",
        "Monthly arXiv discovery-feed snapshot for the Agent Worlds watch profile.",
        "",
        "Curated resources are the entries in the Resource Index and main README.",
        "",
        "- Last updated: #{data['generated_at']}",
        "- Update cadence: weekly",
        "- Candidates: #{papers(data).length}",
        "",
        "| Paper | Published | Score | Feed status | Signals |",
        "| --- | --- | ---: | --- | --- |"
      ]

      papers(data).each do |paper|
        lines << archive_row(paper)
      end

      File.write(path, lines.join("\n"))
      path
    end

    def header_lines(data, watchlist_candidates)
      [
        "# Hot Papers",
        "",
        "Weekly arXiv discovery feed matching the Agent Worlds watch profile.",
        "",
        "Curated resources are the entries in the Resource Index and main README.",
        "",
        "- Last updated: #{data['generated_at']}",
        "- Last scanned: #{data['generated_at']}",
        "- Update cadence: weekly",
        "- Source: arXiv API",
        "- Window: #{data['query']['days']} days",
        "- Candidates: #{papers(data).length}",
        "- Watchlist candidates: #{watchlist_candidates}"
      ]
    end

    def criteria_lines
      [
        "",
        "## Watchlist Criteria",
        "",
        "A paper remains on the watchlist when it scores at least 12, is not already",
        "indexed, and passes the checklist for world role, observation/action",
        "surface, verifier or reward, reset or replay support, trajectory access,",
        "sandbox or safety boundary, and first-party source evidence. Main-index entries",
        "require confirmed source confidence and complete metadata."
      ]
    end

    def candidate_table(items)
      lines = [
        "",
        "## Candidates",
        "",
        "| Paper | Published | Score | Signals | Status |",
        "| --- | --- | ---: | --- | --- |"
      ]
      items.each { |paper| lines << active_row(paper) }
      lines
    end

    def active_row(paper)
      signals = paper["matched_terms"].join(", ")
      status = paper["watchlist_status"].to_s.tr("_", " ")
      "| [#{paper['title']}](#{paper['url']}) | #{paper['published'][0, 10]} | #{paper['score']} | #{signals} | #{status} |"
    end

    def archive_row(paper)
      status = paper["watchlist_status"].to_s.tr("_", " ")
      "| [#{paper['title']}](#{paper['url']}) | #{paper['published'][0, 10]} | #{paper['score']} | #{status} | #{paper['matched_terms'].join(', ')} |"
    end

    def footer_lines
      [
        "",
        "The feed is refreshed weekly. Add a paper to `others/data/resources.yaml`",
        "only after confirming the world, verifier, trajectory, source, sandbox,",
        "and reproducibility fields from first-party evidence."
      ]
    end

    def archive_link(path)
      label = File.basename(path, ".md").sub("hot-paper-archive-", "")
      "[#{label} full candidate archive](./#{File.basename(path)})"
    end

    def papers(data)
      Array(data["papers"])
    end
  end
end
