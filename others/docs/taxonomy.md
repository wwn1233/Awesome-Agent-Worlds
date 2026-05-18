# Taxonomy and Inclusion Rules

## Definition

An Agent World is a runnable or well-specified environment where an AI agent can
observe state, take actions, and receive evaluable feedback.

The minimal criteria:

```text
World = state + observation + action + transition + verifier
```

The stronger criteria:

```text
World = runtime + reset + replay + verifier + trajectories + sandbox
```

## Field Grammar

| Term | Repository use |
| --- | --- |
| Surface | The external system where the agent acts: web, GUI, mobile, code, API, research, embodied, or generated world. |
| Action loop | Observation, action, transition, feedback, and reset cycle exposed to the agent. |
| Verifier | Program, test, state check, trace check, rubric, judge, or human audit that scores outcomes. |
| Trajectory | Stored observations, actions, state changes, verifier outputs, and artifacts from a rollout. |
| Governance | Sandbox, permissions, safety controls, source confidence, and release gates around a world. |

## Categories

Category IDs currently used in `others/data/resources.yaml`:

Entries also carry a `resource_kind` so worlds, benchmarks, datasets,
protocols, infrastructure, model releases, safety controls, product signals,
and training frameworks are not mixed together.

| ID | Meaning |
| --- | --- |
| `computer-world` | Desktop, OS, or application-control environments. |
| `web-world` | Browser and web-application environments. |
| `mobile-world` | Phone, app, emulator, and GUI-grounding environments. |
| `code-world` | Repository, terminal, and software-engineering environments. |
| `api-world` | Tool, API, function-calling, and stateful backend worlds. |
| `research-world` | Research, ML engineering, browsing, and knowledge-work worlds. |
| `gui-world` | GUI/VLM agent model releases, GUI benchmarks, and synthetic GUI training worlds. |
| `training-framework` | RL, distillation, trajectory, reward, and post-training infrastructure. |
| `agent-infrastructure` | Protocols, runtime interfaces, and production agent platforms. |
| `embodied-world` | Robotics, embodied simulation, navigation, and manipulation worlds. |
| `generative-3d-world` | World models and persistent generated 3D/video environments. |

### Computer World
The agent operates a desktop or OS-level environment.
Typical observations:
- Screenshots.
- Accessibility trees.
- Files.
- Application state.
Typical actions:
- Mouse, keyboard, shell, file edits, app operations.
Examples:
- OSWorld.
- OSWorld-Verified.
- OpenCUA.
- OmniACT.
- MCPWorld.
- DigiWorld.
- CUAHarm / RiOSWorld.

Closed computer-use products are tracked as product signals, not public worlds.

### Web World
The agent acts in browser or web-app environments.
Typical observations:
- Screenshot, DOM, URL, browser state, page text.
Typical actions:
- Click, type, scroll, navigate, form submit, browser tool call.
Examples:
- WebArena.
- VisualWebArena.
- BrowseComp.
- WebVoyager.

### Mobile World
The agent operates mobile apps or emulators.
Typical observations:
- Screenshots, Android state, app state, accessibility tree.
Typical actions:
- Tap, long press, back, home, app launch, text input.
Examples:
- AndroidWorld.
- MobileWorld.
- CORA / Phone-Harm.
- UI-TARS mobile prompt.
- AndroidControl.
- ScreenSpot.

### Code World
The agent modifies real code and is evaluated by tests or review.
Typical observations:
- Repository, issue, failing tests, logs.
Typical actions:
- Patch, shell, test run, commit.
Examples:
- SWE-bench.
- SWE-Lancer.
- Terminal-Bench.

### Tool/API World

The agent uses APIs under policies and stateful constraints.

Typical observations:

- User messages, policy docs, database state, API schema.

Typical actions:

- API call, tool call, code-generated workflow.

Examples:

- AppWorld.
- tau-bench / tau2-bench.
- Toolathlon.
- TOUCAN.
- MCP-AgentBench.
- MCP-Cosmos.
- BFCL-style function calling.
- ToolSandbox.
- MCP-SafetyBench / MCPSecBench.

