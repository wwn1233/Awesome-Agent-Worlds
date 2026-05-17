<h1 align="center">Awesome Agent Worlds</h1>

<p align="center">
  A curated evidence map for <b>resettable environments, verifiable rewards, trajectories, sandboxes, and post-training loops for LLM/VLM agents</b>.
</p>

<p align="center">
  <a href="./site/index.html">Static Explorer</a> · <a href="./site/README.md">Explorer Guide</a>
</p>

## What are Agent Worlds?

An **Agent World** is an executable, resettable, and verifiable task environment for AI agents. It exposes observations and actions, evolves state through a runtime or simulator, scores outcomes through a verifier or reward contract, and records trajectories that can be reused for evaluation, post-training, debugging, regression testing, and release gating.

```text
World = runtime + state/reset + observation/action + transition dynamics
      + verifier/reward + trajectory + sandbox/safety
```

<p align="center">
  <img src="./utils/world-stack.svg" alt="Agent World stack" width="780">
</p>

| Evidence tier | Included when |
|---|---|
| Executable Agent World | It has a runnable stateful environment, action loop, reset path, and verifier or reward. |
| Verifiable benchmark / dataset | It provides reproducible or human-validated scoring, trajectories, or replayable tasks. |
| World infrastructure / protocol | It supplies sandboxing, tool interfaces, runtimes, memory, orchestration, or communication. |
| Frontier product signal | It shows where production agent systems are moving, without assuming public reproducibility. |
| Generated / synthetic world factory | It expands environments, tasks, verifiers, trajectories, curricula, or generated worlds. |

**Non-goals.** This is not a general list of agent frameworks, prompt libraries, chatbots, or workflow wrappers. A resource is usually excluded if it has no executable environment, benchmark, verifier, trajectory, sandbox, protocol, or training-loop relevance.

## Why Agent Worlds Matter Now

> The limiting feedback channel for agents is not more chat transcripts alone. It is verifiable worlds that produce reusable trajectories.

Frontier labs are converging on the same bottleneck: production agents must act in browsers, desktops, phones, repositories, APIs, simulators, and generated worlds. Durable progress depends on three world capabilities: realism and scale, verifier reliability, and trajectories that can become training assets.

## From Environment to Reward

<p align="center">
  <img src="./utils/agent-world-loop.svg" alt="Agent World production loop" width="860">
</p>

```text
Task Demand -> World Runtime -> Agent Rollout -> Verifier / Reward
-> Trajectory Store -> SFT / OPD / RLVR -> Regression Gate -> Production Agent
```

The reusable asset is the verified trajectory, not just the final score.

## How to Read This List

| Reader goal | Start with |
|---|---|
| Build agent evaluations | OSWorld-Verified, BrowserGym, WebArena-Verified, AndroidWorld, MCPMark, tau-bench. |
| Audit agent safety | PhoneSafety, MyPhoneBench, OS-Harm, OS-BLIND, AgentHazard, LPS-Bench. |
| Train from rollouts | AgentGym, Agent-World: Scaling Real-World Environment Synthesis, Agent World Model, RAGEN, VAGEN, rLLM, Agent Lightning. |
| Track production direction | OpenAI Agents SDK Sandbox, Gemini 2.5 Computer Use, Claude Managed Agents. |
| Study foundations | WebArena, SWE-bench, MineDojo, AI2-THOR. |

| Label | Meaning |
|---|---|
| **Production-grade** | Runnable, resettable, verifier-backed, and trajectory- or sandbox-ready enough for production-style evaluation. |
| **Training candidate** | Useful for rollouts or rewards, with some reset, sandbox, or trajectory limitations. |
| **Eval candidate** | Useful for evaluation, but not yet a strong training source. |
| **Product signal** | Closed or vendor-managed agent capability; important directionally, not public training evidence. |

## Static Explorer

The bilingual [Static Explorer](./site/index.html) is a dependency-free webpage for browsing the curated resource set, filtering by evidence fields, switching between Chinese and English, and scanning the weekly hot-paper watchlist.

Run it from the repository root:

```bash
python3 -m http.server 8000 --directory site
```

Then open `http://127.0.0.1:8000/`. See the short [Explorer Guide](./site/README.md) for details.

## Table of Contents

