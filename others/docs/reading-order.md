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
| Using the index | [Resource Index](resource-index.md), [Selection Guide](selection-guide.md), [Static Explorer](../../site/index.html), [resource proposal template](../../.github/ISSUE_TEMPLATE/add-resource.md) | Pick resources, compare evidence fields, and avoid overclaiming readiness. |

## By Reader Goal

| Goal | Start here | Then read |
| --- | --- | --- |
| Build agent evaluations | OSWorld-Verified, OSWorld 2.0, BrowserGym, WebArena-Verified | AndroidWorld, AndroidDaily, MobileGym, MacArena, MacAgentBench, GUI vs. CLI Execution Benchmark, Workflow-GYM, WeaveBench, EntWorld, MyPCBench, LabOSBench, LivingScreen, DynamicGUIBench / DynamicUI, DragOn, ComAct / ComCADBench, MedCUA-Bench, Multi-Agent Computer Use, AgentHijack, AgentCIBench / Contextual Integrity, OSGuard, TClone, Argus / CUA Uncertainty Quantification, PhoneHarness, Beyond GUI Paradigm / CLI-Advantage, HiViG, Alem, EvoArena, Agentic Automata Learning, Self-Driving Negotiator, Ego2Web, EgoBench, SMH-Bench, DeepInsight, Embodied-BenchClaw, FATE-VLA, PhAIL / Physical AI Leaderboard, MCPWorld, MobileWorld, DigiWorld, ToolBench-X, Toolathlon, MCP-AgentBench, MCP-Flow, MCP-Persona, MedCTA, BioManus / MCP-Native Biomedical Agent, CompSkillBench / Compositional Skill Routing, GeoNatureAgent Benchmark, EpiBench, TerraBench, LoHoSearch, DailyReport, LiteCoder-Terminal, TIER, GE-Sim 2.0, iMaC, SurgVista, WRBench / Persistent State Core, Qwen-AgentWorld, World Models in Words, AgentBeats, tau-bench, AppWorld, Terminal-Bench, TUA-Bench |
| Train from rollouts | SWE-Gym, AgentGym, AgentGym-RL, Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, Qwen-AgentWorld, WorldEvolver, Fara-1.5, EnvScaler, ScaleEnv, AgentScaler / Environment Scaling, RODS | EnvRL, From Trainee to Trainer / LLM-as-Environment-Engineer, AgentJet, LLM-as-Code Agentic Programming for Agent Harness, Claw-R1, EvoTrainer, Environment-Grounded Automated Prompt Optimization, AsyncWebRL, GAIS, EnvFactory, Role-Agent, ShoppingBench Trajectory Primitive, OpenSkill, CoEvolve, SENTINEL, LiteCoder-Terminal, TIER, SkillCAT, SkillSmith / Skill-Tool Co-Evolution, VASO, HyperSim, Sibling-Guided Credit Distillation, TRACE Rollout Budget Allocation, VisCritic, Autonomous Evaluation for CUA RL, TACO, HarnessBridge, MobileForge, Weblica, RoTS / GUI-RobustEval, ProPlay, ADWM, OpenWebRL, PANDO, OpenSearch-VL, GE-Sim 2.0, iMaC, SurgVista, Speculative Rollback Correction, ADMIRE / Adaptive Milestone Reward, Policy and World Modeling Co-Training, StainFlow, Game Code World Model Generation, SimWorld Studio, AliyunConsoleAgent, HomeFlow, CUA-Gym, PRO-CUA, ProCUA-SFT, PROVE / Synthesize and Reward, Teach-and-Repeat, PhoneHarness, MemGUI-Agent, ClawGUI, Multi-Agent Computer Use, STAMP / Memory-World, PhoneWorld, MobileGym, Agent-RLVR, TOUCAN, MCP-Flow, ToolBench-X, BioManus / MCP-Native Biomedical Agent, CompSkillBench / Compositional Skill Routing, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, MCP-Cosmos, GUI-GENESIS, Orchard, RAGEN, VAGEN, rLLM, Agent Lightning |
| Study infrastructure and protocols | Model Context Protocol, Agent2Agent Protocol, OpenAI Agents SDK Sandbox | CLI-Anything, Tool Forge, ADK Arena, HyperTool, Evoflux, VISUALSKILL, TClone, TIER, AgentBeats, HarnessBridge, Harness Engineering for Physical AI, AI Sandboxes, AgentJet, LLM-as-Code Agentic Programming for Agent Harness, Agent JIT Compilation, ToolBench-X, ShareLock, Agent Policy-as-Code Autoformalization, VIGIL, Memory-Induced Tool-Drift / MEMDRIFT, HarnessAPI, Agent-First Tool API, MCP-Flow, MCP Runtime Fault Taxonomy, DeltaMCP, Description-Code Inconsistency / DCIChecker, PACT / Argument-Level Provenance, CompSkillBench / Compositional Skill Routing, BioManus / MCP-Native Biomedical Agent, Attested Tool-Server Admission, Agent-BOM, AgentSkillOS, GAIS, MalSkillBench, ProvenanceGuard, Anthropic Agent Skills |
| Audit agent safety | PhoneSafety / Safe, or Simply Incapable?, NRT-Bench, CAPED, MyPhoneBench, SkillSafetyBench | BraveGuard / Open-World CUA Guard, StakeBench, WebDecept, Sleeper Attack, MIRAGE, AgentHijack, AgentCIBench / Contextual Integrity, OSGuard, TEE-Backed Isolation for Self-Hosted Computer-Use Agents, Memory-Induced Tool-Drift / MEMDRIFT, ShareLock, Agent Policy-as-Code Autoformalization, VIGIL, MalSkillBench, SkillHarm, SCR-Bench / Skill Composition Risk, Description-Code Inconsistency / DCIChecker, PACT / Argument-Level Provenance, AI Sandboxes, FATE-VLA, VASO, BadWorld, ProvenanceGuard, Attested Tool-Server Admission, PhoneHarness, Context-Fractured Decomposition Attacks, CUA-HandCrafted / Domain-Conditioned Safety, Data Leakage Risks in Tool-Using LLM Agents, ToolBench-X, CHERRL, Hack-Verifiable Environments, SafeMCP, CUAHarm, RiOSWorld, CORA / Phone-Harm, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench, MCP-SafetyBench, MCPSecBench, MCPTox |
| Study GUI/VLM agents | OSWorld, AndroidWorld, MobileGym, MCPWorld, OmniACT | OpenCUA, UI-TARS, InfiGUI-R1, HiViG, ScreenSpot, AndroidDaily, ScaleWoB, iOSWorld, MemGUI-Agent, MacAgentBench, GUI vs. CLI Execution Benchmark, Argus / CUA Uncertainty Quantification, Workflow-GYM, WeaveBench, EntWorld, MyPCBench, LabOSBench, LivingScreen, DynamicGUIBench / DynamicUI, DragOn, ComAct / ComCADBench, MedCUA-Bench, AgentHijack, AgentCIBench / Contextual Integrity, OSGuard, TClone, RoTS / GUI-RobustEval, VISUALSKILL, Teach-and-Repeat |
| Study web agents | MiniWoB++, WebShop, WebArena | VisualWebArena, BrowserGym, WorkArena, Mind2Web, BrowseComp, Weblica, Agent JIT Compilation, OpenSearch-VL, LoHoSearch, DailyReport, StakeBench |
| Study research agents | MLE-bench, PaperBench, GAIA | MLAgentBench, AgentBoard, Emergence World, EvoArena, Agentic Automata Learning, EgoBench, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, GeoNatureAgent Benchmark, EpiBench, TerraBench, Text World Models for LLM Agents, World Models in Words, WRBench / Persistent State Core |
| Study world generation | MineDojo, AI2-THOR, BEHAVIOR-1K | Genie 2, Genie 3, NVIDIA Cosmos, Cosmos 3, Kairos, HY-World 2.0, Gamma-World, DeepInsight, Embodied-BenchClaw, PhAIL / Physical AI Leaderboard, HyperSim, GE-Sim 2.0, iMaC, SurgVista, WRBench / Persistent State Core, BadWorld, SMH-Bench, SimWorld Studio, ADWM, ProPlay, Game Code World Model Generation |

