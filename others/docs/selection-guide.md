# Selection Guide

Use this guide when choosing an Agent World for evaluation, post-training, or
product gating.

## Practitioner Decision Tree

```text
What do you need the world to prove?
├── GUI or computer-control ability
│   ├── Need public reproducibility? -> OSWorld, OSWorld-Verified, OpenCUA
│   ├── Need mobile interaction? -> AndroidWorld, MobileWorld, MobileAgentBench
│   └── Need model-centered GUI grounding or synthetic GUI rollouts? -> UI-TARS, MCPWorld, DigiWorld, GUI-GENESIS, Video2GUI, OmniACT
├── Browser and web workflow ability
│   ├── Need self-hosted sites? -> WebArena, VisualWebArena
│   ├── Need gym-style integration? -> BrowserGym, WorkArena
│   └── Need browsing/research difficulty? -> BrowseComp, WebVoyager
├── Software-engineering ability
│   ├── Need patch correctness? -> SWE-bench, SWE-bench Verified
│   ├── Need trainable rollouts? -> SWE-Gym
│   └── Need terminal generality? -> Terminal-Bench
├── Tool/API and enterprise workflow ability
│   ├── Need stateful apps? -> AppWorld
│   ├── Need policy-following tool calls? -> tau-bench, tau2-bench
│   └── Need MCP breadth, tool trajectories, or safety? -> Toolathlon, TOUCAN, MCP-Flow, MCP-AgentBench, MCP-SafetyBench
├── Research or ML engineering ability
│   ├── Need paper replication? -> PaperBench
│   ├── Need ML competition workflows? -> MLE-bench
│   └── Need broad knowledge tasks? -> GAIA, AgentBoard
└── Training from interaction
    ├── Need multi-world rollouts? -> AgentGym, AgentGym-RL, Agent-World, TOUCAN, MCP-Flow, RAGEN, VAGEN
    ├── Need RL over arbitrary agents? -> Agent Lightning, rLLM
    └── Need open training stacks? -> Orchard, verl, OpenRLHF, TRL
```

## Comparison Matrix

| Use case | Best first resource | Reward/verifier | Main risk |
| --- | --- | --- | --- |
| GUI evaluation | OSWorld-Verified | Execution state | Expensive and brittle UI state. |
| Mobile GUI | AndroidWorld | System/app state | Emulator setup and app drift. |
| Mobile safety | PhoneSafety | Safety-critical action audit | Inability can masquerade as safety. |
| Browser agents | BrowserGym | Benchmark-dependent | Website state and contamination. |
| Enterprise workflow | WorkArena | Task state and policy checks | Domain coverage. |
| API agents | AppWorld | Simulated database state | Gap from real APIs. |
| Policy-following tools | tau-bench | User/tool/domain policy | Narrow domains. |
| Coding agents | SWE-bench Verified | Unit tests and issue acceptance | Test leakage and issue ambiguity. |
| Trainable coding | SWE-Gym | Runtime tests and rollouts | Limited repository distribution. |
| Research agents | PaperBench | Rubric judge and subtask scores | High cost and judge variance. |
| Terminal agents | Terminal-Bench | Command-line task success | Environment maintenance. |
| Embodied agents | MineDojo / AI2-THOR | Simulator state | Sim-to-real transfer. |
| Generated worlds | HY-World 2.0 / Cosmos / Genie 3 | Generated asset or world quality | Evaluation standard still immature. |

## Reader Starter Packs

| Reader | Start with | Caution |
|---|---|---|
| Researcher | WebArena, OSWorld, SWE-bench, AppWorld, PaperBench | Do not compare scores without checking verifier reliability and contamination risk. |
| Evaluation builder | OSWorld-Verified, WebArena-Verified, BrowserGym, AndroidWorld, MCPWorld, MobileWorld, Toolathlon, MCP-AgentBench, MCP-Flow, tau-bench | Prefer resettable or replayable worlds; live websites and apps drift. |
| Post-training engineer | AgentGym, AgentGym-RL, Agent-World, Agent-RLVR, TOUCAN, MCP-Flow, MCP-Cosmos, GUI-GENESIS, Orchard, RAGEN, VAGEN, rLLM, Agent Lightning | Public trajectories do not always imply reward quality or stable online RL. |
| Safety auditor | PhoneSafety, MyPhoneBench, SkillSafetyBench, CUAHarm, RiOSWorld, CORA / Phone-Harm, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench, MCP-SafetyBench, MCPSecBench, MCPTox | Separate unsafe action from simple agent incapability before drawing safety conclusions. |
| Product lead | OpenAI Agents SDK Sandbox, Gemini 2.5 Computer Use, Claude Managed Agents, OpenAI CUA, Project Mariner | Product signals show direction, not reproducible public training evidence. |

## Inclusion Criteria

A resource should enter the main index only when first-party evidence supports:

- a clear environment or infrastructure role,
- observation and action interfaces,
- verifier or reward details,
- reset, replay, or reproducibility status,
- trajectory access or a clear reason it is unavailable,
- sandbox or safety boundary,
- source confidence and current public access.

If any of these fields are unknown, the resource can remain in the hot-paper
watchlist until the evidence is strong enough for the main index.

## When Not To Use an Agent World

Do not use these resources as capability claims when:

- the evaluation depends only on final text similarity,
- the environment cannot be reset or replayed,
- the verifier is unavailable or opaque,
- the task distribution is known to be contaminated,
- the agent needs private credentials or live external side effects,
- the claimed result cannot be tied to the cited source.
