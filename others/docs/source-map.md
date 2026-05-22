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
| OpenComputer | https://github.com/echo0715/OpenComputer | Verifier-grounded desktop software worlds with app-specific state verifiers, task synthesis, trajectory recording, and partial-credit rewards. |
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
| RealWebAssist | https://scai.cs.jhu.edu/projects/RealWebAssist/ | Long-horizon web assistance with real users, sequential instructions, speech input, and GUI grounding. |
| ClawBench | https://claw-bench.com/ | Live-website browser-agent benchmark with everyday online tasks, final-request interception, public code, dataset, and trajectory diagnostics. |
| AutoWebWorld | https://evanwu1125.github.io/AWW_homepage/ | Finite-state-machine synthesis of controllable, programmatically verifiable web GUI environments and verified trajectories. |
| SaaS-Bench | https://github.com/UniPat-AI/SaaS-Bench | Self-hosted SaaS workflow benchmark with browser-driven professional tasks, 23 deployable apps, and application-state verifiers. |
| Plan-Then-Execute for Web Agents | https://arxiv.org/abs/2605.14290 | Web-agent control architecture that separates plans from typed execution to reduce unsafe browser manipulation. |
| Android in the Wild | https://github.com/google-research/google-research/tree/master/android_in_the_wild | Large Android demonstration corpus. |
| AndroidControl | https://huggingface.co/datasets/leosltl/Android-Control | Android control demonstrations across apps. |
| ScreenSpot | https://huggingface.co/datasets/rootsautomation/ScreenSpot | GUI grounding benchmark. |
| CutVerse | https://arxiv.org/abs/2605.19484 | Professional creative-application GUI benchmark with expert demonstrations and compositional action trajectories. |
| AQuaUI | https://arxiv.org/abs/2605.19260 | Training-free adaptive-quadtree visual token reduction for efficient GUI-agent screenshot processing. |
| UI-Venus-1.5 | https://arxiv.org/abs/2602.09082 | Unified GUI-agent model release with mid-training, online RL from full-trajectory navigation, and a public evaluation/deployment toolchain. |
| InfiGUI-R1 | https://github.com/InfiXAI/InfiGUI-R1 | GUI reasoning model and evaluation recipe. |
| UI-TARS | https://github.com/bytedance/UI-TARS | Unified GUI action-modeling agent line. |
| MCPWorld | https://github.com/SAAgent/MCPWorld | White-box hybrid computer-use and MCP tool benchmark. |
| DigiWorld | https://arxiv.org/abs/2605.08261 | Large-scale synthesized computer-use benchmark distribution. |
| CUAHarm | https://github.com/db-ol/CUAHarm | Harmful computer-use benchmark and dataset. |
| RiOSWorld | https://yjyddq.github.io/RiOSWorld.github.io/ | Realistic OS-world safety benchmark and public trajectory assets. |
| Securing Computer-Use Agents | https://arxiv.org/abs/2605.07110 | Architecture-lifecycle framework for deployment-grounded computer-use reliability and control placement. |
| GUI-Robust | https://arxiv.org/abs/2506.14477 | Robustness dataset for GUI agents under real-world anomalies and degraded interface conditions. |
| Human-Guided Harm Recovery / BackBench | https://arxiv.org/abs/2604.18847 | Post-execution safeguard framing for recovering from harmful computer-use states, with 50 recovery benchmark tasks. |
| On the Reliability of Computer Use Agents | https://arxiv.org/abs/2604.17849 | Repeated-execution reliability protocol for computer-use agents, including pass-k style stability analysis. |
| WorldGUI | https://arxiv.org/abs/2502.08047 | Dynamic desktop GUI benchmark with non-default initial states across real software. |
| GUIDE | https://arxiv.org/abs/2604.04399 | Hierarchical GUI trajectory diagnosis for long, visually grounded agent traces. |
| Faithful Mobile GUI Agents | https://arxiv.org/abs/2605.01208 | Faithfulness-first mobile GUI training with guided advantage estimation and evidence-grounded action checks. |
| DocOS | https://arxiv.org/abs/2605.18048 | Document-guided GUI benchmark where agents proactively search online documentation before executing actions. |
| OmniGUI | https://arxiv.org/abs/2605.18758 | Step-level mobile GUI benchmark with image, audio, and video context for smartphone agents. |
| SeqWM | https://arxiv.org/abs/2605.11036 | Behavioral watermarking method for verifying agent-policy provenance from sequential action trajectories. |
| Rubric Reward Hacking | https://arxiv.org/abs/2605.12474 | Rubric-based RL risk study for verifier exploitation, cross-verifier disagreement, and reward-audit gates. |

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
| Deployment-Relevant Alignment Evaluation | https://arxiv.org/abs/2605.04454 | System-level evaluation agenda that separates model-, response-, interaction-, and deployment-level alignment evidence. |
| MLE-bench | https://openai.com/index/mle-bench/ | Kaggle-style ML engineering tasks. |
| SWE-Lancer | https://openai.com/index/swe-lancer/ | Freelance software task evaluation. |
| OpenAI Codex | https://openai.com/index/introducing-codex/ | Product signal for cloud coding agents that operate over repositories, commands, and tasks. |
| Claude Code | https://www.anthropic.com/product/claude-code | Product signal for coding agents that work across codebases, terminals, and development workflows. |
| DPAI Arena | https://dpaia.dev/ | Open benchmark platform for AI coding agents across enterprise software workflows, scoreboards, and governance-backed benchmark tracks. |
| SwingArena | https://swing-bench.github.io/ | Competitive CI-driven software engineering arena with patch submitters, test reviewers, public code, and public dataset assets. |
| BashArena | https://www.bash-arena.com/ | High-privilege terminal-agent control benchmark with public Docker environments, sabotage side tasks, monitoring, and trajectories. |
| LinuxArena | https://www.linuxarena.ai/ | Live multi-service software-agent control benchmark with public Docker Compose environments, main tasks, side tasks, monitor evaluations, and trajectories. |
| AgentKernelArena | https://arxiv.org/abs/2605.16819 | GPU kernel optimization benchmark for coding agents, using isolated workspaces plus gated compilation, correctness, performance, and unseen-configuration checks. |
| Terminal-World | https://arxiv.org/abs/2605.20876 | Synthetic terminal-agent environment pipeline that co-generates tasks, environments, teacher trajectories, and skill graphs. |
| RoadmapBench | https://arxiv.org/abs/2605.15846 | Long-horizon software-development benchmark based on real open-source version upgrades across repositories and languages. |
| AgentStepper | https://arxiv.org/abs/2602.06593 | Interactive debugger for software-engineering agents, exposing execution trajectories through seven GUI panels for inspection and intervention. |
| HWE-Bench | https://arxiv.org/abs/2604.14709 | Repository-level hardware bug-repair benchmark with 417 task instances and native simulation/regression verification. |
| ISO-Bench | https://ayushnangia.github.io/iso-bench-website/ | Real-world LLM-serving optimization benchmark with 54 vLLM/SGLang tasks and hard-plus-soft performance evaluation. |
| SWE-CI | https://github.com/SKYLENAGE-AI/SWE-CI | Continuous-integration codebase-maintenance benchmark over 100 tasks and long repository evolution histories. |
| ZeroDayBench | https://arxiv.org/abs/2603.02297 | Cyberdefense benchmark where agents find and patch 22 unseen critical vulnerabilities in open-source codebases. |
| SEC-bench | https://sec-bench.github.io/ | Security-engineering benchmark for PoC generation and vulnerability patching over reproducible vulnerability harnesses. |
| ML-Bench | https://ml-bench.github.io/ | Repository-scale ML programming benchmark with ML-Agent-Bench for autonomous Linux-sandbox execution. |
| GAIA | https://huggingface.co/gaia-benchmark | General assistant benchmark requiring reasoning, multimodal input, web browsing, and tool use. |
| MLAgentBench | https://github.com/snap-stanford/MLAgentBench | ML research task environment. |
| TheAgentCompany | https://the-agent-company.com/ | Company-work simulation for agents. |
| OpenAI Deep Research | https://openai.com/index/introducing-deep-research/ | Product signal for long-horizon research agents using browsing, synthesis, and source-grounded reports. |
| Gemini Deep Research | https://blog.google/innovation-and-ai/models-and-research/gemini-models/next-generation-gemini-deep-research/ | Product signal for managed research agents that browse, reason, and produce evidence-backed reports. |
| LongSeeker | https://arxiv.org/abs/2605.05191 | Elastic context orchestration for long-horizon search agents, trained from synthesized search trajectories. |
| BioMedArena | https://github.com/AI-in-Health/BioMedArena | Biomedical deep-research agent toolkit with public code, registered benchmarks, tools, harnesses, and per-task traces. |
| BioXArena | https://huggingface.co/datasets/NotMyName1/BioXArena-Data-Public | Biomedical ML agent benchmark data with 76 tasks across 9 domains and held-out evaluation framing. |
| MemGym | https://arxiv.org/abs/2605.20833 | Long-horizon agent-memory benchmark spanning tool-use dialogue, deep-research search, coding, and computer-use regimes. |
| MemoryArena | https://arxiv.org/abs/2602.16313 | Multi-session memory-agent-environment benchmark where memory formation and later action success are evaluated together. |
| AgencyBench | https://arxiv.org/abs/2601.11044 | Realistic 1M-token long-context interactive-agent benchmark with 138 tasks across 6 capabilities and 32 scenarios, plus user simulation and Docker-sandbox rubric assessment. |

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
| CHI-Bench | https://arxiv.org/abs/2605.16679 | Policy-rich healthcare workflow benchmark with 20 simulated apps, 87 MCP tools, Dockerized tasks, datasets, and scorecards. |
| CAR-bench | https://github.com/CAR-bench/car-bench | Uncertainty-aware in-car assistant benchmark with mutable state, 58 tools, 19 domain policies, and multi-turn limit-awareness evaluation. |
| ClawsBench | https://clawsbench.benchflow.ai/ | High-fidelity productivity workspace world with Gmail, Calendar, Docs, Drive, Slack, deterministic reset, and public trajectory data. |
| PhysicianBench | https://healthrex.github.io/PhysicianBench/ | FHIR-compliant EHR agent benchmark with 100 physician-validated long-horizon tasks and checkpoint-level grading. |
| AutomationBench | https://arxiv.org/abs/2604.18934 | Cross-application business-workflow benchmark with REST APIs, layered policies, and programmatic end-state checking. |
| STT-Arena | https://arxiv.org/abs/2605.18548 | Spatio-temporal tool-use benchmark with executable environments, injected dynamic triggers, and adaptive-replanning failure trajectories. |
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
| Analytic Agent | https://arxiv.org/abs/2605.21027 | Governed enterprise analytics API agent with permission validation, secure API interactions, and compliant visualizations. |
| Model Context Protocol | https://www.anthropic.com/news/model-context-protocol | Model-context/tool protocol and open standard launch signal. |
| MCP Security Best Practices | https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices | Official authorization, token, transport, and client-server security guidance for MCP systems. |
| MCP-SandboxScan | https://arxiv.org/abs/2601.01241 | WASM/WASI runtime analysis framework for sandboxing MCP-style tool execution and producing auditable exposure reports. |
| SkillsBench | https://www.skillsbench.ai/ | Agent-skill benchmark with deterministic task verifiers and trajectory comparisons across no-skill, curated-skill, and self-generated-skill conditions. |
| MCP-DPT | https://arxiv.org/abs/2604.07551 | Defense-placement taxonomy for MCP security that maps threats and mitigation responsibility across six architectural layers. |
| MPAC | https://arxiv.org/abs/2604.09744 | Multi-principal agent coordination protocol for shared-state operations, structured conflicts, security profiles, and human arbitration. |
| AgentSkillOS | https://arxiv.org/abs/2603.02176 | Public skill-retrieval and orchestration framework with capability-tree discovery, DAG skill pipelines, and 30 artifact-rich benchmark tasks. |
| SkillRet | https://arxiv.org/abs/2605.05726 | Large-scale benchmark for retrieving relevant agent skills from realistic skill libraries with 17,810 skills and 4,997 held-out evaluation queries. |
| SkillRouter | https://arxiv.org/abs/2603.22455 | Full-text skill retrieve-and-rerank method and benchmark for routing over large overlapping skill registries. |
| AgentTrust | https://arxiv.org/abs/2605.04785 | Pre-execution runtime safety layer that classifies side-effecting tool calls into allow, warn, block, or review verdicts. |
| Trust No Tool / TRUST-Bench | https://arxiv.org/abs/2605.17453 | Untrusted-tool-feedback security benchmark with hidden-trigger tool-compromise episodes and trajectory-conditioned final-action risk scoring. |
| Behavioral Integrity Verification for AI Agent Skills | https://arxiv.org/abs/2605.11770 | Skill supply-chain audit framework that compares declared and actual capabilities across code, instructions, and metadata. |
| SkillSieve | https://arxiv.org/abs/2604.06550 | Hierarchical malicious-skill triage that combines static scanning, structured LLM review, and multi-model jury decisions. |
| SkillClone | https://arxiv.org/abs/2603.22447 | Agent-skill clone detection benchmark and method that analyzes metadata, natural-language instructions, and embedded code for supply-chain risk. |
| Malicious Or Not | https://arxiv.org/abs/2603.16572 | Agent-skill ecosystem security analysis that adds repository context to skill classification and abandoned-repository risk review. |
| Supply-Chain Poisoning Attacks Against LLM Coding Agent Skill Ecosystems | https://arxiv.org/abs/2604.03081 | Document-driven skill poisoning study where malicious examples and templates induce coding agents to execute hidden logic. |
| Exploiting LLM Agent Supply Chains via Payload-less Skills | https://arxiv.org/abs/2605.14460 | Payload-less skill attack study using semantic compliance rules to trigger unauthorized runtime code synthesis. |
| Under the Hood of SKILL.md | https://arxiv.org/abs/2605.11418 | Semantic attack analysis of SKILL.md metadata across discovery, selection, and governance stages of agent-skill registries. |
| OASB Skills Security Benchmark | https://www.oasb.ai/benchmark | Ground-truth benchmark and leaderboard for AI-agent skill scanners, with repository-backed benchmark code. |
| OASB repository | https://github.com/opena2a-org/oasb | Public code and reproducibility surface for the OASB skill-security benchmark. |
| SoK Agentic Skills | https://arxiv.org/abs/2602.20867 | Agent-skill lifecycle taxonomy covering discovery, practice, distillation, storage, composition, evaluation, update, governance, and supply-chain risk. |
| Intent-to-Execution Integrity | https://arxiv.org/abs/2605.16976 | Security correctness property connecting user intent to tool, instruction, judgment, and data-flow integrity. |
| Agent-C | https://arxiv.org/abs/2512.23738 | SMT-backed runtime control framework for enforcing temporal safety constraints on tool-use agent action sequences. |
| AgentWall | https://arxiv.org/abs/2605.16265 | Runtime safety layer that intercepts local-agent actions before execution, enforces policy, requests approval, and records audit trails. |
| Overeager Coding Agents / OverEager-Bench | https://arxiv.org/abs/2605.18583 | Coding-agent scope-control benchmark that audits shell, file, and network actions for out-of-scope behavior on benign tasks. |
| Terminal Wrench | https://arxiv.org/abs/2604.17596 | Reward-hacking benchmark for agentic AI systems, with hidden vulnerabilities, 331 environments, and 3632 exploit trajectories. |
| Too Helpful to Be Safe | https://arxiv.org/abs/2601.10758 | User-mediated attack benchmark for planning and web-use agents, covering credential theft, harmful purchase, phishing, and related risks. |
| Toward Securing AI Agents Like Operating Systems | https://arxiv.org/abs/2605.14932 | OS-inspired agent-security architecture mapping memory protection, access control, process isolation, monitoring, and auditing to agent systems. |
| AgenTRIM | https://arxiv.org/abs/2601.12449 | Least-privilege tool-risk mitigation framework that dynamically selects necessary tools to reduce malicious-tool attacks. |
| AgentLAB | https://tanqiujiang.github.io/AgentLAB_main | Long-horizon attack benchmark with intent hijacking, tool chaining, task injection, objective drift, and memory poisoning cases. |
| Formal Skill / FairyClaw | https://arxiv.org/abs/2605.19604 | Runtime-native executable skill abstraction with action schemas, Python executors, hook policies, routing, and skill-local state. |
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
| AgentTrust | safety control | 2026-05-22 |
| Agent-C | safety control | 2026-05-22 |
| Behavioral Integrity Verification for AI Agent Skills | safety control | 2026-05-22 |
| SkillSieve | safety control | 2026-05-22 |
| SkillClone | safety control | 2026-05-22 |
| Malicious Or Not: Adding Repository Context to Agent Skill Classification | safety control | 2026-05-22 |
| Supply-Chain Poisoning Attacks Against LLM Coding Agent Skill Ecosystems | safety control | 2026-05-22 |
| Exploiting LLM Agent Supply Chains via Payload-less Skills | safety control | 2026-05-22 |
| Under the Hood of SKILL.md: Semantic Supply-chain Attacks on AI Agent Skill Registry | safety control | 2026-05-22 |
| MCP Security Best Practices | safety control | 2026-05-17 |
| MCP-SandboxScan | safety control | 2026-05-22 |
| MCP-DPT | safety control | 2026-05-22 |
| Plan-Then-Execute for Web Agents | safety control | 2026-05-22 |
| Securing Computer-Use Agents | safety control | 2026-05-22 |
| Human-Guided Harm Recovery / BackBench | safety control | 2026-05-22 |
| Intent-to-Execution Integrity | safety control | 2026-05-22 |
| AgentWall | safety control | 2026-05-22 |
| Trust No Tool / TRUST-Bench | safety control | 2026-05-22 |
| Overeager Coding Agents / OverEager-Bench | safety control | 2026-05-22 |
| Toward Securing AI Agents Like Operating Systems | safety control | 2026-05-22 |
| AgenTRIM | safety control | 2026-05-22 |
| SeqWM | safety control | 2026-05-22 |
| Rubric Reward Hacking | safety control | 2026-05-22 |
| Anthropic Computer Use | closed product signal | 2026-05-13 |
| Claude Code | closed product signal | 2026-05-13 |
| Claude Managed Agents | closed product signal | 2026-05-13 |
| Gemini 2.5 Computer Use | closed product signal | 2026-05-13 |
| Gemini Deep Research | closed product signal | 2026-05-13 |
| Project Mariner | closed product signal | 2026-05-13 |
| Model Context Protocol | protocol | 2026-05-13 |
| Agent2Agent Protocol | protocol | 2026-05-13 |
| MPAC | protocol | 2026-05-22 |

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
| Agentic Harness Engineering | https://arxiv.org/abs/2604.25850 | Observability-driven loop for evolving coding-agent harness tools, middleware, and memory under benchmark feedback. |
| EnvFactory | https://arxiv.org/abs/2605.18703 | Automated executable-environment synthesis and trajectory generation framework for robust tool-use agent RL. |
| SkillWeaver | https://arxiv.org/abs/2504.07079 | Web-agent self-improvement framework that discovers, practices, and distills reusable website skills into transferable APIs. |
| SkillsVote | https://github.com/MemTensor/skills-vote | Skill-lifecycle governance framework for collection, recommendation, trajectory-based attribution, and evidence-gated skill evolution. |
| Memento-Skills | https://arxiv.org/abs/2603.18743 | Continual agent-design framework that stores reusable skills as external markdown memory and improves agents through reflective read-write skill updates. |
| SkillLearnBench | https://arxiv.org/abs/2604.20087 | Continual skill-learning benchmark with 20 verified skill-dependent real-world tasks across 15 sub-domains and three-level skill/trajectory/task evaluation. |
| SkillGenBench | https://arxiv.org/abs/2605.18693 | Skill-generation pipeline benchmark where repository- or document-grounded raw corpora are converted into executable skill artifacts under fixed harnesses. |
| SkillGen | https://arxiv.org/abs/2605.10999 | Verified inference-time skill-synthesis framework that derives auditable skills from success/failure trajectories and measures net intervention effects. |
| Trace2Skill | https://arxiv.org/abs/2603.25158 | Trajectory-grounded framework for distilling broad execution experience into transferable declarative skills without parameter updates or external retrieval. |
| SkillCraft | https://github.com/shiqichen17/SkillCraft | Public tool-composition skill benchmark with executable tasks, base-vs-skill runs, and trajectory outputs for measuring skill formation and reuse. |
| HASP | https://arxiv.org/abs/2605.17734 | Skill-program framework that turns advisory skills into executable Program Functions for agent-loop intervention, post-training, and controlled self-improvement. |
| SkillRL | https://arxiv.org/abs/2602.08234 | Recursive skill-augmented RL framework with SkillBank distillation, adaptive skill retrieval, and policy/skill-library co-evolution. |
| SAGE Skill-Augmented GRPO | https://arxiv.org/abs/2512.17102 | Sequential-rollout RL framework where skill libraries accumulate across AppWorld task chains and shape rewards for later reuse. |
| Auto-Dreamer | https://arxiv.org/abs/2605.20616 | Learned offline memory consolidator trained from source trajectories with end-to-end agent performance reward. |
| Mem-pi | https://arxiv.org/abs/2605.21463 | Adaptive memory-guidance model that learns when to generate task-specific guidance and when to abstain. |
| Causal Memory Intervention | https://arxiv.org/abs/2605.17641 | Causal memory-selection benchmark and method for suppressing irrelevant, stale, or harmful memory context in long-horizon agents. |
| GUI Agents with Reinforcement Learning | https://arxiv.org/abs/2604.27955 | GUI-agent RL taxonomy covering offline, online, and hybrid strategies, reward engineering, world-model training, and safe deployment. |
| UI-AGILE | https://github.com/KDEGroup/UI-AGILE | Public GUI-agent RL and inference framework with continuous grounding rewards, cropping-based resampling, and decomposed grounding. |
| SE-GUI | https://github.com/YXB-NKU/SE-GUI | Public self-evolutionary GUI grounding framework with dense coordinate rewards and attention-map data filtering. |
| MobileGUI-RL | https://arxiv.org/abs/2507.05720 | Online mobile GUI-agent RL framework using self-exploration curricula, trajectory-aware advantages, and efficiency rewards. |
| EvoCUA | https://arxiv.org/abs/2601.15876 | Verifiable synthetic task generation, executable validators, and sandbox experience learning for computer-use agents. |
| GUI-Libra | https://arxiv.org/abs/2602.22190 | GUI-specific post-training recipe with action-aware SFT, public reasoning data, and partially verifiable RL. |
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
| LongAct / HoloMind | https://arxiv.org/abs/2605.14504 | Long-horizon household task benchmark and VLM planning agent with spatial memory, episodic reuse, and feedback-guided replanning. |
| ALFRED | https://askforalfred.com/ | Household embodied instruction following. |
| Habitat | https://aihabitat.org/ | Embodied AI simulator and benchmark suite. |
| BEHAVIOR-1K | https://behavior.stanford.edu/ | Household activity simulation benchmark. |
| VirtualHome | http://virtual-home.org/ | Household program/simulation environment. |
