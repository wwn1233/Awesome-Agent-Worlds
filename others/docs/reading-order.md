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
| 1 hour | [Resource Index](resource-index.md), [Reading Order](reading-order.md), [Hot Papers](hot-papers.md) | Understand the field axes, verifier risks, and evidence sources. |
| Using the index | [Resource Index](resource-index.md), [Selection Guide](selection-guide.md), [Static Explorer](../../site/index.html), [resource proposal template](../../.github/ISSUE_TEMPLATE/add-resource.md) | Pick resources, compare evidence fields, and avoid overclaiming readiness. |

## By Reader Goal

| Goal | Start here | Then read |
| --- | --- | --- |
| Build agent evaluations | OSWorld-Verified, BrowserGym, WebArena-Verified | AndroidWorld, MobileGym, MacArena, Workflow-GYM, WeaveBench, LivingScreen, DynamicGUIBench, Multi-Agent Computer Use, Ego2Web, MCPWorld, MobileWorld, DigiWorld, Toolathlon, MCP-AgentBench, MCP-Flow, MCP-Persona, MedCTA, tau-bench, AppWorld, Terminal-Bench |
| Train from rollouts | SWE-Gym, AgentGym, AgentGym-RL, Agent-World | AliyunConsoleAgent, HomeFlow, CUA-Gym, PRO-CUA, ClawGUI, Multi-Agent Computer Use, STAMP / Memory-World, PhoneWorld, MobileGym, Agent-RLVR, TOUCAN, MCP-Flow, MCP-Cosmos, GUI-GENESIS, Orchard, RAGEN, VAGEN, rLLM, Agent Lightning |
| Study infrastructure and protocols | Model Context Protocol, Agent2Agent Protocol, OpenAI Agents SDK Sandbox | HarnessAPI, Agent-First Tool API, MCP-Flow, Agent-BOM, AgentSkillOS, Anthropic Agent Skills |
| Audit agent safety | PhoneSafety / Safe, or Simply Incapable?, MyPhoneBench, SkillSafetyBench | BraveGuard / Open-World CUA Guard, StakeBench, CUAHarm, RiOSWorld, CORA / Phone-Harm, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench, MCP-SafetyBench, MCPSecBench, MCPTox |
| Study GUI/VLM agents | OSWorld, AndroidWorld, MobileGym, MCPWorld, OmniACT | OpenCUA, UI-TARS, InfiGUI-R1, ScreenSpot, SimuWoB, iOSWorld, Workflow-GYM, LivingScreen, DynamicGUIBench |
| Study web agents | MiniWoB++, WebShop, WebArena | VisualWebArena, BrowserGym, WorkArena, Mind2Web, BrowseComp, StakeBench |
| Study research agents | MLE-bench, PaperBench, GAIA | MLAgentBench, AgentBoard |
| Study world generation | MineDojo, AI2-THOR, BEHAVIOR-1K | Genie 2, Genie 3, NVIDIA Cosmos, HY-World 2.0 |

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
- AndroidWorld, MobileGym, MobileWorld, MemGUI-Bench, and STAMP / Memory-World.
- OSWorld, OSWorld-Verified, macOSWorld, and MacArena.
- MCPWorld, DigiWorld, PhoneWorld, SimuWoB, and iOSWorld.
- Workflow-GYM, WeaveBench, and Multi-Agent Computer Use for professional, hybrid-interface, and parallel computer-use coverage.
- LivingScreen for continuous-time short-video GUI screens where observation is an action.
- DynamicGUIBench for high-dynamic GUI interfaces where one screenshot can miss important state changes.
- Ego2Web for web tasks grounded in egocentric physical-world video evidence.
- MCP-Persona and MedCTA for personalized and clinical tool-agent tasks.
- BrowserGym and WorkArena.
- AppWorld and tau-bench.

### Level 3: Production-Adjacent Workflows

Read these to see where evaluation becomes release gating and product
reliability.

- SWE-bench, SWE-bench Verified, SWE-Gym.
- Terminal-Bench.
- MLE-bench and PaperBench.
- TheAgentCompany.
- BrowseComp.
- StakeBench, BraveGuard / Open-World CUA Guard, PhoneSafety / Safe, or Simply Incapable?, CUAHarm, RiOSWorld,
  CORA / Phone-Harm, and MCP-SafetyBench.

### Level 4: Training Flywheels

Read these when the question shifts from "can the agent do the task?" to "can
the task produce reusable model-improvement data?"

- AgentGym.
- AgentGym-RL and Agent-RLVR.
- Agent-World, AliyunConsoleAgent, HomeFlow, CUA-Gym, PRO-CUA, ClawGUI, Multi-Agent Computer Use, STAMP / Memory-World, PhoneWorld, and Agent World Model.
- TOUCAN, MCP-Flow, and MCP-Cosmos.
- GUI-GENESIS and Orchard.
- rLLM.
- RAGEN and VAGEN.
- Agent Lightning.
- Agent-R.
- verl, OpenRLHF, and TRL for post-training infrastructure.

## How to Take Notes

For each world, record:

- the observation surface,
- the action space,
- the verifier or reward,
- reset and replay support,
- trajectory availability,
- sandbox boundary,
- whether it is suitable for evaluation, training, or product release gating.

Use the same evidence fields when comparing entries in the Resource Index.
