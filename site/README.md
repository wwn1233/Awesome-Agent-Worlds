# Static Explorer

Static Explorer is the bilingual web view for Awesome Agent Worlds. It turns the curated index into a lightweight interface for browsing agent-world resources, filtering by surface, comparing evidence fields, and following indexed papers from the weekly Hot Papers view through a compact homepage strip.

## 中文说明

Static Explorer 是 Awesome Agent Worlds 的双语可视化首页。它把资源索引转换成一个可按表面筛选、可搜索、可切换中英文的轻量网页，用于快速查看 Agent Worlds 资源、证据字段、成熟度标签和每周热点论文精简视图。

主要界面包括：首页概览、交互表面地图、每周热点论文精简视图、资源浏览器和语言切换。读者可以从任务场景进入，也可以按类别、成熟度、轨迹可用性、reset 支持、源码可用性和来源可信度过滤资源。

## Run Locally

From the repository root:

```bash
ruby -run -e httpd site -p 8026
```

Open:

```text
http://127.0.0.1:8026/index.html
```

No build step is required. The page reads `data.js`, `i18n.js`, `app.js`, and `surfaces.js` directly.
The public catalog is mirrored in `others/data/resources.yaml`; the Hot Papers strip highlights a compact indexed subset of the full weekly Hot Papers table.

## Interface

- **Home** summarizes the repository scope, indexed resources, average readiness, trajectory coverage, and weekly Hot Papers strip.
- **World surface map** filters resources by infrastructure/protocols and where agents act: web, GUI, mobile, code, API, research, embodied worlds, and training loops.
- **Weekly hot papers** highlights a compact subset of recent papers already indexed in the catalog.
- **Resource explorer** provides search, category filters, readiness labels, trajectory/reset fields, source confidence, sorting, and a public-repository toggle.
- **Language switch** changes the interface between Chinese and English.

The interface groups 11 canonical resource categories into broader reader-facing surfaces. Canonical category placement is maintained in the Resource Index.

## Related Docs

- [Resource Index](../others/docs/resource-index.md)
- [Selection Guide](../others/docs/selection-guide.md)
- [Reading Order](../others/docs/reading-order.md)
- [Hot Papers](../others/docs/hot-papers.md)
- [Flagship Matrix](../others/docs/flagship-matrix.md)
- [Resource proposal template](../.github/ISSUE_TEMPLATE/add-resource.md)

## Basic Use

1. Start from the infrastructure layer or world surface that matches your agent task.
2. Use the surface cards or filters to narrow by resource kind, readiness, trajectory availability, reset support, and source confidence.
3. Sort by recommendation, maturity score, recency, name, or curated priority.
4. Open each resource from the table to inspect the first-party project page, paper, or repository.
