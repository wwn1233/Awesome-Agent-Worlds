# Selection Guide

Use this guide when choosing an Agent World for evaluation, post-training, or
product gating.

Start with the reader starter pack that matches your role, then follow the
decision tree for the target action surface. Use the comparison matrix to check
the verifier, reset boundary, and main caveat before adopting a resource.

## Reader Starter Packs

| Reader | Start with | Caution |
|---|---|---|
| Researcher | WebArena, OSWorld, SWE-bench, AppWorld, PaperBench, D3-Gym, Qwen-AgentWorld, Text World Models for LLM Agents, COMAP, Internalizing the Future | Do not compare scores without checking verifier reliability and contamination risk. |
| Evaluation builder | OSWorld-Verified, OSWorld-Human, Windows Agent Arena, WebArena-Verified, BrowserGym, AndroidWorld, DynamicGUIBench / DynamicUI, MCPWorld, MobileWorld, FineState-Bench, VeriGUI / Action-Effect Verification, tau-bench, ChainWorld, PPT-Eval, GameCraft-Bench | Prefer resettable or replayable worlds; live websites, apps, and generated artifacts drift. |
| Post-training engineer | AgentGym, AgentGym-RL, Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, PC Agent-E, Qwen-AgentWorld, WebRL, DynaWeb, AgentTrek, Go-Browse, LearnAct / LearnGUI, UI-S1, AgentProg, UI-Voyager, Agent-RLVR, GUI-GENESIS, COMFYCLAW, Agent-as-Annotators, OpenMobile, TRACE / Capability-Targeted Agentic Training, Plan-RewardBench, PEEU / GUI Experience Exploration, Failure-Driven CUA Self-Improvement, Orchard, RAGEN, VAGEN, rLLM, Agent Lightning | Public trajectories do not always imply reward quality or stable online RL. |
| Infrastructure builder | Model Context Protocol, Agent2Agent Protocol, OpenAI Agents SDK Sandbox, ADK Arena, LUMOS, MCP-Flow, OpenAgenet / OAN Yellow Paper, MCP Runtime Fault Taxonomy, MCP Security Invariants Benchmark, Agent Protocol Governance Gaps | Separate protocol or runtime direction from runnable world evidence and public trajectory availability. |
| Safety auditor | PhoneSafety / Safe, or Simply Incapable?, MyPhoneBench, SkillSafetyBench, CUAHarm, RiOSWorld, CORA / Phone-Harm, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench, GUIGuard-Bench, WebPII, MCP-SafetyBench, MCPSecBench, MCPTox, SafeMCP, MCP Security Invariants Benchmark, AI-Infra-Guard, ATBench-Claw / ATBench-Codex, PlanGuard, Proteus Skill Red Team | Separate unsafe action, privacy exposure, and simple agent incapability before drawing safety conclusions. |
| Product lead | OpenAI Computer-Using Agent, OpenAI Agents SDK Sandbox, Gemini 2.5 Computer Use, Claude Managed Agents, Project Mariner | Product signals show direction, not reproducible public training evidence. |

