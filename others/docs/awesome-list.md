# Awesome Agent Worlds

A curated reading list of environments, benchmarks, verifiers, sandboxes,
trajectories, and training loops for LLM/VLM agents.

_Generated from `others/data/resources.yaml` at source hash `cdcedfef6b60`._

Resources with public repositories are marked with 🌟. Entries use inline
`[[Code](https://example.com/repo)]` links when verified repositories are available.

## Agent Infrastructure and Protocols

> Core protocols, memory layers, tool interfaces, and agent-system infrastructure that make worlds composable across products.

### 2026
- [Claude Managed Agents](https://claude.com/blog/new-in-claude-managed-agents) — Product Signal · Closed product
- [MCP Security Best Practices](https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices) — Safety Control · Policy spec
- 🌟 [OpenAI Agents SDK Sandbox](https://openai.com/index/the-next-evolution-of-the-agents-sdk/) [[Code](https://github.com/openai/openai-agents-python)] — Infrastructure
- [OpenAI Codex Safety Controls](https://openai.com/index/running-codex-safely/) — Safety Control · Policy spec
- 🌟 [SkillSafetyBench](https://github.com/AI45Lab/skill-safety-bench) [[Code](https://github.com/AI45Lab/skill-safety-bench)] — Training Candidate · Runnable
### 2025
- 🌟 [Agent2Agent Protocol](https://cloud.google.com/blog/products/ai-machine-learning/agent2agent-protocol-is-getting-an-upgrade) [[Code](https://github.com/a2aproject)] — Protocol
- [Anthropic Agent Skills](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills) — Infrastructure
- [ChatGPT agent](https://openai.com/index/chatgpt-agent-system-card/) — Product Signal · Closed product
- 🌟 [MCPSecBench](https://arxiv.org/abs/2508.13220) [[Code](https://github.com/ais2lab/mcpsecbench)] — Eval Candidate · Runnable
- [OpenAI Responses API](https://openai.com/index/new-tools-for-building-agents/) — Product Signal · Closed product
### 2024
- 🌟 [Model Context Protocol](https://www.anthropic.com/news/model-context-protocol) [[Code](https://github.com/modelcontextprotocol)] — Protocol
## Computer and GUI Worlds

> Desktop and graphical-interface environments where agents observe pixels or UI state and act through mouse, keyboard, or grounded actions.

### 2026
- [AgentHazard](https://arxiv.org/abs/2604.02947) — Eval Candidate · Dataset
- 🌟 [CUActSpot / Phi-Ground-Any](https://arxiv.org/abs/2605.12501) [[Code](https://github.com/microsoft/Phi-Ground)] — Training Candidate · Partial trajectories
- [DigiWorld](https://arxiv.org/abs/2605.08261) — Eval Candidate · Sandbox
- [EE-MCP](https://arxiv.org/abs/2604.09815) — Training Infrastructure · Sandbox
- [GUI-GENESIS](https://arxiv.org/abs/2602.14093) — Training Infrastructure · Synthetic trajectories
- 🌟 [LPS-Bench](https://arxiv.org/abs/2602.03255) [[Code](https://github.com/tychenn/LPS-Bench)] — Training Candidate · Partial trajectories
- [OS-BLIND](https://arxiv.org/abs/2604.10577) — Training Candidate · Sandbox
- [OS-Marathon](https://arxiv.org/abs/2601.20650) — Eval Candidate · Sandbox
- 🌟 [UI-TARS-2](https://github.com/bytedance/UI-TARS) [[Code](https://github.com/bytedance/UI-TARS)] — Model Release · Sandbox
- [Video2GUI / WildGUI](https://arxiv.org/abs/2605.14747) — Training Candidate · Synthetic trajectories
- 🌟 [WindowsWorld](https://arxiv.org/abs/2604.27776) [[Code](https://github.com/HITsz-TMG/WindowsWorld)] — Training Candidate · Sandbox
### 2025
- 🌟 [CUAHarm](https://arxiv.org/abs/2508.00935) [[Code](https://github.com/db-ol/CUAHarm)] — Training Candidate · Runnable
- 🌟 [GELab-Zero](https://opengelab.github.io/) [[Code](https://github.com/stepfun-ai/gelab-zero)] — Training Candidate · Public trajectories
- [Gemini 2.5 Computer Use](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/gemini-computer-use-model/) — Product Signal · Closed product
- 🌟 [InfiGUI-R1](https://github.com/InfiXAI/InfiGUI-R1) [[Code](https://github.com/InfiXAI/InfiGUI-R1)] — Model Release · Partial trajectories
- 🌟 [MCPWorld](https://arxiv.org/abs/2506.07672) [[Code](https://github.com/SAAgent/MCPWorld)] — Training Candidate · Runnable
- 🌟 [OS-Harm](https://arxiv.org/abs/2506.14866) [[Code](https://github.com/tml-epfl/os-harm)] — Training Candidate · Sandbox
- 🌟 [OSWorld-Verified](https://os-world.github.io/) [[Code](https://github.com/xlang-ai/OSWorld)] — Production-grade · Public trajectories
- [OpenAI Computer-Using Agent](https://openai.com/index/computer-using-agent/) — Product Signal · Closed product
- 🌟 [OpenApps](https://github.com/OSU-NLP-Group/OpenApps) [[Code](https://github.com/OSU-NLP-Group/OpenApps)] — Training Candidate · Sandbox
- 🌟 [OpenCUA](https://github.com/xlang-ai/OpenCUA) [[Code](https://github.com/xlang-ai/OpenCUA)] — Production-grade · Public trajectories
- 🌟 [RiOSWorld](https://yjyddq.github.io/RiOSWorld.github.io/) [[Code](https://github.com/yjyddq/RiOSWorld)] — Training Candidate · Public trajectories
- 🌟 [Seed1.5-VL](https://seed.bytedance.com/en/public_papers/seed1-5-vl-technical-report) [[Code](https://github.com/ByteDance-Seed/Seed1.5-VL)] — Model Release · Sandbox
- 🌟 [UI-TARS](https://github.com/bytedance/UI-TARS) [[Code](https://github.com/bytedance/UI-TARS)] — Eval Candidate · Sandbox
- 🌟 [macOSWorld](https://macos-world.github.io/) [[Code](https://github.com/showlab/macosworld)] — Training Candidate · Runnable
### 2024
- [Anthropic Computer Use](https://docs.anthropic.com/en/docs/agents-and-tools/tool-use/computer-use-tool) — Product Signal · Closed product
- 🌟 [OSWorld](https://os-world.github.io/) [[Code](https://github.com/xlang-ai/OSWorld)] — Training Candidate · Runnable
- 🌟 [OmniACT](https://huggingface.co/papers/2402.17553) [[Code](https://github.com/Writer/omniact)] — Training Candidate · Public trajectories
## Web Worlds

> Browser-based worlds with websites, DOM state, navigation, forms, and functional verifiers for realistic web tasks.

### 2026
- [Odysseys](https://arxiv.org/abs/2604.24964) — Eval Candidate · Partial trajectories
- [RiskWebWorld](https://arxiv.org/abs/2604.13531) — Eval Candidate · Sandbox
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
- [CORA / Phone-Harm](https://cora-agent.github.io/) — Eval Candidate · Partial trajectories
- [GUI-CEval](https://huggingface.co/papers/2603.15039) — Eval Candidate · Sandbox
- [How Mobile World Model Guides GUI Agents?](https://arxiv.org/abs/2605.10347) — Eval Candidate · Synthetic trajectories
- [MobileDreamer](https://arxiv.org/abs/2601.04035) — Eval Candidate · Synthetic trajectories
- 🌟 [MobileWorld](https://github.com/Tongyi-MAI/MobileWorld) [[Code](https://github.com/Tongyi-MAI/MobileWorld)] — Training Candidate · Partial trajectories
- 🌟 [MyPhoneBench](https://github.com/FreedomIntelligence/MyPhoneBench) [[Code](https://github.com/FreedomIntelligence/MyPhoneBench)] — Production-grade · Public trajectories
- [PhoneSafety](https://arxiv.org/abs/2605.07630) — Eval Candidate · Private telemetry
### 2025
- [Mobile-Bench-v2](https://arxiv.org/abs/2505.11891) — Eval Candidate · Sandbox
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

### 2026
- [ClawForge](https://arxiv.org/abs/2605.14133) — Eval Candidate · Partial trajectories
- 🌟 [Hybrid-Gym](https://arxiv.org/abs/2602.16819) [[Code](https://github.com/Hybrid-Gym/Hybrid-Gym)] — Training Infrastructure · Partial trajectories
### 2025
- [Claude Code](https://www.anthropic.com/product/claude-code) — Product Signal · Closed product
- 🌟 [Gemini CLI](https://blog.google/technology/developers/introducing-gemini-cli-open-source-ai-agent) [[Code](https://github.com/google-gemini/gemini-cli)] — Eval Candidate · Sandbox
- [OpenAI Codex](https://openai.com/index/introducing-codex/) — Product Signal · Closed product
- 🌟 [R2E-Gym](https://arxiv.org/abs/2504.07164) [[Code](https://github.com/R2E-Gym/R2E-Gym)] — Training Infrastructure · Public trajectories
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
- 🌟 [Agent World Model](https://arxiv.org/abs/2602.10090) [[Code](https://github.com/Snowflake-Labs/agent-world-model)] — Training Candidate · Synthetic trajectories
- 🌟 [EnterpriseOps-Gym](https://enterpriseops-gym.github.io/) [[Code](https://github.com/ServiceNow/EnterpriseOps-Gym)] — Production-grade · Public trajectories
- [Herculean](https://arxiv.org/abs/2605.14355) — Eval Candidate · Sandbox
- 🌟 [MCP-Atlas](https://arxiv.org/abs/2602.00933) [[Code](https://github.com/scaleapi/mcp-atlas)] — Eval Candidate · Runnable
- [MCP-Cosmos](https://arxiv.org/abs/2605.09131) — Training Infrastructure · Synthetic trajectories
- 🌟 [MCP-SafetyBench](https://xjzzzzzzzz.github.io/mcpsafety.github.io/) [[Code](https://github.com/xjzzzzzzzz/MCPSafety)] — Eval Candidate · Runnable
- 🌟 [OccuBench](https://arxiv.org/abs/2604.10866) [[Code](https://github.com/GregxmHu/OccuBench)] — Training Candidate · Partial trajectories
- [World of Workflows](https://arxiv.org/abs/2601.22130) — Training Candidate · Sandbox
### 2025
- 🌟 [C3-Bench](https://github.com/Tencent-Hunyuan/C3-Benchmark) [[Code](https://github.com/Tencent-Hunyuan/C3-Benchmark)] — Training Candidate · Dataset
- [LiveMCPBench](https://arxiv.org/abs/2508.01780) — Eval Candidate · Sandbox
- [MCP-AgentBench](https://arxiv.org/abs/2509.09734) — Eval Candidate · Sandbox
- 🌟 [MCP-Bench](https://github.com/Accenture/mcp-bench) [[Code](https://github.com/Accenture/mcp-bench)] — Eval Candidate · Runnable
- [MCP-Universe](https://arxiv.org/abs/2508.14704) — Eval Candidate · Sandbox
- 🌟 [MCPMark](https://arxiv.org/abs/2509.24002) [[Code](https://github.com/eval-sys/mcpmark)] — Training Candidate · Runnable
- [MCPTox](https://arxiv.org/abs/2508.14925) — Eval Candidate · Sandbox
- 🌟 [TOUCAN](https://huggingface.co/datasets/Agent-Ark/Toucan-1.5M) [[Code](https://github.com/TheAgentArk/Toucan)] — Training Candidate · Public trajectories
- 🌟 [Toolathlon](https://toolathlon.xyz/introduction) [[Code](https://github.com/hkust-nlp/Toolathlon)] — Training Candidate · Public trajectories
- 🌟 [tau2-bench](https://arxiv.org/abs/2506.07982) [[Code](https://github.com/sierra-research/tau2-bench)] — Eval Candidate · Runnable
### 2024
- 🌟 [AgentDojo](https://arxiv.org/abs/2406.13352) [[Code](https://github.com/ethz-spylab/agentdojo)] — Eval Candidate · Runnable
- 🌟 [AppWorld](https://appworld.dev/) [[Code](https://github.com/stonybrooknlp/appworld)] — Training Candidate · Runnable
- 🌟 [Berkeley Function Calling Leaderboard](https://gorilla.cs.berkeley.edu/leaderboard.html) [[Code](https://github.com/ShishirPatil/gorilla)] — Training Candidate · Dataset
- 🌟 [MedAgentBench](https://stanfordmlgroup.github.io/projects/medagentbench/) [[Code](https://github.com/stanfordmlgroup/MedAgentBench)] — Training Candidate · Runnable
- 🌟 [StableToolBench](https://github.com/THUNLP-MT/StableToolBench) [[Code](https://github.com/THUNLP-MT/StableToolBench)] — Training Candidate · Runnable
- 🌟 [ToolSandbox](https://github.com/apple/ToolSandbox) [[Code](https://github.com/apple/ToolSandbox)] — Production-grade · Runnable
- 🌟 [tau-bench](https://github.com/sierra-research/tau-bench) [[Code](https://github.com/sierra-research/tau-bench)] — Production-grade · Public trajectories
### 2023
- 🌟 [API-Bank](https://github.com/AlibabaResearch/DAMO-ConvAI/tree/main/api-bank) [[Code](https://github.com/AlibabaResearch/DAMO-ConvAI)] — Training Candidate · Public trajectories
- 🌟 [ToolBench](https://github.com/OpenBMB/ToolBench) [[Code](https://github.com/OpenBMB/ToolBench)] — Training Candidate · Public trajectories
- [ToolEmu](https://arxiv.org/abs/2309.15817) — Eval Candidate · Sandbox
## Research and Knowledge-Work Worlds

> Long-horizon research, analysis, and knowledge-work tasks where execution traces, evidence, and rubrics matter as much as final answers.

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
- 🌟 [GameWorld](https://gameworld-project.github.io/) [[Code](https://github.com/gameworld-project/gameworld)] — Training Candidate · Partial trajectories
- 🌟 [HY-Embodied](https://github.com/Tencent-Hunyuan/HY-Embodied) [[Code](https://github.com/Tencent-Hunyuan/HY-Embodied)] — Eval Candidate · Runnable
- 🌟 [HY-World 2.0](https://github.com/Tencent-Hunyuan/HY-World-2.0) [[Code](https://github.com/Tencent-Hunyuan/HY-World-2.0)] — Eval Candidate · Sandbox
### 2025
- 🌟 [EmbodiedBench](https://github.com/EmbodiedBench/EmbodiedBench) [[Code](https://github.com/EmbodiedBench/EmbodiedBench)] — Training Candidate · Runnable
- [Genie 3](https://deepmind.google/blog/genie-3-a-new-frontier-for-world-models/) — Model Release · Synthetic trajectories
- 🌟 [NVIDIA Cosmos](https://www.nvidia.com/en-us/ai/cosmos/) [[Code](https://github.com/nvidia-cosmos)] — Training Candidate · Synthetic trajectories
- 🌟 [World-in-World](https://world-in-world.github.io/) [[Code](https://github.com/World-In-World/world-in-world)] — Training Candidate · Public trajectories
### 2024
- [Genie 2](https://deepmind.google/discover/blog/genie-2-a-large-scale-foundation-world-model/) — Model Release · Synthetic trajectories
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
- [Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence](https://agent-tars-world.github.io/-/) — Training Infrastructure · Synthetic trajectories
- 🌟 [EnvSimBench](https://arxiv.org/abs/2605.07247) [[Code](https://github.com/cookieApril/EnvSimBench)] — Training Infrastructure · Public trajectories
- [Kintsugi](https://arxiv.org/abs/2605.09487) — Training Infrastructure · Partial trajectories
- [Orchard](https://arxiv.org/abs/2605.15040) — Training Infrastructure · Public trajectories
- [Verifiable Process Rewards](https://arxiv.org/abs/2605.10325) — Training Infrastructure · Sandbox
### 2025
- 🌟 [Agent Lightning](https://github.com/microsoft/agent-lightning) [[Code](https://github.com/microsoft/agent-lightning)] — Training Infrastructure · Public trajectories
- 🌟 [Agent-R](https://github.com/ByteDance-Seed/Agent-R) [[Code](https://github.com/ByteDance-Seed/Agent-R)] — Training Infrastructure · Public trajectories
- [Agent-RLVR](https://arxiv.org/abs/2506.11425) — Training Infrastructure · Partial trajectories
- 🌟 [AgentGym-RL](https://agentgym-rl.github.io/) [[Code](https://github.com/WooooDyy/AgentGym-RL)] — Training Infrastructure · Public trajectories
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