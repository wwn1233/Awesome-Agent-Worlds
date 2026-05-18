# Benchmark and Environment Landscape

This page maps representative benchmarks, environments, and training systems
across the main Agent World categories.

## Computer and GUI Worlds

- [OSWorld](https://os-world.github.io/) benchmarks multimodal agents on
  open-ended real computer tasks in OS environments. The GitHub repo includes
  OSWorld-Verified acknowledgements from Moonshot/Kimi, Human Data, OpenAI,
  ByteDance Seed TARS, Anthropic, Simular, and HKU.
- [AndroidWorld](https://github.com/google-research/android_world) is a
  reproducible Android environment with 116 tasks across 20 apps, dynamic task
  instantiation, durable rewards, and experimental Docker support.
- [UI-TARS](https://github.com/bytedance/UI-TARS) connects desktop, mobile,
  browser, game, and grounding benchmarks.
- [MCPWorld](https://github.com/SAAgent/MCPWorld) combines GUI-style
  computer-use tasks with MCP tool interfaces, making screen and tool-state
  evidence part of one benchmark surface.
- [DigiWorld](https://arxiv.org/abs/2605.08261) stresses scale by synthesizing
  a large computer-use task distribution across digital applications.
- CUAHarm and RiOSWorld make harmful computer-use behavior and operating-system
  safety part of the GUI benchmark landscape rather than a separate policy
  checklist.

## Web Worlds

- [WebArena](https://webarena.dev/) provides self-hosted web applications and
  programmatic validation for realistic web tasks.
- VisualWebArena extends the web-agent setting to multimodal visual tasks.
- BrowseComp stresses long-horizon hard-to-find web research rather than short
  web navigation.

## Benchmark Repair and Verified Variants

Verified variants matter because agent benchmarks fail in ways that static NLP
benchmarks usually do not: websites drift, GUI states become ambiguous, tests
leak, tasks have hidden side effects, and final-answer scoring misses process
errors. A repaired benchmark usually adds one or more of:

- human or expert filtering of noisy tasks,
- stronger programmatic or trace-based verification,
- public trajectories for replay and diagnosis,
- stricter environment reset or sandboxing,
- clearer contamination and leaderboard policies.

OSWorld-Verified, WebArena-Verified, and SWE-bench Verified show the same
pattern across GUI, web, and code worlds. The best repair path is not only a
smaller cleaner subset; it is a resource that can support evaluation,
trajectory audit, and eventually post-training without hiding verifier risk.

## Safety Benchmarks and Governance Worlds

Safety benchmarks are part of the environment landscape because harmful
behavior depends on state, permissions, context, and action history.
PhoneSafety separates safe phone-use behavior from simple inability to act,
while MyPhoneBench audits privacy over-disclosure in phone apps. MobileWorld
and CORA / Phone-Harm extend the phone branch toward broader app worlds and
harm-aware action chains. OS-Harm, OS-BLIND, AgentHazard, CUAHarm, RiOSWorld,
and LPS-Bench move the same question into computer-use agents, prompt
injection, benign-looking harmful contexts, multi-step harm, and planning-time
safety awareness. MCP-SafetyBench and MCPSecBench add the protocol side:
authorization, server trust, transport boundaries, and adversarial MCP
client-server behavior.

## Tool/API Worlds

- [AppWorld](https://appworld.dev/) exposes 9 apps through 457 APIs, populated
  with 106 simulated users, with state and execution-based unit tests.
- [tau-bench](https://github.com/sierra-research/tau-bench) and
  [tau2-bench](https://github.com/sierra-research/tau2-bench) evaluate
  conversational agents with policies, tools, user simulation, text/voice
  modalities, and domain states.
- [ToolSandbox](https://github.com/apple/ToolSandbox) evaluates stateful tool
  execution, implicit dependencies between tools, conversational user
  simulation, and intermediate/final milestone checks.
- [Berkeley Function Calling Leaderboard](https://gorilla.cs.berkeley.edu/leaderboard.html)
  remains a live function/tool-calling leaderboard, with newer versions moving
  toward multi-turn and agentic tool evaluation.
- MCP-Bench, MCP-Atlas, MCP-Universe, LiveMCPBench, Toolathlon,
  MCP-AgentBench, TOUCAN, MCP-Cosmos, MCPMark, MCP-SafetyBench, and MCPSecBench
  show that MCP has become a full tool-world family rather than only a
  connector protocol.

## Code and Research Worlds

- [SWE-bench](https://www.swebench.com/) remains the canonical software agent
  benchmark family, with Verified, Multilingual, Lite, Full, and newer splits.
- OpenAI argues [SWE-bench Verified is increasingly contaminated](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
  and recommends SWE-bench Pro for frontier coding capabilities.
- [SWE-Lancer](https://openai.com/index/swe-lancer/) maps software agent tasks
  to real freelance economic value.
- [PaperBench](https://openai.com/index/paperbench/) turns research replication
  into rubric-graded tasks.
- [MLE-bench](https://openai.com/index/mle-bench/) turns ML competitions into
  agent environments.
- [GAIA](https://huggingface.co/gaia-benchmark) measures general AI assistants
  on real-world tasks that require reasoning, multimodal understanding, web
  browsing, and tool use.
- [MedAgentBench](https://stanfordmlgroup.github.io/projects/medagentbench/)
  provides a FHIR-compliant virtual EHR environment for medical LLM agents.

## Open-Ended Game and Embodied Worlds

- [Crafter](https://danijar.com/project/crafter/) uses a compact survival game
  and semantic achievements to measure broad agent abilities in one environment.
- [MiniHack](https://github.com/NetHack-LE/minihack) turns NetHack into a
  configurable RL sandbox with reward managers and language wrappers.
- [NetHack Learning Environment](https://github.com/NetHack-LE/nle) provides a
  scalable, stochastic, procedurally generated roguelike world for exploration,
  planning, and language-conditioned RL.
- [Voyager](https://voyager.minedojo.org/) demonstrates a Minecraft agent loop
  based on automatic curriculum, executable skill libraries, environment
  feedback, and self-verification.

## Synthetic World Factories and World Models

Generated-world entries should not be treated as one evidence class. This
repository separates them by whether they close the agent loop:

- **Verifier-backed synthetic factories** generate tasks, scenes, curricula, or
  rollouts that still expose reset, action, reward, and replay semantics.
- **World models and asset generators** produce interactive videos, 3D scenes,
  or physical-world priors, but may not expose a benchmark verifier, stable
  reset distribution, or reusable trajectory contract.

ProcTHOR is closer to a synthetic world factory because it generates
interactive houses for embodied tasks. Genie 2, Genie 3, NVIDIA Cosmos, and HY-World 2.0
are stronger as frontier world-model signals unless paired
with explicit task verifiers and agent-action traces. The index therefore
marks synthetic trajectory or model-release evidence without implying that all
generated worlds are ready for evaluation or post-training.

## Agent Training Infrastructure

- [rLLM](https://github.com/rllm-org/rllm) offers RL training for agents with
  any framework, tracing agent calls into episodes/trajectories/steps and
  connecting rewards to RL updates.
- [Agent Lightning](https://github.com/microsoft/agent-lightning) optimizes
  existing agents with RL, prompt optimization, and SFT, emphasizing minimal
  code changes and framework independence.
- [RAGEN](https://github.com/RAGEN-AI/RAGEN) trains reasoning agents in
  interactive, stochastic environments and highlights multi-turn interactions,
  trajectory rewards, and reasoning collapse diagnostics.
- [VAGEN](https://github.com/RAGEN-AI/VAGEN) brings multi-turn RL to VLM agents
  with POMDP-style visual state reasoning.
- [AgentGym-RL](https://agentgym-rl.github.io/) and
  [Agent-RLVR](https://arxiv.org/abs/2506.11425) make the RLVR side more
  explicit: multi-turn agents need environment servers, guided reattempts,
  verifiable rewards, and replayable trajectories.
