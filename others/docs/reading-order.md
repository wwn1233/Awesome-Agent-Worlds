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
| 15 minutes | README thesis, Flagship Matrix, Selection Guide starter packs | Know what an Agent World is and which resources fit your goal. |
| 1 hour | Survey abstract, Source Map, Reward Atlas, Benchmark Landscape | Understand the field axes, verifier risks, and evidence sources. |
| Building this week | Resource Index, Selection Guide, Hot Papers, Contributing checklist | Pick resources, verify metadata, and avoid overclaiming readiness. |

## By Reader Goal

| Goal | Start here | Then read |
| --- | --- | --- |
| Build agent evaluations | OSWorld-Verified, BrowserGym, WebArena-Verified | AndroidWorld, MCPWorld, MobileWorld, DigiWorld, Toolathlon, MCP-AgentBench, tau-bench, AppWorld, Terminal-Bench |
| Train from rollouts | SWE-Gym, AgentGym, AgentGym-RL, Agent-World | Agent-RLVR, TOUCAN, MCP-Cosmos, GUI-GENESIS, Orchard, RAGEN, VAGEN, rLLM, Agent Lightning |
| Audit agent safety | PhoneSafety, MyPhoneBench, SkillSafetyBench | CUAHarm, RiOSWorld, CORA / Phone-Harm, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench, MCP-SafetyBench, MCPSecBench, MCPTox |
| Study GUI/VLM agents | OSWorld, AndroidWorld, MCPWorld, OmniACT | OpenCUA, UI-TARS, InfiGUI-R1, ScreenSpot |
| Study web agents | MiniWoB++, WebShop, WebArena | VisualWebArena, BrowserGym, WorkArena, Mind2Web, BrowseComp |
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
- AndroidWorld.
- OSWorld and OSWorld-Verified.
- MCPWorld, MobileWorld, and DigiWorld.
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
- PhoneSafety, CUAHarm, RiOSWorld, CORA / Phone-Harm, and MCP-SafetyBench.

### Level 4: Training Flywheels

Read these when the question shifts from "can the agent do the task?" to "can
the task produce reusable model-improvement data?"

- AgentGym.
- AgentGym-RL and Agent-RLVR.
- Agent-World and Agent World Model.
- TOUCAN and MCP-Cosmos.
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

This is the same evidence model used in `others/data/resources.yaml`.
