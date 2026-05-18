# Reward Atlas

Agent Worlds become useful when success can be measured. This atlas defines the
reward and verifier families that appear across current agent environments, and
the failure modes that matter when those signals become training data.

## Reward Families

| Family | Typical worlds | Strength | Risk |
| --- | --- | --- | --- |
| Exact match | QA, search, browsing | Simple and cheap | Brittle, narrow, weak for action traces |
| Unit test | SWE-bench, AppWorld | Objective and reproducible | Test overfitting, hidden dependency drift |
| Execution state | OSWorld, AndroidWorld, WebArena | Measures real task completion | Setup complexity, flaky runtimes |
| State diff | Apps, files, databases | Fine-grained side-effect validation | Requires careful state modeling |
| Network/trace | WebArena-Verified, browser worlds | Catches hidden web side effects | Instrumentation overhead |
| Execution artifact | PaperBench, MLE-bench | Evaluates produced files and reproducibility | Expensive, slow, environment heavy |
| Static artifact | Code, papers, reports | Cheap pre-filter | Weak proxy for actual success |
| Simulator score | games, robotics, 3D | Dense feedback possible | Sim-to-real gap and reward hacking |
| Rubric tree | PaperBench, research work | Partial credit and decomposed grading | Calibration and rubric leakage |
| LLM judge | broad open-ended tasks | Scalable and flexible | Bias, drift, prompt sensitivity |
| Human preference | alignment, UX | High-quality signal | Expensive and slow |
| Safety gate | computer use, phone use, MCP tools | Blocks bad actions | False positives and false negatives |
| Teacher signal | OPD, distillation loops | Uses stronger agents as supervision | Teacher bias and collapse |

## Verifier Families

| Verifier | Checks | Best use |
| --- | --- | --- |
| Programmatic predicate | Final environment state, database rows, files | Web, OS, mobile, tool/API worlds |
| Unit test harness | Test suite result after patch or generated code | Software and API worlds |
| Hidden tests | Held-out tests or private task variants | Release gating and anti-overfit eval |
| State diff | Expected before/after transition | Stateful apps and transactional APIs |
| Trace verifier | URL, DOM, network, action log, API calls | Browser and tool-use worlds |
| Artifact executor | Reproduce script, logs, generated outputs | Paper/code/ML reproduction |
| Rubric evaluator | Hierarchical criteria with leaf scores | Research, writing, complex work |
| LLM judge | Model-scored text, artifacts, or trajectories | Open-ended tasks with calibration |
| Human audit | Expert or crowd review | Gold sets and calibration samples |
| Safety monitor | Forbidden action, policy violation, irreversible state | Computer, phone, web, financial, and MCP/API agents |

## Hybrid Patterns

- Code world: hidden unit tests + public tests + lint + runtime logs + human
  review for sampled cases.
- Web world: URL + DOM state + backend database state + network trace + visual
  screenshot check.
- Mobile world: app state + filesystem or database predicate + screen validator
  + action trace.
- Tool/API world: policy compliance + API state + simulated user satisfaction
  + forbidden-call detection.
- MCP world: server trust + authorization state + protocol trace + unsafe
  tool-chain detection.
- Research world: rubric hierarchy + artifact execution + citation checks +
  calibrated LLM judge.
- Embodied world: simulator state + trajectory constraints + task success +
  safety collisions.

## Training Use Mapping

| Verifier family | SFT | RLVR | Audit | Release gate |
|---|---|---|---|---|
| Programmatic predicate | Use successful traces as demonstrations | Strong when rewards are recomputable | Inspect failed state transitions | Good for deterministic pass/fail gates |
| Unit test harness | Train on accepted patches and repairs | Strong for code rewards with isolated tests | Sample high-reward patches for side effects | Good when hidden tests exist |
| Trace verifier | Train action sequences and recovery paths | Useful when trace rewards are dense enough | Excellent for debugging web/tool side effects | Good if logs are complete and versioned |
| Rubric evaluator | Train on corrected subtask traces | Use cautiously unless rubric scores are stable | Good for expert review and decomposition | Useful for complex work with calibration |
| LLM judge | Use as weak supervision after filtering | Risky without calibration and replay | Good for triage, not final truth | Only with pinned judge and spot checks |
| Safety monitor | Train refusal, approval, and recovery behavior | Useful for constraint penalties | Core signal for harmful or unauthorized actions | Required for sensitive tools and UI agents |
| Verifiable process reward | Train multi-turn repair and exploration traces | Strong when each step can be recomputed | Good for RLVR failure analysis | Useful for agent-environment curricula |

## Failure Modes

### Environment Instability

The world changes between rollouts or cannot reset cleanly. Symptoms include
flaky rewards, nondeterministic failures, and tasks that pass once but cannot be
replayed.

Mitigations:

- snapshot initial state,
- hash task assets,
- version containers or VMs,
- store verifier logs,
- replay failed trajectories before using them for training.

### Reward Hacking

The agent learns to satisfy the verifier without solving the intended task.
Examples include editing tests, manipulating local files instead of app state,
or producing artifacts that fool shallow judges.

Mitigations:

- isolate verifier code,
- use hidden tests,
- inspect world state rather than final text,
- add adversarial checks,
- audit high-reward unusual trajectories.

### Collateral Damage

The target success condition passes, but the agent breaks adjacent state:
deletes files, changes unrelated database rows, sends unwanted messages, or
leaves a browser session corrupted.

Mitigations:

- check negative diffs,
- add forbidden-state predicates,
- compare full state snapshots,
- require cleanup or invariant checks.

### Judge Bias and Drift

LLM judges may prefer verbosity, familiar styles, self-generated answers, or
position order. They can also drift when the judge model changes.

Mitigations:

- pin judge versions,
- use pairwise and absolute calibration sets,
- blind candidate identities,
- mix programmatic and human checks,
- measure judge agreement before training.

### Sparse Reward Instability

Long-horizon tasks may produce only a terminal pass/fail signal. This makes
credit assignment hard and can destabilize RL.

Mitigations:

- log dense process signals when available,
- add subtask rubrics,
- use curriculum tasks,
- perform rejection sampling before RL,
- train process verifiers on successful and failed steps.

### Contamination

Popular benchmarks can leak into model training or be optimized through public
leaderboard iteration.

Mitigations:

- track dataset publication dates,
- maintain private or rotating splits,
- use live tasks cautiously,
- report contamination risk in metadata.

## Training Readiness Checklist

A reward is ready for training when:

- the environment can reset automatically,
- the reward can be recomputed from stored artifacts,
- verifier code is isolated from the agent,
- failures are replayable,
- high-reward trajectories are sampled for audit,
- reward scale and sparsity are documented,
- negative side effects are checked,
- the reward is versioned and comparable over time.

## Design Rule

Prefer verifiers that inspect world state after actions, not just the final
message. Agents optimize what the world measures.
