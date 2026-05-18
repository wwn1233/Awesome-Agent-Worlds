# frozen_string_literal: true

require "set"

module AgentWorlds
  REQUIRED_FIELDS = %w[
    name id category canonical_category resource_kind subtype status year modality
    action_space reward_type reward_family verifier verifier_family verifier_recomputable
    verifier_isolation trainable trainability_status resettable reset_support reset_mechanism
    trajectories trajectory_availability trajectory_access trajectory_type trajectory_public
    sandbox reproducibility access content_evidence evidence_type sources reader_paths
    production_signal url repo notes
  ].freeze

  CATEGORIES = Set.new(%w[
    agent-infrastructure api-world code-world computer-world embodied-world generative-3d-world
    gui-world mobile-world research-world training-framework web-world
  ]).freeze

  CANONICAL_CATEGORIES = Set.new(%w[
    agent-infrastructure api-world code-world computer-world embodied-world generative-3d-world
    gui-world mobile-world research-world training-framework web-world
  ]).freeze

  RESOURCE_KINDS = Set.new(%w[
    agent_infrastructure benchmark closed_product_signal dataset model_release protocol
    safety_control training_framework world
  ]).freeze

  RESOURCE_STATUSES = Set.new(%w[
    closed_signal documented model_or_system_release production_control public_artifact
    public_framework public_infrastructure public_protocol
  ]).freeze

  REPRODUCIBILITY_VALUES = Set.new(%w[
    closed_product paper_or_api policy_spec protocol_spec public_code public_dataset
    public_runnable
  ]).freeze

  ACCESS_VALUES = Set.new(%w[
    product_or_api public_code public_dataset public_page public_policy public_spec
  ]).freeze

  EVIDENCE_TYPES = Set.new(%w[
    artifact documentation paper product_signal
  ]).freeze

  TRAJECTORY_AVAILABILITY = Set.new(%w[
    none not_applicable partial private_telemetry public synthetic
  ]).freeze

  RESET_SUPPORT = Set.new(%w[
    closed_or_private dataset_replay episode_reset none not_applicable partial
  ]).freeze

  TRAINABILITY_STATUS = Set.new(%w[
    evaluation_only framework_ready not_applicable private_only public_training_ready unknown
  ]).freeze

  SOURCE_CONFIDENCE = Set.new(%w[
    high medium official
  ]).freeze

  SOURCE_SUPPORT_TAGS = Set.new(%w[
    benchmark_design code dataset overview reproducibility status trajectories
  ]).freeze

  SOURCE_TYPES = Set.new(%w[
    dataset official_announcement official_docs paper paper_or_dataset project_page repository
  ]).freeze

  READER_PATHS = Set.new(%w[
    build-evals foundations production-direction release-gates safety-audit train-rollouts
  ]).freeze

  RUNNABLE_SANDBOXES = %w[
    ai2thor app_environment browser_environment cloud_sandbox company_simulation containerized_web
    desktop_apps docker emulator generated_interactive_world gym_like minecraft repo_sandbox
    self_hosted_web service_environment service_management_app simulated_backend simulated_apis
    simulated_web_store simulator vm world_model
  ].freeze

  STRONG_VERIFIER_HINTS = %w[
    coordinate_match durable environment_reward environment_state hidden_tests human_verified
    programmatic reward_function simulator_state state unit webjudge
  ].freeze

  PARTIAL_VALUES = %w[
    benchmark_dependent closed dataset environment_dependent generated_asset generated_world
    logged_episodes model_release partial product_dependent product_telemetry service_environment
    snapshot synthetic unknown website_dependent
  ].freeze
end
