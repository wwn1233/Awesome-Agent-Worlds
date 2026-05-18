# Production Signals

This page tracks first-party evidence that major AI labs are turning agent
environments into production infrastructure. The focus is not generic agent
branding. The focus is on action loops, sandboxes, telemetry, verifiers,
managed runtimes, and training feedback.

## Public Hook

> The limiting feedback channel for agents is not more chat transcripts alone.
> It is verifiable worlds that produce reusable trajectories.

The stronger research claim is narrower: frontier agent systems increasingly
depend on worlds with action loops, verifier or reward contracts, sandbox
boundaries, and trajectory feedback. Closed products are therefore directional
signals, not reproducible public Agent Worlds.

## First-Party Signals

| Lab | Signal | Evidence type | Agent World implication |
| --- | --- | --- | --- |
| OpenAI | [Agents SDK sandbox update](https://openai.com/index/the-next-evolution-of-the-agents-sdk/) | Product infrastructure | Long-horizon agents need controlled workspaces, file/shell tools, manifests, and sandbox providers. |
| OpenAI | [Running Codex safely](https://openai.com/index/running-codex-safely/) | Enterprise safety guidance | Production coding agents need approvals, network policy, managed configuration, and telemetry. |
| OpenAI | [ChatGPT agent system card](https://openai.com/index/chatgpt-agent-system-card/) | Product safety card | Browser, terminal, connector, and research workflows are converging into one agent runtime. |
| Anthropic | [Computer use tool docs](https://docs.anthropic.com/en/docs/agents-and-tools/tool-use/computer-use-tool) | API documentation | Desktop agents require screenshots, mouse/keyboard actions, containerized environments, and an agent loop. |
| Anthropic | [Managed Agents](https://claude.com/blog/new-in-claude-managed-agents) | Platform release | Outcomes, memory refinement, and multiagent orchestration turn rubrics and traces into managed agent loops. |
| Google | [Gemini Computer Use](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/gemini-computer-use-model/) | Model/API release | Web and mobile UI control needs screenshot-action-feedback loops and benchmarked GUI tasks. |
| Google | [Project Mariner admin docs](https://support.google.com/a/answer/16523554?hl=en) | Workspace product docs | Background research and data-entry agents are becoming managed enterprise services. |
| ByteDance Seed | [Seed1.5-VL](https://github.com/ByteDance-Seed/Seed1.5-VL) | Model release repository | GUI control and gameplay are treated as core multimodal agent capabilities. |
| ByteDance Seed | [Agent-R](https://github.com/ByteDance-Seed/Agent-R) | Training repository | Failed rollouts can be recovered into training trajectories through reflective self-training. |
| Tencent Hunyuan | [C3-Bench](https://github.com/Tencent-Hunyuan/C3-Benchmark) | Benchmark repository | Tool agents need hidden-state, dynamic-path, and tool-relationship stress tests. |
| Tencent Hunyuan | [HY-World 2.0](https://github.com/Tencent-Hunyuan/HY-World-2.0) | World-model repository | Generated, navigable 3D worlds are moving toward reusable simulation assets. |

## Signal Classes

| Class | Examples | How to use it |
|---|---|---|
| Public artifact | OSWorld-Verified, BrowserGym, tau-bench, OpenCUA | Treat as reproducible evidence when code, data, or setup is public. |
| Closed product signal | OpenAI CUA, ChatGPT agent, Claude Managed Agents, Gemini Computer Use | Use directionally; do not infer public trajectories, reset support, or training access. |
| Safety control | OpenAI Codex safety controls, computer-use safety cards, PhoneSafety-style benchmarks | Use to track permission, sandbox, approval, and harmful-action boundaries. |
| Protocol or interface | MCP, A2A, OpenAI Responses API, Agents SDK sandbox | Use as infrastructure evidence, not as a benchmark by itself. |
| Training infrastructure | AgentGym, RAGEN, VAGEN, rLLM, Agent Lightning | Use to understand how rollouts and rewards enter post-training loops. |

## Watch Criteria

A release is a strong Agent World signal when it includes at least two of:

- a first-party page, docs, paper, or repository,
- a runnable environment or API,
- an explicit observation/action loop,
- a verifier, reward, grader, or outcome rubric,
- reset, replay, or trajectory support,
- sandboxing, approval policy, or telemetry,
- reported benchmark results on agent tasks,
- product integration with real user workflows.

Weak signals should remain outside the curated list until they clarify the
world, action surface, verifier, or training feedback path.
