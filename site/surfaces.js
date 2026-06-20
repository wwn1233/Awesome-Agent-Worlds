(function () {
  window.AGENT_WORLDS_SURFACES = {
    infra: ["agent-infrastructure"],
    web: ["web-world"],
    gui: ["computer-world", "gui-world"],
    mobile: ["mobile-world"],
    code: ["code-world"],
    api: ["api-world"],
    research: ["research-world"],
    embodied: ["embodied-world", "generative-3d-world"],
    training: ["training-framework"]
  };

  const app = window.AGENT_WORLDS_APP;
  const buttons = document.querySelectorAll("[data-surface]");
  const surfaceCopy = {
    en: {
      infra: ["Infra", "protocols / tools / runtime"],
      web: ["Web", "browser / DOM / sites"],
      gui: ["GUI", "desktop / screen / apps"],
      mobile: ["Mobile", "phone / apps / privacy"],
      code: ["Code", "repos / tests / terminals"],
      api: ["API", "tools / business state"],
      research: ["Research", "papers / analysis / rubrics"],
      embodied: ["Embodied", "robots / games / 3D"],
      training: ["Training", "rollouts / rewards / RL"]
    },
    zh: {
      infra: ["基础设施", "协议 / 工具 / 运行时"],
      web: ["Web", "浏览器 / DOM / 网站"],
      gui: ["GUI", "桌面 / 屏幕 / 应用"],
      mobile: ["移动端", "手机 / 应用 / 隐私"],
      code: ["代码", "仓库 / 测试 / 终端"],
      api: ["API", "工具 / 业务状态"],
      research: ["研究", "论文 / 分析 / 评测"],
      embodied: ["具身", "机器人 / 游戏 / 3D"],
      training: ["训练", "rollouts / 奖励 / RL"]
    }
  };

  function applySurfaceCopy() {
    const copy = surfaceCopy[app.state.lang] || surfaceCopy.en;
    buttons.forEach((button) => {
      const values = copy[button.dataset.surface];
      const title = button.querySelector("b");
      const description = button.querySelector("span");
      if (!values) return;
      if (title) title.textContent = values[0];
      if (description) description.textContent = values[1];
    });
  }

  function updateActiveSurface() {
    applySurfaceCopy();
    buttons.forEach((button) => {
      const active = button.dataset.surface === app.state.surface;
      button.classList.toggle("active", active);
      button.setAttribute("aria-current", active ? "true" : "false");
    });
  }
  window.AGENT_WORLDS_UPDATE_SURFACE = updateActiveSurface;

  buttons.forEach((button) => {
    button.addEventListener("click", () => {
      app.state.surface = button.dataset.surface;
      app.state.category = "all";
      app.syncControls();
      app.render();
      updateActiveSurface();
    });
  });

  app.refs.category.addEventListener("change", () => {
    app.state.surface = "all";
    updateActiveSurface();
  });
  app.refs.resetButton.addEventListener("click", updateActiveSurface);
  app.refs.langButtons.forEach((button) => button.addEventListener("click", applySurfaceCopy));
  updateActiveSurface();
}());
