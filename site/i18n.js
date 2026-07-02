(function () {
  const copy = {
    en: {
      documentTitle: "Awesome Agent Worlds",
      navHome: "Home",
      navExplorer: "Explorer",
      navResourceIndex: "Index",
      navSelectionGuide: "Selection",
      navReadingOrder: "Reading",
      navData: "Data",
      navFeaturedHotPapers: "Featured 12",
      navHotPapers: "Hot Papers",
      navCitation: "Cite", navMoreDocs: "Docs",
      heroEyebrow: "Awesome Agent Worlds",
      heroTitle: "Verifiable Agent World Index",
      heroLead: "A professional map of runnable environments, verifiers, trajectories, safety benchmarks, and production signals for LLM/VLM agents.",
      primaryAction: "Explore index",
      starterAction: "Start here",
      secondaryAction: "Featured 12",
      mapEyebrow: "World surface map",
      mapTitle: "Enter agent worlds by interaction surface",
      mapText: "Start with the system layer or interaction surface, then filter by verifier, trajectory, sandbox, and training value.",
      homeWorlds: "curated resources",
      homeBenchmarks: "public runnable",
      homeProduction: "featured papers",
      homeCategories: "categories",
      metricResources: "resources",
      metricRunnable: "public runnable",
      metricTrajectories: "trajectory assets",
      trajectoryCount: "trajectories",
      metricRationales: "rationale notes",
      metricHot: "Featured 12",
      hotEyebrow: "Featured weekly view",
      hotTitle: "Featured 12 Hot Papers",
      hotNote: "The homepage shows a Featured 12 strip; the full weekly table is in the Hot Papers document.",
      explorerLabel: "Resource explorer",
      filterSearch: "Search",
      filterPath: "Reader path",
      filterKind: "Resource kind",
      filterCategory: "Category",
      filterReadiness: "Readiness",
      filterSource: "Source",
      filterTrajectory: "Trajectory",
      filterReset: "Reset",
      filterSort: "Sort",
      repoOnly: "Public repo only",
      reset: "Reset",
      searchPlaceholder: "OSWorld, verifier, desktop",
      liveSlice: "Live slice",
      resources: "resources",
      legendProd: "production-grade",
      legendTrain: "training candidate",
      legendEval: "product or eval signal",
      thResource: "Resource",
      thKind: "Kind",
      thReadiness: "Readiness",
      thEvidence: "Evidence",
      thReward: "Reward / Verifier",
      thFlags: "Flags",
      whyItMatters: "Why",
      emptyHot: "No Featured Hot Papers entries in the current view.",
      emptyRows: "No resources match the current filters.", showMore: "Show more",
      allPaths: "All paths",
      allKinds: "All kinds",
      allCategories: "All categories",
      allLabels: "All labels",
      allSources: "All sources",
      allTrajectories: "All trajectories",
      allResetModes: "All reset modes",
      sortBy: "Sort by",
      score: "score", catalogStatus: { indexed: "indexed" }
    },
    zh: {
      documentTitle: "Awesome Agent Worlds｜智能体世界索引",
      navHome: "首页",
      navExplorer: "资源浏览",
      navResourceIndex: "索引",
      navSelectionGuide: "选型",
      navReadingOrder: "阅读",
      navData: "数据",
      navFeaturedHotPapers: "精选 12",
      navHotPapers: "热点论文",
      navCitation: "引用", navMoreDocs: "文档",
      heroEyebrow: "Awesome Agent Worlds",
      heroTitle: "可验证智能体世界索引",
      heroLead: "面向专业读者的 LLM/VLM 智能体环境、验证器、轨迹、安全评测与生产信号汇总库。",
      primaryAction: "浏览索引",
      starterAction: "新读者入口",
      secondaryAction: "精选 12",
      mapEyebrow: "世界表面地图",
      mapTitle: "从交互表面进入智能体世界",
      mapText: "先按系统层或交互表面定位，再用验证器、轨迹、沙箱和训练价值做筛选。",
      homeWorlds: "内容资源",
      homeBenchmarks: "公开可运行",
      homeProduction: "精选论文",
      homeCategories: "分类方向",
      metricResources: "内容资源",
      metricRunnable: "公开可运行",
      metricTrajectories: "轨迹资产",
      trajectoryCount: "条轨迹",
      metricRationales: "纳入理由",
      metricHot: "精选 12",
      hotEyebrow: "每周精选视图",
      hotTitle: "精选 12 篇热点论文",
      hotNote: "首页展示 Featured 12 精选条带，完整每周表格见 Hot Papers 文档。",
      explorerLabel: "资源浏览器",
      filterSearch: "搜索",
      filterPath: "阅读路径",
      filterKind: "资源类型",
      filterCategory: "分类",
      filterReadiness: "成熟度",
      filterSource: "来源",
      filterTrajectory: "轨迹",
      filterReset: "重置",
      filterSort: "排序",
      repoOnly: "仅看公开仓库",
      reset: "重置筛选",
      searchPlaceholder: "OSWorld、验证器、桌面环境",
      liveSlice: "当前筛选",
      resources: "项资源",
      legendProd: "生产级",
      legendTrain: "训练候选",
      legendEval: "产品或评测信号",
      thResource: "资源",
      thKind: "类型",
      thReadiness: "成熟度",
      thEvidence: "证据",
      thReward: "奖励 / 验证器",
      thFlags: "标签",
      whyItMatters: "纳入理由",
      emptyHot: "当前视图中没有精选热点论文条目。",
      emptyRows: "没有资源匹配当前筛选条件。", showMore: "显示更多",
      allPaths: "全部路径",
      allKinds: "全部类型",
      allCategories: "全部分类",
      allLabels: "全部成熟度",
      allSources: "全部来源",
      allTrajectories: "全部轨迹",
      allResetModes: "全部重置方式",
      sortBy: "排序方式",
      score: "评分", catalogStatus: { indexed: "已入库" }
    }
  };

  const labels = {
    category: {
      "agent-infrastructure": "智能体基础设施",
      "api-world": "API 世界",
      "code-world": "代码世界",
      "computer-world": "电脑使用世界",
      "embodied-world": "具身世界",
      "generative-3d-world": "生成式 3D 世界",
      "gui-world": "GUI 世界",
      "mobile-world": "移动端世界",
      "research-world": "研究世界",
      "training-framework": "训练框架",
      "web-world": "Web 世界"
    },
    kind: {
      agent_infrastructure: "智能体基础设施",
      benchmark: "评测基准",
      closed_product_signal: "闭源产品信号",
      dataset: "数据集",
      model_release: "模型发布",
      protocol: "协议",
      safety_control: "安全控制",
      training_framework: "训练框架",
      world: "世界型资源"
    },
    label: {
      "eval candidate": "评测候选",
      infrastructure: "基础设施",
      "model release": "模型发布",
      "product signal": "产品信号",
      "production-grade": "生产级",
      protocol: "协议",
      "safety control": "安全控制",
      "training candidate": "训练候选",
      "training infrastructure": "训练基础设施"
    },
    path: {
      "build-evals": "构建评测",
      "train-rollouts": "训练 rollouts",
      foundations: "基础脉络",
      "production-direction": "生产方向",
      "release-gates": "发布门禁",
      "safety-audit": "安全审计"
    },
    source: { high: "高可信", official: "官方" },
    catalogStatus: { indexed: "已入库" },
    trajectory: {
      none: "无公开轨迹",
      partial: "部分轨迹",
      private_telemetry: "私有遥测",
      public: "公开轨迹",
      synthetic: "合成轨迹",
      not_applicable: "不适用"
    },
    reset: {
      closed_or_private: "闭源或私有",
      dataset_replay: "数据集回放",
      episode_reset: "回合重置",
      none: "无重置",
      partial: "部分支持",
      not_applicable: "不适用"
    },
    reproducibility: {
      closed_product: "闭源产品",
      paper_or_api: "论文或 API",
      policy_spec: "策略规范",
      protocol_spec: "协议规范",
      public_code: "公开代码",
      public_dataset: "公开数据集",
      public_runnable: "公开可运行"
    },
    sort: {
      recommended: "推荐顺序",
      score: "成熟度评分",
      newest: "最新年份",
      name: "名称",
      priority: "策展优先级"
    },
    flag: {
      "agent-infrastructure": "智能体基础设施",
      benchmark: "评测基准",
      "closed-product": "闭源产品",
      "closed-product-signal": "闭源产品信号",
      dataset: "数据集",
      "eval-only": "仅评测",
      "judge-risk": "裁判风险",
      "model-release": "模型发布",
      "no-public-repo": "无公开仓库",
      "no-public-trajectories": "无公开轨迹",
      "paper-only": "仅论文",
      "partial-trajectories": "部分轨迹",
      "private-telemetry": "私有遥测",
      "production-grade": "生产级",
      protocol: "协议",
      "public-trajectories": "公开轨迹",
      "reset-unclear": "重置不明",
      "safety-control": "安全控制",
      "synthetic-trajectories": "合成轨迹",
      "training-framework": "训练框架",
      "training-ready": "训练就绪",
      world: "世界型资源"
    }
  };

  const displayOverrides = {
    ai2thor: "AI2-THOR",
    api: "API",
    browser_environment: "browser environment",
    closed_or_private: "closed/private",
    dataset_replay: "dataset replay",
    episode_reset: "episode reset",
    generated_interactive_world: "generated interactive world",
    llm_judge: "LLM judge",
    local_or_self_hosted: "local/self-hosted",
    private_only: "private only",
    private_telemetry: "private telemetry",
    public_training_ready: "public training ready",
    self_hosted_web: "self-hosted web",
    task_dependent: "task dependent",
    vm: "VM"
  };

  function titleCase(value) {
    const raw = String(value ?? "no");
    if (displayOverrides[raw]) return displayOverrides[raw];
    return raw.replaceAll("_", " ").replaceAll("-", " ").replace(/\b\w/g, (char) => char.toUpperCase())
      .replace(/\b(Api|Gui|Mcp|Llm|Vlm|Rl|Sft|Vm)\b/g, (word) => word.toUpperCase());
  }

  function initialLanguage() {
    let saved = null;
    try { saved = localStorage.getItem("agent-worlds-language"); } catch (_error) { saved = null; }
    if (saved === "zh" || saved === "en") return saved;
    return navigator.language.toLowerCase().startsWith("zh") ? "zh" : "en";
  }

  window.AGENT_WORLDS_I18N = {
    initialLanguage,
    saveLanguage(lang) {
      try { localStorage.setItem("agent-worlds-language", lang); } catch (_error) {}
    },
    hotMeta(lang, updated, cadence) {
      const cadenceText = cadence === "weekly" ? (lang === "zh" ? "每周" : "weekly") : titleCase(cadence);
      return `${lang === "zh" ? "更新：" : "Updated: "}${updated || "unknown"} · ${cadenceText}`;
    },
    t(lang, key) {
      return (copy[lang] && copy[lang][key]) || copy.en[key] || key;
    },
    format(lang, group, value) {
      if (lang === "zh" && labels[group] && labels[group][value]) return labels[group][value];
      return titleCase(value);
    }
  };
}());
