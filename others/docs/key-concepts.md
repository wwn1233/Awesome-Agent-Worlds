# Key Concepts

This document defines the evidence model used by Awesome Agent Worlds. It is
designed to make heterogeneous resources comparable without pretending that a
benchmark, product release, dataset, training framework, and protocol are the
same kind of artifact.

## Core Definition

```text
Agent World = executable/resettable task environment
            + observation/action interface
            + verifier/reward
            + reusable trajectory
            + sandbox/safety
```

Minimal form:

```text
World = state + observation + action + transition + verifier
```

Production form:

```text
World = runtime + state/reset + observation/action + transition dynamics
      + verifier/reward + trajectory + sandbox/safety + release gate
```

Survey form:

```text
W = (S, O, A, T, rho0, V/R, H, C, tau)

S      world state
O      observation function
A      action space
T      transition dynamics
rho0   reset or task-initialization distribution
V/R    verifier or reward contract
H      harness, runtime, sandbox, permissions
C      constraints, safety monitors, policy gates
tau    trajectory schema and storage format
```

## Evidence Axes

| Axis | Question |
| --- | --- |
| Runtime | Can an agent actually act in the environment? |
| Observation | What state does the agent see? |
| Action | What can the agent change? |
| Transition | Does the world mutate after actions? |
| Verifier | Can success be recomputed without guessing? |
| Reward | Is feedback exact, programmatic, rubric-based, or model-judged? |
| Reset | Can episodes be restored or replayed? |
| Trajectory | Are action traces available for training or audit? |
| Sandbox | Are side effects isolated? |
| Safety | Are approvals, credentials, network, and destructive actions bounded? |
| Integrity | Is the evaluator isolated from leakage or tampering? |

## Readiness Score

The site computes a 14-point readiness score from seven dimensions:

```text
readiness =
  runtime +
  verifier +
  reset +
  trajectories +
  trainability +
  sandbox +
  production signal
```

Each dimension receives 0, 1, or 2 points. The label is intentionally coarse:

| Score | Label |
| ---: | --- |
| 0-4 | Reference |
| 5-8 | Eval candidate |
| 9-12 | Training candidate |
| 13-14 | Production-grade |

The score is a triage device, not a leaderboard.

## Reward Families

| Family | Examples | Strength |
| --- | --- | --- |
| Exact match | Short answer, field value | Cheap and stable. |
| Unit test | Code patch, terminal task | Recomputable and hard to fake. |
| Execution state | OS/app/database state | Closest to behavior success. |
| Rubric judge | PaperBench-style subtasks | Covers complex work. |
| Human verified | Expert review | High precision, low scale. |
| LLM judge | Open-ended scoring | Flexible but vulnerable to drift. |

## Trajectory Value

The central reusable asset is the verified trajectory:

```text
task -> observations -> actions -> state diffs -> verifier results -> artifacts
```

Strong trajectories support:

- supervised fine-tuning,
- on-policy distillation,
- RL with verifiable rewards,
- failure replay,
- regression testing,
- safety audit,
- release gating.

## Failure Modes

Agent Worlds repeatedly fail in recognizable ways:

- verifier false negatives or false positives,
- reward hacking against brittle checks,
- contamination through public benchmark answers,
- non-deterministic websites or applications,
- hidden external side effects,
- stale environments and broken dependencies,
- trajectories that cannot be replayed,
- safety gaps around credentials, payment, email, or destructive actions.

The repository tracks these indirectly through verifier family, reset support,
trajectory access, reproducibility, sandbox, safety controls, and source
confidence.

## Verifier Integrity

A verifier is useful only if the agent cannot cheaply exploit it. Integrity is
therefore tracked separately from verifier type.

| Integrity risk | What goes wrong | Stronger practice |
| --- | --- | --- |
| Answer leakage | The agent reads reference answers or hidden labels. | Keep references outside the agent workspace and use held-out tasks. |
| Evaluator tampering | The agent modifies tests, scoring code, or state snapshots. | Run scoring in an isolated runtime with immutable references. |
| Reward hacking | The agent satisfies a brittle check without solving the task. | Combine state checks, trajectory checks, and side-effect checks. |
| Contamination | Public tasks or traces appear in training or retrieval. | Use versioned tasks, rolling suites, and contamination audits. |
| Judge drift | Human or LLM rubrics shift over time. | Version rubrics and calibrate against stable examples. |
| Safety leakage | The agent exceeds intended permissions or produces harmful side effects. | Bound credentials, network, approvals, destructive actions, and rollback. |

The resource schema uses fields such as `verifier_family`,
`verifier_isolation`, `negative_side_effect_checks`, `reproducibility`, and
source `checked_at` to make these risks inspectable.
