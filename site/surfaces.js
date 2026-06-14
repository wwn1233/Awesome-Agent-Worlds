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

  function updateActiveSurface() {
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
  updateActiveSurface();
}());
