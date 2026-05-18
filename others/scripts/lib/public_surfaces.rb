# frozen_string_literal: true

module AgentWorlds
  PUBLIC_TRACE_FILES = %w[
    README.md
    .gitignore
    CHANGELOG.md
    CITATION.cff
    .github/ISSUE_TEMPLATE/add-resource.md
    .github/pull_request_template.md
    site/README.md
    site/index.html
    site/app.js
    site/i18n.js
    site/data.js
    site/home.css
    site/styles.css
    utils/world-stack.svg
    utils/agent-world-loop.svg
    others/CONTRIBUTING.md
    others/docs/resource-index.md
    others/docs/flagship-matrix.md
    others/docs/selection-guide.md
    others/docs/reading-order.md
    others/docs/taxonomy.md
    others/docs/key-concepts.md
    others/docs/maturity-model.md
    others/docs/benchmark-landscape.md
    others/docs/reward-atlas.md
    others/docs/landmark-worlds.md
    others/docs/awesome-list.md
    others/docs/hot-papers.md
    others/docs/hot-paper-archive-2026-05.md
    others/docs/source-map.md
    others/docs/production-signals.md
    others/docs/survey.md
  ].freeze

  PUBLIC_LINK_FILES = PUBLIC_TRACE_FILES.reject do |path|
    path.end_with?(".js", ".css")
  end.freeze
end
