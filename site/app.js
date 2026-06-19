const i18n = window.AGENT_WORLDS_I18N;

const state = {
  lang: i18n.initialLanguage(),
  search: "",
  path: "all",
  kind: "all",
  category: "all",
  label: "all",
  source: "all",
  trajectory: "all",
  reset: "all",
  surface: "all",
  sort: "recommended",
  repoOnly: false
};

const data = window.AGENT_WORLDS_DATA;
const refs = {
  resources: document.querySelector("#metricResources"),
  runnable: document.querySelector("#metricRunnable"),
  trajectories: document.querySelector("#metricTrajectories"),
  average: document.querySelector("#metricAverage"),
  hot: document.querySelector("#metricHot"),
  homeWorlds: document.querySelector("#homeWorlds"),
  homeBenchmarks: document.querySelector("#homeBenchmarks"),
  homeProduction: document.querySelector("#homeProduction"),
  homeCategories: document.querySelector("#homeCategories"),
  langButtons: document.querySelectorAll("[data-lang]"),
  search: document.querySelector("#searchInput"),
  path: document.querySelector("#pathSelect"),
  kind: document.querySelector("#kindSelect"),
  category: document.querySelector("#categorySelect"),
  label: document.querySelector("#labelSelect"),
  source: document.querySelector("#sourceSelect"),
  trajectory: document.querySelector("#trajectorySelect"),
  reset: document.querySelector("#resetSelect"),
  sort: document.querySelector("#sortSelect"),
  repoOnly: document.querySelector("#repoOnly"),
  resetButton: document.querySelector("#resetButton"),
  hotPapers: document.querySelector("#hotPapers"),
  resultCount: document.querySelector("#resultCount"),
  bars: document.querySelector("#categoryBars"),
  rows: document.querySelector("#resourceRows")
};

const contentResources = data.resources;
function text(value) {
  if (value === true) return "yes";
  if (value === false || value === null || value === undefined) return "no";
  return String(value);
}
function ui(key) {
  return i18n.t(state.lang, key);
}
function label(group, value) {
  return i18n.format(state.lang, group, value);
}

function escapeHtml(value) {
  return text(value)
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;");
}

function unique(values) {
  return [...new Set(values.filter(Boolean))].sort();
}

function optionList(values, label, formatter = (value) => i18n.format("en", "", value)) {
  return [`<option value="all">${label}</option>`]
    .concat(values.map((value) => `<option value="${escapeHtml(value)}">${escapeHtml(formatter(value))}</option>`))
    .join("");
}

function populateFilters() {
  refs.path.innerHTML = optionList(unique(contentResources.flatMap((item) => item.reader_paths)), ui("allPaths"), (value) => label("path", value));
  refs.kind.innerHTML = optionList(Object.keys(data.kinds), ui("allKinds"), (value) => label("kind", value));
  refs.category.innerHTML = optionList(Object.keys(data.categories), ui("allCategories"), (value) => label("category", value));
  refs.label.innerHTML = optionList(Object.keys(data.labels), ui("allLabels"), (value) => label("label", value));
  refs.source.innerHTML = optionList(unique(contentResources.map((item) => item.source_confidence)), ui("allSources"), (value) => label("source", value));
  refs.trajectory.innerHTML = optionList(unique(contentResources.map((item) => item.trajectory_availability)), ui("allTrajectories"), (value) => label("trajectory", value));
  refs.reset.innerHTML = optionList(unique(contentResources.map((item) => item.reset_support)), ui("allResetModes"), (value) => label("reset", value));
  refs.sort.innerHTML = optionList(["recommended", "score", "newest", "name", "priority"], ui("sortBy"), (value) => label("sort", value));
  syncControls();
}

function syncControls() {
  refs.search.value = state.search;
  refs.path.value = state.path;
  refs.kind.value = state.kind;
  refs.category.value = state.category;
  refs.label.value = state.label;
  refs.source.value = state.source;
  refs.trajectory.value = state.trajectory;
  refs.reset.value = state.reset;
  refs.sort.value = state.sort;
  refs.repoOnly.checked = state.repoOnly;
}

