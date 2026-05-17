# Static Explorer

Static Explorer is the bilingual web view for Awesome Agent Worlds. It turns the curated index into a lightweight interface for scanning agent-world resources, comparing evidence fields, and following weekly hot-paper candidates.

## Run Locally

From the repository root:

```bash
python3 -m http.server 8000 --directory site
```

Open:

```text
http://127.0.0.1:8000/
```

No build step is required. The page reads `data.js`, `i18n.js`, and `app.js` directly.

## Interface

- **Home** summarizes the project thesis and headline coverage metrics.
- **World surface map** groups resources by where agents act: web, GUI, mobile, code, API, research, embodied worlds, and training loops.
- **Weekly hot papers** highlights recent papers that are already indexed or should be watched next.
- **Resource explorer** provides search, category filters, readiness labels, trajectory/reset fields, source confidence, sorting, and a public-repository toggle.
- **Language switch** changes the interface between Chinese and English.

## Basic Use

1. Start from the world surface that matches your agent task.
2. Filter by resource kind, readiness, trajectory availability, reset support, and source confidence.
3. Sort by recommendation, maturity score, recency, name, or curation priority.
4. Open each resource from the table to inspect the first-party project page, paper, or repository.