### Research World

The agent performs scientific, ML, or research workflows.

Typical observations:

- Papers, codebases, datasets, experiment logs.

Typical actions:

- Implement, train, run experiments, analyze results.

Examples:

- PaperBench.
- MLE-bench.
- MLAgentBench.

### GUI World

The resource covers GUI benchmarks, screen-control model releases, synthetic GUI
worlds, or GUI trajectory assets.

Typical observations:

- Screenshots, UI trees, browser or mobile state, task instructions.

Typical actions:

- Point, click, type, scroll, tap, reason, tool call.

Examples:

- UI-TARS.
- UI-TARS-2.
- InfiGUI-R1.
- GUI-GENESIS.
- Video2GUI / WildGUI.

### Training Framework

The resource connects agent rollouts, trajectories, rewards, and policy
updates.

Typical observations:

- Episodes, trajectories, steps, rewards, verifier traces.

Typical actions:

- Rollout, score, filter, optimize, distill, update.

Examples:

- rLLM.
- Agent Lightning.
- AgentGym-RL.
- Agent-RLVR.
- RAGEN.
- VAGEN.
- verl.
- OpenRLHF.
- TRL.

### Agent Infrastructure

The resource is a protocol, API, runtime, or packaging primitive for connecting
agents to tools, other agents, or production systems.

Typical observations:

- Tool schemas, resources, files, agent messages, product telemetry.

Typical actions:

- Tool call, resource access, delegation, skill invocation, computer-use action.

Examples:

- Model Context Protocol.
- MCP Security Best Practices.
- Agent2Agent Protocol.
- OpenAI Responses API.
- Anthropic Agent Skills.

### Embodied World

The agent reasons and acts in robotics, physical simulation, or sensorimotor
environments.

Typical observations:

- Images, video, robot state, sensor readings.

Typical actions:

- Motion, manipulation, planning command, navigation.

Examples:

- HY-Embodied.
- VLA and robotics simulation environments.

### Generative 3D World

The system creates or reconstructs persistent worlds that agents can later
explore or act inside.

Typical outputs:

- Meshes, 3D Gaussian splats, point clouds, navigable scenes.

Examples:

- HY-World 2.0.
- NVIDIA Cosmos.
- Genie 2.
- Genie 3.

## Reward and Verifier Types

| Type | Description |
| --- | --- |
| exact_match | String or structured answer match. |
| unit_test | Tests validate generated code or behavior. |
| execution_state | Post-action world state is checked programmatically. |
| state_diff | Expected state transition or database/file diff. |
| simulator_score | Reward from game, robot, physics, or world simulator. |
| rubric | Hierarchical grading criteria. |
| llm_judge | LLM-based evaluator, ideally calibrated. |
| human_preference | Human ranking or scalar feedback. |
| safety_gate | Detects forbidden, unsafe, or irreversible actions. |
| trace_check | Network, DOM, action, or API trace validation. |
| execution_artifact | Runs or inspects produced artifacts such as code, logs, files, or reports. |
| distillation_signal | Teacher model or stronger agent signal used for imitation or OPD. |

## Strictness Notes

Use labels to avoid overclaiming:

- `closed-product`: vendor-managed capability without public reproducibility.
- `eval-only`: useful for benchmarking but not online training.
- `no-public-repo`: no inspectable implementation or dataset repository.
- `no-public-trajectories`: no public rollout traces or replay data.
- `partial-trajectories`: useful data exists but is incomplete or transformed.
- `private-telemetry`: product telemetry is directionally important but closed.
- `judge-risk`: scoring depends on judge, human, or rubric calibration.
- `source-check`: source confidence needs follow-up.

## Entry Checklist

Every entry should answer:

1. Is there a runnable environment?
2. What is the observation space?
3. What is the action space?
4. What reward or verifier is used?
5. Can the environment reset?
6. Are trajectories available?
7. Can it support training, or only evaluation?
8. What license and safety constraints apply?
9. What evidence links it to frontier agent production?