## Practitioner Decision Tree
```text
What do you need the world to prove?
├── GUI or computer-control ability
│   ├── Need public reproducibility, long-horizon desktop workflows, or office documents? -> OSWorld, OSWorld-Verified, OSWorld 2.0, ChainWorld, PPT-Eval, OpenCUA
│   ├── Need Windows OS evaluation or data-efficient desktop-agent training? -> Windows Agent Arena, PC Agent-E
│   ├── Need robustness to OS or environment corruptions? -> AgentHijack, OSGuard
│   ├── Need host-level isolation for self-hosted computer-use agents? -> TEE-Backed Isolation for Self-Hosted Computer-Use Agents
│   ├── Need personalized desktop or cross-app personal-assistant workflows? -> MyPCBench, AgentCIBench / Contextual Integrity
│   ├── Need macOS coverage? -> macOSWorld, MacArena, MacAgentBench
│   ├── Need matched GUI-vs-CLI execution-layer analysis? -> GUI vs. CLI Execution Benchmark
│   ├── Need GUI grounding uncertainty or rejection calibration? -> Argus / CUA Uncertainty Quantification
│   ├── Need GUI privacy or human-reference efficiency diagnostics? -> GUIGuard-Bench, OSWorld-Human, AgentCIBench / Contextual Integrity
│   ├── Need professional or enterprise desktop workflows? -> Workflow-GYM, SaaS-Bench, EntWorld, ComAct / ComCADBench
│   ├── Need scientific-instrument GUI control? -> LabOSBench
│   ├── Need fine-grained drag interactions? -> DragOn
│   ├── Need hybrid GUI, CLI, code, browser, and tool orchestration? -> WeaveBench
│   ├── Need parallel CUA orchestration? -> Multi-Agent Computer Use
│   ├── Need forkable GUI workspaces for speculative execution or rollback? -> TClone
│   ├── Need history-aware visual action critique? -> HiViG
│   ├── Need dynamic video-bearing GUI screens? -> LivingScreen, DynamicGUIBench / DynamicUI
│   ├── Need mobile interaction, fine-grained state control, or action-effect recovery? -> AndroidWorld, AndroidDaily, MobileWorld, MobileGym, MyPhoneBench, FineState-Bench, VeriGUI / Action-Effect Verification
│   ├── Need mixed GUI, CLI, and tool phone actions? -> PhoneHarness
│   ├── Need CLI-capable mobile-agent evaluation? -> Beyond GUI Paradigm / CLI-Advantage
│   ├── Need GUI-world synthesis or verified GUI trajectory search? -> ScaleWoB, PhoneWorld, MobileGym, ENVS
│   ├── Need personalization, memory, demonstrations, Chinese-app coverage, shortcut hybrids, federated training, semi-online RL, diagnostics, self-evolution, or semantic world models on phones? -> iOSWorld, MemGUI-Agent, LearnAct / LearnGUI, AgentCPM-GUI / CAGUI, MAS-Bench, FedMABench, UI-S1, AgentProg, UI-Voyager, VenusBench-Mobile, PSPA-Bench, MobiBench, MobileWorldBench, ATMem / STR-GRPO, MemGUI-Bench, STAMP / Memory-World, Teach-and-Repeat
│   ├── Need GUI/web RL, environment exploration, evaluation, and trajectory distillation? -> Agent-as-Annotators, ClawGUI, CUA-Gym, PRO-CUA, PEEU / GUI Experience Exploration, OpenMobile
│   └── Need model-centered GUI grounding, real-device mobile rollout loops, semantic OS layers, or synthetic GUI rollouts? -> UI-TARS, Xiaomi-GUI-0, LUMOS, MCPWorld, DigiWorld, GUI-GENESIS, Video2GUI / WildGUI, OmniACT
├── Browser and web workflow ability
│   ├── Need self-hosted sites? -> WebArena, VisualWebArena
│   ├── Need gym-style integration or recreated/reproducible visual web training environments? -> BrowserGym, WorkArena, Weblica, VeriEnv
│   ├── Need latency-aware planning and scheduling for web agents? -> Agent JIT Compilation
│   ├── Need asynchronous RL, curriculum/model-based RL, tutorial replay, structured exploration, or online skill distillation for visual web agents? -> WebRL, DynaWeb, AgentTrek, AsyncWebRL, Go-Browse, OpenWebRL, PANDO
│   ├── Need physical-world visual grounding before web execution? -> Ego2Web
│   ├── Need deceptive-interface, prompt-injection, provenance, PII leakage, visual PII redaction, or stakeholder safety? -> WebDecept, Web PII Leakage Benchmark, WebPII, ASPI, MIRAGE, WARD, StakeBench, Context-Fractured Decomposition Attacks, CUA-HandCrafted / Domain-Conditioned Safety
│   ├── Need browsing/research difficulty? -> BrowseComp, WebVoyager, LoHoSearch, DailyReport
│   └── Need multimodal deep-search training or reproducible web-agent trace diagnostics? -> OpenSearch-VL, Parallel WebBench / Trace Diagnostics
├── Software-engineering ability
│   ├── Need patch correctness? -> SWE-bench, SWE-bench Verified
│   ├── Need trainable rollouts, process rewards, or scalable SWE environment construction? -> SWE-Gym, SWE-TRACE, SWE-Universe, daVinci-Env
│   ├── Need playable generated-game artifacts? -> GameCraft-Bench, ScratchWorld
│   └── Need terminal generality or scalable terminal training worlds? -> Terminal-Bench, TUA-Bench, LiteCoder-Terminal, TermiGen
├── Tool/API and enterprise workflow ability
│   ├── Need stateful apps? -> AppWorld
│   ├── Need policy-following or manual-compliance tool calls? -> tau-bench, tau2-bench, MANTRA
│   ├── Need agent-native CLI harnesses for existing software? -> CLI-Anything
│   ├── Need MCP breadth, workflow repair, tool trajectories, governed tools, tool-environment hazards, or safety? -> Toolathlon, TOUCAN, MCP-Flow, Evoflux, Tool Forge, ADK Arena, MCP-AgentBench, CompSkillBench / Compositional Skill Routing, ToolBench-X, SafeMCP, MCP Security Invariants Benchmark, Attested Tool-Server Admission, MCP-SafetyBench
│   ├── Need MCP runtime faults, privacy leakage, or API-drift regeneration? -> MCP Runtime Fault Taxonomy, MCPPrivacyDetector, DeltaMCP
│   ├── Need MCP source attribution, malicious skill audits, skill composition risk, credential leakage checks, adaptive red-teaming, formal policy enforcement, planning consistency, trajectory safety customization, or skill runtime enforcement? -> ProvenanceGuard, Description-Code Inconsistency / DCIChecker, PACT / Argument-Level Provenance, MalSkillBench, SkillHarm, SCR-Bench / Skill Composition Risk, How Your Credentials Are Leaked by LLM Agent Skills, ShareLock, Agent Policy-as-Code Autoformalization, AI-Infra-Guard, Proteus Skill Red Team, PlanGuard, ATBench-Claw / ATBench-Codex, VIGIL
│   ├── Need trust-governed agent resource identity, discovery, or protocol governance gaps? -> OpenAgenet / OAN Yellow Paper, Agent Protocol Governance Gaps
│   ├── Need grounded tool-interaction synthesis? -> GAIS
│   ├── Need personalized, biomedical, clinical tool agents, or EHR database reasoning? -> MCP-Persona, MedCTA, BioManus / MCP-Native Biomedical Agent, MedCUA-Bench, CHI-Bench, EHR-Complex
│   ├── Need privacy leakage, memory drift, or trajectory-invariant execution rewards? -> Data Leakage Risks in Tool-Using LLM Agents, Memory-Induced Tool-Drift / MEMDRIFT, TIER
│   └── Need geospatial or environmental API workflows? -> GeoNatureAgent Benchmark, TerraBench
├── Research or ML engineering ability
│   ├── Need paper replication or ML competition workflows? -> PaperBench, MLE-bench
│   ├── Need scientific-discovery environments? -> D3-Gym, EurekAgent, AgentBuild / Rietveld Refinement, MDForge
│   ├── Need verifiable biomedical or Earth-system analysis? -> EpiBench, TerraBench, GeoNatureAgent Benchmark
│   ├── Need long-horizon multi-agent autonomy? -> Emergence World
│   ├── Need dynamic memory under changing environments? -> EvoArena
│   ├── Need open-ended multi-agent coordination? -> Alem
│   ├── Need language or text world-model foundations? -> Qwen-AgentWorld, WorldEvolver, Text World Models for LLM Agents
│   ├── Need auditable physical state-transition commitments? -> World Models in Words
│   ├── Need generated-world state-persistence diagnostics? -> WRBench / Persistent State Core
│   ├── Need controlled hidden-world inference? -> Agentic Automata Learning
│   ├── Need egocentric multimodal tool-agent evaluation? -> EgoBench
│   ├── Need smart-home environment-grounded tasks? -> SMH-Bench, HomeFlow
│   ├── Need cross-layer physical AI stack evaluation? -> DeepInsight
│   ├── Need embodied simulation infrastructure, benchmark construction, or workflow execution? -> Cloud-Native Embodied Simulation Infrastructure, Embodied-BenchClaw, EmbodiedClaw, FATE-VLA, LIBERO-Safety
│   ├── Need physical-AI harness or sandbox assurance? -> Harness Engineering for Physical AI, AI Sandboxes
│   ├── Need real-robot VLA leaderboard-style evaluation? -> PhAIL / Physical AI Leaderboard
│   └── Need broad knowledge tasks? -> GAIA, AgentBoard
└── Training from interaction
    ├── Need a first training substrate? -> AgentGym, AgentGym-RL, Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, PC Agent-E, Qwen-AgentWorld, Agent-as-Annotators, OpenMobile, WorldEvolver
    ├── Need scalable CUA/SWE/web environment generation? -> Fara-1.5, EnvScaler, ScaleEnv, SWE-Universe, daVinci-Env, TermiGen, VeriEnv, ENVS
    ├── Need mobile GUI rollout loops, demonstrations, active task-state memory, semi-online RL, self-evolution, or federated mobile training? -> LearnAct / LearnGUI, AgentCPM-GUI / CAGUI, UI-S1, AgentProg, UI-Voyager, Xiaomi-GUI-0, ATMem / STR-GRPO, FedMABench, PhoneHarness
    ├── Need live web, tutorial replay, structured web exploration, tool-use, or MCP rollout rewards? -> WebRL, DynaWeb, AgentTrek, AsyncWebRL, Go-Browse, OpenWebRL, PANDO, PROVE / Synthesize and Reward, MCP-Flow, ToolBench-X
    ├── Need embodied, robot, or scientific-discovery rollouts? -> GE-Sim 2.0, iMaC, A2World, RoboWorld, WLA-0 / World-Language-Action Model, VERITAS, EmbodiedClaw, SurgVista, HyperSim, D3-Gym, EurekAgent
    ├── Need environment-grounded prompt optimization for game agents? -> Environment-Grounded Automated Prompt Optimization
    ├── Need step-level agentic RL data middleware? -> Claw-R1
    ├── Need executable harness control flow for agent programs? -> LLM-as-Code Agentic Programming for Agent Harness
    ├── Need action-conditioned embodied, neural robot-policy, or surgical world-model rollouts? -> iMaC, A2World, RoboWorld, WLA-0 / World-Language-Action Model, SurgVista
    ├── Need environment-dynamics auxiliary objectives for agentic RL? -> EnvRL
    ├── Need long-horizon tool-use credit assignment, graph credit assignment, tool-aware rollout filtering, or rollout budgeting? -> Sibling-Guided Credit Distillation, TACO, GraphGPO, TAO-RL, TRACE Rollout Budget Allocation
    ├── Need agent-arena trajectory distillation? -> ShoppingBench Trajectory Primitive
    ├── Need annotation-free mobile GUI adaptation? -> MobileForge
    ├── Need self-evolution, skill evolution, procedural world-model training, environment probing, or foresight-conditioned planning? -> OpenSkill, SkillCAT, SkillSmith / Skill-Tool Co-Evolution, COMFYCLAW, VASO, ProPlay, ADWM, COMAP, Agent-Authored World Modeling, Internalizing the Future, Ask the World Before Acting, Policy and World Modeling Co-Training, Game Code World Model Generation, SimWorld Studio
    ├── Need learnable harness or contract-based scientific-agent construction? -> HarnessBridge, AgentBuild / Rietveld Refinement, MDForge
    ├── Need CUA, GUI/web process reward, trajectory reward modeling, failure-trajectory reuse, capability-targeted environment generation, or milestone-reward training? -> CUA-Gym, PRO-CUA, Plan-RewardBench, VisCritic, Autonomous Evaluation for CUA RL, Failure-Driven CUA Self-Improvement, TRACE / Capability-Targeted Agentic Training, StainFlow, ADMIRE / Adaptive Milestone Reward, BraveGuard / Open-World CUA Guard
    ├── Need RL over arbitrary agents? -> Agent Lightning, rLLM
    └── Need open training stacks? -> Orchard, verl, OpenRLHF, TRL
```
## Comparison Matrix
| Use case | Best first resource | Reward/verifier | Main risk |
| --- | --- | --- | --- |
| GUI evaluation | OSWorld-Verified | Execution state | Expensive and brittle UI state. |
| Long-horizon computer use | OSWorld 2.0 | Execution-based task evaluators and safety reports | Gated task classes and long-horizon workflows require careful runtime setup and safety review. |
| Long-horizon desktop composition | ChainWorld / PPT-Eval | Composed desktop task success and document-state checks | Office-document and chained-workload coverage should be separated from general OS control. |
| Personalized computer use | MyPCBench | Rubric-grading judge over seeded personal-assistant tasks | Persona and simulated-account coverage should not be over-read as deployment personalization. |
| Hybrid computer-use evaluation | WeaveBench | Trajectory-aware artifact judge | Artifact-aware judging is useful, but paper-only evidence limits runtime reproducibility. |
| Computer-use robustness | AgentHijack | Corruption-configured task success | Corruptions improve stress testing but do not replace adversarial safety audits. |
| Computer-use guardrails | OSGuard | Action-level labels and state invariants | Paper-only evidence should be separated from public runtime readiness. |
| Computer-use efficiency | OSWorld-Human | Human reference trajectories and weighted efficiency scores | Reference solutions should be used for evaluation and audit, not as generic training data. |
| GUI privacy | GUIGuard-Bench | Task completion paired with privacy-risk checks | GUI privacy coverage should be separated from ordinary task-success and grounding scores. |
| Self-hosted CUA isolation | TEE-Backed Isolation for Self-Hosted Computer-Use Agents | TEE-audited command authorization and policy decision records | Host isolation depends on deployment architecture and should be reviewed separately from benchmark task success. |
| Forkable GUI workspace runtime | TClone | Workspace branch, rollback, and latency measurement | Workspace branching reduces side-effect risk, but credential and session boundaries still need review. |
| Enterprise GUI workflows | EntWorld | SQL-based deterministic state-transition validation | Paper-only evidence should not be treated as public runtime readiness. |
| Scientific instrument GUI control | LabOSBench | Execution-based simulated instrument evaluation | Browser simulation improves reproducibility, but physical-instrument transfer remains a separate question. |
| Professional CAD software manipulation | ComAct / ComCADBench | Geometric accuracy and task success | Paper-only evidence should not be treated as public runtime readiness. |
| Drag-based GUI interaction | DragOn | Drag grounding accuracy | Paper-only evidence should not be treated as public dataset or runtime availability. |
| Parallel computer-use orchestration | Multi-Agent Computer Use | Benchmark-specific success and rubric judges | Gains depend on task decomposability and the underlying benchmark reset boundary. |
| History-aware GUI criticism | HiViG | Multimodal critic over GUI history and candidate actions | Critic gains should be checked against visual grounding failures and benchmark transfer. |
| Dynamic GUI/video screens | LivingScreen | Task success and information efficiency | Observation cost must be interpreted alongside task success. |
| High-dynamic GUI environments | DynamicGUIBench / DynamicUI | Benchmark task success | Paper-only evidence should not be treated as public runtime readiness. |
| Mobile GUI | AndroidWorld / MobileGym | System or structured app state | Simulator and app-distribution gaps. |
| Mobile task and trajectory synthesis | OpenMobile | Public mobile-agent code, data, and synthesized rollout records | Benchmark overlap and mobile-app coverage should be inspected before using it as a general mobile-agent training source. |
| Mixed phone actions | PhoneHarness | Trace-backed side-effect checks | CLI and tool access change the safety boundary compared with screen-only phone agents. |
| CLI-capable mobile-agent evaluation | Beyond GUI Paradigm / CLI-Advantage | AndroidWorld, MobileWorld, and CLI-Advantage task success | CLI access changes the action surface and should be separated from screen-only mobile-agent comparisons. |
| Closed-source mobile workflows | AndroidDaily | Visual trajectory judged against observable task guidelines | Real app state and account boundaries limit reproducibility. |
| Mobile safety | PhoneSafety / Safe, or Simply Incapable? | Safety-critical action audit | Inability can masquerade as safety. |
| Mobile GUI privacy | CAPED | Task utility and seeded privacy-leakage evaluation | Prototype evidence should be treated as a device-cloud boundary control, not a complete mobile safety solution. |
| Mobile prompt-injection safety | MIRAGE | Attack success and realism judgment | Screenshot realism does not guarantee deployment coverage. |
| Long-horizon mobile context management | MemGUI-Agent | MemGUI-Bench and MobileWorld results | Model gains should be separated from benchmark coverage and dataset-replay evidence. |
| Active mobile task-state tracking | ATMem / STR-GRPO; Task-State Representation / TSR | Memory-on/off rollout ablations, wrapper-level task-state tracking, and scoped mobile task success | Active memory and evaluation-wrapper gains should be checked against benchmark scope, memory cost, verifier behavior, and out-of-scope action rejection. |
| Tool-agent data leakage | Data Leakage Risks in Tool-Using LLM Agents | Risk-type evaluation across realistic benign tasks | Non-adversarial leakage should be audited separately from prompt-injection exfiltration. |
| Agent skill credential leakage | How Your Credentials Are Leaked by LLM Agent Skills | Static secret extraction, mock-credential sandbox tests, and description-code intent checks | Credential leakage can arise from benign-looking debug paths and cross-modal skill behavior. |
| Memory and tool drift | Memory-Induced Tool-Drift / MEMDRIFT | Deflection-style drift scoring over MCP tools and agent-memory scenarios | Drift findings depend on memory representation, tool catalog coverage, and judge/model choice. |
| Purpose-bound tool privacy | ToolPrivacyBench | Policy knowledge base compared with tool arguments and backend audit logs | Privacy claims should be checked across the executed tool trajectory, not only final answers or API correctness. |
| GUI environment synthesis | ScaleWoB / PhoneWorld | Generated or rule-based task verifier | Synthetic worlds need verifier spot checks before being treated as deployment evidence. |
| Personalized phone agents | iOSWorld | Task rubrics and simulator tasks | Personal data realism is hard to compare across benchmarks. |
| Mobile memory training | STAMP / Memory-World | Task success and memory accuracy | Paper-only evidence should be kept separate from public runtime readiness. |
| Mobile demonstration training | Teach-and-Repeat | Operational knowledge extraction and downstream task success | Demonstration-derived knowledge should be separated from general mobile runtime readiness. |
| Browser agents | BrowserGym | Benchmark dependent | Website state and contamination. |
| Web-agent trace diagnostics | Parallel WebBench / Trace Diagnostics | Reproducible failure traces and parallel-episode comparison | Trace diagnostics help explain failures but do not replace resettable web environments. |
| Web-agent JIT execution | Agent JIT Compilation | Tool specification validation, invariant checks, latency, and task success | Planning and scheduling evidence should not be treated as public runtime availability unless an implementation is released. |
| Visual web training environments | Weblica / VeriEnv | Replayed, synthesized, or recreated web task success | Cached, synthesized, or cloned pages need drift, validator, and verifier spot checks. |
| Physical-to-web grounding | Ego2Web | Ego2WebJudge with visual evidence | Live websites and judge variance require careful replay notes. |
| Egocentric tool agents | EgoBench | Process and result validation over egocentric-video-grounded tool tasks | Simulated user-agent-tool boundaries should not be over-read as live deployment coverage. |
| Web-agent safety | StakeBench / ASPI | Scenario or stakeholder judge | Prompt-injection success can be confused with task failure. |
| Deceptive web interfaces | WebDecept | Controlled deceptive-interface benchmark | E-commerce UI manipulation should be separated from general prompt-injection risk. |
| Browser CUA safety | CUA-HandCrafted / Domain-Conditioned Safety | Attack success and reproducibility audit | Domain-conditioned resistance should not be generalized across tool or coding-agent settings without separate checks. |
| Tool-agent artifact provenance | Context-Fractured Decomposition Attacks | Reproducible trigger and attack-success analysis | Attack evidence should be separated from general benchmark coverage. |
| Web PII leakage | Web PII Leakage Benchmark | Social-engineering leakage checks | Treat PII leakage as a privacy-control signal, not as broad web-agent safety coverage. |
| Web visual PII stewardship | WebPII | PII detection and redaction quality over web screenshots | Static screenshot privacy evidence should not be treated as a full browser-agent safety benchmark. |
| Persistent agent-state attacks | Sleeper Attack | Cross-interaction trigger benchmark | Memory- and tool-return attacks require multi-turn state inspection, not only single-step safety checks. |
| Enterprise workflow | WorkArena | Task state and policy checks | Domain coverage. |
| API agents | AppWorld | Simulated database state | Gap from real APIs. |
| Agent-native software interfaces | CLI-Anything | CLI command outputs and harness tests | App-specific CLIs need capability boundaries, credential scoping, and side-effect controls. |
| Agent harness control flow | LLM-as-Code Agentic Programming for Agent Harness | Call-tree and control-flow evidence for agent harness programs | Paper evidence should be separated from reusable runtime or benchmark availability. |
| Governed tool execution | Tool Forge | Sandbox-verified tool validation | Validation-carrying tools should still be checked against deployment policy and side-effect boundaries. |
| MCP runtime reliability | MCP Runtime Fault Taxonomy | Empirical open coding and developer survey over MCP server faults | Fault-taxonomy evidence supports reliability review, not direct benchmark performance claims. |
| MCP privacy leakage | MCPPrivacyDetector | Cross-language static analysis over MCP server code | Static-analysis evidence should be reviewed against supported languages, sinks, and server patterns. |
| MCP server regeneration | DeltaMCP | Azure REST API spec evaluation | Generation-quality evidence supports server-maintenance review, not direct agent capability claims. |
| Trust-governed agent resource discovery | OpenAgenet / OAN Yellow Paper | Architecture and security-property review | Protocol-layer trust claims should not be read as runnable-world evidence without implementation and deployment checks. |
| Malicious skill auditing | MalSkillBench | Runtime-verified malicious behavior checks | Sandbox coverage and behavior triggers determine detection transfer. |
| Lifecycle skill attacks | SkillHarm | Deterministic attack-success evaluator | Attack construction coverage depends on skill ecosystem assumptions and sandbox boundaries. |
| Skill composition risk | SCR-Bench / Skill Composition Risk | Path-level state-change and outcome checks | Individually benign skills can become unsafe when composed; inspect shared context, capability flow, trust transfer, and authorization paths. |
| MCP source attribution | ProvenanceGuard | Per-claim source support and attribution checks | Trace capture quality bounds factuality verification. |
| MCP server admission control | Attested Tool-Server Admission | Signed clearance and tool-allowlist verification | Admission checks only help when trust roots, allowlists, and audit logs are enforced before tool execution. |
| MCP description-code consistency | Description-Code Inconsistency / DCIChecker | Description-code pair audit | Natural-language tool descriptions can hide implementation and side-effect drift; use as a pre-execution MCP server review signal. |
| Argument-level tool provenance | PACT / Argument-Level Provenance | Provenance-aware capability contracts | Tool-call gating should inspect authority-bearing arguments, not only whole invocations. |
| Tool compliance and rewards | MANTRA; TIER | SMT-validated trace compliance; schema adherence, execution success, and answer correctness | Formal compliance checks and trajectory-invariant rewards reduce judge brittleness but still depend on manual coverage and simulated API fidelity. |
| Compositional skill routing | CompSkillBench / Compositional Skill Routing | Decomposition, retrieval, and DAG-plan checks | Skill routing should be evaluated on composed tasks, not only single-skill retrieval. |
| Personalized MCP agents | MCP-Persona | Simulated API task success | Persona realism and API diversity need source-level inspection. |
| Biomedical MCP graph planning | BioManus / MCP-Native Biomedical Agent | Workflow execution and task success | Domain tools need typed graph planning and data-boundary review before reuse. |
| Interactive EHR database reasoning | EHR-Complex | SQL/Python execution and exact-match clinical database answers | Deidentified EHR database reasoning should be separated from clinical deployment readiness and patient-facing safety. |
| Environmental geospatial tools | GeoNatureAgent Benchmark | Self-hostable geospatial API case checks | Public code helps reproducibility, but model API keys and data boundaries still matter. |
| MCP power regulation | SafeMCP | Environment-grounded tool-acquisition risk evaluation | Defense claims depend on threat coverage and MCP server boundaries. |
| MCP execution-control invariants | MCP Security Invariants Benchmark | Invariant-level MCP execution-control checks | Invariant checks should be reviewed against concrete client, server, and policy boundaries. |
| Agent assessment protocols | AgentBeats | Judge-agent assessment records | Agentified evaluation should be checked against reproducibility and judge variance. |
| Clinical tool agents | MedCTA | Human and tool-agent trajectories | Clinical coverage should not be treated as deployment readiness. |
| Clinical computer-use agents | MedCUA-Bench | Deterministic task and clinical safety checks | Clinical GUI coverage is benchmark evidence, not deployment readiness. |
| Policy-following tools | tau-bench | User/tool/domain policy | Narrow domains. |
| Coding agents | SWE-bench Verified | Unit tests and issue acceptance | Test leakage and issue ambiguity. |
| Playable game development | GameCraft-Bench | Project launch and task-goal verification | Generated playable artifacts should be sandboxed and checked separately from code-compilation success. |
| Trainable coding | SWE-Gym / SWE-TRACE / SWE-Universe | Runtime tests, process-reward traces, rollouts, PR-derived environment construction, and verifier checks | Repository distribution, reward hacking, verifier leakage, and generated-environment fidelity should be inspected. |
| Research agents | PaperBench | Rubric judge and subtask scores | High cost and judge variance. |
| Scientific-discovery agents | D3-Gym / EurekAgent | Task-specific evaluation scripts or metric-driven execution environments | Environment constraints, dependency replay, and reward-hacking defenses need source-level inspection. |
| Scientific workflow construction | AgentBuild / Rietveld Refinement | Rubric judge and contract frontier check | Rubric-defined agent construction should be separated from public runtime readiness. |
| Scientific ideation trajectories | Agentic-Ideation | Oracle-guided trajectory synthesis and idea-quality evaluation | Directed ideation trajectories are useful training assets, but benchmark overlap and judge design need inspection. |
| Molecular dynamics pipeline agents | MDForge | Simulator feedback and scientific confirmation | Sparse simulator feedback and wet-lab validation are domain-specific and hard to generalize. |
| Earth-system tool agents | TerraBench | Process-level and outcome benchmark evaluation | Scientific tools, simulations, and artifact checks need source-level inspection before reuse. |
| Epigenomics agents | EpiBench | Deterministic workflow-state grading | Short-horizon verifiability does not imply complete biomedical deployment readiness. |
| Search agents beyond saturated tasks | LoHoSearch / DailyReport | KG-verified answers or cascade rubrics | Live search drift and rubric judge variance can dominate score interpretation. |
| Dynamic environment memory | EvoArena | Evolving task and chain-level accuracy | Gains from memory patches should be checked against update leakage and replay assumptions. |
| Text world-model foundations | Text World Models for LLM Agents | Formal transition-model taxonomy and curated bibliography | Survey evidence is useful for framing, not direct runtime readiness. |
| Self-evolving world models | WorldEvolver / COMAP / Agent-Authored World Modeling / Internalizing the Future | Task success, world-model prediction quality, decision-oriented supervision, and foresight calibration | Paper evidence should be separated from reusable runtime, code availability, and held-out planning transfer. |
| Physical state-transition audit | World Models in Words | Hybrid trace verifier over typed state-transition commitments | Final answers can hide inconsistent transition commitments; inspect intermediate state traces. |
| Generated-world state persistence | WRBench / Persistent State Core | Camera-intervention and return-view consistency diagnostics over generated videos | Paper-only evidence should be treated as a diagnostic benchmark, not a released resettable runtime. |
| Hidden world-model inference | Agentic Automata Learning | Oracle feedback and exact DFA checks | Controlled automata worlds test inference discipline, not direct GUI or web deployment readiness. |
| Long-horizon multi-agent autonomy | Emergence World | Continuous simulation logs and governance metrics | Live external data and long-running dynamics complicate reset and reproducibility. |
| Open-ended multi-agent coordination | Alem | Survival return and coordination reward | Runnable status can change after the 2026-07-03 snapshot; verify repository availability before use. |
| Terminal agents | Terminal-Bench | Command-line task success | Pin dependency and image versions before comparing agents, because environment maintenance can dominate reproducibility. |
| General-purpose terminal use | TUA-Bench | Deterministic setup scripts and execution-based scoring | Live web and specialized tool tasks make network and dependency boundaries explicit. |
| Terminal training environments | LiteCoder-Terminal | Executable terminal environment checks | Synthetic terminal worlds need diversity and hidden-test checks before broad coding-agent claims. |
| Embodied agents | MineDojo / AI2-THOR | Simulator state | Treat simulator-state success as reproducible environment evidence, not as direct sim-to-real transfer evidence. |
| Hidden-intent driving interaction | Self-Driving Negotiator | Privileged simulator-state reward | Text-only driving negotiation isolates social reasoning but should not be treated as full autonomous-driving simulation. |
| Generated worlds | HY-World 2.0 / NVIDIA Cosmos / Genie 3 | Generated asset or world quality | Evaluation standard still immature. |
| Omnimodal physical world models | Cosmos 3 / Kairos | Benchmark, model-card, and generated-world evidence | Physical-world generation and policy examples should not be read as resettable task-world guarantees. |
| Physical AI stack evaluation | DeepInsight | Shared task, resource, result, and trace identity | Unified traces help cross-layer diagnosis, but paper-only evidence should not be treated as a public runtime release. |
| Physical-AI harness layer | Harness Engineering for Physical AI | Projection, isolation, and transfer checks around robot middleware | Middleware-level enforcement is a deployment architecture signal, not a released robot benchmark. |
| AI sandbox assurance | AI Sandboxes | Fidelity, controllability, observability, containment, reproducibility, and governance measures | A sandbox can bound evidence only for the risks and fidelity regime it actually covers. |
| Embodied benchmark construction | Embodied-BenchClaw | Agentic benchmark synthesis, quality control, and evaluation reporting | Generated benchmarks still need task solvability, verifier leakage, and maintenance checks. |
| Embodied simulation infrastructure | Cloud-Native Embodied Simulation Infrastructure | Simulation task execution, trajectory collection, and benchmark evaluation | Cloud-scale simulation needs concrete asset, reset, and data-governance checks before production reuse. |
| VLA safety and failure discovery | FATE-VLA; LIBERO-Safety | Failure rate, trajectory/object failure-diversity, physical safety, and semantic-safety metrics | Failure-seeking and procedural safety tests expose robustness gaps; they should not be confused with average-case benchmark scores. |
| Real-robot VLA benchmarking | PhAIL / Physical AI Leaderboard | Per-rollout task artifacts plus HRT and KS distributional metrics | Real-robot coverage and lab setup constraints should be read before comparing leaderboard-style results. |
| Verifiable physical skills | VASO | Model-checker temporal specifications and counterexample traces | Formal contracts improve trust evidence but depend on the completeness of state abstractions and specifications. |
| Sim-to-real manipulation training | HyperSim | Synthetic scene generation, adversarial trajectories, and real-world execution metrics | Sim-to-real gains should be tied to task distribution, simulator fidelity, and real execution coverage. |
| Multi-agent generative world models | Gamma-World / Prisma-World | Multi-agent rollout consistency and generation-quality evidence | Generated rollouts should be separated from resettable task environments until task verifiers are added. |
| Closed-loop robot world simulation | GE-Sim 2.0 | World judge and robot rollout evaluation | Generated video rollouts need task-level judge and proprioceptive-state checks before policy training claims. |
| Embodied world modeling and workflow execution | iMaC / A2World / RoboWorld / WLA-0 / VERITAS / EmbodiedClaw | Robot-policy ranking, action-conditioned simulator rollouts, neural policy-simulator scoring, world-language-action task success, visual-verifier rollout selection, and executable workflow studies | Generated or automated rollouts need policy-rank, verifier, contact, action, state-transition, simulator-release, and public-trajectory checks before physical deployment claims. |
| Surgical world modeling | SurgVista | SurgWorld-Bench metrics over long-horizon instrument-tissue dynamics | Medical and surgical rollouts require explicit domain-data boundaries and fidelity checks. |
| Visual world-model robustness | BadWorld | Rollout degradation under unseen controls | Safety reviews should stress interactive world models under trajectory-adaptive perturbations. |
| Embodied environment generation | SimWorld Studio | Compiler, physics, VLM-critique, and navigation-task feedback | UE5 generation is promising but should be checked against task diversity and reproducible rollout evidence. |
| Smart-home agent evaluation | SMH-Bench | HomeEnv final-state and task validator | Paper-only evidence should be separated from public runtime availability. |
| Smart-home agent training | HomeFlow | State-based simulated home goals | Paper-only evidence should not be treated as a public runtime release. |
| Cloud-console web-agent training | AliyunConsoleAgent | Backend audit logs and outcome rewards | Cloud credentials and account isolation must be checked before reuse. |
| GUI RL/eval harness | ClawGUI | Benchmark pipeline and process reward | Public code and device coverage should be checked before treating it as reusable infrastructure. |
| Step-level agentic RL middleware | Claw-R1 | Step records over prompts, responses, actions, rewards, and outcomes | Middleware quality depends on environment adapters and reward provenance, not only record volume. |
| Credit assignment and tool-aware rollout filtering | TACO / GraphGPO / TAO-RL | Answer-probe rewards, state-transition graph advantages, tool execution status, and entropy-guided post-tool-call exploration | Credit and filtering estimates depend on probe design, graph-state abstraction, tool fidelity, and benchmark task correctness signals. |
| CUA process rewards | PRO-CUA | Process reward model | Reward shaping must be checked against actual trajectory evidence. |
| GUI process rewards | StainFlow | Entity evidence flow and key-node verification | Process rewards should be calibrated against real GUI trajectories and task-completion checks. |
| GUI milestone rewards | ADMIRE / Adaptive Milestone Reward | Dynamically distilled verifiable milestones | Milestone shaping should be checked against final task completion and cross-environment transfer. |
| Visual web-agent online RL | OpenWebRL | Trajectory-level success judging on live web tasks | Live websites need careful reset, credential, and side-effect boundaries before reuse. |
| Web-agent curriculum RL | WebRL | Outcome-supervised reward model and WebArena-Lite task success | Curriculum gains depend on task-generation quality, reward-model calibration, and WebArena reset fidelity. |
| Structured web trajectory collection | Go-Browse | Judge-filtered successful browser task trajectories | Coverage-guided exploration should be checked for site/task diversity and teacher-judge bias before post-training reuse. |
| Web-agent trajectory distillation | Agent-as-Annotators | Public filtered trajectories, dataset, and code | Synthetic trajectories need teacher-bias, contamination, and judge-filter checks before post-training reuse. |
| Visual web-agent async RL | AsyncWebRL | WebGym task reward | Throughput gains depend on WebGym reset and verifier coverage. |
| Web-agent skill distillation | PANDO | VisualWebArena task success and trajectory-efficiency metrics | Skill libraries reduce marginal cost only when trajectory reuse does not hide benchmark overfitting. |
| Multimodal search-agent training | OpenSearch-VL | SearchVL-SFT-36k, SearchVL-RL-8k, and multimodal search benchmark judging | Search APIs, visual tools, and LLM judges should be treated as explicit runtime and evaluation dependencies. |
| Desktop CUA SFT data | ProCUA-SFT | Binary precondition checks and OSWorld success | Synthetic desktop traces need source, leakage, and application-diversity checks before reuse. |
| Web-agent imitation rollbacks | Speculative Rollback Correction | Hard verifier and verifier-passing web-agent trajectories | Teacher intervention and rollback policies should be checked against verifier coverage and trajectory diversity. |
| Live MCP tool-use RL | PROVE / Synthesize and Reward | Programmatic rewards on stateful MCP servers | Live-server rewards need careful reset and side-effect boundaries. |
| MCP workflow repair | Evoflux | MCP-Bench execution feedback and validation | Live tool catalogs make feasibility and side-effect boundaries benchmark dependent. |
| CUA safety guard | BraveGuard / Open-World CUA Guard | Trajectory-level risk detection | Guard evaluation depends on attack and benign-task coverage. |
| Multi-party agent loyalty | PrincipalBench / Multi-Party Principal Loyalty | Dual judges and integrity-audit gate | Multi-party dialogue safety should be separated from single-turn refusal or generic helpfulness tests. |
| Rubric reward-hacking testbed | CHERRL | Clean and biased LLM-judge reward comparison | Synthetic judge biases make hacking observable, but transfer to production reward systems still needs separate validation. |
| Reward-hacking environments | Hack-Verifiable Environments | TextArena environments and environment-level hack detection | Verifiable hacks expose reward-hacking behavior, but transfer to production reward systems needs separate validation. |
| Dual-role agent training | Role-Agent | Prediction-observation alignment and benchmark return | Process rewards should be checked against real rollout quality, not just final score. |
| Agent-arena trajectory distillation | ShoppingBench Trajectory Primitive | ShoppingBench harness checks and trajectory-quality filtering | Arena traces need leak-cluster, reward-quality, and benchmark-contamination checks before reuse. |
| Mobile GUI adaptation | MobileForge | MobileGym and mobile benchmark success | Paper-only evidence should not be treated as public training data availability. |
| Mobile GUI demonstrations | LearnAct / LearnGUI | Offline action match and online mobile task success | Demonstration similarity, app coverage, and online reset assumptions should be checked before using traces for adaptation. |
| Mobile GUI shortcut hybrids | MAS-Bench | Task success, execution efficiency, and shortcut-quality metrics | Code availability and shortcut side effects should be checked separately from paper-level benchmark evidence. |
| Federated mobile-agent training | FedMABench | Federated mobile-agent evaluation scripts | Federated splits model heterogeneity, but privacy and deployment assumptions remain outside ordinary benchmark scores. |
| Real-device mobile GUI training | Xiaomi-GUI-0 | RealMobile, AndroidWorld, auxiliary sandbox, and failure-trajectory evidence | Real-device closed loops improve deployment relevance but do not imply public reproducibility or public trajectory access. |
| GUI error recovery | RoTS / GUI-RobustEval | Executable GUI recovery test cases | Synthetic recovery data should be validated against live UI drift. |
| Programmatic tool-environment scaling | EnvScaler / ScaleEnv | Rule-based state validation and executable action verification | Generated environments should be checked for task solvability, verifier leakage, and domain diversity before training use. |
| Verified environment generation | ENVS / daVinci-Env / TermiGen / ClawEnvKit / ASTRA | Generated-task verification, trajectory filtering, or arena construction | Generated worlds need explicit verifier, diversity, and leakage checks before model-training use. |
| Function-calling environment scaling | AgentScaler / Environment Scaling | Benchmark and simulated-environment success checks | Simulated API breadth should be separated from public runtime readiness and real-service robustness. |
| Online tool-use data synthesis | RODS | Rollout reward variance and benchmark reward signals | Capability-boundary sampling improves training signal only when the underlying verifier is reliable. |
| Environment-dynamics agentic RL | EnvRL | State-prediction and inverse-dynamics objectives over interaction trajectories | Auxiliary dynamics losses should be checked against actual long-horizon task gains and benchmark coverage. |
| Self-designing training environments | From Trainee to Trainer / LLM-as-Environment-Engineer | Failure trajectories, policy-behavior summaries, and environment-stage benchmark results | Environment redesign can overfit to the current policy unless held-out task and verifier checks are explicit. |
| Distributed agentic RL swarms | AgentJet | Task reward functions, rollout logs, and benchmark records | Decoupled client runtimes improve scale but make credential, side-effect, and reward-boundary review more important. |
| Agentic RL harness co-evolution | EvoTrainer | Rollout diagnostics and intervention backtests | Harness evolution can improve training loops but must be separated from benchmark overfitting and invalid high-score promotion. |
| Environment-grounded prompt optimization | Environment-Grounded Automated Prompt Optimization | BALROG and BabyAI environment returns after prompt mutation | Prompt-optimization claims should be validated through environment rollouts, not prompt readability alone. |
| Grounded tool-interaction synthesis | GAIS | BFCL, tau2, and ACEBench evaluators | Synthetic tool data should be checked for verifier leakage and protocol/task diversity. |
| Multimodal CUA skills | VISUALSKILL | Gym-Anything / CUA-World and OSExpert / OSExpert-Eval benchmark deltas | Skill artifacts should be checked for application specificity and visual-context maintenance cost. |
| Failure-driven tool-agent RL | SENTINEL | Pass-k and task-success metrics on targeted tasks | Failure-generated tasks should be checked for distribution drift and verifier coverage. |
| Learnable agent harnesses | HarnessBridge | Terminal-Bench and SWE-bench Verified evaluation | Harness compression can hide environment details; inspect rejected actions and projection losses. |
| Open-world skill self-evolution | OpenSkill | Self-built virtual verifier and final target evaluation | As of the 2026-07-03 snapshot, public evidence supports the paper/project signal rather than a reusable runnable artifact. |
| Trajectory-grounded skill evolution | SkillCAT | Replay-based skill-patch assessment | Source-task replay can overfit; check cross-domain transfer before treating skills as reusable. |
| Skill-tool co-evolution | SkillSmith / Skill-Tool Co-Evolution | Execution-trace utility and benchmark success | Tool edits change capability boundaries; inspect side effects, conflicts, and anti-pattern vetoes before reuse. |
| Tool-use credit distillation | Sibling-Guided Credit Distillation | Sibling rollout contrast and verifier-aligned credit reassignment | Dense credit references should be checked against shortcut amplification and verifier drift. |
| Agentic RL rollout budgeting | TRACE Rollout Budget Allocation | Prefix-level reward contrast and rollout informativeness | Budget allocation can improve efficiency without solving verifier quality or task coverage. |
| Agent-data mutual evolution | CoEvolve | Environment-validated task synthesis | Synthetic task gains depend on benchmark coverage and validation boundary. |
| Procedural world-model preplay | ProPlay | Benchmark task success and procedure-graph ablation | Procedure graphs can overfit to benchmark-specific task structure. |
| Offline world-model evaluation | ADWM | Off-policy value estimation on multi-turn agent tasks | Offline estimates need calibration before release-gating decisions. |
| World-model co-training | Policy and World Modeling Co-Training | Benchmark reward plus next-observation supervision | Auxiliary world-model losses need rollout-quality checks and benchmark transfer tests. |
| Executable game world-model distillation | Game Code World Model Generation | Syntax, mechanics, and playability verification | Generated code worlds should be sandboxed and checked against held-out game mechanics. |

