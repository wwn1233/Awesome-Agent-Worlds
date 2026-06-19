# Selection Guide

Use this guide when choosing an Agent World for evaluation, post-training, or
product gating.

## Practitioner Decision Tree

```text
What do you need the world to prove?
├── GUI or computer-control ability
│   ├── Need public reproducibility? -> OSWorld, OSWorld-Verified, OpenCUA
│   ├── Need macOS coverage? -> macOSWorld, MacArena
│   ├── Need professional or enterprise desktop workflows? -> Workflow-GYM, SaaS-Bench, EntWorld, ComAct / ComCADBench
│   ├── Need fine-grained drag interactions? -> DragOn
│   ├── Need hybrid GUI, CLI, code, browser, and tool orchestration? -> WeaveBench
│   ├── Need parallel CUA orchestration? -> Multi-Agent Computer Use
│   ├── Need history-aware visual action critique? -> HiViG
│   ├── Need dynamic video-bearing GUI screens? -> LivingScreen, DynamicGUIBench / DynamicUI
│   ├── Need mobile interaction? -> AndroidWorld, AndroidDaily, MobileWorld, MobileGym, MyPhoneBench
│   ├── Need mobile GUI privacy controls? -> CAPED
│   ├── Need closed-source daily mobile workflows? -> AndroidDaily
│   ├── Need phone-world synthesis? -> PhoneWorld, SimuWoB, MobileGym
│   ├── Need personalization, memory, or demonstrations on phones? -> iOSWorld, MemGUI-Bench, STAMP / Memory-World, Teach-and-Repeat
│   ├── Need GUI RL, evaluation, and deployment harnessing? -> ClawGUI, CUA-Gym, PRO-CUA
│   └── Need model-centered GUI grounding or synthetic GUI rollouts? -> UI-TARS, MCPWorld, DigiWorld, GUI-GENESIS, Video2GUI / WildGUI, OmniACT
├── Browser and web workflow ability
│   ├── Need self-hosted sites? -> WebArena, VisualWebArena
│   ├── Need gym-style integration? -> BrowserGym, WorkArena
│   ├── Need physical-world visual grounding before web execution? -> Ego2Web
│   ├── Need deceptive-interface, prompt-injection, provenance, or stakeholder safety? -> WebDecept, ASPI, MIRAGE, WARD, StakeBench, Context-Fractured Decomposition Attacks, CUA-HandCrafted / Domain-Conditioned Safety
│   └── Need browsing/research difficulty? -> BrowseComp, WebVoyager, LoHoSearch, DailyReport
├── Software-engineering ability
│   ├── Need patch correctness? -> SWE-bench, SWE-bench Verified
│   ├── Need trainable rollouts? -> SWE-Gym
│   └── Need terminal generality? -> Terminal-Bench
├── Tool/API and enterprise workflow ability
│   ├── Need stateful apps? -> AppWorld
│   ├── Need policy-following tool calls? -> tau-bench, tau2-bench
│   ├── Need agent-native CLI harnesses for existing software? -> CLI-Anything
│   ├── Need MCP breadth, tool trajectories, governed tools, or safety? -> Toolathlon, TOUCAN, MCP-Flow, Tool Forge, ADK Arena, MCP-AgentBench, SafeMCP, MCP-SafetyBench
│   ├── Need personalized or clinical tool agents? -> MCP-Persona, MedCTA, MedCUA-Bench, CHI-Bench
│   └── Need geospatial or environmental API workflows? -> GeoNatureAgent Benchmark, TerraBench
├── Research or ML engineering ability
│   ├── Need paper replication? -> PaperBench
│   ├── Need ML competition workflows? -> MLE-bench
│   ├── Need scientific-discovery environments? -> EurekAgent, AgentBuild / Rietveld Refinement, MDForge
│   ├── Need verifiable biomedical or Earth-system analysis? -> EpiBench, TerraBench, GeoNatureAgent Benchmark
│   ├── Need long-horizon multi-agent autonomy? -> Emergence World
│   ├── Need dynamic memory under changing environments? -> EvoArena
│   ├── Need open-ended multi-agent coordination? -> Alem
│   ├── Need text world-model foundations? -> Text World Models for LLM Agents
│   └── Need broad knowledge tasks? -> GAIA, AgentBoard
└── Training from interaction
    ├── Need multi-world, cloud-console, mobile-demonstration, scientific-discovery, live web, web-agent imitation, or live tool-use rollouts? -> AgentGym, AgentGym-RL, Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, Role-Agent, CoEvolve, SENTINEL, OpenWebRL, Speculative Rollback Correction, AliyunConsoleAgent, HomeFlow, Teach-and-Repeat, EurekAgent, PROVE / Synthesize and Reward, TOUCAN, MCP-Flow, RAGEN, VAGEN
    ├── Need long-horizon tool-use credit assignment or rollout budgeting? -> Sibling-Guided Credit Distillation, TRACE Rollout Budget Allocation
    ├── Need agent-arena trajectory distillation? -> ShoppingBench Trajectory Primitive
    ├── Need self-evolution, skill evolution, or procedural world-model training? -> OpenSkill, SkillCAT, ProPlay, ADWM, Policy and World Modeling Co-Training, Game Code World Model Generation, SimWorld Studio
    ├── Need learnable harness or contract-based scientific-agent construction? -> HarnessBridge, AgentBuild / Rietveld Refinement, MDForge
    ├── Need CUA, GUI process-reward, or milestone-reward training? -> CUA-Gym, PRO-CUA, StainFlow, ADMIRE / Adaptive Milestone Reward, BraveGuard / Open-World CUA Guard
    ├── Need RL over arbitrary agents? -> Agent Lightning, rLLM
    └── Need open training stacks? -> Orchard, verl, OpenRLHF, TRL
```