function applyLanguage() {
  document.documentElement.lang = state.lang === "zh" ? "zh-CN" : "en";
  document.title = ui("documentTitle");
  document.querySelectorAll("[data-i18n]").forEach((element) => {
    element.textContent = ui(element.dataset.i18n);
  });
  document.querySelectorAll("[data-i18n-placeholder]").forEach((element) => {
    element.placeholder = ui(element.dataset.i18nPlaceholder);
  });
  refs.langButtons.forEach((button) => {
    const active = button.dataset.lang === state.lang;
    button.classList.toggle("active", active);
    button.setAttribute("aria-pressed", String(active));
  });
  populateFilters();
  renderHotPapers();
  render();
}

function init() {
  refs.resources.textContent = data.summary.resources;
  refs.runnable.textContent = data.summary.public_runnable;
  refs.trajectories.textContent = data.summary.trajectory_assets;
  refs.average.textContent = `${data.summary.average_score}/14`;
  refs.hot.textContent = data.hot_papers.visible || data.hot_papers.papers.length;
  refs.homeWorlds.textContent = data.kinds.world || 0;
  refs.homeBenchmarks.textContent = data.kinds.benchmark || 0;
  refs.homeProduction.textContent = data.labels["production-grade"] || 0;
  refs.homeCategories.textContent = data.summary.categories;

  [
    ["input", refs.search, (event) => { state.search = event.target.value.trim().toLowerCase(); }],
    ["change", refs.path, (event) => { state.path = event.target.value; }],
    ["change", refs.kind, (event) => { state.kind = event.target.value; }],
    ["change", refs.category, (event) => { state.category = event.target.value; }],
    ["change", refs.label, (event) => { state.label = event.target.value; }],
    ["change", refs.source, (event) => { state.source = event.target.value; }],
    ["change", refs.trajectory, (event) => { state.trajectory = event.target.value; }],
    ["change", refs.reset, (event) => { state.reset = event.target.value; }],
    ["change", refs.sort, (event) => { state.sort = event.target.value; }],
    ["change", refs.repoOnly, (event) => { state.repoOnly = event.target.checked; }]
  ].forEach(([type, element, handler]) => {
    element.addEventListener(type, (event) => {
      handler(event);
      render();
    });
  });

  refs.resetButton.addEventListener("click", resetFilters);
  refs.langButtons.forEach((button) => {
    button.addEventListener("click", () => {
      state.lang = button.dataset.lang;
      i18n.saveLanguage(state.lang);
      applyLanguage();
    });
  });
  applyLanguage();
}

function renderHotPapers() {
  const papers = data.hot_papers.papers.slice(0, data.hot_papers.visible || 12);
  if (!papers.length) {
    refs.hotPapers.innerHTML = `<p class="empty">${escapeHtml(ui("emptyHot"))}</p>`;
    return;
  }

  refs.hotPapers.innerHTML = papers.map((paper) => {
    const status = label("catalogStatus", paper.catalog_status);
    const signals = paper.evidence_terms.slice(0, 4).join(", ");
    return `<a class="hotPaper" href="${escapeHtml(paper.url)}">
      <b>${escapeHtml(paper.title)}</b>
      <span>${escapeHtml(paper.published.slice(0, 10))} · ${escapeHtml(status)}</span>
      <small>${escapeHtml(signals)}</small>
    </a>`;
  }).join("");
}

function resetFilters() {
  Object.assign(state, {
    search: "",
    path: "all",
    kind: "all",
    category: "all",
    label: "all",
    source: "all",
    trajectory: "all",
    reset: "all",
    surface: "all",
    sort: "recommended",
    repoOnly: false
  });
  syncControls();
  render();
}