## Inclusion Criteria
A resource enters the main index only when primary-source evidence identifies its environment or infrastructure role, observation/action interface, verifier or reward, reset/replay status, trajectory access, sandbox or safety boundary, source confidence, and current public access; unclear entries stay out of the main index.

## Scoring Methodology
Readiness is a 14-point world-readiness score, not a measure of impact or model quality. It sums seven 0-2 evidence axes: runtime, verifier, reset, trajectories, trainability, sandbox, and production signal.
Full credit requires runnable runtime evidence, strong verifier evidence, episode reset or dataset replay, public trajectories, public training readiness, a concrete sandbox boundary, and a production or deployment signal. Partial, private, synthetic, or benchmark-dependent evidence earns one point where applicable.
`Score Limits` lists each axis whose score is below 2 as a deduction from the 14-point maximum; omitted axes earned full credit. Display labels map 0-4 to reference, 5-8 to eval candidate, 9-12 to training candidate, and 13-14 to production-grade, while protocols, safety controls, model releases, product signals, and infrastructure keep kind-specific labels.

## When Not To Use an Agent World
Do not use these resources as capability claims when the evaluation is only final-text similarity, the environment cannot be reset or replayed, the verifier is unavailable or opaque, the task distribution is contaminated, or the agent needs private credentials, live external side effects, or claims that cannot be tied to the cited source.
