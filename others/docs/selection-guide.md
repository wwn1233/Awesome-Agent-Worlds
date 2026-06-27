# Selection Guide

Use this guide when choosing an Agent World for evaluation, post-training, or
product gating.

## Practitioner Decision Tree

```text
What do you need the world to prove?
├── GUI or computer-control ability
│   ├── Need public reproducibility? -> OSWorld, OSWorld-Verified, OpenCUA
│   ├── Need robustness to OS or environment corruptions? -> AgentHijack, OSGuard
│   ├── Need host-level isolation for self-hosted computer-use agents? -> TEE-Backed Isolation for Self-Hosted Computer-Use Agents
│   ├── Need personalized desktop or cross-app personal-assistant workflows? -> MyPCBench, AgentCIBench / Contextual Integrity
│   ├── Need macOS coverage? -> macOSWorld, MacArena, MacAgentBench
│   ├── Need matched GUI-vs-CLI execution-layer analysis? -> GUI vs. CLI Execution Benchmark
│   ├── Need GUI grounding uncertainty or rejection calibration? -> Argus / CUA Uncertainty Quantification
│   ├── Need professional or enterprise desktop workflows? -> Workflow-GYM, SaaS-Bench, EntWorld, ComAct / ComCADBench
│   ├── Need scientific-instrument GUI control? -> LabOSBench
│   ├── Need fine-grained drag interactions? -> DragOn
│   ├── Need hybrid GUI, CLI, code, browser, and tool orchestration? -> WeaveBench
│   ├── Need parallel CUA orchestration? -> Multi-Agent Computer Use
│   ├── Need forkable GUI workspaces for speculative execution or rollback? -> TClone
│   ├── Need history-aware visual action critique? -> HiViG
│   ├── Need dynamic video-bearing GUI screens? -> LivingScreen, DynamicGUIBench / DynamicUI
│   ├── Need mobile interaction? -> AndroidWorld, AndroidDaily, MobileWorld, MobileGym, MyPhoneBench
│   ├── Need mixed GUI, CLI, and tool phone actions? -> PhoneHarness
│   ├── Need CLI-capable mobile-agent evaluation? -> Beyond GUI Paradigm / CLI-Advantage
│   ├── Need mobile GUI privacy controls? -> CAPED
│   ├── Need closed-source daily mobile workflows? -> AndroidDaily
│   ├── Need GUI-world synthesis? -> ScaleWoB, PhoneWorld, MobileGym
│   ├── Need personalization, memory, or demonstrations on phones? -> iOSWorld, MemGUI-Agent, MemGUI-Bench, STAMP / Memory-World, Teach-and-Repeat
│   ├── Need GUI RL, evaluation, and deployment harnessing? -> ClawGUI, CUA-Gym, PRO-CUA
│   └── Need model-centered GUI grounding or synthetic GUI rollouts? -> UI-TARS, MCPWorld, DigiWorld, GUI-GENESIS, Video2GUI / WildGUI, OmniACT
├── Browser and web workflow ability
│   ├── Need self-hosted sites? -> WebArena, VisualWebArena
│   ├── Need gym-style integration or reproducible visual web training environments? -> BrowserGym, WorkArena, Weblica
│   ├── Need latency-aware planning and scheduling for web agents? -> Agent JIT Compilation
│   ├── Need asynchronous RL or online skill distillation for visual web agents? -> AsyncWebRL, OpenWebRL, PANDO
│   ├── Need physical-world visual grounding before web execution? -> Ego2Web
│   ├── Need deceptive-interface, prompt-injection, provenance, or stakeholder safety? -> WebDecept, ASPI, MIRAGE, WARD, StakeBench, Context-Fractured Decomposition Attacks, CUA-HandCrafted / Domain-Conditioned Safety
│   ├── Need browsing/research difficulty? -> BrowseComp, WebVoyager, LoHoSearch, DailyReport
│   └── Need multimodal deep-search agent training? -> OpenSearch-VL
├── Software-engineering ability
│   ├── Need patch correctness? -> SWE-bench, SWE-bench Verified
│   ├── Need trainable rollouts? -> SWE-Gym
│   └── Need terminal generality or scalable terminal training worlds? -> Terminal-Bench, LiteCoder-Terminal
├── Tool/API and enterprise workflow ability
│   ├── Need stateful apps? -> AppWorld
│   ├── Need policy-following tool calls? -> tau-bench, tau2-bench
│   ├── Need agent-native CLI harnesses for existing software? -> CLI-Anything
│   ├── Need MCP breadth, workflow repair, tool trajectories, governed tools, tool-environment hazards, or safety? -> Toolathlon, TOUCAN, MCP-Flow, Evoflux, Tool Forge, ADK Arena, MCP-AgentBench, CompSkillBench / Compositional Skill Routing, ToolBench-X, SafeMCP, Attested Tool-Server Admission, MCP-SafetyBench
│   ├── Need MCP server runtime-fault taxonomy? -> MCP Runtime Fault Taxonomy
│   ├── Need MCP server regeneration under API drift? -> DeltaMCP
│   ├── Need MCP source attribution, malicious skill audits, skill composition risk, threshold poisoning, formal policy enforcement, or skill runtime enforcement? -> ProvenanceGuard, Description-Code Inconsistency / DCIChecker, PACT / Argument-Level Provenance, MalSkillBench, SkillHarm, SCR-Bench / Skill Composition Risk, ShareLock, Agent Policy-as-Code Autoformalization, VIGIL
│   ├── Need grounded tool-interaction synthesis? -> GAIS
│   ├── Need personalized, biomedical, or clinical tool agents? -> MCP-Persona, MedCTA, BioManus / MCP-Native Biomedical Agent, MedCUA-Bench, CHI-Bench
│   ├── Need non-adversarial tool-agent privacy leakage checks? -> Data Leakage Risks in Tool-Using LLM Agents
│   ├── Need memory-induced tool-use drift checks? -> Memory-Induced Tool-Drift / MEMDRIFT
│   ├── Need trajectory-invariant execution rewards for tool composition? -> TIER
│   └── Need geospatial or environmental API workflows? -> GeoNatureAgent Benchmark, TerraBench
├── Research or ML engineering ability
│   ├── Need paper replication? -> PaperBench
│   ├── Need ML competition workflows? -> MLE-bench
│   ├── Need scientific-discovery environments? -> EurekAgent, AgentBuild / Rietveld Refinement, MDForge
│   ├── Need verifiable biomedical or Earth-system analysis? -> EpiBench, TerraBench, GeoNatureAgent Benchmark
│   ├── Need long-horizon multi-agent autonomy? -> Emergence World
│   ├── Need dynamic memory under changing environments? -> EvoArena
│   ├── Need open-ended multi-agent coordination? -> Alem
│   ├── Need language or text world-model foundations? -> Qwen-AgentWorld, Text World Models for LLM Agents
│   ├── Need auditable physical state-transition commitments? -> World Models in Words
│   ├── Need generated-world state-persistence diagnostics? -> WRBench / Persistent State Core
│   ├── Need controlled hidden-world inference? -> Agentic Automata Learning
│   ├── Need egocentric multimodal tool-agent evaluation? -> EgoBench
│   ├── Need smart-home environment-grounded tasks? -> SMH-Bench, HomeFlow
│   ├── Need cross-layer physical AI stack evaluation? -> DeepInsight
│   ├── Need embodied benchmark construction or VLA failure discovery? -> Embodied-BenchClaw, FATE-VLA
│   ├── Need physical-AI harness or sandbox assurance? -> Harness Engineering for Physical AI, AI Sandboxes
│   ├── Need real-robot VLA leaderboard-style evaluation? -> PhAIL / Physical AI Leaderboard
│   └── Need broad knowledge tasks? -> GAIA, AgentBoard
└── Training from interaction
    ├── Need multi-world, language-world-model, scalable CUA environment, cloud-console, terminal, mobile-demonstration, scientific-discovery, desktop CUA SFT, live web, web-agent imitation, generated robot rollouts, or live tool-use rollouts? -> AgentGym, AgentGym-RL, Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, Qwen-AgentWorld, Fara-1.5, EnvScaler, ScaleEnv, EnvFactory, AgentScaler / Environment Scaling, RODS, From Trainee to Trainer / LLM-as-Environment-Engineer, AgentJet, EvoTrainer, Role-Agent, CoEvolve, SENTINEL, LiteCoder-Terminal, TIER, MobileForge, Weblica, RoTS / GUI-RobustEval, AsyncWebRL, OpenWebRL, PANDO, OpenSearch-VL, GE-Sim 2.0, iMaC, SurgVista, HyperSim, ProCUA-SFT, Speculative Rollback Correction, AliyunConsoleAgent, HomeFlow, Teach-and-Repeat, PhoneHarness, EurekAgent, PROVE / Synthesize and Reward, TOUCAN, MCP-Flow, ToolBench-X, GAIS, BioManus / MCP-Native Biomedical Agent, CompSkillBench / Compositional Skill Routing, RAGEN, VAGEN
    ├── Need environment-grounded prompt optimization for game agents? -> Environment-Grounded Automated Prompt Optimization
    ├── Need step-level agentic RL data middleware? -> Claw-R1
    ├── Need executable harness control flow for agent programs? -> LLM-as-Code Agentic Programming for Agent Harness
    ├── Need action-conditioned embodied or surgical world-model rollouts? -> iMaC, SurgVista
    ├── Need environment-dynamics auxiliary objectives for agentic RL? -> EnvRL
    ├── Need long-horizon tool-use credit assignment or rollout budgeting? -> Sibling-Guided Credit Distillation, TRACE Rollout Budget Allocation
    ├── Need agent-arena trajectory distillation? -> ShoppingBench Trajectory Primitive
    ├── Need annotation-free mobile GUI adaptation? -> MobileForge
    ├── Need self-evolution, skill evolution, or procedural world-model training? -> OpenSkill, SkillCAT, SkillSmith / Skill-Tool Co-Evolution, VASO, ProPlay, ADWM, Policy and World Modeling Co-Training, Game Code World Model Generation, SimWorld Studio
    ├── Need learnable harness or contract-based scientific-agent construction? -> HarnessBridge, AgentBuild / Rietveld Refinement, MDForge
    ├── Need CUA, GUI process-reward, autonomous CUA reward, or milestone-reward training? -> CUA-Gym, PRO-CUA, VisCritic, Autonomous Evaluation for CUA RL, StainFlow, ADMIRE / Adaptive Milestone Reward, BraveGuard / Open-World CUA Guard
    ├── Need RL over arbitrary agents? -> Agent Lightning, rLLM
    └── Need open training stacks? -> Orchard, verl, OpenRLHF, TRL
```

