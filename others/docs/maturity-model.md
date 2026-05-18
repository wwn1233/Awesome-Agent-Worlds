# Agent World Maturity Model

## Purpose

The Agent World Maturity Level is a comparison framework proposed by Awesome
Agent Worlds. It is not a community standard. Use it to reason about how close
a resource is to becoming a reliable evaluation, training, or release-gating
world.

## Levels

| Level | Name | Meaning | Typical signal |
|---|---|---|---|
| AWML-0 | Static task set | Questions, labels, or answers without interaction | QA set, static prompt suite |
| AWML-1 | Replayable benchmark | Offline scoring or replay, but no live action loop | Dataset replay, answer checks |
| AWML-2 | Executable sandbox | Agent can act and reset, but verifier is weak or judge-heavy | Browser/app/world runtime with partial scoring |
| AWML-3 | Verifiable world | Programmatic verifier, state diff, unit test, simulator reward, or audited rubric | WebArena-style, OSWorld-style, AppWorld-style tasks |
| AWML-4 | Training-ready world | Parallel rollouts, trajectory export, reward logging, curriculum, or agent-RL integration | SWE-Gym, AgentGym, RAGEN-style systems |
| AWML-5 | Production-gated world | Release gate with monitors, approvals, credentials, policy, regression, and audit | Production or internal frontier-agent gate |

## How To Use It

Treat AWML as a lens, not a leaderboard. A resource can be scientifically
important at AWML-1 or AWML-2 if it reveals a hard task surface or a verifier
risk. Conversely, a high maturity level does not imply that the resource covers
all real-world tasks.

## Relationship To Readiness Score

The repository's readiness score is a 14-point metadata triage score. AWML is a
conceptual maturity label. They should usually move together, but they answer
different questions:

| Measure | Question |
|---|---|
| Readiness score | How much runnable, verifiable, resettable, trajectory, sandbox, and production evidence is visible? |
| AWML | What role can this resource play in evaluation, training, or release gating? |

## Integrity Requirement

No resource should be treated as AWML-4 or AWML-5 unless verifier integrity is
credible. The evaluator must be isolated from the agent, references must be
protected from leakage or tampering, and side effects must be auditable.
