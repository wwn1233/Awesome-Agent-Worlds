# Source Map

This map groups first-party sources by what they establish about Agent Worlds:
runtime, action space, verifier, reward, trajectory, sandbox, or production
deployment.

## Flagship Claim Support

| Claim | Flagship evidence | Source |
|---|---|---|
| Desktop worlds can be resettable, verifier-backed training/eval substrates | OSWorld-Verified and OpenCUA expose computer-use tasks, verified variants, and trajectory/model assets | https://os-world.github.io/ and https://github.com/xlang-ai/OpenCUA |
| Browser agents need reusable runtime wrappers, not only task lists | BrowserGym wraps browser benchmarks behind a gym-like interface | https://github.com/ServiceNow/BrowserGym |
| Web benchmarks are moving toward verified subsets and trace checks | WebArena-Verified hardens WebArena-style scoring with response and trace verification | https://github.com/ServiceNow/webarena-verified |
| Mobile agents need emulator-backed tasks and safety/privacy evaluation | AndroidWorld, MyPhoneBench, and PhoneSafety cover mobile tasks, privacy, and safe/unsafe/incapable outcomes | https://github.com/google-research/android_world and https://arxiv.org/abs/2605.07630 |
| Tool/API worlds make business state, MCP services, policies, and tool trajectories executable | tau-bench, AppWorld, ToolSandbox, MCP-Atlas, Toolathlon, TOUCAN, and MCP-AgentBench expose stateful tool/API workflows | https://github.com/sierra-research/tau-bench and https://arxiv.org/abs/2602.00933 |
| Agent post-training increasingly depends on rollout and reward infrastructure | AgentGym, RAGEN, VAGEN, rLLM, and Agent Lightning turn interaction traces into training substrates | https://agentgym.github.io/ and https://github.com/RAGEN-AI/RAGEN |

## Computer, Web, and Mobile

| Resource | First-party source | What it establishes |
| --- | --- | --- |
| OSWorld | https://os-world.github.io/ | Desktop computer-use environment, tasks, setup paths, evaluation. |
| OSWorld repository | https://github.com/xlang-ai/OSWorld | Docker/VM/AWS execution, scripts, tasks, verified variants. |
| OpenCUA | https://github.com/xlang-ai/OpenCUA | Open computer-use agent pipeline and trajectory/model assets. |
| OpenAI CUA | https://openai.com/index/computer-using-agent/ | Frontier-lab production signal and benchmark framing. |
| Anthropic Computer Use | https://docs.anthropic.com/en/docs/agents-and-tools/tool-use/computer-use-tool | Screenshot, mouse, keyboard, and container loop for desktop agents. |
| Gemini Computer Use | https://blog.google/innovation-and-ai/models-and-research/google-deepmind/gemini-computer-use-model/ | Gemini screenshot-action-feedback model for browser and mobile control. |
| Project Mariner | https://deepmind.google/technologies/project-mariner/ | Google agent product signal for browser research and task execution. |
| AndroidWorld | https://google-research.github.io/android_world/ | Android task environment, apps, dynamic tasks, reproducible setup. |
| AndroidWorld repository | https://github.com/google-research/android_world | Emulator/Docker code and evaluator implementation. |
| MobileWorld | https://github.com/Tongyi-MAI/MobileWorld | Universal mobile task world with app coverage, task definitions, and partial trajectory assets. |
| CORA / Phone-Harm | https://cora-agent.github.io/ | Safety-critical phone-use benchmark with harm-aware evaluation framing. |
| WebArena | https://webarena.dev/og/ | Self-hosted web sites and realistic web task benchmark. |
| WebArena repository | https://github.com/web-arena-x/webarena | Environment deployment and task definitions. |
| VisualWebArena | https://github.com/web-arena-x/visualwebarena | Visual web tasks and trajectories. |
| BrowserGym | https://github.com/ServiceNow/BrowserGym | Unified browser-agent gym across web benchmarks. |
| Mind2Web | https://github.com/OSU-NLP-Group/Mind2Web | Web action schema, snapshots, website splits. |
| Online-Mind2Web | https://github.com/OSU-NLP-Group/Online-Mind2Web | Live web evaluation and WebJudge. |
| WebLINX | https://github.com/McGill-NLP/weblinx | Large-scale web interaction demonstrations. |
| WorkArena | https://github.com/ServiceNow/WorkArena | Enterprise workflow browser tasks. |
| AssistantBench | https://assistantbench.github.io/ | Realistic web assistant tasks. |
| Android in the Wild | https://github.com/google-research/google-research/tree/master/android_in_the_wild | Large Android demonstration corpus. |
| AndroidControl | https://huggingface.co/datasets/leosltl/Android-Control | Android control demonstrations across apps. |
| ScreenSpot | https://huggingface.co/datasets/rootsautomation/ScreenSpot | GUI grounding benchmark. |
| InfiGUI-R1 | https://github.com/InfiXAI/InfiGUI-R1 | GUI reasoning model and evaluation recipe. |
| UI-TARS | https://github.com/bytedance/UI-TARS | Unified GUI action-modeling agent line. |
| MCPWorld | https://github.com/SAAgent/MCPWorld | White-box hybrid computer-use and MCP tool benchmark. |
| DigiWorld | https://arxiv.org/abs/2605.08261 | Large-scale synthesized computer-use benchmark distribution. |
| CUAHarm | https://github.com/db-ol/CUAHarm | Harmful computer-use benchmark and dataset. |
| RiOSWorld | https://yjyddq.github.io/RiOSWorld.github.io/ | Realistic OS-world safety benchmark and public trajectory assets. |