function matches(item) {
  const haystack = [
    item.name,
    item.category,
    item.canonical_category,
    item.resource_kind,
    item.display_label,
    item.reward_type,
    item.verifier,
    item.notes,
    item.modality.join(" "),
    item.action_space.join(" "),
    item.reader_paths.join(" ")
  ].join(" ").toLowerCase();

  if (state.search && !haystack.includes(state.search)) return false;
  if (state.path !== "all" && !item.reader_paths.includes(state.path)) return false;
  if (state.kind !== "all" && item.resource_kind !== state.kind) return false;
  if (state.category !== "all" && item.canonical_category !== state.category) return false;
  if (state.label !== "all" && item.display_label !== state.label) return false;
  if (state.source !== "all" && item.source_confidence !== state.source) return false;
  if (state.trajectory !== "all" && item.trajectory_availability !== state.trajectory) return false;
  if (state.reset !== "all" && item.reset_support !== state.reset) return false;
  if (state.surface !== "all" && !(window.AGENT_WORLDS_SURFACES[state.surface] || []).includes(item.canonical_category)) return false;
  if (state.repoOnly && !item.repo) return false;
  return true;
}

function sorted(items) {
  return [...items].sort((a, b) => {
    if (state.sort === "score") return b.readiness_score - a.readiness_score || a.name.localeCompare(b.name);
    if (state.sort === "newest") return Number(b.year) - Number(a.year) || a.name.localeCompare(b.name);
    if (state.sort === "name") return a.name.localeCompare(b.name);
    if (state.sort === "priority") return b.curation_priority - a.curation_priority || a.name.localeCompare(b.name);
    return (a.recommended_rank || 999) - (b.recommended_rank || 999) ||
      b.readiness_score - a.readiness_score ||
      a.name.localeCompare(b.name);
  });
}

function render() {
  const items = sorted(contentResources.filter(matches));
  refs.resultCount.textContent = items.length;
  renderBars(items);
  renderRows(items);
}

function renderBars(items) {
  const counts = items.reduce((memo, item) => {
    memo[item.canonical_category] = (memo[item.canonical_category] || 0) + 1;
    return memo;
  }, {});
  const max = Math.max(1, ...Object.values(counts));

  refs.bars.innerHTML = Object.entries(counts)
    .sort((a, b) => b[1] - a[1])
    .map(([category, count]) => {
      const width = Math.max(6, Math.round((count / max) * 100));
      return `<button class="barRow" type="button" data-category="${escapeHtml(category)}">
        <span>${escapeHtml(label("category", category))}</span>
        <span class="barTrack"><i class="barFill" style="width:${width}%"></i></span>
        <b>${count}</b>
      </button>`;
    })
    .join("");

  refs.bars.querySelectorAll("button").forEach((button) => {
    button.addEventListener("click", () => {
      state.surface = "all";
      state.category = button.dataset.category;
      refs.category.value = state.category;
      render(); window.AGENT_WORLDS_UPDATE_SURFACE?.();
    });
  });
}

function renderRows(items) {
  if (!items.length) {
    refs.rows.innerHTML = `<tr><td class="empty" colspan="6">${escapeHtml(ui("emptyRows"))}</td></tr>`;
    return;
  }

  refs.rows.innerHTML = items.map((item) => {
    const labels = item.strictness_labels.slice(0, 5)
      .map((flag) => `<span class="flag">${escapeHtml(label("flag", flag))}</span>`)
      .join("");
    const trajectoryCount = item.trajectory_count ? `${Number(item.trajectory_count).toLocaleString()} ${ui("trajectoryCount")}` : "";
    const evidence = [item.scale, trajectoryCount, label("trajectory", item.trajectory_availability),
      label("reset", item.reset_support), label("reproducibility", item.reproducibility)].filter(Boolean).map(escapeHtml).join("<br>");

    return `<tr>
      <td><a href="${escapeHtml(item.url)}">${escapeHtml(item.name)}</a><br>${escapeHtml(item.notes)}</td>
      <td>${escapeHtml(label("kind", item.resource_kind))}<br>${escapeHtml(label("category", item.canonical_category))}</td>
      <td class="score">${item.readiness_score}/14<br>${escapeHtml(label("label", item.display_label))}</td>
      <td>${evidence}</td>
      <td>${escapeHtml(label("field", item.reward_type))}<br>${escapeHtml(label("field", item.verifier_family))} / ${escapeHtml(label("field", item.verifier))}</td>
      <td><span class="flags">${labels}</span></td>
    </tr>`;
  }).join("");
}

window.AGENT_WORLDS_APP = { state, refs, render, syncControls };
init();
