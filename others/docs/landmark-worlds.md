# Landmark Agent Worlds

These resources define the conceptual backbone of the Agent Worlds stack. They
are not ranked by popularity. They are selected because each one introduced a
durable design pattern for environment, action, verification, trajectory, or
training infrastructure.

| # | Resource | Design pattern |
| ---: | --- | --- |
| 1 | [MiniWoB++](https://miniwob.farama.org/) | Small, repeatable web UI tasks for studying interaction. |
| 2 | [ALFWorld](https://alfworld.github.io/) | Alignment between text-world planning and embodied execution. |
| 3 | [WebShop](https://webshop-pnlp.github.io/) | Grounded web tasks with realistic search and decision making. |
| 4 | [Voyager](https://voyager.minedojo.org/) | Open-ended embodied skill acquisition through a persistent world. |
| 5 | [WebArena](https://webarena.dev/) | Self-hosted realistic websites with executable success checks. |
| 6 | [VisualWebArena](https://github.com/web-arena-x/visualwebarena) | Visual grounding for web-agent tasks. |
| 7 | [AndroidWorld](https://github.com/google-research/android_world) | Emulator-backed mobile tasks with dynamic instantiation. |
| 8 | [OSWorld](https://os-world.github.io/) | Cross-application computer use as an evaluation world. |
| 9 | [BrowserGym](https://github.com/ServiceNow/BrowserGym) | A unified gym-style interface for browser-agent benchmarks. |
| 10 | [AppWorld](https://appworld.dev/) | Stateful app and API simulation with users, databases, and policies. |
| 11 | [tau-bench](https://github.com/sierra-research/tau-bench) | Tool-use under domain policy and user interaction. |
| 12 | [SWE-bench](https://www.swebench.com/) | Repository issues, code patches, and tests as a world. |
| 13 | [SWE-Gym](https://github.com/SWE-Gym/SWE-Gym) | Trainable software-engineering rollout infrastructure. |
| 14 | [MLE-bench](https://openai.com/index/mle-bench/) | ML engineering as a long-horizon agent world. |
| 15 | [PaperBench](https://openai.com/index/paperbench/) | Research replication with hierarchical rubrics and judge evaluation. |
| 16 | [Terminal-Bench](https://github.com/laude-institute/terminal-bench) | General terminal work as high-friction, high-signal evaluation. |
| 17 | [TheAgentCompany](https://the-agent-company.com/) | Knowledge-work tasks inside a simulated software company. |
| 18 | [OpenCUA](https://github.com/xlang-ai/OpenCUA) | Public computer-use trajectories and training data. |
| 19 | [AgentGym](https://agentgym.github.io/) | Multi-environment agent training rather than only evaluation. |
| 20 | [Agent Lightning](https://github.com/microsoft/agent-lightning) | A training framework for turning arbitrary agent traces into RL updates. |

## Emerging 2025-2026 Landmarks

These resources are younger than the backbone list above, but they represent
directions that are likely to define the next wave of Agent Worlds:

| Resource | Emerging pattern |
|---|---|
| [MCPWorld](https://github.com/SAAgent/MCPWorld) | Hybrid GUI and MCP tool worlds with white-box state evidence. |
| [MobileWorld](https://github.com/Tongyi-MAI/MobileWorld) | Broader mobile task worlds with app-level coverage and trajectory assets. |
| [CUAHarm](https://github.com/db-ol/CUAHarm) / [RiOSWorld](https://yjyddq.github.io/RiOSWorld.github.io/) | Computer-use safety as a benchmark surface rather than only a refusal policy. |
| [MCP-SafetyBench](https://xjzzzzzzzz.github.io/mcpsafety.github.io/) / [MCPSecBench](https://github.com/ais2lab/mcpsecbench) | MCP safety and security as executable tool-world tests. |
| [AgentGym-RL](https://agentgym-rl.github.io/) / [Agent-RLVR](https://arxiv.org/abs/2506.11425) | Multi-turn reinforcement learning and verifiable rewards for agent environments. |
| [Genie 3](https://deepmind.google/blog/genie-3-a-new-frontier-for-world-models/) | Interactive generated worlds as future agent-training surfaces. |

## Why They Still Matter in 2026

| Resource | 2026 relevance |
|---|---|
| MiniWoB++ | Still useful as the minimal browser-control laboratory for interface and reward design. |
| ALFWorld | Keeps text planning connected to embodied execution and simulator state. |
| WebShop | Shows why web tasks need grounded search, browsing, and purchase-like decisions. |
| Voyager | Remains a reference loop for open-ended curriculum, skills, and environment feedback. |
| WebArena | Defines self-hosted realistic websites as a stronger web-agent substrate. |
| VisualWebArena | Keeps visual grounding central for web agents that see screenshots, not only DOM. |
| AndroidWorld | Provides a reproducible mobile-app action space for VLM/GUI agents. |
| OSWorld | Makes real desktop applications a shared computer-use benchmark surface. |
| BrowserGym | Offers the integration layer needed to compare and train across browser worlds. |
| AppWorld | Turns app APIs and database state into executable unit-test-like worlds. |
| tau-bench | Keeps policy-following tool use tied to user simulation and domain state. |
| SWE-bench | Establishes issue-to-patch repair as the canonical code-agent world. |
| SWE-Gym | Shows how coding benchmarks become rollout infrastructure for training. |
| MLE-bench | Expands agent work from coding patches to full ML engineering workflows. |
| PaperBench | Makes research replication measurable through artifacts and rubrics. |
| Terminal-Bench | Exposes high-friction command-line tasks where setup and execution matter. |
| TheAgentCompany | Moves knowledge work into simulated organization state and workflows. |
| OpenCUA | Shows the value of public computer-use trajectories and model assets. |
| AgentGym | Frames multi-world interaction as reusable agent training data. |
| Agent Lightning | Connects arbitrary agent traces to disaggregated RL optimization. |

## What These Landmarks Have in Common

They move the field away from static text answers and toward durable behavior
measurement. A landmark Agent World usually contributes at least one of:

- a realistic task surface,
- a resettable runtime,
- a verifier that can be recomputed,
- public traces or reproducible rollouts,
- a sandbox boundary,
- a training loop that can reuse trajectories.

## What They Still Do Not Solve

The landmarks also expose the unresolved problems:

- verifiers can be brittle or incomplete,
- realistic worlds are expensive to run,
- public benchmarks are vulnerable to contamination,
- task coverage is narrower than real production work,
- many product-grade trajectories remain private,
- safety and permission models are usually added after capability evaluation.

These gaps are the reason the repository tracks readiness, reset support,
trajectory access, verifier family, and production signal separately.