## Software Engineering and Research Work

| Resource | First-party source | What it establishes |
| --- | --- | --- |
| SWE-bench | https://www.swebench.com/ | Repository repair tasks with test-based verification. |
| SWE-bench repository | https://github.com/SWE-bench/SWE-bench | Harness, dataset, evaluation scripts. |
| SWE-bench Verified | https://huggingface.co/datasets/SWE-bench/SWE-bench_Verified | Human-verified subset for frontier-model evaluation. |
| SWE-bench Multimodal | https://www.swebench.com/multimodal.html | UI/visual issue repair extension. |
| SWE-Gym | https://github.com/SWE-Gym/SWE-Gym | Training-oriented software engineering environment. |
| Terminal-Bench | https://github.com/laude-institute/terminal-bench | Terminal task execution benchmark. |
| PaperBench | https://openai.com/index/paperbench/ | Paper reproduction, hierarchical rubrics, judging pipeline. |
| MLE-bench | https://openai.com/index/mle-bench/ | Kaggle-style ML engineering tasks. |
| SWE-Lancer | https://openai.com/index/swe-lancer/ | Freelance software task evaluation. |
| OpenAI Codex | https://openai.com/index/introducing-codex/ | Product signal for cloud coding agents that operate over repositories, commands, and tasks. |
| Claude Code | https://www.anthropic.com/product/claude-code | Product signal for coding agents that work across codebases, terminals, and development workflows. |
| GAIA | https://huggingface.co/gaia-benchmark | General assistant benchmark requiring reasoning, multimodal input, web browsing, and tool use. |
| MLAgentBench | https://github.com/snap-stanford/MLAgentBench | ML research task environment. |
| TheAgentCompany | https://the-agent-company.com/ | Company-work simulation for agents. |
| OpenAI Deep Research | https://openai.com/index/introducing-deep-research/ | Product signal for long-horizon research agents using browsing, synthesis, and source-grounded reports. |
| Gemini Deep Research | https://blog.google/innovation-and-ai/models-and-research/gemini-models/next-generation-gemini-deep-research/ | Product signal for managed research agents that browse, reason, and produce evidence-backed reports. |

## Tool/API Worlds and Protocols

