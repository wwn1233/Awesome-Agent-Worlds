(function () {
  const copy = {
    en: {
      documentTitle: "Awesome Agent Worlds",
      navHome: "Home",
      navExplorer: "Explorer",
      navWatchlist: "Watchlist",
      heroEyebrow: "Awesome Agent Worlds",
      heroTitle: "Verifiable Agent World Index",
      heroLead: "A professional map of runnable environments, verifiers, trajectories, safety benchmarks, and production signals for LLM/VLM agents.",
      primaryAction: "Explore index",
      secondaryAction: "Hot papers",
      thesisLabel: "Field thesis",
      thesisText: "The limiting feedback channel for agents is not more chat transcripts alone. It is verifiable worlds that produce reusable trajectories.",
      homeKickerA: "Coverage",
      homeTitleA: "Curated worlds and benchmarks",
      homeTextA: "Web, GUI, mobile, code, tool, research, embodied, generated, and safety-focused environments are tracked with structured evidence.",
      homeKickerB: "Evaluation",
      homeTitleB: "Verifier-first taxonomy",
      homeTextB: "Each resource is scored by runtime, reward, reset, trajectory access, sandbox boundary, trainability, and source confidence.",
      homeKickerC: "Direction",
      homeTitleC: "Agent safety and post-training",
      homeTextC: "The index highlights phone-use safety, computer-use safety, public rollouts, and environment feedback loops.",
      mapEyebrow: "World surface map",
      mapTitle: "Enter agent worlds by interaction surface",
      mapText: "Start with the surface an agent acts in, then filter by verifier, trajectory, sandbox, and training value.",
      homeWorlds: "world artifacts",
      homeBenchmarks: "benchmarks",
      homeProduction: "production-grade",
      homeCategories: "categories",
      metricResources: "resources",
      metricRunnable: "public runnable",
      metricTrajectories: "trajectory assets",
      metricSourceCheck: "source checks",
      metricHot: "hot papers",
      hotEyebrow: "Weekly arXiv watchlist",
      hotTitle: "Weekly hot-paper candidates",
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
      emptyHot: "No hot-paper candidates in the current feed.",
      emptyRows: "No resources match the current filters.",
      allPaths: "All paths",
      allKinds: "All kinds",
      allCategories: "All categories",
      allLabels: "All labels",
      allSources: "All sources",
      allTrajectories: "All trajectories",
      allResetModes: "All reset modes",
      sortBy: "Sort by",
      score: "score",
      watchlistCandidate: "candidate"
    },
    zh: {
      documentTitle: "Awesome Agent Worlds｜智能体世界索引",
      navHome: "首页",
      navExplorer: "资源索引",
      navWatchlist: "热点论文",
      heroEyebrow: "Awesome Agent Worlds",
      heroTitle: "可验证智能体世界索引",
      heroLead: "面向专业读者的 LLM/VLM 智能体环境、验证器、轨迹、安全评测与生产信号汇总库。",
      primaryAction: "浏览索引",
      secondaryAction: "热点论文",
      thesisLabel: "核心判断",
      thesisText: "智能体的反馈瓶颈不只是更多聊天语料，而是能产出可复用轨迹的可验证世界。",
      homeKickerA: "覆盖范围",
      homeTitleA: "精选世界与基准",
      homeTextA: "覆盖 Web、GUI、移动端、代码、工具、研究、具身、生成世界，以及安全评测环境，并保留结构化证据。",
      homeKickerB: "评测方法",
      homeTitleB: "验证器优先的分类体系",
      homeTextB: "每个资源按运行环境、奖励、重置、轨迹、沙箱、可训练性和来源可信度进行评分。",
      homeKickerC: "研究方向",
      homeTitleC: "智能体安全与后训练",
      homeTextC: "重点追踪 phone-use safety、computer-use safety、公开 rollout 和环境反馈循环。",
      mapEyebrow: "世界表面地图",
      mapTitle: "从交互表面进入智能体世界",
      mapText: "先按 agent 进入的世界表面定位，再用验证器、轨迹、沙箱和训练价值做筛选。",
      homeWorlds: "世界型资源",
      homeBenchmarks: "评测基准",
      homeProduction: "生产级资源",
      homeCategories: "分类方向",
      metricResources: "内容资源",
      metricRunnable: "公开可运行",
      metricTrajectories: "轨迹资产",
      metricSourceCheck: "来源待确认",
      metricHot: "热点论文",
      hotEyebrow: "每周 arXiv 监控",
      hotTitle: "每周热点论文候选",
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
      emptyHot: "当前 feed 中没有热点论文候选。",
      emptyRows: "没有资源匹配当前筛选条件。",
      allPaths: "全部路径",
      allKinds: "全部类型",
      allCategories: "全部分类",
      allLabels: "全部成熟度",
      allSources: "全部来源",
      allTrajectories: "全部轨迹",
      allResetModes: "全部重置方式",
      sortBy: "排序方式",
      score: "评分",
      watchlistCandidate: "候选"
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
    source: { high: "高可信", medium: "中等可信", official: "官方", reference: "参考" },
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
      priority: "编排优先级"
    },
    watchlist: { candidate: "候选", indexed: "已入库" },
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
      "source-check": "来源待确认",
      "synthetic-trajectories": "合成轨迹",
      "training-framework": "训练框架",
      "training-ready": "训练就绪",
      world: "世界型资源"
    }
  };

  function titleCase(value) {
    return String(value ?? "no").replaceAll("_", " ").replace(/\b\w/g, (char) => char.toUpperCase());
  }

  function initialLanguage() {
    let saved = null;
    try {
      saved = localStorage.getItem("agent-worlds-language");
    } catch (_error) {
      saved = null;
    }
    if (saved === "zh" || saved === "en") return saved;
    return navigator.language.toLowerCase().startsWith("zh") ? "zh" : "en";
  }

  window.AGENT_WORLDS_I18N = {
    initialLanguage,
    saveLanguage(lang) {
      try {
        localStorage.setItem("agent-worlds-language", lang);
      } catch (_error) {
        // Language still switches for the current page even when storage is blocked.
      }
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