## Frontier Signals by Role

| Role | Add these next | Why |
|---|---|---|
| Harness and infrastructure reader | LLM-as-Code Agentic Programming for Agent Harness, Agent JIT Compilation | They turn agent harnesses and web-agent execution plans into explicit control-flow and scheduling artifacts. |
| Safety auditor | TEE-Backed Isolation for Self-Hosted Computer-Use Agents, Memory-Induced Tool-Drift / MEMDRIFT, ShareLock, PrincipalBench / Multi-Party Principal Loyalty, MCPPrivacyDetector, Agent Policy-as-Code Autoformalization, VIGIL | They cover host-level CUA confinement, memory-driven tool-selection drift, multi-tool MCP poisoning, formal policy enforcement, and runtime skill-spec enforcement. |
| Post-training engineer | Claw-R1, Qwen-AgentWorld, WorldEvolver, Fara-1.5, VisCritic, Autonomous Evaluation for CUA RL, TACO | They cover step-level agentic RL records, language world models, scalable CUA environment generation, visual process rewards, and autonomous reward feedback. |
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
- AndroidWorld, AndroidDaily, MobileGym, MobileWorld, PhoneHarness, Beyond GUI Paradigm / CLI-Advantage, MemGUI-Agent, MemGUI-Bench, STAMP / Memory-World, CAPED, and Teach-and-Repeat.
- OSWorld, OSWorld-Verified, OSWorld 2.0, macOSWorld, MacArena, MacAgentBench, GUI vs. CLI Execution Benchmark, Argus / CUA Uncertainty Quantification, AgentCIBench / Contextual Integrity, and TClone.
- MCPWorld, DigiWorld, PhoneWorld, ScaleWoB, and iOSWorld.
- Workflow-GYM, WeaveBench, EntWorld, MyPCBench, LabOSBench, DragOn, ComAct / ComCADBench, AgentHijack, OSGuard, RoTS / GUI-RobustEval, HiViG, VISUALSKILL, and Multi-Agent Computer Use for professional, hybrid-interface, enterprise GUI, personal-computer, scientific-instrument, fine-grained GUI, professional-software, corruption robustness, guardrail evaluation, GUI error recovery, history-aware GUI critic, multimodal skill, and parallel computer-use coverage.
- Alem for open-ended multi-agent coordination in a Craftax-like survival world.
- SimWorld Studio for self-evolving 3D embodied environment generation.
- DeepInsight for cross-layer physical AI evaluation with shared trace identity.
- Embodied-BenchClaw, Harness Engineering for Physical AI, VASO, FATE-VLA, and HyperSim for embodied benchmark construction, middleware harnessing, verifiable skills, failure-seeking VLA tests, and sim-to-real manipulation training.
- iMaC and SurgVista for action-conditioned embodied and surgical world-model rollouts.
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