| Resource | First-party source | What it establishes |
| --- | --- | --- |
| AppWorld | https://appworld.dev/ | Stateful app/API world with unit-test verification. |
| tau-bench | https://github.com/sierra-research/tau-bench | Transactional tool-use benchmark. |
| tau2-bench | https://github.com/sierra-research/tau2-bench | Next-generation tool-agent benchmark. |
| BFCL | https://gorilla.cs.berkeley.edu/leaderboard.html | Function-calling evaluation coverage. |
| C3-Bench | https://github.com/Tencent-Hunyuan/C3-Benchmark | Hunyuan multi-turn tool-agent robustness benchmark. |
| ToolBench | https://github.com/OpenBMB/ToolBench | Tool-use instruction and execution benchmark. |
| ToolSandbox | https://github.com/apple/ToolSandbox | Stateful tool-use sandbox and evaluation. |
| MCP-Atlas | https://arxiv.org/abs/2602.00933 | Large-scale MCP benchmark with real servers, tools, tasks, and public benchmark assets. |
| MCP-Atlas repository | https://github.com/scaleapi/mcp-atlas | Dockerized benchmark harness and public resource entry point. |
| MCP-AgentBench | https://arxiv.org/abs/2509.09734 | MCP-mediated benchmark with operational servers, tools, and outcome-oriented task success. |
| Toolathlon | https://toolathlon.xyz/introduction | Multi-application tool benchmark with realistic states and execution-based evaluation. |
| Toolathlon repository | https://github.com/hkust-nlp/Toolathlon | Public benchmark code and trajectories for long-horizon tool execution. |
| TOUCAN | https://huggingface.co/datasets/Agent-Ark/Toucan-1.5M | Public 1.5M-trajectory MCP tool-agent dataset. |
| TOUCAN repository | https://github.com/TheAgentArk/Toucan | Data-synthesis pipeline for MCP tool-agent trajectories. |
| MCP-Cosmos | https://arxiv.org/abs/2605.09131 | World-model-augmented planning framework for MCP environments. |
| MCP-SafetyBench | https://xjzzzzzzzz.github.io/mcpsafety.github.io/ | Safety benchmark over real MCP servers and multi-turn tool-use risks. |
| MCP-SafetyBench repository | https://github.com/xjzzzzzzzz/MCPSafety | Public benchmark code and MCP server setup. |
| MCPSecBench | https://github.com/ais2lab/mcpsecbench | Security benchmark and playground for MCP clients, servers, transports, and host-side threats. |
| API-Bank | https://github.com/AlibabaResearch/DAMO-ConvAI/tree/main/api-bank | API planning and tool-call benchmark. |
| MedAgentBench | https://stanfordmlgroup.github.io/projects/medagentbench/ | FHIR-compliant EHR environment for medical LLM agents. |
| Model Context Protocol | https://www.anthropic.com/news/model-context-protocol | Model-context/tool protocol and open standard launch signal. |
| MCP Security Best Practices | https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices | Official authorization, token, transport, and client-server security guidance for MCP systems. |
| Agent2Agent Protocol | https://cloud.google.com/blog/products/ai-machine-learning/agent2agent-protocol-is-getting-an-upgrade | Cross-agent protocol specification and ecosystem signal. |
| OpenAI Responses API | https://openai.com/index/new-tools-for-building-agents/ | Production agent interface and tools. |
| OpenAI Agents SDK sandbox update | https://openai.com/index/the-next-evolution-of-the-agents-sdk/ | Long-horizon agent harness and controlled sandbox execution. |
| OpenAI Codex Safety Controls | https://openai.com/index/running-codex-safely/ | Sandboxing, approvals, network policy, managed configuration, and agent telemetry. |
| ChatGPT agent | https://openai.com/index/chatgpt-agent-system-card/ | Unified browser, research, terminal, connector agent product signal. |
| Claude Managed Agents | https://claude.com/blog/new-in-claude-managed-agents | Dreaming, outcome rubrics, and multiagent orchestration. |
| Gemini CLI | https://blog.google/technology/developers/introducing-gemini-cli-open-source-ai-agent | Open-source terminal agent product signal. |

## Product Signal Source Dates

Closed product and protocol entries are directional evidence, not reproducible
public worlds. Their source dates are therefore part of the claim.

