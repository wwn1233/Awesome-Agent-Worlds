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
| Build agent evaluations | OSWorld-Verified, BrowserGym, WebArena-Verified | AndroidWorld, AndroidDaily, MobileGym, MacArena, Workflow-GYM, WeaveBench, EntWorld, LivingScreen, DynamicGUIBench / DynamicUI, DragOn, ComAct / ComCADBench, MedCUA-Bench, Multi-Agent Computer Use, HiViG, Alem, EvoArena, Ego2Web, MCPWorld, MobileWorld, DigiWorld, Toolathlon, MCP-AgentBench, MCP-Flow, MCP-Persona, MedCTA, GeoNatureAgent Benchmark, EpiBench, TerraBench, LoHoSearch, DailyReport, AgentBeats, tau-bench, AppWorld, Terminal-Bench |
| Train from rollouts | SWE-Gym, AgentGym, AgentGym-RL, Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence | Role-Agent, ShoppingBench Trajectory Primitive, OpenSkill, CoEvolve, SENTINEL, SkillCAT, Sibling-Guided Credit Distillation, TRACE Rollout Budget Allocation, HarnessBridge, ProPlay, ADWM, OpenWebRL, Speculative Rollback Correction, ADMIRE / Adaptive Milestone Reward, Policy and World Modeling Co-Training, StainFlow, Game Code World Model Generation, SimWorld Studio, AliyunConsoleAgent, HomeFlow, CUA-Gym, PRO-CUA, PROVE / Synthesize and Reward, Teach-and-Repeat, ClawGUI, Multi-Agent Computer Use, STAMP / Memory-World, PhoneWorld, MobileGym, Agent-RLVR, TOUCAN, MCP-Flow, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, MCP-Cosmos, GUI-GENESIS, Orchard, RAGEN, VAGEN, rLLM, Agent Lightning |
| Study infrastructure and protocols | Model Context Protocol, Agent2Agent Protocol, OpenAI Agents SDK Sandbox | CLI-Anything, Tool Forge, ADK Arena, HyperTool, AgentBeats, HarnessBridge, HarnessAPI, Agent-First Tool API, MCP-Flow, Agent-BOM, AgentSkillOS, Anthropic Agent Skills |
| Audit agent safety | PhoneSafety / Safe, or Simply Incapable?, CAPED, MyPhoneBench, SkillSafetyBench | BraveGuard / Open-World CUA Guard, StakeBench, WebDecept, Sleeper Attack, MIRAGE, Context-Fractured Decomposition Attacks, CUA-HandCrafted / Domain-Conditioned Safety, CHERRL, SafeMCP, CUAHarm, RiOSWorld, CORA / Phone-Harm, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench, MCP-SafetyBench, MCPSecBench, MCPTox |
| Study GUI/VLM agents | OSWorld, AndroidWorld, MobileGym, MCPWorld, OmniACT | OpenCUA, UI-TARS, InfiGUI-R1, HiViG, ScreenSpot, AndroidDaily, SimuWoB, iOSWorld, Workflow-GYM, WeaveBench, EntWorld, LivingScreen, DynamicGUIBench / DynamicUI, DragOn, ComAct / ComCADBench, MedCUA-Bench, Teach-and-Repeat |
| Study web agents | MiniWoB++, WebShop, WebArena | VisualWebArena, BrowserGym, WorkArena, Mind2Web, BrowseComp, LoHoSearch, DailyReport, StakeBench |
| Study research agents | MLE-bench, PaperBench, GAIA | MLAgentBench, AgentBoard, Emergence World, EvoArena, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, GeoNatureAgent Benchmark, EpiBench, TerraBench, Text World Models for LLM Agents |
| Study world generation | MineDojo, AI2-THOR, BEHAVIOR-1K | Genie 2, Genie 3, NVIDIA Cosmos, Cosmos 3, HY-World 2.0, SimWorld Studio, ADWM, ProPlay, Game Code World Model Generation |

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
- AndroidWorld, AndroidDaily, MobileGym, MobileWorld, MemGUI-Bench, STAMP / Memory-World, CAPED, and Teach-and-Repeat.
- OSWorld, OSWorld-Verified, macOSWorld, and MacArena.
- MCPWorld, DigiWorld, PhoneWorld, SimuWoB, and iOSWorld.
- Workflow-GYM, WeaveBench, EntWorld, DragOn, ComAct / ComCADBench, HiViG, and Multi-Agent Computer Use for professional, hybrid-interface, enterprise GUI, fine-grained GUI, professional-software, history-aware GUI critic, and parallel computer-use coverage.
- Alem for open-ended multi-agent coordination in a Craftax-like survival world.
- SimWorld Studio for self-evolving 3D embodied environment generation.
- LivingScreen for continuous-time short-video GUI screens where observation is an action.
- DynamicGUIBench / DynamicUI for high-dynamic GUI interfaces where one screenshot can miss important state changes.
- Ego2Web for web tasks grounded in egocentric physical-world video evidence.
- MCP-Persona, MedCTA, and MedCUA-Bench for personalized, clinical tool-agent, and clinical computer-use tasks.
- BrowserGym and WorkArena.
- AppWorld and tau-bench.

### Level 3: Production-Adjacent Workflows

Read these to see where evaluation becomes release gating and product
reliability.

- SWE-bench, SWE-bench Verified, SWE-Gym.
- Terminal-Bench.
- CLI-Anything for agent-native command-line harnesses around existing software.
- MLE-bench, PaperBench, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, GeoNatureAgent Benchmark, EpiBench, and TerraBench.
- TheAgentCompany.
- BrowseComp, LoHoSearch, and DailyReport.
- EvoArena for dynamic environment-memory evaluation.
- StakeBench, WebDecept, Sleeper Attack, CAPED, MIRAGE, Context-Fractured Decomposition Attacks, CUA-HandCrafted / Domain-Conditioned Safety, CHERRL, BraveGuard / Open-World CUA Guard, PhoneSafety / Safe, or Simply Incapable?, CUAHarm, RiOSWorld,
  CORA / Phone-Harm, SafeMCP, and MCP-SafetyBench.

### Level 4: Training Flywheels

Read these when the question shifts from "can the agent do the task?" to "can
the task produce reusable model-improvement data?"

- AgentGym.
- AgentGym-RL and Agent-RLVR.
- Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, Role-Agent, ShoppingBench Trajectory Primitive, OpenSkill, CoEvolve, SENTINEL, SkillCAT, Sibling-Guided Credit Distillation, TRACE Rollout Budget Allocation, ProPlay, ADWM, OpenWebRL, Speculative Rollback Correction, ADMIRE / Adaptive Milestone Reward, Policy and World Modeling Co-Training, StainFlow, Game Code World Model Generation, SimWorld Studio, Cosmos 3, AliyunConsoleAgent, HomeFlow, CUA-Gym, PRO-CUA, PROVE / Synthesize and Reward, Teach-and-Repeat, ClawGUI, Multi-Agent Computer Use, STAMP / Memory-World, PhoneWorld, EurekAgent, AgentBuild / Rietveld Refinement, MDForge, and Agent World Model.
- TOUCAN, MCP-Flow, Tool Forge, ADK Arena, HyperTool, HarnessBridge, and MCP-Cosmos.
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