## Comparison Matrix

| Use case | Best first resource | Reward/verifier | Main risk |
| --- | --- | --- | --- |
| GUI evaluation | OSWorld-Verified | Execution state | Expensive and brittle UI state. |
| Hybrid computer-use evaluation | WeaveBench | Trajectory-aware artifact judge | Artifact-aware judging is useful, but paper-only evidence limits runtime reproducibility. |
| Enterprise GUI workflows | EntWorld | SQL-based deterministic state-transition validation | Paper-only evidence should not be treated as public runtime readiness. |
| Professional CAD software manipulation | ComAct / ComCADBench | Geometric accuracy and task success | Paper-only evidence should not be treated as public runtime readiness. |
| Drag-based GUI interaction | DragOn | Drag grounding accuracy | Paper-only evidence should not be treated as public dataset or runtime availability. |
| Parallel computer-use orchestration | Multi-Agent Computer Use | Benchmark-specific success and rubric judges | Gains depend on task decomposability and the underlying benchmark reset boundary. |
| History-aware GUI criticism | HiViG | Multimodal critic over GUI history and candidate actions | Critic gains should be checked against visual grounding failures and benchmark transfer. |
| Dynamic GUI/video screens | LivingScreen | Task success and information efficiency | Observation cost must be interpreted alongside task success. |
| High-dynamic GUI environments | DynamicGUIBench / DynamicUI | Benchmark task success | Paper-only evidence should not be treated as public runtime readiness. |
| Mobile GUI | AndroidWorld / MobileGym | System or structured app state | Simulator and app-distribution gaps. |
| Closed-source mobile workflows | AndroidDaily | Visual trajectory judged against observable task guidelines | Real app state and account boundaries limit reproducibility. |
| Mobile safety | PhoneSafety / Safe, or Simply Incapable? | Safety-critical action audit | Inability can masquerade as safety. |
| Mobile GUI privacy | CAPED | Task utility and seeded privacy-leakage evaluation | Prototype evidence should be treated as a device-cloud boundary control, not a complete mobile safety solution. |
| Mobile prompt-injection safety | MIRAGE | Attack success and realism judgment | Screenshot realism does not guarantee deployment coverage. |
| Phone environment synthesis | PhoneWorld / SimuWoB | Rule or synthetic task verifier | Paper-only evidence should not be over-read as public code. |
| Personalized phone agents | iOSWorld | Task rubrics and simulator tasks | Personal data realism is hard to compare across benchmarks. |
| Mobile memory training | STAMP / Memory-World | Task success and memory accuracy | Paper-only evidence should be kept separate from public runtime readiness. |
| Mobile demonstration training | Teach-and-Repeat | Operational knowledge extraction and downstream task success | Demonstration-derived knowledge should be separated from general mobile runtime readiness. |
| Browser agents | BrowserGym | Benchmark dependent | Website state and contamination. |
| Physical-to-web grounding | Ego2Web | Ego2WebJudge with visual evidence | Live websites and judge variance require careful replay notes. |
| Web-agent safety | StakeBench / ASPI | Scenario or stakeholder judge | Prompt-injection success can be confused with task failure. |
| Deceptive web interfaces | WebDecept | Controlled deceptive-interface benchmark | E-commerce UI manipulation should be separated from general prompt-injection risk. |
| Browser CUA safety | CUA-HandCrafted / Domain-Conditioned Safety | Attack success and reproducibility audit | Domain-conditioned resistance should not be generalized across tool or coding-agent settings without separate checks. |
| Tool-agent artifact provenance | Context-Fractured Decomposition Attacks | Reproducible trigger and attack-success analysis | Attack evidence should be separated from general benchmark coverage. |
| Persistent agent-state attacks | Sleeper Attack | Cross-interaction trigger benchmark | Memory- and tool-return attacks require multi-turn state inspection, not only single-step safety checks. |
| Enterprise workflow | WorkArena | Task state and policy checks | Domain coverage. |
| API agents | AppWorld | Simulated database state | Gap from real APIs. |
| Agent-native software interfaces | CLI-Anything | CLI command outputs and harness tests | App-specific CLIs need capability boundaries, credential scoping, and side-effect controls. |
| Governed tool execution | Tool Forge | Sandbox-verified tool validation | Validation-carrying tools should still be checked against deployment policy and side-effect boundaries. |
| Personalized MCP agents | MCP-Persona | Simulated API task success | Persona realism and API diversity need source-level inspection. |
| Environmental geospatial tools | GeoNatureAgent Benchmark | Self-hostable geospatial API case checks | Public code helps reproducibility, but model API keys and data boundaries still matter. |
| MCP power regulation | SafeMCP | Environment-grounded tool-acquisition risk evaluation | Defense claims depend on threat coverage and MCP server boundaries. |
| Agent assessment protocols | AgentBeats | Judge-agent assessment records | Agentified evaluation should be checked against reproducibility and judge variance. |
| Clinical tool agents | MedCTA | Human and tool-agent trajectories | Clinical coverage should not be treated as deployment readiness. |
| Clinical computer-use agents | MedCUA-Bench | Deterministic task and clinical safety checks | Clinical GUI coverage is benchmark evidence, not deployment readiness. |
| Policy-following tools | tau-bench | User/tool/domain policy | Narrow domains. |
| Coding agents | SWE-bench Verified | Unit tests and issue acceptance | Test leakage and issue ambiguity. |
| Trainable coding | SWE-Gym | Runtime tests and rollouts | Limited repository distribution. |
| Research agents | PaperBench | Rubric judge and subtask scores | High cost and judge variance. |
| Scientific-discovery agents | EurekAgent | Metric-driven execution environment | Environment constraints and reward-hacking defenses need source-level inspection. |
| Scientific workflow construction | AgentBuild / Rietveld Refinement | Rubric judge and contract frontier check | Rubric-defined agent construction should be separated from public runtime readiness. |
| Molecular dynamics pipeline agents | MDForge | Simulator feedback and scientific confirmation | Sparse simulator feedback and wet-lab validation are domain-specific and hard to generalize. |
| Earth-system tool agents | TerraBench | Process-level and outcome benchmark evaluation | Scientific tools, simulations, and artifact checks need source-level inspection before reuse. |
| Epigenomics agents | EpiBench | Deterministic workflow-state grading | Short-horizon verifiability does not imply complete biomedical deployment readiness. |
| Search agents beyond saturated tasks | LoHoSearch / DailyReport | KG-verified answers or cascade rubrics | Live search drift and rubric judge variance can dominate score interpretation. |
| Dynamic environment memory | EvoArena | Evolving task and chain-level accuracy | Gains from memory patches should be checked against update leakage and replay assumptions. |
| Text world-model foundations | Text World Models for LLM Agents | Formal transition-model taxonomy and curated bibliography | Survey evidence is useful for framing, not direct runtime readiness. |
| Long-horizon multi-agent autonomy | Emergence World | Continuous simulation logs and governance metrics | Live external data and long-running dynamics complicate reset and reproducibility. |
| Open-ended multi-agent coordination | Alem | Survival return and coordination reward | Current public repo status should be checked before treating it as runnable code. |
| Terminal agents | Terminal-Bench | Command-line task success | Environment maintenance. |
| Embodied agents | MineDojo / AI2-THOR | Simulator state | Sim-to-real transfer. |
| Generated worlds | HY-World 2.0 / Cosmos / Genie 3 | Generated asset or world quality | Evaluation standard still immature. |
| Omnimodal physical world models | Cosmos 3 | Benchmark, model-card, and generated-world evidence | Physical-world generation and policy examples should not be read as resettable task-world guarantees. |
| Embodied environment generation | SimWorld Studio | Compiler, physics, VLM-critique, and navigation-task feedback | UE5 generation is promising but should be checked against task diversity and reproducible rollout evidence. |
| Smart-home agent training | HomeFlow | State-based simulated home goals | Paper-only evidence should not be treated as a public runtime release. |
| Cloud-console web-agent training | AliyunConsoleAgent | Backend audit logs and outcome rewards | Cloud credentials and account isolation must be checked before reuse. |
| GUI RL/eval harness | ClawGUI | Benchmark pipeline and process reward | Public code and device coverage should be checked before treating it as reusable infrastructure. |
| CUA process rewards | PRO-CUA | Process reward model | Reward shaping must be checked against actual trajectory evidence. |
| GUI process rewards | StainFlow | Entity evidence flow and key-node verification | Process rewards should be calibrated against real GUI trajectories and task-completion checks. |
| GUI milestone rewards | ADMIRE / Adaptive Milestone Reward | Dynamically distilled verifiable milestones | Milestone shaping should be checked against final task completion and cross-environment transfer. |
| Visual web-agent online RL | OpenWebRL | Trajectory-level success judging on live web tasks | Live websites need careful reset, credential, and side-effect boundaries before reuse. |
| Web-agent imitation rollbacks | Speculative Rollback Correction | Hard verifier and verifier-passing web-agent trajectories | Teacher intervention and rollback policies should be checked against verifier coverage and trajectory diversity. |
| Live MCP tool-use RL | PROVE / Synthesize and Reward | Programmatic rewards on stateful MCP servers | Live-server rewards need careful reset and side-effect boundaries. |
| CUA safety guard | BraveGuard / Open-World CUA Guard | Trajectory-level risk detection | Guard evaluation depends on attack and benign-task coverage. |
| Rubric reward-hacking testbed | CHERRL | Clean and biased LLM-judge reward comparison | Synthetic judge biases make hacking observable, but transfer to production reward systems still needs separate validation. |
| Dual-role agent training | Role-Agent | Prediction-observation alignment and benchmark return | Process rewards should be checked against real rollout quality, not just final score. |
| Agent-arena trajectory distillation | ShoppingBench Trajectory Primitive | ShoppingBench harness checks and trajectory-quality filtering | Arena traces need leak-cluster, reward-quality, and benchmark-contamination checks before reuse. |
| Failure-driven tool-agent RL | SENTINEL | Pass-k and task-success metrics on targeted tasks | Failure-generated tasks should be checked for distribution drift and verifier coverage. |
| Learnable agent harnesses | HarnessBridge | Terminal-Bench and SWE-bench Verified evaluation | Harness compression can hide environment details; inspect rejected actions and projection losses. |
| Open-world skill self-evolution | OpenSkill | Self-built virtual verifier and final target evaluation | Code is not yet a public runnable artifact; treat as paper/project evidence. |
| Trajectory-grounded skill evolution | SkillCAT | Replay-based skill-patch assessment | Source-task replay can overfit; check cross-domain transfer before treating skills as reusable. |
| Tool-use credit distillation | Sibling-Guided Credit Distillation | Sibling rollout contrast and verifier-aligned credit reassignment | Dense credit references should be checked against shortcut amplification and verifier drift. |
| Agentic RL rollout budgeting | TRACE Rollout Budget Allocation | Prefix-level reward contrast and rollout informativeness | Budget allocation can improve efficiency without solving verifier quality or task coverage. |
| Agent-data mutual evolution | CoEvolve | Environment-validated task synthesis | Synthetic task gains depend on benchmark coverage and validation boundary. |
| Procedural world-model preplay | ProPlay | Benchmark task success and procedure-graph ablation | Procedure graphs can overfit to benchmark-specific task structure. |
| Offline world-model evaluation | ADWM | Off-policy value estimation on multi-turn agent tasks | Offline estimates need calibration before release-gating decisions. |
| World-model co-training | Policy and World Modeling Co-Training | Benchmark reward plus next-observation supervision | Auxiliary world-model losses need rollout-quality checks and benchmark transfer tests. |
| Executable game world-model distillation | Game Code World Model Generation | Syntax, mechanics, and playability verification | Generated code worlds should be sandboxed and checked against held-out game mechanics. |

