---
name: Add a resource
about: Suggest a new Agent World resource, benchmark, protocol, safety control, product signal, model release, or training framework
title: "[Resource] "
labels: resource
assignees: ""
---

Check the README scope before submitting a resource. A good entry should expose
an environment, benchmark, verifier, trajectory, sandbox, protocol, safety
control, or training-loop contribution. Use the [Selection Guide inclusion
criteria](https://github.com/wwn1233/Awesome-Agent-Worlds/blob/main/others/docs/selection-guide.md#inclusion-criteria)
when deciding whether the resource is catalog-ready.

## Resource

Name:

URL:

Repository:

## Category

Choose one category:

- computer-world
- web-world
- mobile-world
- code-world
- api-world
- research-world
- gui-world
- embodied-world
- generative-3d-world
- training-framework
- agent-infrastructure

## Agent World Surface

Choose one reader-facing surface:

- infra
- web
- gui
- mobile
- code
- api
- research
- embodied
- training

## Resource Kind

Choose one:

- world
- benchmark
- dataset
- training_framework
- agent_infrastructure
- protocol
- model_release
- closed_product_signal
- safety_control

## Why it belongs

Explain what world, verifier, reward, trajectory, sandbox, protocol, safety
control, product signal, model release, or training loop this resource
contributes.

## Evidence

- Runnable environment:
- Verifier/reward:
- Reset/replay support:
- Trajectories/logs:
- Training support:
- Production signal:
- Primary source:
- Source support tags:
- Reader path:
- Evidence date:
- Source confidence:

Primary sources are preferred: project page, paper, code repository,
documentation, dataset card, or official announcement.

Allowed support tags: `overview`, `status`, `reproducibility`, `code`,
`benchmark_design`, `dataset`, `trajectories`.

Allowed reader paths: `build-evals`, `train-rollouts`, `foundations`,
`production-direction`, `release-gates`, `safety-audit`.

Allowed source confidence values: `official`, `high`. Add confidence inside
each `sources` entry in `others/data/resources.yaml`; the web view derives its
resource-level source confidence from those source records.

Canonical categories should match the Resource Index vocabulary. Agent World
surfaces should match the README and Static Explorer vocabulary.