[Infrastructure](#agent-infrastructure-and-protocols) · [Computer/GUI](#computer-and-gui-worlds) · [Web](#web-worlds) · [Mobile](#mobile-worlds) · [Code/terminal](#code-terminal-and-software-worlds) · [Tool/API](#tool-and-api-worlds) · [Research](#research-and-knowledge-work-worlds) · [Embodied/generative](#embodied-and-generative-worlds) · [Training](#training-rewards-and-post-training-infrastructure)

---

## Agent Infrastructure and Protocols

> Core protocols, memory layers, tool interfaces, and agent-system infrastructure that make worlds composable across products.

### 2026
- [Claude Managed Agents](https://claude.com/blog/new-in-claude-managed-agents) — Product Signal · Closed product
- 🌟 [OpenAI Agents SDK Sandbox](https://openai.com/index/the-next-evolution-of-the-agents-sdk/) [[Code](https://github.com/openai/openai-agents-python)] — Infrastructure
- [OpenAI Codex Safety Controls](https://openai.com/index/running-codex-safely/) — Safety Control · Sandbox
### 2025
- 🌟 [Agent2Agent Protocol](https://cloud.google.com/blog/products/ai-machine-learning/agent2agent-protocol-is-getting-an-upgrade) [[Code](https://github.com/a2aproject)] — Protocol
- [Anthropic Agent Skills](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills) — Infrastructure
- [ChatGPT agent](https://openai.com/index/chatgpt-agent-system-card/) — Product Signal · Closed product
- [OpenAI Responses API](https://openai.com/index/new-tools-for-building-agents/) — Product Signal · Closed product
### 2024
- 🌟 [Model Context Protocol](https://www.anthropic.com/news/model-context-protocol) [[Code](https://github.com/modelcontextprotocol)] — Protocol
## Computer and GUI Worlds

> Desktop and graphical-interface environments where agents observe pixels or UI state and act through mouse, keyboard, or grounded actions.

### 2026
- [AgentHazard](https://arxiv.org/abs/2604.02947) / 🌟 [LPS-Bench](https://arxiv.org/abs/2602.03255) [[Code](https://github.com/tychenn/LPS-Bench)] / [OS-BLIND](https://arxiv.org/abs/2604.10577) — Agent Safety Cluster
- [EE-MCP](https://arxiv.org/abs/2604.09815) — Training Infrastructure · Sandbox
- 🌟 [UI-TARS-2](https://github.com/bytedance/UI-TARS) [[Code](https://github.com/bytedance/UI-TARS)] — Model Release · Sandbox
### 2025
- 🌟 [GELab-Zero](https://opengelab.github.io/) [[Code](https://github.com/stepfun-ai/gelab-zero)] — Training Candidate · Public trajectories
- [Gemini 2.5 Computer Use](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/gemini-computer-use-model/) — Product Signal · Closed product
- 🌟 [InfiGUI-R1](https://github.com/InfiXAI/InfiGUI-R1) [[Code](https://github.com/InfiXAI/InfiGUI-R1)] — Model Release · Partial trajectories
- 🌟 [OSWorld-Verified](https://os-world.github.io/) [[Code](https://github.com/xlang-ai/OSWorld)] — Production-grade · Public trajectories
- [OpenAI Computer-Using Agent](https://openai.com/index/computer-using-agent/) — Product Signal · Closed product
- 🌟 [OpenApps](https://github.com/OSU-NLP-Group/OpenApps) [[Code](https://github.com/OSU-NLP-Group/OpenApps)] — Training Candidate · Sandbox
- 🌟 [OpenCUA](https://github.com/xlang-ai/OpenCUA) [[Code](https://github.com/xlang-ai/OpenCUA)] — Production-grade · Public trajectories
- 🌟 [OS-Harm](https://arxiv.org/abs/2506.14866) [[Code](https://github.com/tml-epfl/os-harm)] — Agent Safety Cluster
- 🌟 [Seed1.5-VL](https://seed.bytedance.com/en/public_papers/seed1-5-vl-technical-report) [[Code](https://github.com/ByteDance-Seed/Seed1.5-VL)] — Model Release · Sandbox
- 🌟 [UI-TARS](https://github.com/bytedance/UI-TARS) [[Code](https://github.com/bytedance/UI-TARS)] — Training Candidate · Sandbox
### 2024
- [Anthropic Computer Use](https://docs.anthropic.com/en/docs/agents-and-tools/tool-use/computer-use-tool) — Product Signal · Closed product
- 🌟 [OSWorld](https://os-world.github.io/) [[Code](https://github.com/xlang-ai/OSWorld)] — Training Candidate · Runnable
- 🌟 [OmniACT](https://huggingface.co/papers/2402.17553) [[Code](https://github.com/Writer/omniact)] — Training Candidate · Public trajectories
## Web Worlds

> Browser-based worlds with websites, DOM state, navigation, forms, and functional verifiers for realistic web tasks.

### 2026
- [TimeWarp](https://huggingface.co/papers/2603.04949) — Training Candidate · Sandbox
### 2025
- [BrowseComp](https://openai.com/index/browsecomp/) — Eval Candidate · Sandbox
- 🌟 [Mind2Web-2](https://github.com/OSU-NLP-Group/Mind2Web-2) [[Code](https://github.com/OSU-NLP-Group/Mind2Web-2)] — Training Candidate · Public trajectories
- 🌟 [Online-Mind2Web](https://github.com/OSU-NLP-Group/Online-Mind2Web) [[Code](https://github.com/OSU-NLP-Group/Online-Mind2Web)] — Training Candidate · Public trajectories
- 🌟 [WebArena-Verified](https://github.com/ServiceNow/webarena-verified) [[Code](https://github.com/ServiceNow/webarena-verified)] — Production-grade · Public trajectories
- 🌟 [WorkArena++](https://github.com/ServiceNow/WorkArena) [[Code](https://github.com/ServiceNow/WorkArena)] — Production-grade · Public trajectories
### 2024
- 🌟 [AssistantBench](https://assistantbench.github.io/) [[Code](https://github.com/assistantbench/assistantbench)] — Eval Candidate · Runnable
- 🌟 [BrowserGym](https://github.com/ServiceNow/BrowserGym) [[Code](https://github.com/ServiceNow/BrowserGym)] — Production-grade · Public trajectories
- [Project Mariner](https://deepmind.google/technologies/project-mariner/) — Product Signal · Closed product
- 🌟 [VisualWebArena](https://github.com/web-arena-x/visualwebarena) [[Code](https://github.com/web-arena-x/visualwebarena)] — Training Candidate · Runnable
- 🌟 [WebLINX](https://github.com/McGill-NLP/weblinx) [[Code](https://github.com/McGill-NLP/weblinx)] — Training Candidate · Public trajectories
- 🌟 [WebVoyager](https://github.com/MinorJerry/WebVoyager) [[Code](https://github.com/MinorJerry/WebVoyager)] — Training Candidate · Public trajectories
- 🌟 [WorkArena](https://github.com/ServiceNow/WorkArena) [[Code](https://github.com/ServiceNow/WorkArena)] — Production-grade · Public trajectories
### 2023
- 🌟 [Mind2Web](https://github.com/OSU-NLP-Group/Mind2Web) [[Code](https://github.com/OSU-NLP-Group/Mind2Web)] — Training Candidate · Public trajectories
- 🌟 [WebArena](https://webarena.dev/) [[Code](https://github.com/web-arena-x/webarena)] — Training Candidate · Runnable
### 2022
- 🌟 [WebShop](https://webshop-pnlp.github.io/) [[Code](https://github.com/princeton-nlp/WebShop)] — Production-grade · Public trajectories
### 2018
- 🌟 [MiniWoB++](https://miniwob.farama.org/) [[Code](https://github.com/Farama-Foundation/miniwob-plusplus)] — Production-grade · Public trajectories
## Mobile Worlds

> Phone and app environments where agents interact through taps, typing, app state, and emulator-backed reset loops.

### 2026
- [GUI-CEval](https://huggingface.co/papers/2603.15039) — Eval Candidate · Sandbox
- 🌟 [MyPhoneBench](https://github.com/FreedomIntelligence/MyPhoneBench) [[Code](https://github.com/FreedomIntelligence/MyPhoneBench)] / [PhoneSafety](https://arxiv.org/abs/2605.07630) — Phone Privacy/Safety Cluster
### 2025
- [Mobile-Bench-v2](https://huggingface.co/papers/2506.05939) — Eval Candidate · Sandbox
- [ScreenSpot-Pro](https://huggingface.co/papers/2504.07981) — Training Candidate · Partial trajectories
### 2024
- [AndroidControl](https://huggingface.co/datasets/leosltl/Android-Control) — Training Candidate · Public trajectories
- 🌟 [AndroidWorld](https://github.com/google-research/android_world) [[Code](https://github.com/google-research/android_world)] — Training Candidate · Runnable
- 🌟 [MobileAgentBench](https://mobileagentbench.github.io/) [[Code](https://github.com/MobileAgentBench/mobile-agent-bench)] — Training Candidate · Runnable
- [ScreenSpot](https://huggingface.co/datasets/rootsautomation/ScreenSpot) — Training Candidate · Partial trajectories
### 2023
- 🌟 [Android in the Wild](https://github.com/google-research/google-research/tree/master/android_in_the_wild) [[Code](https://github.com/google-research/google-research/tree/master/android_in_the_wild)] — Training Candidate · Public trajectories
## Code, Terminal, and Software Worlds

> Repository, terminal, and software-engineering worlds where patches, tests, commands, and artifacts define success.

### 2025
- [Claude Code](https://www.anthropic.com/product/claude-code) — Product Signal · Closed product
- 🌟 [Gemini CLI](https://blog.google/technology/developers/introducing-gemini-cli-open-source-ai-agent) [[Code](https://github.com/google-gemini/gemini-cli)] — Eval Candidate · Sandbox
- [OpenAI Codex](https://openai.com/index/introducing-codex/) — Product Signal · Closed product
- 🌟 [SWE-Gym](https://github.com/SWE-Gym/SWE-Gym) [[Code](https://github.com/SWE-Gym/SWE-Gym)] — Production-grade · Public trajectories
- 🌟 [SWE-Lancer](https://openai.com/index/swe-lancer/) [[Code](https://github.com/openai/preparedness)] — Training Candidate · Runnable
- 🌟 [SWE-bench Pro](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/) [[Code](https://github.com/SWE-bench/SWE-bench)] — Training Candidate · Runnable
- 🌟 [Terminal-Bench](https://github.com/laude-institute/terminal-bench) [[Code](https://github.com/laude-institute/terminal-bench)] — Production-grade · Public trajectories
- 🌟 [TheAgentCompany](https://the-agent-company.com/) [[Code](https://github.com/TheAgentCompany/TheAgentCompany)] — Training Candidate · Runnable
### 2024
- 🌟 [SWE-bench Multimodal](https://www.swebench.com/multimodal.html) [[Code](https://github.com/SWE-bench/SWE-bench)] — Training Candidate · Runnable
- 🌟 [SWE-bench Verified](https://huggingface.co/datasets/SWE-bench/SWE-bench_Verified) [[Code](https://github.com/SWE-bench/SWE-bench)] — Training Candidate · Runnable
### 2023
- 🌟 [SWE-bench](https://www.swebench.com/) [[Code](https://github.com/SWE-bench/SWE-bench)] — Training Candidate · Runnable
## Tool and API Worlds

> Structured tool-use and API environments that turn business processes into executable state transitions and policy checks.

### 2026
- 🌟 [Agent World Model](https://arxiv.org/abs/2602.10090) [[Code](https://github.com/Snowflake-Labs/agent-world-model)] — Production-grade · Partial trajectories
- 🌟 [EnterpriseOps-Gym](https://enterpriseops-gym.github.io/) [[Code](https://github.com/ServiceNow/EnterpriseOps-Gym)] — Production-grade · Public trajectories
- [Herculean](https://arxiv.org/abs/2605.14355) — Eval Candidate · Sandbox
- 🌟 [tau2-bench](https://github.com/sierra-research/tau2-bench) [[Code](https://github.com/sierra-research/tau2-bench)] — Training Candidate · Public trajectories
### 2025
- 🌟 [C3-Bench](https://github.com/Tencent-Hunyuan/C3-Benchmark) [[Code](https://github.com/Tencent-Hunyuan/C3-Benchmark)] — Training Candidate · Dataset
- 🌟 [MCP-Bench](https://github.com/Accenture/mcp-bench) [[Code](https://github.com/Accenture/mcp-bench)] — Training Candidate · Runnable
- 🌟 [MCPMark](https://arxiv.org/abs/2509.24002) [[Code](https://github.com/eval-sys/mcpmark)] — Training Candidate · Runnable
### 2024
- 🌟 [AppWorld](https://appworld.dev/) [[Code](https://github.com/stonybrooknlp/appworld)] — Training Candidate · Runnable
- 🌟 [Berkeley Function Calling Leaderboard](https://gorilla.cs.berkeley.edu/leaderboard.html) [[Code](https://github.com/ShishirPatil/gorilla)] — Training Candidate · Dataset
- 🌟 [MedAgentBench](https://stanfordmlgroup.github.io/projects/medagentbench/) [[Code](https://github.com/stanfordmlgroup/MedAgentBench)] — Training Candidate · Runnable
- 🌟 [StableToolBench](https://github.com/THUNLP-MT/StableToolBench) [[Code](https://github.com/THUNLP-MT/StableToolBench)] — Training Candidate · Runnable
- 🌟 [ToolSandbox](https://github.com/apple/ToolSandbox) [[Code](https://github.com/apple/ToolSandbox)] — Production-grade · Public trajectories
- 🌟 [tau-bench](https://github.com/sierra-research/tau-bench) [[Code](https://github.com/sierra-research/tau-bench)] — Production-grade · Public trajectories
### 2023
- 🌟 [API-Bank](https://github.com/AlibabaResearch/DAMO-ConvAI/tree/main/api-bank) [[Code](https://github.com/AlibabaResearch/DAMO-ConvAI)] — Production-grade · Public trajectories
- 🌟 [ToolBench](https://github.com/OpenBMB/ToolBench) [[Code](https://github.com/OpenBMB/ToolBench)] — Training Candidate · Public trajectories
## Research and Knowledge-Work Worlds

> Long-horizon research, analysis, and knowledge-work tasks where execution trajectories, evidence, and rubrics matter as much as final answers.

### 2025
- [Gemini Deep Research](https://blog.google/innovation-and-ai/models-and-research/gemini-models/next-generation-gemini-deep-research/) — Product Signal · Closed product
- [OpenAI Deep Research](https://openai.com/index/introducing-deep-research/) — Product Signal · Closed product
- [PaperBench](https://openai.com/index/paperbench/) — Eval Candidate · Sandbox
### 2024
- 🌟 [AgentBoard](https://hkust-nlp.github.io/agentboard/) [[Code](https://github.com/hkust-nlp/AgentBoard)] — Eval Candidate · Runnable
- 🌟 [MLE-bench](https://openai.com/index/mle-bench/) [[Code](https://github.com/openai/mle-bench)] — Training Candidate · Runnable
### 2023
- 🌟 [AgentBench](https://github.com/THUDM/AgentBench) [[Code](https://github.com/THUDM/AgentBench)] — Training Candidate · Public trajectories
- [GAIA](https://huggingface.co/gaia-benchmark) — Training Candidate · Dataset
- 🌟 [MLAgentBench](https://github.com/snap-stanford/MLAgentBench) [[Code](https://github.com/snap-stanford/MLAgentBench)] — Training Candidate · Public trajectories
## Embodied and Generative Worlds

> Robotics, simulation, 3D, game, and generative environments that provide richer state spaces for embodied or multimodal agents.

### 2026
- 🌟 [HY-Embodied](https://github.com/Tencent-Hunyuan/HY-Embodied) [[Code](https://github.com/Tencent-Hunyuan/HY-Embodied)] — Eval Candidate · Runnable
- 🌟 [HY-World 2.0](https://github.com/Tencent-Hunyuan/HY-World-2.0) [[Code](https://github.com/Tencent-Hunyuan/HY-World-2.0)] — Eval Candidate · Sandbox
### 2025
- 🌟 [EmbodiedBench](https://github.com/EmbodiedBench/EmbodiedBench) [[Code](https://github.com/EmbodiedBench/EmbodiedBench)] — Training Candidate · Runnable
- 🌟 [NVIDIA Cosmos](https://www.nvidia.com/en-us/ai/cosmos/) [[Code](https://github.com/nvidia-cosmos)] — Training Candidate · Partial trajectories
### 2024
- [Genie 2](https://deepmind.google/discover/blog/genie-2-a-large-scale-foundation-world-model/) — Model Release · Partial trajectories
- 🌟 [SafeAgentBench](https://safeagentbench.github.io/) [[Code](https://github.com/shengyin1224/SafeAgentBench)] — Training Candidate · Runnable
### 2023
- 🌟 [Voyager](https://voyager.minedojo.org/) [[Code](https://github.com/MineDojo/Voyager)] — Training Candidate · Sandbox
### 2022
- 🌟 [BEHAVIOR-1K](https://behavior.stanford.edu/) [[Code](https://github.com/StanfordVL/BEHAVIOR-1K)] — Production-grade · Public trajectories
- 🌟 [MineDojo](https://minedojo.org/) [[Code](https://github.com/MineDojo/MineDojo)] — Production-grade · Public trajectories
- 🌟 [ProcTHOR](https://procthor.allenai.org/) [[Code](https://github.com/allenai/procthor)] — Production-grade · Sandbox
- 🌟 [ScienceWorld](https://sciworld.apps.allenai.org/) [[Code](https://github.com/allenai/ScienceWorld)] — Production-grade · Public trajectories
### 2021
- 🌟 [Crafter](https://danijar.com/project/crafter/) [[Code](https://github.com/danijar/crafter)] — Production-grade · Runnable
- 🌟 [MiniHack](https://github.com/NetHack-LE/minihack) [[Code](https://github.com/NetHack-LE/minihack)] — Training Candidate · Runnable
### 2020
- 🌟 [ALFRED](https://askforalfred.com/) [[Code](https://github.com/askforalfred/alfred)] — Production-grade · Public trajectories
- 🌟 [ALFWorld](https://alfworld.github.io/) [[Code](https://github.com/alfworld/alfworld)] — Production-grade · Public trajectories
- 🌟 [NetHack Learning Environment](https://github.com/NetHack-LE/nle) [[Code](https://github.com/NetHack-LE/nle)] — Production-grade · Runnable
### 2019
- 🌟 [Habitat](https://aihabitat.org/) [[Code](https://github.com/facebookresearch/habitat-lab)] — Production-grade · Public trajectories
- 🌟 [Jericho](https://github.com/microsoft/jericho) [[Code](https://github.com/microsoft/jericho)] — Production-grade · Runnable
### 2018
- 🌟 [TextWorld](https://www.microsoft.com/en-us/research/project/textworld/) [[Code](https://github.com/microsoft/TextWorld)] — Production-grade · Public trajectories
- 🌟 [VirtualHome](http://virtual-home.org/) [[Code](https://github.com/xavierpuigf/virtualhome)] — Production-grade · Public trajectories
### 2017
- 🌟 [AI2-THOR](https://ai2thor.allenai.org/) [[Code](https://github.com/allenai/ai2thor)] — Production-grade · Sandbox
## Training, Rewards, and Post-Training Infrastructure

> Frameworks and pipelines that convert rollouts, verifier reports, and rewards into SFT, RL, RLVR, or release-gating workflows.

### 2026
- [Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence](https://agent-tars-world.github.io/-/) — Training Infrastructure · Partial trajectories
### 2025
- 🌟 [Agent Lightning](https://github.com/microsoft/agent-lightning) [[Code](https://github.com/microsoft/agent-lightning)] — Training Infrastructure · Public trajectories
- 🌟 [Agent-R](https://github.com/ByteDance-Seed/Agent-R) [[Code](https://github.com/ByteDance-Seed/Agent-R)] — Training Infrastructure · Public trajectories
- 🌟 [RAGEN](https://github.com/RAGEN-AI/RAGEN) [[Code](https://github.com/RAGEN-AI/RAGEN)] — Training Infrastructure · Public trajectories
- 🌟 [VAGEN](https://github.com/RAGEN-AI/VAGEN) [[Code](https://github.com/RAGEN-AI/VAGEN)] — Training Infrastructure · Public trajectories
- 🌟 [rLLM](https://github.com/rllm-org/rllm) [[Code](https://github.com/rllm-org/rllm)] — Training Infrastructure · Public trajectories
### 2024
- 🌟 [AgentGym](https://agentgym.github.io/) [[Code](https://github.com/WooooDyy/AgentGym)] — Training Infrastructure · Public trajectories
- 🌟 [verl](https://github.com/volcengine/verl) [[Code](https://github.com/volcengine/verl)] — Training Infrastructure · Public trajectories
### 2023
- 🌟 [OpenRLHF](https://github.com/OpenRLHF/OpenRLHF) [[Code](https://github.com/OpenRLHF/OpenRLHF)] — Training Infrastructure · Public trajectories
### 2022
- 🌟 [TRL](https://huggingface.co/docs/trl/index) [[Code](https://github.com/huggingface/trl)] — Training Infrastructure · Public trajectories
## License

This project is released under the [MIT License](LICENSE).

## Citation

If you find this survey useful, please cite:

```bibtex
@misc{awesomeagentworlds2026,
  title        = {Awesome Agent Worlds: A Curated Evidence Map for Verifiable LLM/VLM Agent Environments},
  author       = {{Awesome Agent Worlds Project}},
  year         = {2026},
  url          = {https://github.com/wwn1233/Awesome-Agent-Worlds},
  note         = {A curated survey repository for resettable environments, verifiable rewards, trajectories, sandboxes, and post-training loops for LLM/VLM agents.}
}
```

For machine-readable repository metadata, see [CITATION.cff](./CITATION.cff).
