# Flagship Matrix

A compact decision matrix for the most important Agent World resources.

Selection prioritizes curated starter resources, then readiness score
as defined in the [Selection Guide](selection-guide.md#scoring-methodology).
Use this matrix to choose starter resources before reading the full
Resource Index.
Resource links point to primary sources; use the [Resource Index](resource-index.md)
for catalog evidence rows, score limits, and source-confidence context.

| Resource | Surface | Score | Verifier | Trajectory | Reset | Sandbox | Training | Why it matters |
| --- | --- | ---: | --- | --- | --- | --- | --- | --- |
| [OSWorld-Verified](https://os-world.github.io/) | computer world | 13/14 | programmatic | public | episode reset | VM | framework ready | Strong GUI-agent evidence because tasks run in controllable desktop environments with public code and outcome checks. |
| [BrowserGym](https://github.com/ServiceNow/BrowserGym) | web world | 13/14 | benchmark | public | episode reset | browser environment | public training ready | Reusable browser-agent substrate that connects web tasks, resettable sessions, and training-oriented wrappers. |
| [WebArena-Verified](https://github.com/ServiceNow/webarena-verified) | web world | 13/14 | programmatic | public | episode reset | self-hosted web | framework ready | Cleaner successor signal for web-agent evaluation with stronger task verification discipline than raw success labels. |
| [AndroidWorld](https://github.com/google-research/android_world) | mobile world | 11/14 | programmatic | none | episode reset | emulator | framework ready | Mobile GUI benchmark with emulator-based execution, useful for connecting VLM policy work to reproducible action spaces. |
| [tau-bench](https://github.com/sierra-research/tau-bench) | API world | 14/14 | programmatic | public | episode reset | simulated backend | public training ready | Representative API-agent benchmark where tool calls, state transitions, and task outcomes are inspectable. |
| [AgentGym](https://agentgym.github.io/) | training framework | 13/14 | task dependent | public | episode reset | gym-like | public training ready | Training-oriented multi-environment framework that makes the environment layer explicit for agent post-training. |
| [RAGEN](https://github.com/RAGEN-AI/RAGEN) | training framework | 14/14 | task dependent | public | episode reset | gym-like | public training ready | Highlights verifiable reward design for reasoning agents across environments instead of static answer grading. |
| [VAGEN](https://github.com/RAGEN-AI/VAGEN) | training framework | 14/14 | task dependent | public | episode reset | service environment | public training ready | Connects multimodal agent work with verifiable environment feedback, making it useful for VLM training agendas. |
| [Genie 3](https://deepmind.google/blog/genie-3-a-new-frontier-for-world-models/) | generative 3D world | 10/14 | external | synthetic | closed/private | generated interactive world | private only | Shows why generated, interactive world models matter for future agent training surfaces beyond static videos or fixed simulators. |
| [OpenAI Agents SDK Sandbox](https://openai.com/index/the-next-evolution-of-the-agents-sdk/) | agent infrastructure | 11/14 | task dependent | private telemetry | episode reset | cloud sandbox | framework ready | Production-facing sandbox signal for isolation, tool boundaries, and operational controls. |
| [Claude Managed Agents](https://claude.com/blog/new-in-claude-managed-agents) | agent infrastructure | 8/14 | task dependent | private telemetry | closed/private | managed agent runtime | private only | Production direction signal for hosted agent execution with managed boundaries and user-facing task delegation. |
| [WebArena](https://webarena.dev/) | web world | 11/14 | programmatic | none | episode reset | self-hosted web | framework ready | Foundational web-agent world that made self-hosted websites, stateful tasks, and functional web verification central to agent evaluation. |
| [SWE-bench](https://www.swebench.com/) | code world | 10/14 | task dependent | none | episode reset | docker | framework ready | Canonical software-engineering agent benchmark where repository state, patches, and test suites define measurable task success. |
| [MineDojo](https://minedojo.org/) | embodied world | 14/14 | programmatic | public | episode reset | Minecraft | public training ready | Connects open-ended embodied tasks, internet-scale knowledge, and public Minecraft environments into a reusable training world. |
| [AI2-THOR](https://ai2thor.allenai.org/) | embodied world | 13/14 | programmatic | none | episode reset | AI2-THOR | public training ready | Long-running embodied AI simulator that provides controllable household scenes, object interactions, and reproducible agent experiments. |
| [ALFRED](https://askforalfred.com/) | embodied world | 14/14 | programmatic | public | episode reset | AI2-THOR | public training ready | Classic household instruction-following world linking language, navigation, manipulation, and task-state verification. |
| [ALFWorld](https://alfworld.github.io/) | embodied world | 14/14 | task dependent | public | episode reset | simulator | public training ready | Bridges abstract language policies and embodied household control, making it a key foundation for text-to-action world alignment. |
| [AutoWebWorld](https://evanwu1125.github.io/AWW_homepage/) | web world | 14/14 | programmatic | public | episode reset | generated interactive world | public training ready | Synthesizes verifiable web worlds with finite-state transitions, addressing the scarcity of checked web-agent trajectories. |
| [BEHAVIOR-1K](https://behavior.stanford.edu/) | embodied world | 14/14 | programmatic | public | episode reset | simulator | public training ready | Scales household activity evaluation toward many realistic tasks and object interactions. |
| [CUA-Suite / VideoCUA](https://cua-suite.github.io/) | computer world | 14/14 | human-verified | public | dataset replay | desktop apps | public training ready | Provides high-density human demonstrations and grounding annotations for desktop computer-use agents, bridging offline imitation, visual grounding, reward modeling, and long-horizon GUI evaluation. |

## Interpretation

1. High score means stronger world readiness, not broader scientific impact.
2. Product signals are included when they show frontier direction, even if
   their trajectories or sandboxes are private.
3. Use [Resource Index](resource-index.md) for the complete list and
   [Scoring Methodology](selection-guide.md#scoring-methodology) for score limits.
