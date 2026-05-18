# Agent Worlds Survey

## Executive Thesis

The most important near-term topic across LLM, VLM, RL, and agent research is
not "agents" in the abstract. It is the construction of **Agent Worlds**:
runnable, resettable, verifiable environments that let models act, fail,
receive feedback, produce trajectories, and improve.

The public hook is useful for orientation:

> The limiting feedback channel for agents is not more chat transcripts alone.
> It is verifiable worlds that produce reusable trajectories.

The more rigorous survey claim is narrower: one central bottleneck for agent
scaling is the availability of diverse, resettable, and verifiable worlds that
produce high-quality interaction trajectories. This keeps the repository
focused on the infrastructure layer behind agent capability: environment,
action loop, verifier, reward, trajectory, sandbox, and production readiness.

## Why This Layer Matters

Agent progress is moving from static answers to external action. A useful agent
must operate across browsers, desktops, phones, repositories, APIs, simulators,
and generated worlds. These surfaces are only valuable for model improvement
when they can expose:

- observable state,
- valid actions,
- reset or replay,
- reliable success checks,
- failure traces,
- sandbox boundaries,
- trajectories that can feed evaluation or post-training.

Static benchmarks compare outputs. Agent Worlds compare behavior.

The durable advantage comes from three world capabilities: realistic and
scalable environments, reliable verifiers, and trajectories that become
reusable training assets.

The May 17, 2026 snapshot tracks 162 content resources, 89 world artifacts, 75
trajectory assets, 74 public-runnable resources, and 180 hot-paper candidates.

## Frontier-Lab Evidence

### OpenAI

OpenAI's agent stack is increasingly environment-facing:

- [Responses API](https://openai.com/index/new-tools-for-building-agents/)
  with web search, file search, computer use, and Agents SDK.
- [Agents SDK sandbox execution](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
  for controlled workspaces, shell/file tools, and long-horizon agents.
- [ChatGPT agent](https://openai.com/index/chatgpt-agent-system-card/) with
  browser, terminal, connectors, and research workflows.
- [Computer-Using Agent](https://openai.com/index/computer-using-agent/) with
  GUI action through screenshots, mouse, keyboard, and RL.
- [Codex safety controls](https://openai.com/index/running-codex-safely/) for
  approvals, network policy, sandboxing, and telemetry.

### Anthropic

Anthropic's direction is "agents need tools, environments, and reusable
capabilities":

- [Computer use](https://www.anthropic.com/news/3-5-models-and-computer-use)
  introduced screen observation, cursor movement, clicking, and typing.
- [Computer use docs](https://docs.anthropic.com/en/docs/agents-and-tools/tool-use/computer-use-tool)
  describe the screenshot, mouse, keyboard, and container loop.
- [Model Context Protocol](https://www.anthropic.com/news/model-context-protocol)
  standardizes connections between models, tools, and data.
- [Agent Skills](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills)
  package instructions, scripts, and resources for dynamic use.
- [Claude Managed Agents](https://claude.com/blog/new-in-claude-managed-agents)
  add outcomes, memory refinement, webhooks, and multiagent orchestration.

### Google and Gemini

Google validates the observe-act-feedback loop directly:

- [Gemini Computer Use](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/gemini-computer-use-model/)
  exposes screenshot-action-feedback control for browser and mobile tasks.
- [Computer Use API docs](https://ai.google.dev/gemini-api/docs/computer-use)
  frame browser control as automation for forms, testing, and research.
- [Project Mariner](https://support.google.com/a/answer/16523554?hl=en) turns
  research and data-entry tasks into background agents for Workspace.
- [Gemini CLI](https://blog.google/technology/developers/introducing-gemini-cli-open-source-ai-agent)
  brings Gemini into terminal workflows.
- [Agent2Agent](https://cloud.google.com/blog/products/ai-machine-learning/agent2agent-protocol-is-getting-an-upgrade)
  expands the world from one agent and its tools to interoperable agents.

### ByteDance Seed and UI-TARS

ByteDance treats GUI, game, code, and tool use as one multimodal agent problem:

- [UI-TARS](https://github.com/bytedance/UI-TARS) unifies GUI perception,
  grounding, reasoning, and action across desktop, mobile, browser, and game
  tasks.
- [Seed1.5-VL](https://github.com/ByteDance-Seed/Seed1.5-VL) reports GUI,
  gameplay, code, video, and tool-use capabilities.
- [Agent-R](https://github.com/ByteDance-Seed/Agent-R) focuses on recovering
  failed agent rollouts into improved trajectories.

### Tencent Hunyuan

Tencent's public work spans tool-agent evaluation, embodied agents, RL, and
world generation:

- [C3-Bench](https://github.com/Tencent-Hunyuan/C3-Benchmark) tests
  multi-turn tool agents under hidden information and dynamic decision paths.
- [HY-Embodied](https://github.com/Tencent-Hunyuan/HY-Embodied) targets
  embodied VLA and robotics pipelines.
- [HY-World 2.0](https://github.com/Tencent-Hunyuan/HY-World-2.0) points toward
  persistent, editable, navigable 3D worlds.

## Landscape

Agent Worlds cluster into recurring categories:

- **Computer and GUI worlds**: OSWorld, OpenCUA, MCPWorld, DigiWorld, OmniACT,
  UI-TARS, ScreenSpot.
- **Web worlds**: WebArena, BrowserGym, WorkArena, Mind2Web, WebVoyager.
- **Mobile worlds**: AndroidWorld, MobileWorld, MobileAgentBench,
  AndroidControl, MyPhoneBench, PhoneSafety, CORA / Phone-Harm.
- **Code and terminal worlds**: SWE-bench, SWE-Gym, Terminal-Bench, SWE-Lancer.
- **Tool/API worlds**: AppWorld, tau-bench, ToolSandbox, API-Bank, C3-Bench,
  Toolathlon, TOUCAN, MCP-AgentBench, MCP-Cosmos, MCP-SafetyBench,
  MCPSecBench.
- **Research worlds**: PaperBench, MLE-bench, MLAgentBench, GAIA.
- **Embodied and generative worlds**: Habitat, ALFRED, MineDojo, Crafter,
  MiniHack, NLE, Genie, Genie 3, Cosmos, HY-World.
- **Safety and governance worlds**: OS-Harm, OS-BLIND, AgentHazard, CUAHarm,
  RiOSWorld, LPS-Bench, MCP-SafetyBench, MCPSecBench, Codex safety controls,
  Gemini Computer Use safety service.
- **Training infrastructure**: AgentGym, AgentGym-RL, Agent-RLVR, TOUCAN,
  MCP-Cosmos, rLLM, Agent Lightning, RAGEN, VAGEN, Agent-R, verl, OpenRLHF,
  TRL.

## What Makes a Strong Agent World

Strong worlds:

- expose real state transitions,
- reset cheaply and reproducibly,
- emit rich trajectories,
- verify success with low ambiguity,
- make reward hacking visible,
- isolate evaluators from answer leakage, tampering, and contamination,
- support sandboxed side effects,
- cover workflows that users or companies already value.

Weak worlds:

- are static snapshots without state mutation,
- score only final text,
- depend entirely on brittle LLM judging,
- cannot replay failures,
- hide the action trace,
- lack credible first-party upkeep.

## Repository Positioning

Awesome Agent Worlds is a curated map of:

- which worlds exist,
- which ones are trainable,
- which rewards are trustworthy,
- which production releases signal frontier-lab commitment,
- and which missing pieces still block scalable agent training.
