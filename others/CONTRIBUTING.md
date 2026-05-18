# Contributing to Awesome Agent Worlds

Thanks for helping map the environments that teach AI agents to act.

## What Belongs Here

A resource belongs if it is about at least one of:

- Runnable agent environments.
- Benchmarks with real interaction loops.
- Reward functions, verifiers, rubrics, or graders.
- Trajectory/log/replay datasets.
- Sandboxes and resettable runtimes.
- Training frameworks that connect agent rollouts to optimization.
- Industry reports showing how foundation labs use agent worlds in production.

## What Usually Does Not Belong

- Pure model releases with no agent-world relevance.
- Prompt collections.
- Demo-only agents without reusable environment code or evaluation.
- Generic agent frameworks with no reward, trajectory, or world interface.
- Blog posts with no durable technical content.

## Entry Format

Add new entries to `others/data/resources.yaml` first.

Required fields:

```yaml
- name: ExampleWorld
  category: web-world
  resource_kind: world
  canonical_category: web-world
  year: 2026
  modality: [browser, gui]
  action_space: [click, type, navigate]
  reward_type: functional_correctness
  verifier: programmatic
  verifier_family: programmatic
  trainable: partial
  trainability_status: framework_ready
  resettable: true
  reset_support: episode_reset
  trajectories: false
  trajectory_availability: none
  sandbox: docker
  reproducibility: public_runnable
  access: public_code
  production_signal: cited_by_frontier_lab
  url: https://example.com/
  repo: https://github.com/example/world
  notes: One sentence explaining why this matters.
  why_it_matters: Why this is a representative Agent World resource.
  sources:
  - url: https://example.com/
    type: project_page
    supports: [overview, reproducibility]
    checked_at: '2026-05-17'
    confidence: high
```

The generated schema also requires source, trajectory, reset, trainability,
and reproducibility metadata. Use existing entries as the template and run the
validation commands below before opening a PR.

Allowed `sources[].supports` tags:

- `overview`: the source establishes the resource identity or main claim.
- `status`: the source establishes availability, product state, or release state.
- `reproducibility`: the source establishes runnable code, environment access, or setup.
- `code`: the source points to implementation, examples, or package code.
- `benchmark_design`: the source explains tasks, scoring, or evaluation design.
- `dataset`: the source establishes dataset contents or access.
- `trajectories`: the source establishes rollout, log, replay, or trajectory access.

Repository sources must use both `code` and `reproducibility`; use project
pages, papers, or official announcements for `overview`, `status`, or
`benchmark_design` claims.

Allowed `sources[].type` values: `project_page`, `repository`, `paper`,
`paper_or_dataset`, `dataset`, `official_docs`, and
`official_announcement`.

Allowed `reader_paths` values: `build-evals`, `train-rollouts`,
`safety-audit`, `release-gates`, `production-direction`, and `foundations`.

## Metadata Crosswalk

Use this table to map review questions to concrete YAML fields.

| Review question | Field group |
|---|---|
| What kind of resource is it? | `resource_kind`, `subtype`, `evidence_type` |
| What surface does it cover? | `category`, `canonical_category`, `modality`, `action_space` |
| Can an agent act in it? | `sandbox`, `runtime_host`, `access`, `reproducibility` |
| How is success measured? | `verifier`, `verifier_family`, `reward_type`, `reward_family` |
| Is the verifier robust? | `verifier_recomputable`, `verifier_isolation`, `negative_side_effect_checks` |
| Can tasks be reset or replayed? | `resettable`, `reset_support`, `reset_mechanism` |
| Are trajectories available? | `trajectories`, `trajectory_availability`, `trajectory_access`, `trajectory_type` |
| Is it useful for training? | `trainable`, `trainability_status`, `sft_fit`, `rlvr_fit`, `online_rl_fit` |
| Why is it included? | `notes`, plus `why_it_matters` for flagship or ranked entries |
| What supports the claim? | `sources[].url`, `sources[].supports`, `sources[].checked_at`, `sources[].confidence` |

## Review Checklist

Before opening a PR, verify:

- The link is primary when possible: official blog, project page, paper, docs, or
  GitHub repo.
- The resource exposes a world, verifier, reward, trajectory, sandbox, or agent
  training loop.
- `trainable` is not overstated. Use `partial`, `eval-only`, or `closed` when
  appropriate.
- The notes explain why the resource matters for Agent Worlds.
- If the resource is a benchmark, describe how success is verified.
- If the resource is a framework, describe how rollouts and rewards connect to
  training.
- Run `ruby others/scripts/validate_resources.rb`.
- Run `ruby others/scripts/validate_schema.rb`.
- Run `ruby others/scripts/validate_hot_papers.rb`.
- Run `ruby others/scripts/build_awesome_list.rb`.
- Run `ruby others/scripts/build_resource_index.rb`.
- Run `ruby others/scripts/build_flagship_matrix.rb`.
- Run `ruby others/scripts/build_site_data.rb`.
- Run `ruby others/scripts/validate_site.rb`.
- Run `ruby others/scripts/check_generated_artifacts.rb`.
- Run `ruby others/scripts/check_links.rb`.
- Run `ruby others/scripts/run_release_checks.rb` before release-oriented PRs.

## Readiness Labels

Use these terms consistently in discussion and PR review:

- `reference`: useful background, protocol, product, or model signal.
- `evaluation candidate`: useful for measuring agent behavior.
- `training candidate`: useful for rollouts, trajectories, or post-training.
- `production-grade world`: strong runtime, verifier, reset, trajectory, and
  sandbox properties.

## PR Style

Keep PRs focused:

- One new category or 5-10 related entries per PR.
- Include source links.
- Prefer concise notes over marketing language.
- Do not add star counts unless there is an automated update path.
