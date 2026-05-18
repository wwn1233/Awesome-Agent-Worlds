# Resource Index

A compact readiness index for comparing Agent Worlds by runtime,
verifier, reset support, trajectory availability, trainability, sandboxing,
and production signal.

_Generated from `others/data/resources.yaml` at source hash `cdcedfef6b60`._

## Summary

- Content resources: 162
- Categories: 11
- Average readiness score: 9.9/14
- Resources with readiness score >=9: 112
- Production-grade candidates: 27

## Score Interpretation

| Score | Meaning |
| --- | --- |
| 0-4 | Reference only |
| 5-8 | Evaluation candidate |
| 9-12 | Training candidate |
| 13-14 | Production-grade world |

The score is a heuristic across runtime, verifier, reset, trajectories,
trainability, sandbox, and production signal. It is designed to compare
world readiness, not to rank scientific merit. Non-world product,
protocol, and infrastructure entries keep their resource-kind labels even
when they carry strong production signals.
Scale and trajectory count columns are populated only when structured
metadata is available.

## agent-infrastructure

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [OpenAI Agents SDK Sandbox](https://openai.com/index/the-next-evolution-of-the-agents-sdk/) | agent infrastructure | 2026 | 11/14 | infrastructure | cloud | task_dependent |  | private_telemetry |  | episode_reset | high | verifier:1, trajectories:1, trainability:1 |
| [Anthropic Agent Skills](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills) | agent infrastructure | 2025 | 9/14 | infrastructure | unspecified | task_dependent |  | private_telemetry |  | episode_reset | medium | runtime:1, verifier:1, trajectories:1, trainability:1, sandbox:1 |
| [SkillSafetyBench](https://github.com/AI45Lab/skill-safety-bench) | benchmark | 2026 | 9/14 | training candidate | local_or_self_hosted | programmatic | 47 tasks; 155 instances | none |  | dataset_replay | high | verifier:1, trajectories:2, trainability:2 |
| [ChatGPT agent](https://openai.com/index/chatgpt-agent-system-card/) | closed product signal | 2025 | 8/14 | product signal | unspecified | judge |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [Claude Managed Agents](https://claude.com/blog/new-in-claude-managed-agents) | closed product signal | 2026 | 8/14 | product signal | unspecified | task_dependent |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [OpenAI Responses API](https://openai.com/index/new-tools-for-building-agents/) | closed product signal | 2025 | 7/14 | product signal | unspecified | external |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:2, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [MCPSecBench](https://arxiv.org/abs/2508.13220) | benchmark | 2025 | 6/14 | eval candidate | local_or_self_hosted | programmatic |  | none |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:2, trainability:2, sandbox:1 |
| [MCP Security Best Practices](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices) | safety control | 2026 | 5/14 | safety control | not_applicable | external |  | not_applicable |  | not_applicable | official | runtime:1, verifier:1, reset:2, trajectories:2, trainability:2, sandbox:1 |
| [OpenAI Codex Safety Controls](https://openai.com/index/running-codex-safely/) | safety control | 2026 | 5/14 | safety control | unspecified | task_dependent |  | not_applicable |  | not_applicable | official | runtime:1, verifier:1, reset:2, trajectories:2, trainability:2, sandbox:1 |
| [Agent2Agent Protocol](https://cloud.google.com/blog/products/ai-machine-learning/agent2agent-protocol-is-getting-an-upgrade) | protocol | 2025 | 4/14 | protocol | unspecified | external |  | not_applicable |  | not_applicable | official | runtime:1, verifier:2, reset:2, trajectories:2, trainability:2, sandbox:1 |
| [Model Context Protocol](https://www.anthropic.com/news/model-context-protocol) | protocol | 2024 | 4/14 | protocol | unspecified | external |  | not_applicable |  | not_applicable | official | runtime:1, verifier:2, reset:2, trajectories:2, trainability:2, sandbox:1 |

## api-world

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [ToolSandbox](https://github.com/apple/ToolSandbox) | world | 2024 | 14/14 | production-grade | unspecified | programmatic |  | none |  | episode_reset | high |  |
| [tau-bench](https://github.com/sierra-research/tau-bench) | world | 2024 | 14/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high |  |
| [EnterpriseOps-Gym](https://enterpriseops-gym.github.io/) | world | 2026 | 13/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high | trainability:1 |
| [API-Bank](https://github.com/AlibabaResearch/DAMO-ConvAI/tree/main/api-bank) | world | 2023 | 12/14 | training candidate | unspecified | programmatic |  | public |  | episode_reset | high | production:2 |
| [Agent World Model](https://arxiv.org/abs/2602.10090) | world | 2026 | 12/14 | training candidate | local_or_self_hosted | programmatic | 1,000 scenarios | synthetic |  | episode_reset | high | trajectories:1, trainability:1 |
| [MCPMark](https://arxiv.org/abs/2509.24002) | benchmark | 2025 | 11/14 | training candidate | local_or_self_hosted | programmatic | 127 tasks; 5 apps | none |  | episode_reset | high | trajectories:2, trainability:1 |
| [StableToolBench](https://github.com/THUNLP-MT/StableToolBench) | world | 2024 | 11/14 | training candidate | unspecified | task_dependent |  | none |  | episode_reset | high | verifier:1, trajectories:2 |
| [TOUCAN](https://huggingface.co/datasets/Agent-Ark/Toucan-1.5M) | dataset | 2025 | 11/14 | training candidate | unspecified | task_dependent | 1,646,546 instances; 2,000 APIs | public |  | dataset_replay | high | runtime:1, verifier:1, sandbox:1 |
| [Toolathlon](https://toolathlon.xyz/introduction) | world | 2025 | 11/14 | training candidate | local_or_self_hosted | programmatic | 108 tasks; 604 APIs | public |  | partial | high | verifier:1, reset:1, trainability:1 |
| [Berkeley Function Calling Leaderboard](https://gorilla.cs.berkeley.edu/leaderboard.html) | benchmark | 2024 | 10/14 | training candidate | unspecified | programmatic |  | none |  | dataset_replay | high | runtime:1, trajectories:2, sandbox:1 |
| [MCP-Cosmos](https://arxiv.org/abs/2605.09131) | training framework | 2026 | 10/14 | training infrastructure | unspecified | benchmark |  | synthetic |  | partial | high | verifier:1, reset:1, trajectories:1, trainability:1 |
| [MedAgentBench](https://stanfordmlgroup.github.io/projects/medagentbench/) | world | 2024 | 10/14 | training candidate | unspecified | task_dependent |  | none |  | episode_reset | high | verifier:1, trajectories:2, trainability:1 |
| [OccuBench](https://arxiv.org/abs/2604.10866) | world | 2026 | 10/14 | training candidate | local_or_self_hosted | task_dependent |  | partial |  | partial | high | verifier:1, reset:1, trajectories:1, trainability:1 |
| [AppWorld](https://appworld.dev/) | world | 2024 | 9/14 | training candidate | unspecified | programmatic | 457 APIs; 9 apps | none |  | episode_reset | high | runtime:1, trajectories:2, trainability:1, sandbox:1 |
| [C3-Bench](https://github.com/Tencent-Hunyuan/C3-Benchmark) | benchmark | 2025 | 9/14 | training candidate | unspecified | task_dependent |  | none |  | dataset_replay | high | runtime:1, verifier:1, trajectories:1, trainability:1, sandbox:1 |
| [ToolBench](https://github.com/OpenBMB/ToolBench) | world | 2023 | 9/14 | training candidate | unspecified | task_dependent |  | public |  | none | high | runtime:1, verifier:1, reset:2, sandbox:1 |
| [World of Workflows](https://arxiv.org/abs/2601.22130) | world | 2026 | 9/14 | training candidate | unspecified | task_dependent |  | none |  | partial | high | reset:1, trajectories:2, trainability:2 |
| [AgentDojo](https://arxiv.org/abs/2406.13352) | world | 2024 | 8/14 | eval candidate | local_or_self_hosted | task_dependent |  | none |  | episode_reset | high | runtime:1, verifier:1, trajectories:2, trainability:1, sandbox:1 |
| [Herculean](https://arxiv.org/abs/2605.14355) | benchmark | 2026 | 8/14 | eval candidate | unspecified | task_dependent |  | none |  | partial | high | verifier:1, reset:1, trajectories:2, trainability:2 |
| [MCP-Atlas](https://arxiv.org/abs/2602.00933) | world | 2026 | 8/14 | eval candidate | docker_or_container | judge | 1,000 tasks | none |  | partial | high | verifier:1, reset:1, trajectories:2, trainability:2 |
| [MCP-Bench](https://github.com/Accenture/mcp-bench) | world | 2025 | 8/14 | eval candidate | unspecified | benchmark |  | none |  | none | high | verifier:1, reset:2, trajectories:2, trainability:1 |
| [tau2-bench](https://arxiv.org/abs/2506.07982) | world | 2025 | 8/14 | eval candidate | unspecified | external |  | none |  | episode_reset | high | runtime:1, verifier:1, trajectories:2, trainability:1, sandbox:1 |
| [MCPTox](https://arxiv.org/abs/2508.14925) | benchmark | 2025 | 7/14 | eval candidate | unspecified | benchmark |  | none |  | dataset_replay | high | runtime:1, verifier:1, trajectories:2, trainability:2, sandbox:1 |
| [ToolEmu](https://arxiv.org/abs/2309.15817) | benchmark | 2023 | 7/14 | eval candidate | unspecified | judge |  | none |  | dataset_replay | high | runtime:1, verifier:1, trajectories:2, trainability:2, sandbox:1 |
| [LiveMCPBench](https://arxiv.org/abs/2508.01780) | world | 2025 | 6/14 | eval candidate | unspecified | benchmark |  | none |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:2, trainability:2, sandbox:1 |
| [MCP-AgentBench](https://arxiv.org/abs/2509.09734) | benchmark | 2025 | 6/14 | eval candidate | unspecified | benchmark | 600 tasks; 188 APIs | none |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:2, trainability:2, sandbox:1 |
| [MCP-SafetyBench](https://xjzzzzzzzz.github.io/mcpsafety.github.io/) | benchmark | 2026 | 6/14 | eval candidate | local_or_self_hosted | benchmark |  | none |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:2, trainability:2, sandbox:1 |
| [MCP-Universe](https://arxiv.org/abs/2508.14704) | world | 2025 | 6/14 | eval candidate | unspecified | benchmark |  | none |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:2, trainability:2, sandbox:1 |

## code-world

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [SWE-Gym](https://github.com/SWE-Gym/SWE-Gym) | world | 2025 | 14/14 | production-grade | local_or_self_hosted | programmatic |  | public |  | episode_reset | high |  |
| [R2E-Gym](https://arxiv.org/abs/2504.07164) | training framework | 2025 | 13/14 | training infrastructure | local_or_self_hosted | task_dependent |  | public |  | episode_reset | high | verifier:1 |
| [Terminal-Bench](https://github.com/laude-institute/terminal-bench) | world | 2025 | 13/14 | production-grade | local_or_self_hosted | programmatic |  | public |  | episode_reset | high | trainability:1 |
| [Hybrid-Gym](https://arxiv.org/abs/2602.16819) | training framework | 2026 | 11/14 | training infrastructure | local_or_self_hosted | benchmark |  | partial |  | partial | high | verifier:1, reset:1, trajectories:1 |
| [SWE-bench Multimodal](https://www.swebench.com/multimodal.html) | world | 2024 | 11/14 | training candidate | local_or_self_hosted | programmatic |  | none |  | episode_reset | high | trajectories:2, trainability:1 |
| [SWE-bench Pro](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/) | world | 2025 | 11/14 | training candidate | local_or_self_hosted | task_dependent |  | none |  | episode_reset | high | trajectories:2, trainability:1 |
| [SWE-bench Verified](https://huggingface.co/datasets/SWE-bench/SWE-bench_Verified) | world | 2024 | 11/14 | training candidate | local_or_self_hosted | judge |  | none |  | episode_reset | high | trajectories:2, trainability:1 |
| [TheAgentCompany](https://the-agent-company.com/) | world | 2025 | 11/14 | training candidate | unspecified | benchmark |  | none |  | episode_reset | high | verifier:1, trajectories:1, trainability:1 |
| [OpenAI Codex](https://openai.com/index/introducing-codex/) | closed product signal | 2025 | 10/14 | product signal | cloud | task_dependent |  | private_telemetry |  | closed_or_private | official | verifier:1, reset:1, trajectories:1, trainability:1 |
| [SWE-Lancer](https://openai.com/index/swe-lancer/) | world | 2025 | 10/14 | training candidate | local_or_self_hosted | programmatic |  | none |  | episode_reset | high | verifier:1, trajectories:2, trainability:1 |
| [SWE-bench](https://www.swebench.com/) | world | 2023 | 10/14 | training candidate | local_or_self_hosted | task_dependent |  | none |  | episode_reset | high | verifier:1, trajectories:2, trainability:1 |
| [Claude Code](https://www.anthropic.com/product/claude-code) | closed product signal | 2025 | 8/14 | product signal | cloud | task_dependent |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [ClawForge](https://arxiv.org/abs/2605.14133) | benchmark | 2026 | 7/14 | eval candidate | unspecified | programmatic | 17 tasks | partial |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:1, trainability:2, sandbox:1 |
| [Gemini CLI](https://blog.google/technology/developers/introducing-gemini-cli-open-source-ai-agent) | world | 2025 | 7/14 | eval candidate | local_or_self_hosted | task_dependent |  | none |  | none | high | runtime:1, verifier:1, reset:2, trajectories:1, trainability:1, sandbox:1 |

## computer-world

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [OSWorld-Verified](https://os-world.github.io/) | world | 2025 | 13/14 | production-grade | local_or_self_hosted | programmatic |  | public |  | episode_reset | high | trainability:1 |
| [OpenCUA](https://github.com/xlang-ai/OpenCUA) | world | 2025 | 13/14 | production-grade | local_or_self_hosted | benchmark |  | public |  | episode_reset | high | verifier:1 |
| [RiOSWorld](https://yjyddq.github.io/RiOSWorld.github.io/) | benchmark | 2025 | 12/14 | training candidate | local_or_self_hosted | task_dependent | 492 tasks | public |  | episode_reset | high | verifier:1, trainability:1 |
| [OSWorld](https://os-world.github.io/) | world | 2024 | 11/14 | training candidate | local_or_self_hosted | programmatic |  | none |  | episode_reset | high | trajectories:2, trainability:1 |
| [LPS-Bench](https://arxiv.org/abs/2602.03255) | benchmark | 2026 | 10/14 | training candidate | local_or_self_hosted | llm_judge | 65 scenarios | partial |  | dataset_replay | high | verifier:1, trajectories:1, trainability:2 |
| [OS-Harm](https://arxiv.org/abs/2506.14866) | benchmark | 2025 | 10/14 | training candidate | local_or_self_hosted | human_verified_judge | 150 tasks | none |  | episode_reset | high | trajectories:2, trainability:2 |
| [macOSWorld](https://macos-world.github.io/) | world | 2025 | 10/14 | training candidate | local_or_self_hosted | programmatic | 202 tasks; 30 apps | none |  | episode_reset | high | verifier:1, trajectories:2, trainability:1 |
| [CUAHarm](https://arxiv.org/abs/2508.00935) | benchmark | 2025 | 9/14 | training candidate | local_or_self_hosted | programmatic | 104 tasks | none |  | episode_reset | high | verifier:1, trajectories:2, trainability:2 |
| [CUActSpot / Phi-Ground-Any](https://arxiv.org/abs/2605.12501) | benchmark | 2026 | 9/14 | training candidate | unspecified | benchmark |  | partial |  | dataset_replay | high | runtime:1, verifier:1, trajectories:1, trainability:1, sandbox:1 |
| [MCPWorld](https://arxiv.org/abs/2506.07672) | world | 2025 | 9/14 | training candidate | local_or_self_hosted | programmatic | 201 tasks | none |  | episode_reset | high | verifier:1, trajectories:2, trainability:2 |
| [OS-BLIND](https://arxiv.org/abs/2604.10577) | benchmark | 2026 | 9/14 | training candidate | unspecified | human_verified |  | none |  | partial | high | reset:1, trajectories:2, trainability:2 |
| [OmniACT](https://huggingface.co/papers/2402.17553) | world | 2024 | 9/14 | training candidate | unspecified | benchmark |  | public |  | none | high | runtime:1, verifier:1, reset:1, trainability:1, sandbox:1 |
| [OpenApps](https://github.com/OSU-NLP-Group/OpenApps) | world | 2025 | 9/14 | training candidate | unspecified | benchmark |  | none |  | none | high | verifier:1, reset:2, trajectories:1, trainability:1 |
| [WindowsWorld](https://arxiv.org/abs/2604.27776) | world | 2026 | 9/14 | training candidate | local_or_self_hosted | human_verified | 181 tasks; 17 apps | none |  | partial | high | verifier:1, reset:1, trajectories:2, trainability:1 |
| [AgentHazard](https://arxiv.org/abs/2604.02947) | benchmark | 2026 | 8/14 | eval candidate | unspecified | human_verified | 2,653 instances | none |  | dataset_replay | high | runtime:1, trajectories:2, trainability:2, sandbox:1 |
| [Anthropic Computer Use](https://docs.anthropic.com/en/docs/agents-and-tools/tool-use/computer-use-tool) | closed product signal | 2024 | 8/14 | product signal | unspecified | task_dependent |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [Gemini 2.5 Computer Use](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/gemini-computer-use-model/) | closed product signal | 2025 | 8/14 | product signal | unspecified | benchmark |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [OpenAI Computer-Using Agent](https://openai.com/index/computer-using-agent/) | closed product signal | 2025 | 8/14 | product signal | unspecified | benchmark |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [DigiWorld](https://arxiv.org/abs/2605.08261) | benchmark | 2026 | 7/14 | eval candidate | unspecified | programmatic | 3,200,000 scenarios; 15 apps | none |  | episode_reset | high | runtime:1, verifier:1, trajectories:2, trainability:2, sandbox:1 |
| [OS-Marathon](https://arxiv.org/abs/2601.20650) | world | 2026 | 6/14 | eval candidate | unspecified | benchmark | 242 tasks | none |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:2, trainability:2, sandbox:1 |

## embodied-world

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [ALFRED](https://askforalfred.com/) | world | 2020 | 14/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high |  |
| [ALFWorld](https://alfworld.github.io/) | world | 2020 | 14/14 | production-grade | unspecified | task_dependent |  | public |  | episode_reset | high |  |
| [BEHAVIOR-1K](https://behavior.stanford.edu/) | world | 2022 | 14/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high |  |
| [Habitat](https://aihabitat.org/) | world | 2019 | 14/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high |  |
| [MineDojo](https://minedojo.org/) | world | 2022 | 14/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high |  |
| [ScienceWorld](https://sciworld.apps.allenai.org/) | world | 2022 | 14/14 | production-grade | unspecified | task_dependent |  | public |  | episode_reset | high |  |
| [TextWorld](https://www.microsoft.com/en-us/research/project/textworld/) | world | 2018 | 14/14 | production-grade | unspecified | task_dependent |  | public |  | episode_reset | high |  |
| [VirtualHome](http://virtual-home.org/) | world | 2018 | 14/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high |  |
| [AI2-THOR](https://ai2thor.allenai.org/) | world | 2017 | 13/14 | production-grade | unspecified | programmatic |  | none |  | episode_reset | high | trajectories:1 |
| [Crafter](https://danijar.com/project/crafter/) | world | 2021 | 13/14 | production-grade | unspecified | task_dependent |  | none |  | episode_reset | high | trajectories:1 |
| [Jericho](https://github.com/microsoft/jericho) | world | 2019 | 13/14 | production-grade | unspecified | task_dependent |  | none |  | episode_reset | high | trajectories:1 |
| [NetHack Learning Environment](https://github.com/NetHack-LE/nle) | world | 2020 | 13/14 | production-grade | unspecified | task_dependent |  | none |  | episode_reset | high | trajectories:1 |
| [GameWorld](https://gameworld-project.github.io/) | world | 2026 | 12/14 | training candidate | local_or_self_hosted | programmatic | 170 tasks; 34 apps | partial |  | episode_reset | high | trajectories:1, trainability:1 |
| [MiniHack](https://github.com/NetHack-LE/minihack) | world | 2021 | 12/14 | training candidate | unspecified | task_dependent |  | none |  | episode_reset | high | verifier:1, trajectories:1 |
| [EmbodiedBench](https://github.com/EmbodiedBench/EmbodiedBench) | world | 2025 | 11/14 | training candidate | unspecified | benchmark |  | none |  | episode_reset | high | verifier:1, trajectories:1, trainability:1 |
| [SafeAgentBench](https://safeagentbench.github.io/) | world | 2024 | 11/14 | training candidate | unspecified | task_dependent |  | none |  | episode_reset | high | verifier:1, trajectories:1, trainability:1 |
| [Voyager](https://voyager.minedojo.org/) | world | 2023 | 9/14 | training candidate | unspecified | task_dependent |  | none |  | none | high | verifier:1, reset:2, trajectories:1, trainability:1 |
| [HY-Embodied](https://github.com/Tencent-Hunyuan/HY-Embodied) | world | 2026 | 8/14 | eval candidate | unspecified | benchmark |  | none |  | episode_reset | high | runtime:1, verifier:1, trajectories:2, trainability:1, sandbox:1 |

## generative-3d-world

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [ProcTHOR](https://procthor.allenai.org/) | world | 2022 | 13/14 | production-grade | unspecified | programmatic |  | none |  | episode_reset | high | trajectories:1 |
| [World-in-World](https://world-in-world.github.io/) | world | 2025 | 12/14 | training candidate | local_or_self_hosted | benchmark |  | public |  | episode_reset | high | verifier:1, trainability:1 |
| [Genie 2](https://deepmind.google/discover/blog/genie-2-a-large-scale-foundation-world-model/) | model release | 2024 | 10/14 | model release | unspecified | judge |  | synthetic |  | none | official | verifier:1, reset:1, trajectories:1, trainability:1 |
| [Genie 3](https://deepmind.google/blog/genie-3-a-new-frontier-for-world-models/) | model release | 2025 | 10/14 | model release | closed_provider | external |  | synthetic |  | closed_or_private | official | verifier:1, reset:1, trajectories:1, trainability:1 |
| [NVIDIA Cosmos](https://www.nvidia.com/en-us/ai/cosmos/) | world | 2025 | 10/14 | training candidate | unspecified | judge |  | synthetic |  | none | high | verifier:1, reset:1, trajectories:1, trainability:1 |
| [HY-World 2.0](https://github.com/Tencent-Hunyuan/HY-World-2.0) | world | 2026 | 7/14 | eval candidate | unspecified | benchmark |  | none |  | none | high | runtime:1, verifier:1, reset:1, trajectories:2, trainability:1, sandbox:1 |

## gui-world

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [GUI-GENESIS](https://arxiv.org/abs/2602.14093) | training framework | 2026 | 11/14 | training infrastructure | unspecified | programmatic |  | synthetic |  | partial | high | reset:1, trajectories:1, trainability:1 |
| [EE-MCP](https://arxiv.org/abs/2604.09815) | training framework | 2026 | 10/14 | training infrastructure | unspecified | task_dependent |  | none |  | partial | high | verifier:1, reset:1, trajectories:1, trainability:1 |
| [GELab-Zero](https://opengelab.github.io/) | world | 2025 | 10/14 | training candidate | unspecified | benchmark |  | public |  | episode_reset | high | runtime:1, verifier:1, trainability:1, sandbox:1 |
| [InfiGUI-R1](https://github.com/InfiXAI/InfiGUI-R1) | model release | 2025 | 9/14 | model release | unspecified | benchmark |  | partial |  | none | official | runtime:1, verifier:1, reset:1, trajectories:1, sandbox:1 |
| [Video2GUI / WildGUI](https://arxiv.org/abs/2605.14747) | dataset | 2026 | 9/14 | training candidate | unspecified | benchmark | 12,000,000 instances; >=1,500 apps | synthetic |  | dataset_replay | high | runtime:1, verifier:1, trajectories:1, trainability:1, sandbox:1 |
| [UI-TARS](https://github.com/bytedance/UI-TARS) | world | 2025 | 8/14 | eval candidate | unspecified | benchmark |  | none |  | none | high | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [UI-TARS-2](https://github.com/bytedance/UI-TARS) | model release | 2026 | 7/14 | model release | unspecified | benchmark |  | none |  | none | official | runtime:1, verifier:1, reset:1, trajectories:2, trainability:1, sandbox:1 |
| [Seed1.5-VL](https://seed.bytedance.com/en/public_papers/seed1-5-vl-technical-report) | model release | 2025 | 4/14 | model release | unspecified | benchmark |  | none |  | none | official | runtime:2, verifier:1, reset:2, trajectories:2, trainability:1, sandbox:2 |

## mobile-world

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [MyPhoneBench](https://github.com/FreedomIntelligence/MyPhoneBench) | world | 2026 | 13/14 | production-grade | local_or_self_hosted | programmatic | 300 tasks; 10 apps | public |  | episode_reset | high | trainability:1 |
| [AndroidWorld](https://github.com/google-research/android_world) | world | 2024 | 11/14 | training candidate | local_or_self_hosted | programmatic | 116 tasks; 20 apps | none |  | episode_reset | high | trajectories:2, trainability:1 |
| [MobileAgentBench](https://mobileagentbench.github.io/) | world | 2024 | 11/14 | training candidate | local_or_self_hosted | benchmark | 100 tasks; 10 apps | none |  | episode_reset | high | verifier:1, trajectories:1, trainability:1 |
| [MobileWorld](https://github.com/Tongyi-MAI/MobileWorld) | world | 2026 | 11/14 | training candidate | local_or_self_hosted | programmatic | 201 tasks; 20 apps | partial |  | episode_reset | high | verifier:1, trajectories:1, trainability:1 |
| [Android in the Wild](https://github.com/google-research/google-research/tree/master/android_in_the_wild) | dataset | 2023 | 10/14 | training candidate | unspecified | task_dependent |  | public |  | none | high | runtime:1, verifier:1, reset:1, sandbox:1 |
| [AndroidControl](https://huggingface.co/datasets/leosltl/Android-Control) | dataset | 2024 | 10/14 | training candidate | unspecified | task_dependent |  | public |  | none | medium | runtime:1, verifier:1, reset:1, sandbox:1 |
| [ScreenSpot](https://huggingface.co/datasets/rootsautomation/ScreenSpot) | dataset | 2024 | 9/14 | training candidate | unspecified | task_dependent |  | partial |  | none | medium | runtime:1, reset:2, trajectories:1, sandbox:1 |
| [ScreenSpot-Pro](https://huggingface.co/papers/2504.07981) | dataset | 2025 | 9/14 | training candidate | unspecified | task_dependent |  | partial |  | none | medium | runtime:1, reset:2, trajectories:1, sandbox:1 |
| [How Mobile World Model Guides GUI Agents?](https://arxiv.org/abs/2605.10347) | world | 2026 | 8/14 | eval candidate | unspecified | benchmark |  | synthetic |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [PhoneSafety](https://arxiv.org/abs/2605.07630) | benchmark | 2026 | 8/14 | eval candidate | unspecified | human_verified | 700 safety moments; >=130 apps | private_telemetry |  | partial | high | runtime:1, reset:1, trajectories:1, trainability:2, sandbox:1 |
| [CORA / Phone-Harm](https://cora-agent.github.io/) | benchmark | 2026 | 7/14 | eval candidate | unspecified | human_verified | 300 tasks; 29 apps | partial |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:1, trainability:2, sandbox:1 |
| [GUI-CEval](https://huggingface.co/papers/2603.15039) | world | 2026 | 7/14 | eval candidate | unspecified | benchmark |  | none |  | none | medium | runtime:1, verifier:1, reset:1, trajectories:2, trainability:1, sandbox:1 |
| [Mobile-Bench-v2](https://arxiv.org/abs/2505.11891) | world | 2025 | 7/14 | eval candidate | unspecified | benchmark |  | none |  | none | high | runtime:1, verifier:1, reset:1, trajectories:2, trainability:1, sandbox:1 |
| [MobileDreamer](https://arxiv.org/abs/2601.04035) | world | 2026 | 7/14 | eval candidate | unspecified | benchmark |  | synthetic |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:1, trainability:2, sandbox:1 |

## research-world

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [MLAgentBench](https://github.com/snap-stanford/MLAgentBench) | world | 2023 | 12/14 | training candidate | local_or_self_hosted | benchmark |  | public |  | episode_reset | high | verifier:1, trainability:1 |
| [MLE-bench](https://openai.com/index/mle-bench/) | world | 2024 | 10/14 | training candidate | local_or_self_hosted | task_dependent | 75 competitions | none |  | episode_reset | high | verifier:1, trajectories:2, trainability:1 |
| [AgentBench](https://github.com/THUDM/AgentBench) | world | 2023 | 9/14 | training candidate | unspecified | task_dependent |  | public |  | none | high | runtime:1, verifier:1, reset:1, trainability:1, sandbox:1 |
| [GAIA](https://huggingface.co/gaia-benchmark) | benchmark | 2023 | 9/14 | training candidate | unspecified | judge |  | none |  | dataset_replay | medium | runtime:1, trajectories:2, trainability:1, sandbox:1 |
| [AgentBoard](https://hkust-nlp.github.io/agentboard/) | world | 2024 | 8/14 | eval candidate | unspecified | benchmark |  | none |  | none | high | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [Gemini Deep Research](https://blog.google/innovation-and-ai/models-and-research/gemini-models/next-generation-gemini-deep-research/) | closed product signal | 2025 | 8/14 | product signal | unspecified | judge |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [OpenAI Deep Research](https://openai.com/index/introducing-deep-research/) | closed product signal | 2025 | 8/14 | product signal | unspecified | judge |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [PaperBench](https://openai.com/index/paperbench/) | world | 2025 | 8/14 | eval candidate | unspecified | judge | 8,316 tasks; 20 papers | none |  | episode_reset | medium | runtime:1, verifier:1, trajectories:2, trainability:1, sandbox:1 |

## training-framework

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [RAGEN](https://github.com/RAGEN-AI/RAGEN) | training framework | 2025 | 14/14 | training infrastructure | unspecified | task_dependent |  | public |  | episode_reset | high |  |
| [VAGEN](https://github.com/RAGEN-AI/VAGEN) | training framework | 2025 | 14/14 | training infrastructure | unspecified | task_dependent |  | public |  | episode_reset | high |  |
| [AgentGym](https://agentgym.github.io/) | training framework | 2024 | 13/14 | training infrastructure | unspecified | task_dependent |  | public |  | episode_reset | high | verifier:1 |
| [AgentGym-RL](https://agentgym-rl.github.io/) | training framework | 2025 | 13/14 | training infrastructure | local_or_self_hosted | task_dependent | 27 tasks | public |  | episode_reset | high | verifier:1 |
| [EnvSimBench](https://arxiv.org/abs/2605.07247) | training framework | 2026 | 13/14 | training infrastructure | local_or_self_hosted | programmatic |  | public |  | dataset_replay | high | verifier:1 |
| [Orchard](https://arxiv.org/abs/2605.15040) | training framework | 2026 | 13/14 | training infrastructure | local_or_self_hosted | benchmark |  | public | 110255 | episode_reset | high | trainability:1 |
| [TRL](https://huggingface.co/docs/trl/index) | training framework | 2022 | 12/14 | training infrastructure | unspecified | programmatic |  | public |  | episode_reset | high | runtime:1, sandbox:1 |
| [Agent Lightning](https://github.com/microsoft/agent-lightning) | training framework | 2025 | 11/14 | training infrastructure | unspecified | task_dependent |  | public |  | none | high | runtime:1, reset:1, sandbox:1 |
| [Agent-R](https://github.com/ByteDance-Seed/Agent-R) | training framework | 2025 | 11/14 | training infrastructure | unspecified | task_dependent |  | public |  | episode_reset | high | runtime:1, verifier:1, sandbox:1 |
| [Agent-RLVR](https://arxiv.org/abs/2506.11425) | training framework | 2025 | 11/14 | training infrastructure | unspecified | programmatic |  | partial |  | partial | high | reset:1, trajectories:1, trainability:1 |
| [rLLM](https://github.com/rllm-org/rllm) | training framework | 2025 | 11/14 | training infrastructure | unspecified | task_dependent |  | public |  | none | high | runtime:1, reset:1, sandbox:1 |
| [Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence](https://agent-tars-world.github.io/-/) | training framework | 2026 | 10/14 | training infrastructure | unspecified | task_dependent | 1,978 scenarios; 19,822 APIs | synthetic |  | partial | high | verifier:1, reset:1, trajectories:1, trainability:1 |
| [OpenRLHF](https://github.com/OpenRLHF/OpenRLHF) | training framework | 2023 | 10/14 | training infrastructure | unspecified | programmatic |  | public |  | none | high | runtime:1, reset:2, sandbox:1 |
| [verl](https://github.com/volcengine/verl) | training framework | 2024 | 10/14 | training infrastructure | unspecified | programmatic |  | public |  | none | high | runtime:1, reset:2, sandbox:1 |
| [Kintsugi](https://arxiv.org/abs/2605.09487) | training framework | 2026 | 8/14 | training infrastructure | unspecified | programmatic |  | partial |  | partial | high | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [Verifiable Process Rewards](https://arxiv.org/abs/2605.10325) | training framework | 2026 | 8/14 | training infrastructure | unspecified | programmatic |  | none |  | dataset_replay | high | runtime:1, verifier:1, trajectories:2, trainability:1, sandbox:1 |

## web-world

| Resource | Kind | Year | Score | Label | Runtime | Verifier | Scale | Trajectory | Traj. Count | Reset | Source | Lost Points |
| --- | --- | ---: | ---: | --- | --- | --- | ---: | --- | ---: | --- | --- | --- |
| [MiniWoB++](https://miniwob.farama.org/) | world | 2018 | 14/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high |  |
| [WebShop](https://webshop-pnlp.github.io/) | world | 2022 | 14/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high |  |
| [BrowserGym](https://github.com/ServiceNow/BrowserGym) | world | 2024 | 13/14 | production-grade | unspecified | benchmark |  | public |  | episode_reset | high | verifier:1 |
| [WebArena-Verified](https://github.com/ServiceNow/webarena-verified) | world | 2025 | 13/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high | trainability:1 |
| [WorkArena](https://github.com/ServiceNow/WorkArena) | world | 2024 | 13/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high | trainability:1 |
| [WorkArena++](https://github.com/ServiceNow/WorkArena) | world | 2025 | 13/14 | production-grade | unspecified | programmatic |  | public |  | episode_reset | high | trainability:1 |
| [VisualWebArena](https://github.com/web-arena-x/visualwebarena) | world | 2024 | 11/14 | training candidate | unspecified | programmatic |  | none |  | episode_reset | high | trajectories:2, trainability:1 |
| [WebArena](https://webarena.dev/) | world | 2023 | 11/14 | training candidate | unspecified | programmatic |  | none |  | episode_reset | high | trajectories:2, trainability:1 |
| [Mind2Web](https://github.com/OSU-NLP-Group/Mind2Web) | dataset | 2023 | 10/14 | training candidate | unspecified | task_dependent |  | public |  | none | high | runtime:1, verifier:1, reset:1, sandbox:1 |
| [Online-Mind2Web](https://github.com/OSU-NLP-Group/Online-Mind2Web) | world | 2025 | 10/14 | training candidate | unspecified | judge |  | public |  | none | high | runtime:1, reset:1, trainability:1, sandbox:1 |
| [TimeWarp](https://huggingface.co/papers/2603.04949) | world | 2026 | 10/14 | training candidate | local_or_self_hosted | benchmark |  | none |  | episode_reset | medium | verifier:1, trajectories:2, trainability:1 |
| [WebLINX](https://github.com/McGill-NLP/weblinx) | dataset | 2024 | 10/14 | training candidate | unspecified | task_dependent |  | public |  | none | high | runtime:1, verifier:1, reset:1, sandbox:1 |
| [Mind2Web-2](https://github.com/OSU-NLP-Group/Mind2Web-2) | world | 2025 | 9/14 | training candidate | unspecified | benchmark |  | public |  | none | high | runtime:1, verifier:1, reset:1, trainability:1, sandbox:1 |
| [WebVoyager](https://github.com/MinorJerry/WebVoyager) | world | 2024 | 9/14 | training candidate | unspecified | judge |  | public |  | none | high | runtime:1, verifier:1, reset:1, trainability:1, sandbox:1 |
| [BrowseComp](https://openai.com/index/browsecomp/) | world | 2025 | 8/14 | eval candidate | unspecified | benchmark | 1,266 tasks | none |  | episode_reset | medium | runtime:1, verifier:1, trajectories:2, trainability:1, sandbox:1 |
| [Project Mariner](https://deepmind.google/technologies/project-mariner/) | closed product signal | 2024 | 8/14 | product signal | unspecified | external |  | private_telemetry |  | closed_or_private | official | runtime:1, verifier:1, reset:1, trajectories:1, trainability:1, sandbox:1 |
| [RiskWebWorld](https://arxiv.org/abs/2604.13531) | world | 2026 | 8/14 | eval candidate | unspecified | task_dependent | 1,513 tasks | none |  | partial | high | verifier:1, reset:1, trajectories:2, trainability:2 |
| [AssistantBench](https://assistantbench.github.io/) | world | 2024 | 6/14 | eval candidate | unspecified | benchmark |  | none |  | none | high | runtime:1, verifier:1, reset:2, trajectories:2, trainability:1, sandbox:1 |
| [Odysseys](https://arxiv.org/abs/2604.24964) | world | 2026 | 6/14 | eval candidate | unspecified | human_verified | 200 tasks | partial |  | none | high | runtime:1, verifier:1, reset:2, trajectories:1, trainability:2, sandbox:1 |