## Reader Starter Packs

| Reader | Start with | Caution |
|---|---|---|
| Researcher | WebArena, OSWorld, SWE-bench, AppWorld, PaperBench, Emergence World, EurekAgent, TerraBench, EpiBench, AgentBuild / Rietveld Refinement, MDForge, Text World Models for LLM Agents | Do not compare scores without checking verifier reliability and contamination risk. |
| Evaluation builder | OSWorld-Verified, WebArena-Verified, BrowserGym, AndroidWorld, AndroidDaily, MobileGym, MacArena, Workflow-GYM, WeaveBench, EntWorld, LivingScreen, DynamicGUIBench / DynamicUI, DragOn, ComAct / ComCADBench, MedCUA-Bench, Multi-Agent Computer Use, HiViG, Alem, EvoArena, SimWorld Studio, Ego2Web, MCPWorld, MobileWorld, Toolathlon, MCP-AgentBench, MCP-Flow, MCP-Persona, MedCTA, GeoNatureAgent Benchmark, LoHoSearch, DailyReport, AgentBeats, tau-bench | Prefer resettable or replayable worlds; live websites and apps drift. |
| Post-training engineer | AgentGym, AgentGym-RL, Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, Role-Agent, ShoppingBench Trajectory Primitive, OpenSkill, CoEvolve, SENTINEL, SkillCAT, Sibling-Guided Credit Distillation, TRACE Rollout Budget Allocation, HarnessBridge, ProPlay, ADWM, OpenWebRL, Speculative Rollback Correction, ADMIRE / Adaptive Milestone Reward, Policy and World Modeling Co-Training, StainFlow, Game Code World Model Generation, SimWorld Studio, AliyunConsoleAgent, HomeFlow, CUA-Gym, PRO-CUA, PROVE / Synthesize and Reward, Teach-and-Repeat, ClawGUI, Multi-Agent Computer Use, STAMP / Memory-World, PhoneWorld, MobileGym, Agent-RLVR, TOUCAN, MCP-Flow, MCP-Cosmos, GUI-GENESIS, Orchard, RAGEN, VAGEN, rLLM, Agent Lightning | Public trajectories do not always imply reward quality or stable online RL. |
| Infrastructure builder | Model Context Protocol, Agent2Agent Protocol, OpenAI Agents SDK Sandbox, CLI-Anything, Tool Forge, ADK Arena, HyperTool, AgentBeats, HarnessBridge, HarnessAPI, Agent-First Tool API, MCP-Flow, Agent-BOM, AgentSkillOS, Anthropic Agent Skills | Separate protocol or runtime direction from runnable world evidence and public trajectory availability. |
| Safety auditor | BraveGuard / Open-World CUA Guard, StakeBench, WebDecept, Sleeper Attack, CAPED, MIRAGE, Context-Fractured Decomposition Attacks, CUA-HandCrafted / Domain-Conditioned Safety, CHERRL, PhoneSafety / Safe, or Simply Incapable?, MyPhoneBench, SkillSafetyBench, SafeMCP, CUAHarm, RiOSWorld, CORA / Phone-Harm, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench, MCP-SafetyBench, MCPSecBench, MCPTox | Separate unsafe action from simple agent incapability before drawing safety conclusions. |
| Product lead | OpenAI Computer-Using Agent, OpenAI Agents SDK Sandbox, Gemini 2.5 Computer Use, Claude Managed Agents, Project Mariner | Product signals show direction, not reproducible public training evidence. |

## Inclusion Criteria

A resource should enter the main index only when first-party evidence supports:

- a clear environment or infrastructure role,
- observation and action interfaces,
- verifier or reward details,
- reset, replay, or reproducibility status,
- trajectory access or a clear reason it is unavailable,
- sandbox or safety boundary,
- source confidence and current public access.

If these fields are still unclear, treat the resource as not yet catalog-ready
rather than a main-index signal.

## When Not To Use an Agent World

Do not use these resources as capability claims when:

- the evaluation depends only on final text similarity,
- the environment cannot be reset or replayed,
- the verifier is unavailable or opaque,
- the task distribution is known to be contaminated,
- the agent needs private credentials or live external side effects,
- the claimed result cannot be tied to the cited source.