## Comparison Matrix

| Use case | Best first resource | Reward/verifier | Main risk |
| --- | --- | --- | --- |
| GUI evaluation | OSWorld-Verified | Execution state | Expensive and brittle UI state. |
| Personalized computer use | MyPCBench | Rubric-grading judge over seeded personal-assistant tasks | Persona and simulated-account coverage should not be over-read as deployment personalization. |
| Hybrid computer-use evaluation | WeaveBench | Trajectory-aware artifact judge | Artifact-aware judging is useful, but paper-only evidence limits runtime reproducibility. |
| Computer-use robustness | AgentHijack | Corruption-configured task success | Corruptions improve stress testing but do not replace adversarial safety audits. |
| Computer-use guardrails | OSGuard | Action-level labels and state invariants | Paper-only evidence should be separated from public runtime readiness. |
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
| Mixed phone actions | PhoneHarness | Trace-backed side-effect checks | CLI and tool access change the safety boundary compared with screen-only phone agents. |
| CLI-capable mobile-agent evaluation | Beyond GUI Paradigm / CLI-Advantage | AndroidWorld, MobileWorld, and CLI-Advantage task success | CLI access changes the action surface and should be separated from screen-only mobile-agent comparisons. |
| Closed-source mobile workflows | AndroidDaily | Visual trajectory judged against observable task guidelines | Real app state and account boundaries limit reproducibility. |
| Mobile safety | PhoneSafety / Safe, or Simply Incapable? | Safety-critical action audit | Inability can masquerade as safety. |
| Mobile GUI privacy | CAPED | Task utility and seeded privacy-leakage evaluation | Prototype evidence should be treated as a device-cloud boundary control, not a complete mobile safety solution. |
| Mobile prompt-injection safety | MIRAGE | Attack success and realism judgment | Screenshot realism does not guarantee deployment coverage. |
| Long-horizon mobile context management | MemGUI-Agent | MemGUI-Bench and MobileWorld results | Model gains should be separated from benchmark coverage and dataset-replay evidence. |
| Tool-agent data leakage | Data Leakage Risks in Tool-Using LLM Agents | Risk-type evaluation across realistic benign tasks | Non-adversarial leakage should be audited separately from prompt-injection exfiltration. |
| Memory and tool drift | Memory-Induced Tool-Drift / MEMDRIFT | Deflection-style drift scoring over MCP tools and agent-memory scenarios | Drift findings depend on memory representation, tool catalog coverage, and judge/model choice. |
| GUI environment synthesis | ScaleWoB / PhoneWorld | Generated or rule-based task verifier | Synthetic worlds need verifier spot checks before being treated as deployment evidence. |
| Personalized phone agents | iOSWorld | Task rubrics and simulator tasks | Personal data realism is hard to compare across benchmarks. |
| Mobile memory training | STAMP / Memory-World | Task success and memory accuracy | Paper-only evidence should be kept separate from public runtime readiness. |
| Mobile demonstration training | Teach-and-Repeat | Operational knowledge extraction and downstream task success | Demonstration-derived knowledge should be separated from general mobile runtime readiness. |
| Browser agents | BrowserGym | Benchmark dependent | Website state and contamination. |
| Web-agent JIT execution | Agent JIT Compilation | Tool specification validation, invariant checks, latency, and task success | Planning and scheduling evidence should not be treated as public runtime availability unless an implementation is released. |
| Visual web training environments | Weblica | Replayed and synthesized web task success | Cached or synthesized pages need drift and verifier spot checks. |
| Physical-to-web grounding | Ego2Web | Ego2WebJudge with visual evidence | Live websites and judge variance require careful replay notes. |
| Egocentric tool agents | EgoBench | Process and result validation over egocentric-video-grounded tool tasks | Simulated user-agent-tool boundaries should not be over-read as live deployment coverage. |
| Web-agent safety | StakeBench / ASPI | Scenario or stakeholder judge | Prompt-injection success can be confused with task failure. |
| Deceptive web interfaces | WebDecept | Controlled deceptive-interface benchmark | E-commerce UI manipulation should be separated from general prompt-injection risk. |
| Browser CUA safety | CUA-HandCrafted / Domain-Conditioned Safety | Attack success and reproducibility audit | Domain-conditioned resistance should not be generalized across tool or coding-agent settings without separate checks. |
| Tool-agent artifact provenance | Context-Fractured Decomposition Attacks | Reproducible trigger and attack-success analysis | Attack evidence should be separated from general benchmark coverage. |
| Persistent agent-state attacks | Sleeper Attack | Cross-interaction trigger benchmark | Memory- and tool-return attacks require multi-turn state inspection, not only single-step safety checks. |
| Enterprise workflow | WorkArena | Task state and policy checks | Domain coverage. |
| API agents | AppWorld | Simulated database state | Gap from real APIs. |
| Agent-native software interfaces | CLI-Anything | CLI command outputs and harness tests | App-specific CLIs need capability boundaries, credential scoping, and side-effect controls. |
| Agent harness control flow | LLM-as-Code Agentic Programming for Agent Harness | Call-tree and control-flow evidence for agent harness programs | Paper evidence should be separated from reusable runtime or benchmark availability. |
| Governed tool execution | Tool Forge | Sandbox-verified tool validation | Validation-carrying tools should still be checked against deployment policy and side-effect boundaries. |
| MCP runtime reliability | MCP Runtime Fault Taxonomy | Empirical open coding and developer survey over MCP server faults | Fault-taxonomy evidence supports reliability review, not direct benchmark performance claims. |
| MCP server regeneration | DeltaMCP | Azure REST API spec evaluation | Generation-quality evidence supports server-maintenance review, not direct agent capability claims. |
| Malicious skill auditing | MalSkillBench | Runtime-verified malicious behavior checks | Sandbox coverage and behavior triggers determine detection transfer. |
| Lifecycle skill attacks | SkillHarm | Deterministic attack-success evaluator | Attack construction coverage depends on skill ecosystem assumptions and sandbox boundaries. |
| Skill composition risk | SCR-Bench / Skill Composition Risk | Path-level state-change and outcome checks | Individually benign skills can become unsafe when composed; inspect shared context, capability flow, trust transfer, and authorization paths. |
| MCP source attribution | ProvenanceGuard | Per-claim source support and attribution checks | Trace capture quality bounds factuality verification. |
| MCP server admission control | Attested Tool-Server Admission | Signed clearance and tool-allowlist verification | Admission checks only help when trust roots, allowlists, and audit logs are enforced before tool execution. |
| MCP description-code consistency | Description-Code Inconsistency / DCIChecker | Description-code pair audit | Natural-language tool descriptions can hide implementation and side-effect drift; use as a pre-execution MCP server review signal. |
| Argument-level tool provenance | PACT / Argument-Level Provenance | Provenance-aware capability contracts | Tool-call gating should inspect authority-bearing arguments, not only whole invocations. |
| Tool-composition rewards | TIER | Schema adherence, execution success, and answer correctness | Trajectory-invariant rewards reduce reference-trajectory brittleness but depend on simulated API fidelity. |
| Compositional skill routing | CompSkillBench / Compositional Skill Routing | Decomposition, retrieval, and DAG-plan checks | Skill routing should be evaluated on composed tasks, not only single-skill retrieval. |
| Personalized MCP agents | MCP-Persona | Simulated API task success | Persona realism and API diversity need source-level inspection. |
| Biomedical MCP graph planning | BioManus / MCP-Native Biomedical Agent | Workflow execution and task success | Domain tools need typed graph planning and data-boundary review before reuse. |
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
| Physical state-transition audit | World Models in Words | Hybrid trace verifier over typed state-transition commitments | Final answers can hide inconsistent transition commitments; inspect intermediate state traces. |
| Generated-world state persistence | WRBench / Persistent State Core | Camera-intervention and return-view consistency diagnostics over generated videos | Paper-only evidence should be treated as a diagnostic benchmark, not a released resettable runtime. |
| Hidden world-model inference | Agentic Automata Learning | Oracle feedback and exact DFA checks | Controlled automata worlds test inference discipline, not direct GUI or web deployment readiness. |
| Long-horizon multi-agent autonomy | Emergence World | Continuous simulation logs and governance metrics | Live external data and long-running dynamics complicate reset and reproducibility. |
| Open-ended multi-agent coordination | Alem | Survival return and coordination reward | Current public repo status should be checked before treating it as runnable code. |
| Terminal agents | Terminal-Bench | Command-line task success | Environment maintenance. |
| Terminal training environments | LiteCoder-Terminal | Executable terminal environment checks | Synthetic terminal worlds need diversity and hidden-test checks before broad coding-agent claims. |
| Embodied agents | MineDojo / AI2-THOR | Simulator state | Sim-to-real transfer. |
| Hidden-intent driving interaction | Self-Driving Negotiator | Privileged simulator-state reward | Text-only driving negotiation isolates social reasoning but should not be treated as full autonomous-driving simulation. |
| Generated worlds | HY-World 2.0 / Cosmos / Genie 3 | Generated asset or world quality | Evaluation standard still immature. |
| Omnimodal physical world models | Cosmos 3 / Kairos | Benchmark, model-card, and generated-world evidence | Physical-world generation and policy examples should not be read as resettable task-world guarantees. |
| Physical AI stack evaluation | DeepInsight | Shared task, resource, result, and trace identity | Unified traces help cross-layer diagnosis, but paper-only evidence should not be treated as a public runtime release. |
| Physical-AI harness layer | Harness Engineering for Physical AI | Projection, isolation, and transfer checks around robot middleware | Middleware-level enforcement is a deployment architecture signal, not a released robot benchmark. |
| AI sandbox assurance | AI Sandboxes | Fidelity, controllability, observability, containment, reproducibility, and governance measures | A sandbox can bound evidence only for the risks and fidelity regime it actually covers. |
| Embodied benchmark construction | Embodied-BenchClaw | Agentic benchmark synthesis, quality control, and evaluation reporting | Generated benchmarks still need task solvability, verifier leakage, and maintenance checks. |
| VLA failure discovery | FATE-VLA | Failure rate and trajectory/object failure-diversity metrics | Failure-seeking tests expose robustness gaps; they should not be confused with average-case benchmark scores. |
| Real-robot VLA benchmarking | PhAIL / Physical AI Leaderboard | Per-rollout task artifacts plus HRT and KS distributional metrics | Real-robot coverage and lab setup constraints should be read before comparing leaderboard-style results. |
| Verifiable physical skills | VASO | Model-checker temporal specifications and counterexample traces | Formal contracts improve trust evidence but depend on the completeness of state abstractions and specifications. |
| Sim-to-real manipulation training | HyperSim | Synthetic scene generation, adversarial trajectories, and real-world execution metrics | Sim-to-real gains should be tied to task distribution, simulator fidelity, and real execution coverage. |
| Multi-agent generative world models | Gamma-World / Prisma-World | Multi-agent rollout consistency and generation-quality evidence | Generated rollouts should be separated from resettable task environments until task verifiers are added. |
| Closed-loop robot world simulation | GE-Sim 2.0 | World judge and robot rollout evaluation | Generated video rollouts need task-level judge and proprioceptive-state checks before policy training claims. |
| Action-conditioned embodied world modeling | iMaC | Robot-policy checkpoint ranking through generated motion and contact rollouts | Generated rollouts need policy-rank, contact, and motion checks before being treated as physical deployment evidence. |
| Surgical world modeling | SurgVista | SurgWorld-Bench metrics over long-horizon instrument-tissue dynamics | Medical and surgical rollouts require explicit domain-data boundaries and fidelity checks. |
| Visual world-model robustness | BadWorld | Rollout degradation under unseen controls | Safety reviews should stress interactive world models under trajectory-adaptive perturbations. |
| Embodied environment generation | SimWorld Studio | Compiler, physics, VLM-critique, and navigation-task feedback | UE5 generation is promising but should be checked against task diversity and reproducible rollout evidence. |
| Smart-home agent evaluation | SMH-Bench | HomeEnv final-state and task validator | Paper-only evidence should be separated from public runtime availability. |
| Smart-home agent training | HomeFlow | State-based simulated home goals | Paper-only evidence should not be treated as a public runtime release. |
| Cloud-console web-agent training | AliyunConsoleAgent | Backend audit logs and outcome rewards | Cloud credentials and account isolation must be checked before reuse. |
| GUI RL/eval harness | ClawGUI | Benchmark pipeline and process reward | Public code and device coverage should be checked before treating it as reusable infrastructure. |
| Step-level agentic RL middleware | Claw-R1 | Step records over prompts, responses, actions, rewards, and outcomes | Middleware quality depends on environment adapters and reward provenance, not only record volume. |
| CUA process rewards | PRO-CUA | Process reward model | Reward shaping must be checked against actual trajectory evidence. |
| GUI process rewards | StainFlow | Entity evidence flow and key-node verification | Process rewards should be calibrated against real GUI trajectories and task-completion checks. |
| GUI milestone rewards | ADMIRE / Adaptive Milestone Reward | Dynamically distilled verifiable milestones | Milestone shaping should be checked against final task completion and cross-environment transfer. |
| Visual web-agent online RL | OpenWebRL | Trajectory-level success judging on live web tasks | Live websites need careful reset, credential, and side-effect boundaries before reuse. |
| Visual web-agent async RL | AsyncWebRL | WebGym task reward | Throughput gains depend on WebGym reset and verifier coverage. |
| Web-agent skill distillation | PANDO | VisualWebArena task success and trajectory-efficiency metrics | Skill libraries reduce marginal cost only when trajectory reuse does not hide benchmark overfitting. |
| Multimodal search-agent training | OpenSearch-VL | SearchVL-SFT-36k, SearchVL-RL-8k, and multimodal search benchmark judging | Search APIs, visual tools, and LLM judges should be treated as explicit runtime and evaluation dependencies. |
| Desktop CUA SFT data | ProCUA-SFT | Binary precondition checks and OSWorld success | Synthetic desktop traces need source, leakage, and application-diversity checks before reuse. |
| Web-agent imitation rollbacks | Speculative Rollback Correction | Hard verifier and verifier-passing web-agent trajectories | Teacher intervention and rollback policies should be checked against verifier coverage and trajectory diversity. |
| Live MCP tool-use RL | PROVE / Synthesize and Reward | Programmatic rewards on stateful MCP servers | Live-server rewards need careful reset and side-effect boundaries. |
| MCP workflow repair | Evoflux | MCP-Bench execution feedback and validation | Live tool catalogs make feasibility and side-effect boundaries benchmark dependent. |
| CUA safety guard | BraveGuard / Open-World CUA Guard | Trajectory-level risk detection | Guard evaluation depends on attack and benign-task coverage. |
| Rubric reward-hacking testbed | CHERRL | Clean and biased LLM-judge reward comparison | Synthetic judge biases make hacking observable, but transfer to production reward systems still needs separate validation. |
| Reward-hacking environments | Hack-Verifiable Environments | TextArena environments and environment-level hack detection | Verifiable hacks expose reward-hacking behavior, but transfer to production reward systems needs separate validation. |
| Dual-role agent training | Role-Agent | Prediction-observation alignment and benchmark return | Process rewards should be checked against real rollout quality, not just final score. |
| Agent-arena trajectory distillation | ShoppingBench Trajectory Primitive | ShoppingBench harness checks and trajectory-quality filtering | Arena traces need leak-cluster, reward-quality, and benchmark-contamination checks before reuse. |
| Mobile GUI adaptation | MobileForge | MobileGym and mobile benchmark success | Paper-only evidence should not be treated as public training data availability. |
| GUI error recovery | RoTS / GUI-RobustEval | Executable GUI recovery test cases | Synthetic recovery data should be validated against live UI drift. |
| Programmatic tool-environment scaling | EnvScaler / ScaleEnv | Rule-based state validation and executable action verification | Generated environments should be checked for task solvability, verifier leakage, and domain diversity before training use. |
| Function-calling environment scaling | AgentScaler / Environment Scaling | Benchmark and simulated-environment success checks | Simulated API breadth should be separated from public runtime readiness and real-service robustness. |
| Online tool-use data synthesis | RODS | Rollout reward variance and benchmark reward signals | Capability-boundary sampling improves training signal only when the underlying verifier is reliable. |
| Environment-dynamics agentic RL | EnvRL | State-prediction and inverse-dynamics objectives over interaction trajectories | Auxiliary dynamics losses should be checked against actual long-horizon task gains and benchmark coverage. |
| Self-designing training environments | From Trainee to Trainer / LLM-as-Environment-Engineer | Failure trajectories, policy-behavior summaries, and environment-stage benchmark results | Environment redesign can overfit to the current policy unless held-out task and verifier checks are explicit. |
| Distributed agentic RL swarms | AgentJet | Task reward functions, rollout logs, and benchmark records | Decoupled client runtimes improve scale but make credential, side-effect, and reward-boundary review more important. |
| Agentic RL harness co-evolution | EvoTrainer | Rollout diagnostics and intervention backtests | Harness evolution can improve training loops but must be separated from benchmark overfitting and invalid high-score promotion. |
| Environment-grounded prompt optimization | Environment-Grounded Automated Prompt Optimization | BALROG and BabyAI environment returns after prompt mutation | Prompt-optimization claims should be validated through environment rollouts, not prompt readability alone. |
| Grounded tool-interaction synthesis | GAIS | BFCL, tau2, and ACEBench evaluators | Synthetic tool data should be checked for verifier leakage and protocol/task diversity. |
| Multimodal CUA skills | VISUALSKILL | CUA-World and OSExpert-Eval benchmark deltas | Skill artifacts should be checked for application specificity and visual-context maintenance cost. |
| Failure-driven tool-agent RL | SENTINEL | Pass-k and task-success metrics on targeted tasks | Failure-generated tasks should be checked for distribution drift and verifier coverage. |
| Learnable agent harnesses | HarnessBridge | Terminal-Bench and SWE-bench Verified evaluation | Harness compression can hide environment details; inspect rejected actions and projection losses. |
| Open-world skill self-evolution | OpenSkill | Self-built virtual verifier and final target evaluation | Code is not yet a public runnable artifact; treat as paper/project evidence. |
| Trajectory-grounded skill evolution | SkillCAT | Replay-based skill-patch assessment | Source-task replay can overfit; check cross-domain transfer before treating skills as reusable. |
| Skill-tool co-evolution | SkillSmith / Skill-Tool Co-Evolution | Execution-trace utility and benchmark success | Tool edits change capability boundaries; inspect side effects, conflicts, and anti-pattern vetoes before reuse. |
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
| Researcher | WebArena, OSWorld, SWE-bench, AppWorld, PaperBench, Emergence World, EurekAgent, TerraBench, EpiBench, AgentBuild / Rietveld Refinement, MDForge, Qwen-AgentWorld, Text World Models for LLM Agents, World Models in Words, Agentic Automata Learning | Do not compare scores without checking verifier reliability and contamination risk. |
| Evaluation builder | OSWorld-Verified, WebArena-Verified, BrowserGym, AndroidWorld, AndroidDaily, MobileGym, MacArena, MacAgentBench, GUI vs. CLI Execution Benchmark, Workflow-GYM, WeaveBench, EntWorld, MyPCBench, LabOSBench, LivingScreen, DynamicGUIBench / DynamicUI, DragOn, ComAct / ComCADBench, MedCUA-Bench, Multi-Agent Computer Use, AgentHijack, AgentCIBench / Contextual Integrity, OSGuard, TClone, Argus / CUA Uncertainty Quantification, PhoneHarness, Beyond GUI Paradigm / CLI-Advantage, HiViG, Alem, EvoArena, Self-Driving Negotiator, SimWorld Studio, Ego2Web, EgoBench, SMH-Bench, DeepInsight, Embodied-BenchClaw, FATE-VLA, PhAIL / Physical AI Leaderboard, MCPWorld, MobileWorld, ToolBench-X, Toolathlon, MCP-AgentBench, MCP-Flow, MCP-Persona, MedCTA, GeoNatureAgent Benchmark, LoHoSearch, DailyReport, LiteCoder-Terminal, TIER, GE-Sim 2.0, iMaC, SurgVista, WRBench / Persistent State Core, World Models in Words, AgentBeats, tau-bench | Prefer resettable or replayable worlds; live websites and apps drift. |
| Post-training engineer | AgentGym, AgentGym-RL, Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence, Qwen-AgentWorld, Fara-1.5, EnvScaler, ScaleEnv, EnvFactory, AgentScaler / Environment Scaling, RODS, EnvRL, From Trainee to Trainer / LLM-as-Environment-Engineer, AgentJet, LLM-as-Code Agentic Programming for Agent Harness, Claw-R1, EvoTrainer, Environment-Grounded Automated Prompt Optimization, AsyncWebRL, GAIS, Role-Agent, ShoppingBench Trajectory Primitive, OpenSkill, CoEvolve, SENTINEL, SkillCAT, SkillSmith / Skill-Tool Co-Evolution, VASO, HyperSim, Sibling-Guided Credit Distillation, TRACE Rollout Budget Allocation, VisCritic, Autonomous Evaluation for CUA RL, HarnessBridge, LiteCoder-Terminal, TIER, Hack-Verifiable Environments, MobileForge, RoTS / GUI-RobustEval, ProPlay, ADWM, OpenWebRL, PANDO, OpenSearch-VL, GE-Sim 2.0, iMaC, SurgVista, Speculative Rollback Correction, ADMIRE / Adaptive Milestone Reward, Policy and World Modeling Co-Training, StainFlow, Game Code World Model Generation, SimWorld Studio, AliyunConsoleAgent, HomeFlow, CUA-Gym, PRO-CUA, ProCUA-SFT, PROVE / Synthesize and Reward, Teach-and-Repeat, ClawGUI, Multi-Agent Computer Use, PhoneHarness, STAMP / Memory-World, PhoneWorld, MobileGym, Agent-RLVR, TOUCAN, MCP-Flow, ToolBench-X, CompSkillBench / Compositional Skill Routing, BioManus / MCP-Native Biomedical Agent, MCP-Cosmos, GUI-GENESIS, Orchard, RAGEN, VAGEN, rLLM, Agent Lightning | Public trajectories do not always imply reward quality or stable online RL. |
| Infrastructure builder | Model Context Protocol, Agent2Agent Protocol, OpenAI Agents SDK Sandbox, CLI-Anything, Tool Forge, ADK Arena, HyperTool, Evoflux, VISUALSKILL, TClone, TIER, AgentBeats, HarnessBridge, Harness Engineering for Physical AI, AI Sandboxes, AgentJet, LLM-as-Code Agentic Programming for Agent Harness, Agent JIT Compilation, ToolBench-X, ShareLock, Agent Policy-as-Code Autoformalization, VIGIL, Memory-Induced Tool-Drift / MEMDRIFT, HarnessAPI, Agent-First Tool API, MCP-Flow, MCP Runtime Fault Taxonomy, DeltaMCP, Description-Code Inconsistency / DCIChecker, PACT / Argument-Level Provenance, CompSkillBench / Compositional Skill Routing, BioManus / MCP-Native Biomedical Agent, Attested Tool-Server Admission, GAIS, Agent-BOM, AgentSkillOS, MalSkillBench, ProvenanceGuard, Anthropic Agent Skills | Separate protocol or runtime direction from runnable world evidence and public trajectory availability. |
| Safety auditor | BraveGuard / Open-World CUA Guard, StakeBench, WebDecept, Sleeper Attack, NRT-Bench, CAPED, MIRAGE, AgentHijack, AgentCIBench / Contextual Integrity, OSGuard, TEE-Backed Isolation for Self-Hosted Computer-Use Agents, Memory-Induced Tool-Drift / MEMDRIFT, ShareLock, Agent Policy-as-Code Autoformalization, VIGIL, MalSkillBench, SkillHarm, SCR-Bench / Skill Composition Risk, Description-Code Inconsistency / DCIChecker, PACT / Argument-Level Provenance, AI Sandboxes, FATE-VLA, VASO, BadWorld, ProvenanceGuard, Attested Tool-Server Admission, PhoneHarness, Context-Fractured Decomposition Attacks, CUA-HandCrafted / Domain-Conditioned Safety, Data Leakage Risks in Tool-Using LLM Agents, ToolBench-X, CHERRL, Hack-Verifiable Environments, PhoneSafety / Safe, or Simply Incapable?, MyPhoneBench, SkillSafetyBench, SafeMCP, CUAHarm, RiOSWorld, CORA / Phone-Harm, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench, MCP-SafetyBench, MCPSecBench, MCPTox | Separate unsafe action from simple agent incapability before drawing safety conclusions. |
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