| Signal | Kind | Source checked |
|---|---|---:|
| OpenAI Computer-Using Agent | closed product signal | 2026-05-13 |
| ChatGPT agent | closed product signal | 2026-05-13 |
| OpenAI Responses API | closed product signal | 2026-05-13 |
| OpenAI Codex | closed product signal | 2026-05-13 |
| OpenAI Deep Research | closed product signal | 2026-05-13 |
| OpenAI Codex Safety Controls | safety control | 2026-05-13 |
| MCP Security Best Practices | safety control | 2026-05-17 |
| Anthropic Computer Use | closed product signal | 2026-05-13 |
| Claude Code | closed product signal | 2026-05-13 |
| Claude Managed Agents | closed product signal | 2026-05-13 |
| Gemini 2.5 Computer Use | closed product signal | 2026-05-13 |
| Gemini Deep Research | closed product signal | 2026-05-13 |
| Project Mariner | closed product signal | 2026-05-13 |
| Model Context Protocol | protocol | 2026-05-13 |
| Agent2Agent Protocol | protocol | 2026-05-13 |

## Reward and Training Infrastructure

| Resource | First-party source | What it establishes |
| --- | --- | --- |
| rLLM | https://github.com/rllm-org/rllm | Agent RL training framework and trajectory abstractions. |
| Agent Lightning | https://github.com/microsoft/agent-lightning | Agent-training disaggregation and LightningRL framing. |
| AgentGym-RL | https://agentgym-rl.github.io/ | Multi-turn RL training framework for long-horizon agent environments. |
| Agent-RLVR | https://arxiv.org/abs/2506.11425 | Verifiable reward training for software-engineering agents. |
| RAGEN | https://github.com/RAGEN-AI/RAGEN | Multi-turn agent RL environment generation. |
| VAGEN | https://github.com/RAGEN-AI/VAGEN | Vision-agent RL environments. |
| Agent-R | https://github.com/ByteDance-Seed/Agent-R | Agent reflection and trajectory-recovery training. |
| verl | https://github.com/volcengine/verl | Production-scale RLHF/RLVR engine. |
| OpenRLHF | https://github.com/OpenRLHF/OpenRLHF | RLHF/RLVR training framework. |
| TRL | https://huggingface.co/docs/trl/index | Transformers reinforcement-learning library. |

## Embodied and World Models

| Resource | First-party source | What it establishes |
| --- | --- | --- |
| NVIDIA Cosmos | https://www.nvidia.com/en-us/ai/cosmos/ | World foundation models for physical AI. |
| Genie 2 | https://deepmind.google/discover/blog/genie-2-a-large-scale-foundation-world-model/ | Interactive generative world-model signal. |
| Genie 3 | https://deepmind.google/blog/genie-3-a-new-frontier-for-world-models/ | Real-time prompt-generated interactive world-model signal. |
| HY-Embodied | https://github.com/Tencent-Hunyuan/HY-Embodied | Embodied agent model line. |
| HY-World 2.0 | https://github.com/Tencent-Hunyuan/HY-World-2.0 | Hunyuan world-model release. |
| HunyuanWorld-1.0 | https://github.com/Tencent-Hunyuan/HunyuanWorld-1.0 | Open-source explorable and interactive 3D world generation line. |
| Crafter | https://danijar.com/project/crafter/ | Open-world survival environment with semantic achievements. |
| MiniHack | https://github.com/NetHack-LE/minihack | NetHack-based sandbox for custom RL tasks and reward design. |
| NetHack Learning Environment | https://github.com/NetHack-LE/nle | Canonical procedurally generated roguelike environment for RL agents. |
| Voyager | https://voyager.minedojo.org/ | Minecraft lifelong-learning agent with curriculum and skill library. |
| MineDojo | https://minedojo.org/ | Minecraft embodied-agent environment. |
| AI2-THOR | https://ai2thor.allenai.org/ | Controllable embodied AI simulator with household scenes, object interactions, and reproducible task execution. |
| ALFRED | https://askforalfred.com/ | Household embodied instruction following. |
| Habitat | https://aihabitat.org/ | Embodied AI simulator and benchmark suite. |
| BEHAVIOR-1K | https://behavior.stanford.edu/ | Household activity simulation benchmark. |
| VirtualHome | http://virtual-home.org/ | Household program/simulation environment. |
