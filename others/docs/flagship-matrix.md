# Flagship Matrix

A compact decision matrix for the most important Agent World resources.

Selection prioritizes curated starter resources, then readiness score.
Use this matrix to choose starter resources before reading the full
resource index.

| Resource | Surface | Score | Verifier | Trajectory | Reset | Sandbox | Training | Why it matters |
| --- | --- | ---: | --- | --- | --- | --- | --- | --- |
| [OSWorld-Verified](https://os-world.github.io/) | computer world | 13/14 | programmatic | public | episode_reset | vm | framework_ready | Strong GUI-agent evidence because tasks run in controllable desktop environments with public code and outcome checks. |
| [BrowserGym](https://github.com/ServiceNow/BrowserGym) | web world | 13/14 | benchmark | public | episode_reset | browser_environment | public_training_ready | Reusable browser-agent substrate that connects web tasks, resettable sessions, and training-oriented wrappers. |
| [WebArena-Verified](https://github.com/ServiceNow/webarena-verified) | web world | 13/14 | programmatic | public | episode_reset | self_hosted_web | framework_ready | Cleaner successor signal for web-agent evaluation with stronger task verification discipline than raw success labels. |
| [AndroidWorld](https://github.com/google-research/android_world) | mobile world | 11/14 | programmatic | none | episode_reset | emulator | framework_ready | Mobile GUI benchmark with emulator-based execution, useful for connecting VLM policy work to reproducible action spaces. |
| [tau-bench](https://github.com/sierra-research/tau-bench) | api world | 14/14 | programmatic | public | episode_reset | simulated_backend | public_training_ready | Representative API-agent benchmark where tool calls, state transitions, and task outcomes are inspectable. |
| [AgentGym](https://agentgym.github.io/) | training framework | 13/14 | task_dependent | public | episode_reset | gym_like | public_training_ready | Training-oriented multi-environment framework that makes the environment layer explicit for agent post-training. |
| [RAGEN](https://github.com/RAGEN-AI/RAGEN) | training framework | 14/14 | task_dependent | public | episode_reset | gym_like | public_training_ready | Highlights verifiable reward design for reasoning agents across environments instead of static answer grading. |
| [VAGEN](https://github.com/RAGEN-AI/VAGEN) | training framework | 14/14 | task_dependent | public | episode_reset | service_environment | public_training_ready | Connects multimodal agent work with verifiable environment feedback, making it useful for VLM training agendas. |
| [Genie 3](https://deepmind.google/blog/genie-3-a-new-frontier-for-world-models/) | generative 3d world | 10/14 | external | synthetic | closed_or_private | generated_interactive_world | private_only | Shows why generated, interactive world models matter for future agent training surfaces beyond static videos or fixed simulators. |
| [OpenAI Agents SDK Sandbox](https://openai.com/index/the-next-evolution-of-the-agents-sdk/) | agent infrastructure | 11/14 | task_dependent | private_telemetry | episode_reset | cloud_sandbox | framework_ready | Production-facing sandbox signal for isolation, tool boundaries, and operational controls. |
| [Claude Managed Agents](https://claude.com/blog/new-in-claude-managed-agents) | agent infrastructure | 8/14 | task_dependent | private_telemetry | closed_or_private | managed_agent_runtime | private_only | Production direction signal for hosted agent execution with managed boundaries and user-facing task delegation. |
| [WebArena](https://webarena.dev/) | web world | 11/14 | programmatic | none | episode_reset | self_hosted_web | framework_ready | Foundational web-agent world that made self-hosted websites, stateful tasks, and functional web verification central to agent evaluation. |
| [SWE-bench](https://www.swebench.com/) | code world | 10/14 | task_dependent | none | episode_reset | docker | framework_ready | Canonical software-engineering agent benchmark where repository state, patches, and test suites define measurable task success. |
| [MineDojo](https://minedojo.org/) | embodied world | 14/14 | programmatic | public | episode_reset | minecraft | public_training_ready | Connects open-ended embodied tasks, internet-scale knowledge, and public Minecraft environments into a reusable training world. |
| [AI2-THOR](https://ai2thor.allenai.org/) | embodied world | 13/14 | programmatic | none | episode_reset | ai2thor | public_training_ready | Long-running embodied AI simulator that provides controllable household scenes, object interactions, and reproducible agent experiments. |
| [ALFRED](https://askforalfred.com/) | embodied world | 14/14 | programmatic | public | episode_reset | ai2thor | public_training_ready | Household instruction-following benchmark for embodied agents in simulated environments. |
| [ALFWorld](https://alfworld.github.io/) | embodied world | 14/14 | task_dependent | public | episode_reset | simulator | public_training_ready | Aligns text-game tasks with embodied household environments for interactive agent learning. |
| [BEHAVIOR-1K](https://behavior.stanford.edu/) | embodied world | 14/14 | programmatic | public | episode_reset | simulator | public_training_ready | Large household activity benchmark for embodied agents and robotics simulation. |
| [Habitat](https://aihabitat.org/) | embodied world | 14/14 | programmatic | public | episode_reset | simulator | public_training_ready | Embodied AI simulator and benchmark suite for navigation and interactive tasks. |
| [MiniWoB++](https://miniwob.farama.org/) | web world | 14/14 | programmatic | public | episode_reset | browser_environment | public_training_ready | Classic synthetic browser-control environment for scalable web-agent training. |

## Interpretation

1. High score means stronger world readiness, not broader scientific impact.
2. Product signals are included when they show frontier direction, even if
   their trajectories or sandboxes are private.
3. Use `resource-index.md` for the complete list and lost-point details.
