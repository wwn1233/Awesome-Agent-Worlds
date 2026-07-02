# Static Explorer

Static Explorer is the bilingual, dependency-free web view for Awesome Agent
Worlds. It turns the curated index into a lightweight interface for browsing
agent-world resources, filtering by surface, comparing evidence fields and
inclusion rationale, and following the Featured 12 strip from the weekly Hot Papers view.

GitHub shows `site/index.html` as source code. To view the interface, run the
local command below from the repository root and open the local URL.

## 中文说明

Static Explorer 是 Awesome Agent Worlds 的双语可视化首页。它把资源索引转换成一个可按表面筛选、
可搜索、可切换中英文的轻量网页，用于快速查看 Agent Worlds 资源、证据字段、纳入理由、
成熟度标签和每周 Hot Papers 的 Featured 12 精选条带。

主要界面包括：首页概览、核心指标栏、交互表面地图、Featured 12 精选热点论文条带、
紧凑顶部导航、资源浏览器和语言切换。读者可以从任务场景进入，也可以按类别、成熟度、
轨迹可用性、reset 支持、源码可用性和来源可信度过滤资源。

## Run Locally

From the repository root:

```bash
ruby -run -e httpd . -p 8026
```

Python's standard library works as an alternative:

```bash
python3 -m http.server 8026
```

Open:

```text
http://127.0.0.1:8026/site/index.html
```

No build step is required. The page reads `data.js`, `i18n.js`, `app.js`, and
`surfaces.js` directly. Use `others/data/resources.yaml` as the canonical
catalog; `site/data.js` is the static browser bundle used by the webpage. The
Featured Hot Papers strip highlights a compact Featured 12 subset of the full
weekly Hot Papers table and displays the public update date and weekly cadence.

中文本地查看：在仓库根目录运行上面的 `ruby` 或 `python3` 命令，然后打开 `http://127.0.0.1:8026/site/index.html`。页面右上角可以在中文和英文界面之间切换。

## Structured Data

The [Structured Data](../others/data/resources.yaml) is the canonical catalog
behind the web view. It includes category, resource kind, modality, action
surface, reward or verifier, trajectory availability, reset support, sandbox
boundary, per-source confidence values, reader paths, source URLs, and inclusion
rationale for each resource. The web view and Resource Index add derived scoring
fields. Entries are maintained from primary sources, and readiness labels are evidence labels
rather than claims about model quality or scientific impact. Readiness scores and
display labels are derived view fields, not separate canonical source fields.

## Interface

- **Top navigation** uses compact labels for Home, Explorer, Index, Selection,
  Reading, Data, Featured 12, Hot Papers, Cite, and Docs. Document links stay
  repository-relative in source, and the local web view opens Markdown and YAML
  links on GitHub so they remain readable from a static local server.
- **Home** summarizes repository scope through curated resources, public-runnable coverage, Featured Hot Papers coverage, category count, and direct routes to the explorer, reader starter packs, and Featured 12 strip.
- **Metrics band** shows total resources, public-runnable entries, trajectory assets, inclusion-rationale coverage, and Featured Hot Papers count. Public-runnable entries are resources whose reproducibility field is `public_runnable`; trajectory assets count public, partial, or synthetic trajectory availability.
- **World surface map** filters resources by infrastructure/protocols and where agents act: web, GUI, mobile, code, API, research, embodied worlds, and training loops.
- **Featured Hot Papers** highlights the Featured 12 indexed papers from the current public weekly table, with the same update date and weekly cadence shown in the Hot Papers document.
- **Resource explorer** provides search, category filters, readiness labels, trajectory/reset fields, source confidence, searchable `Why` / `纳入理由` lines, sorting, a public-repository toggle, and incremental row loading for the full catalog.
- **Language switch** changes the interface between Chinese and English.

The interface groups 11 canonical resource categories into broader reader-facing surfaces. Canonical category placement is maintained in the Resource Index.

## Related Docs

- [Resource Index](../others/docs/resource-index.md)
- [Structured Data](../others/data/resources.yaml)
- [Selection Guide](../others/docs/selection-guide.md)
- [Reading Order](../others/docs/reading-order.md)
- [Hot Papers](../others/docs/hot-papers.md)
- [Flagship Matrix](../others/docs/flagship-matrix.md)
- [Citation](../README.md#citation)
- [CITATION.cff](../CITATION.cff)
- [Resource proposal template](../.github/ISSUE_TEMPLATE/add-resource.md)
- [Pull request evidence checklist](../.github/pull_request_template.md)

## Basic Use

1. Start from the infrastructure layer or world surface that matches your agent task.
2. Use the surface cards or filters to narrow by resource kind, readiness, trajectory availability, reset support, and source confidence.
3. Sort by recommendation, maturity score, recency, name, or curated priority.
4. Read the `Why` / `纳入理由` line to understand why a resource belongs in this catalog.
5. Open each resource from the table to inspect the first-party project page, paper, or repository.