- SWE-bench, SWE-bench Verified, SWE-Gym.
- Terminal-Bench, TUA-Bench, and LiteCoder-Terminal.
- CLI-Anything for agent-native command-line harnesses around existing software.
- MLE-bench, PaperBench, Agentic Automata Learning, World Models in Words, WRBench / Persistent State Core, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, GeoNatureAgent Benchmark, EpiBench, and TerraBench.
- TheAgentCompany.
- BrowseComp, LoHoSearch, and DailyReport.
- EvoArena for dynamic environment-memory evaluation.
- StakeBench, WebDecept, Sleeper Attack, NRT-Bench, CAPED, MIRAGE, AgentHijack, AgentCIBench / Contextual Integrity, OSGuard, ShareLock, PrincipalBench / Multi-Party Principal Loyalty, MCPPrivacyDetector, Agent Policy-as-Code Autoformalization, VIGIL, MalSkillBench, SkillHarm, SCR-Bench / Skill Composition Risk, Description-Code Inconsistency / DCIChecker, PACT / Argument-Level Provenance, AI Sandboxes, FATE-VLA, VASO, BadWorld, ProvenanceGuard, Attested Tool-Server Admission, PhoneHarness, Context-Fractured Decomposition Attacks, CUA-HandCrafted / Domain-Conditioned Safety, Data Leakage Risks in Tool-Using LLM Agents, ToolBench-X, CHERRL, Hack-Verifiable Environments, BraveGuard / Open-World CUA Guard, PhoneSafety / Safe, or Simply Incapable?, CUAHarm, RiOSWorld,
  CORA / Phone-Harm, SafeMCP, and MCP-SafetyBench.

### Level 4: Training Flywheels

Read these when the question shifts from "can the agent do the task?" to "can
the task produce reusable model-improvement data?"

- AgentGym.
- AgentGym-RL and Agent-RLVR.
- Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, Qwen-AgentWorld, WorldEvolver, Fara-1.5, EnvScaler, ScaleEnv, EnvFactory, AgentScaler / Environment Scaling, RODS, EnvRL, From Trainee to Trainer / LLM-as-Environment-Engineer, AgentJet, EvoTrainer, Environment-Grounded Automated Prompt Optimization, AsyncWebRL, GAIS, Role-Agent, ShoppingBench Trajectory Primitive, OpenSkill, CoEvolve, SENTINEL, LiteCoder-Terminal, TIER, SkillCAT, SkillSmith / Skill-Tool Co-Evolution, VASO, HyperSim, Sibling-Guided Credit Distillation, TRACE Rollout Budget Allocation, VisCritic, Autonomous Evaluation for CUA RL, TACO, MobileForge, Weblica, RoTS / GUI-RobustEval, ProPlay, ADWM, OpenWebRL, PANDO, OpenSearch-VL, GE-Sim 2.0, iMaC, SurgVista, Speculative Rollback Correction, ADMIRE / Adaptive Milestone Reward, Policy and World Modeling Co-Training, StainFlow, Game Code World Model Generation, SimWorld Studio, Cosmos 3, Kairos, Gamma-World, AliyunConsoleAgent, HomeFlow, CUA-Gym, PRO-CUA, ProCUA-SFT, PROVE / Synthesize and Reward, Teach-and-Repeat, ClawGUI, Multi-Agent Computer Use, PhoneHarness, STAMP / Memory-World, PhoneWorld, Self-Driving Negotiator, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, BioManus / MCP-Native Biomedical Agent, ToolBench-X, and Agent World Model.
- TOUCAN, MCP-Flow, Tool Forge, ADK Arena, HyperTool, Evoflux, DeltaMCP, CompSkillBench / Compositional Skill Routing, HarnessBridge, and MCP-Cosmos.
- Agentic Environment Engineering Survey, Agentic World Modeling, and Text World Models for LLM Agents for environment-engineering, world-model, and text-transition taxonomy.
- GUI-GENESIS and Orchard.
- rLLM.
- RAGEN and VAGEN.
- Agent Lightning.
- Agent-R.
- verl, OpenRLHF, and TRL for post-training infrastructure.

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
