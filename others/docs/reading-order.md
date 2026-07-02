# Reading Order

This guide gives readers a path through Agent Worlds without forcing them to
read the entire index first. The sequence follows the field's evolution: small
interactive environments, realistic web and GUI worlds, software and research
worlds, then training infrastructure.

## If You Only Read Five

| Order | Resource | Why it comes first |
| ---: | --- | --- |
| 1 | [WebShop](https://webshop-pnlp.github.io/) | Shows how a realistic online task can become an executable environment with feedback. |
| 2 | [WebArena](https://webarena.dev/) | Establishes self-hosted web applications as reproducible agent worlds. |
| 3 | [OSWorld](https://os-world.github.io/) | Moves from browser tasks to full computer-use environments. |
| 4 | [SWE-bench](https://www.swebench.com/) | Makes repository modification and tests a standard agent evaluation surface. |
| 5 | [SWE-Gym](https://github.com/SWE-Gym/SWE-Gym) | Turns software-engineering evaluation into trainable rollout infrastructure. |

## Fast Routes

| Time budget | Read | Outcome |
|---|---|---|
| 15 minutes | [README thesis](../../README.md#why-agent-worlds-matter-now), [Flagship Matrix](flagship-matrix.md), [Selection Guide starter packs](selection-guide.md#reader-starter-packs) | Know what an Agent World is and which resources fit your goal. |
| 1 hour | [Resource Index](resource-index.md), [Selection Guide](selection-guide.md), [Hot Papers](hot-papers.md) | Understand the field axes, verifier risks, and evidence sources. |
| Using the index | [Resource Index](resource-index.md), [Selection Guide](selection-guide.md), [Static Explorer Guide](../../site/README.md), [resource proposal template](../../.github/ISSUE_TEMPLATE/add-resource.md) | Pick resources, compare evidence fields, and avoid overclaiming readiness. |

## By Reader Goal

| Goal | Start here | Then read |
| --- | --- | --- |
| Build agent evaluations | OSWorld-Verified, OSWorld 2.0, OSWorld-Human, BrowserGym, WebArena-Verified | AndroidWorld, MacAgentBench, ChainWorld, PPT-Eval, DynamicGUIBench / DynamicUI, MCPWorld, tau-bench, GameCraft-Bench, D3-Gym |
| Train from rollouts | SWE-Gym, AgentGym, AgentGym-RL, Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, Qwen-AgentWorld | Agent-as-Annotators, OpenMobile, TRACE / Capability-Targeted Agentic Training, Plan-RewardBench, GraphGPO, TAO-RL, A2World, WorldEvolver, Fara-1.5, Xiaomi-GUI-0, PEEU / GUI Experience Exploration, Failure-Driven CUA Self-Improvement, SWE-Universe, SWE-TRACE, daVinci-Env, TermiGen, ENVS, RAGEN, VAGEN |
| Study infrastructure and protocols | Model Context Protocol, Agent2Agent Protocol, OpenAI Agents SDK Sandbox | ADK Arena, LUMOS, MCP-Flow, OpenAgenet / OAN Yellow Paper, Agent Protocol Governance Gaps, MCP Runtime Fault Taxonomy, MCP Security Invariants Benchmark, Agent JIT Compilation |
| Audit agent safety | PhoneSafety / Safe, or Simply Incapable?, NRT-Bench, CAPED, MyPhoneBench, SkillSafetyBench | CUAHarm, RiOSWorld, CORA / Phone-Harm, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench, GUIGuard-Bench, WebPII, MCP-SafetyBench, MCPSecBench, AI-Infra-Guard, ToolPrivacyBench, Web PII Leakage Benchmark |
| Study GUI/VLM agents | OSWorld, AndroidWorld, MobileGym, MCPWorld, OmniACT | OpenCUA, UI-TARS, Xiaomi-GUI-0, ATMem / STR-GRPO, MacAgentBench, GUI vs. CLI Execution Benchmark, GUIGuard-Bench, OSWorld-Human, ChainWorld, PPT-Eval, ENVS |
| Study web agents | MiniWoB++, WebShop, WebArena | VisualWebArena, BrowserGym, WorkArena, Mind2Web, Weblica, Parallel WebBench / Trace Diagnostics, Agent JIT Compilation, OpenSearch-VL |
| Study research agents | MLE-bench, PaperBench, GAIA | D3-Gym, Agentic-Ideation, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, Text World Models for LLM Agents, COMAP, Internalizing the Future, Ask the World Before Acting |
| Study world generation | MineDojo, AI2-THOR, BEHAVIOR-1K | Genie 2, Genie 3, NVIDIA Cosmos, Cosmos 3, Kairos, GE-Sim 2.0, SimWorld Studio, Game Code World Model Generation |

## Frontier Signals by Role

| Role | Recommended next reads | Why |
|---|---|---|
| Harness and infrastructure reader | LLM-as-Code Agentic Programming for Agent Harness, Agent JIT Compilation, LUMOS, MCP Security Invariants Benchmark, Agent Protocol Governance Gaps | They turn agent harnesses, web-agent execution plans, semantic OS layers, MCP execution-control invariants, and protocol-governance limits into explicit runtime or governance artifacts. |
| Safety auditor | TEE-Backed Isolation for Self-Hosted Computer-Use Agents, Memory-Induced Tool-Drift / MEMDRIFT, ShareLock, PrincipalBench / Multi-Party Principal Loyalty, MCPPrivacyDetector, MCP Security Invariants Benchmark, AI-Infra-Guard, Proteus Skill Red Team, PlanGuard, ATBench-Claw / ATBench-Codex, GUIGuard-Bench, WebPII, Web PII Leakage Benchmark, Agent Policy-as-Code Autoformalization, VIGIL, How Your Credentials Are Leaked by LLM Agent Skills | They cover host-level CUA confinement, memory-driven tool-selection drift, multi-tool MCP poisoning, invariant-level execution control, layered red-teaming, planning consistency checks, domain-customized trajectory safety diagnosis, GUI privacy, visual web PII redaction, web PII leakage, formal policy enforcement, runtime skill-spec enforcement, and credential leakage in privileged skill runtimes. |
| Post-training engineer | Claw-R1, Qwen-AgentWorld, Agent-as-Annotators, OpenMobile, TRACE / Capability-Targeted Agentic Training, Plan-RewardBench, Agentic-Ideation, GraphGPO, TAO-RL, A2World, VERITAS, EmbodiedClaw, WorldEvolver, Fara-1.5, Xiaomi-GUI-0, ATMem / STR-GRPO, PEEU / GUI Experience Exploration, Failure-Driven CUA Self-Improvement, SWE-Universe, SWE-TRACE, daVinci-Env, TermiGen, VeriEnv, ENVS, ASTRA, ClawEnvKit, COMAP, Agent-Authored World Modeling, Internalizing the Future, Ask the World Before Acting, VisCritic, Autonomous Evaluation for CUA RL, TACO | They cover step-level agentic RL records, web and mobile trajectory synthesis, reward-model training signals, scientific ideation trajectories, graph/tool-aware credit assignment, verified robot self-improvement, embodied workflow execution, failure-targeted environment generation, language world models, real-device mobile GUI rollout loops, GUI experience exploration, scalable CUA/SWE/web environment generation, visual process rewards, and autonomous reward feedback. |
| Physical-AI evaluator | PhAIL / Physical AI Leaderboard | It adds real-robot VLA evaluation methodology and leaderboard-style comparison. |

## Four-Level Curriculum

### Level 1: Interaction Basics

Read these to understand why agents need environments rather than static
question-answer datasets.

- MiniWoB++ for web UI interaction.
- ALFWorld and TextWorld for language-grounded environments.
- WebShop for realistic web shopping tasks.
- API-Bank and ToolBench as early tool-use and API-interaction substrates.

### Level 2: Realistic Worlds

Read these to understand state, reset, verifier design, and reproducibility.

- WebArena and VisualWebArena.
- AndroidWorld, AndroidDaily, MobileGym, MobileWorld, Xiaomi-GUI-0, PhoneHarness, Beyond GUI Paradigm / CLI-Advantage, MemGUI-Agent, ATMem / STR-GRPO, MemGUI-Bench, STAMP / Memory-World, CAPED, and Teach-and-Repeat.
- OSWorld, OSWorld-Verified, OSWorld 2.0, macOSWorld, MacArena, MacAgentBench, GUI vs. CLI Execution Benchmark, Argus / CUA Uncertainty Quantification, AgentCIBench / Contextual Integrity, and TClone.
- MCPWorld, DigiWorld, PhoneWorld, ScaleWoB, and iOSWorld.
- Workflow-GYM, WeaveBench, EntWorld, MyPCBench, LabOSBench, ChainWorld, PPT-Eval, OSWorld-Human, ENVS, LUMOS, DragOn, ComAct / ComCADBench, AgentHijack, OSGuard, GUIGuard-Bench, RoTS / GUI-RobustEval, HiViG, VISUALSKILL, and Multi-Agent Computer Use for professional, hybrid-interface, enterprise GUI, personal-computer, scientific-instrument, desktop-composition, office-document, human-efficiency, verified GUI-trajectory, semantic OS, fine-grained GUI, professional-software, corruption robustness, guardrail and privacy evaluation, GUI error recovery, history-aware GUI critic, multimodal skill, and parallel computer-use coverage.
- Alem for open-ended multi-agent coordination in a Craftax-like survival world.
- SimWorld Studio for self-evolving 3D embodied environment generation.
- DeepInsight for cross-layer physical AI evaluation with shared trace identity.
- Cloud-Native Embodied Simulation Infrastructure, Embodied-BenchClaw, EmbodiedClaw, Harness Engineering for Physical AI, VASO, FATE-VLA, HyperSim, WLA-0 / World-Language-Action Model, VERITAS, and A2World for embodied benchmark construction, workflow execution, simulation infrastructure, middleware harnessing, verifiable skills, failure-seeking VLA tests, world-language-action modeling, and verified world-model rollout training.
- iMaC, A2World, WLA-0 / World-Language-Action Model, VERITAS, and SurgVista for action-conditioned embodied, visually verified robot, and surgical world-model rollouts.
- WRBench / Persistent State Core for diagnosing whether generated world models preserve state through viewpoint interventions.
- LivingScreen for continuous-time short-video GUI screens where observation is an action.
- DynamicGUIBench / DynamicUI for high-dynamic GUI interfaces where one screenshot can miss important state changes.
- Ego2Web and EgoBench for web and tool-agent tasks grounded in egocentric physical-world evidence.
- SMH-Bench for smart-home tasks with environment-grounded validation.
- MCP-Persona, MedCTA, BioManus / MCP-Native Biomedical Agent, and MedCUA-Bench for personalized, biomedical, clinical tool-agent, and clinical computer-use tasks.
- BrowserGym, WorkArena, and Weblica.
- AppWorld and tau-bench.

### Level 3: Production-Adjacent Workflows

Read these to see where evaluation becomes release gating and product
reliability.

- SWE-bench, SWE-bench Verified, SWE-Gym, and SWE-TRACE.
- Terminal-Bench, TUA-Bench, LiteCoder-Terminal, TermiGen, daVinci-Env, and GameCraft-Bench.
- CLI-Anything for agent-native command-line harnesses around existing software.
- MLE-bench, PaperBench, Agentic Automata Learning, World Models in Words, WRBench / Persistent State Core, D3-Gym, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, GeoNatureAgent Benchmark, EpiBench, and TerraBench.
- TheAgentCompany.
- BrowseComp, LoHoSearch, and DailyReport.
- EvoArena for dynamic environment-memory evaluation.
- Web, mobile, and CUA safety: StakeBench, WebDecept, Web PII Leakage Benchmark, WebPII, Sleeper Attack, NRT-Bench, CAPED, MIRAGE, AgentHijack, OSGuard, GUIGuard-Bench, FATE-VLA, PhoneSafety / Safe, or Simply Incapable?, CUAHarm, RiOSWorld, CORA / Phone-Harm, SafeMCP, and MCP-SafetyBench.
- MCP, tool, and skill safety: ShareLock, MCPPrivacyDetector, ToolPrivacyBench, Agent Policy-as-Code Autoformalization, VIGIL, Proteus Skill Red Team, PlanGuard, ATBench-Claw / ATBench-Codex, MalSkillBench, SkillHarm, SCR-Bench / Skill Composition Risk, Description-Code Inconsistency / DCIChecker, PACT / Argument-Level Provenance, Data Leakage Risks in Tool-Using LLM Agents, and How Your Credentials Are Leaked by LLM Agent Skills.

### Level 4: Training Flywheels

Read these when the question shifts from "can the agent do the task?" to "can
the task produce reusable model-improvement data?"

- AgentGym.
- AgentGym-RL and Agent-RLVR.
- Environment synthesis and world models: Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, Qwen-AgentWorld, WorldEvolver, Fara-1.5, EnvScaler, ScaleEnv, EnvFactory, COMAP, Agent-Authored World Modeling, Internalizing the Future, Ask the World Before Acting, A2World, WLA-0 / World-Language-Action Model, and Agent World Model.
- CUA, SWE, mobile, web, and research rollouts: PC Agent-E, Agent-as-Annotators, OpenMobile, LearnAct / LearnGUI, AgentCPM-GUI / CAGUI, UI-S1, TRACE / Capability-Targeted Agentic Training, Plan-RewardBench, Agentic-Ideation, Xiaomi-GUI-0, ATMem / STR-GRPO, PEEU / GUI Experience Exploration, Failure-Driven CUA Self-Improvement, SWE-Universe, SWE-TRACE, daVinci-Env, TermiGen, VeriEnv, ENVS, Weblica, RoTS / GUI-RobustEval, WebRL, DynaWeb, AgentTrek, Go-Browse, OpenWebRL, PANDO, OpenSearch-VL, and PhoneHarness.
- Reward and RL infrastructure: Claw-R1, VisCritic, Autonomous Evaluation for CUA RL, TACO, Sibling-Guided Credit Distillation, GraphGPO, TAO-RL, TRACE Rollout Budget Allocation, RAGEN, VAGEN, rLLM, Agent Lightning, Agent-R, PROVE / Synthesize and Reward, TOUCAN, verl, OpenRLHF, and TRL.
- Tool and MCP rollouts: MCP-Flow, Tool Forge, ADK Arena, HyperTool, Evoflux, DeltaMCP, CompSkillBench / Compositional Skill Routing, HarnessBridge, and MCP-Cosmos.
- Agentic Environment Engineering Survey, Agentic World Modeling, and Text World Models for LLM Agents for environment-engineering, world-model, and text-transition taxonomy.
- GUI-GENESIS and Orchard for generated GUI worlds and environment scaling.

## Evidence Fields

For each world, record:

- the observation surface,
- the action space,
- the verifier or reward,
- reset and replay support,
- trajectory availability,
- sandbox boundary,
- whether it is suitable for evaluation, training, or product release gating.

Use the same evidence fields when comparing entries in the Resource Index.
