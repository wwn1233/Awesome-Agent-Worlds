# frozen_string_literal: true

module AgentWorlds
  module HotPaperProfile
    QUERY_TERMS = [
      "agent world", "computer use", "computer-use agent", "computer-use agents",
      "GUI agent", "web agent", "browser agent", "mobile agent", "phone-use agent",
      "phone-use agents", "phone use agents", "tool agent",
      "software engineering agent", "embodied agent", "interactive environment",
      "agent benchmark", "verifiable reward", "agent safety", "mobile privacy",
      "privacy compliance", "phone-use safety", "phone safety", "post-training",
      "environment synthesis", "environment generation", "real-world environment",
      "tool ecosystem", "mcp benchmark", "mcp-gui", "skill environment",
      "mcp server", "mcp servers", "mcp tool", "mcp tools", "tool routing",
      "tool composition", "large-scale mcp", "tool poisoning", "mcp safety",
      "agentic world modeling", "generative sketch world model",
      "self-evolving agent", "agent training arena", "world model",
      "synthetic environment", "tool-use environment", "stateful tool",
      "language world model", "language environment simulation", "environment simulation",
      "professional task", "occupational task", "hybrid verifier", "process reward",
      "gui world model", "mobile world model", "state transition",
      "mcpworld", "mobileworld", "digiworld", "cuaharm", "riosworld",
      "phone-harm", "computer-use safety", "mcp security", "mcp-safetybench",
      "mcpsecbench", "agentgym-rl", "agent-rlvr", "agent rlvr",
      "multi-turn reinforcement learning", "mobile task world", "mcp-cosmos",
      "byowm", "tool decathlon", "toolathlon", "toucan", "mcp-agentbench",
      "mcp-mediated", "tool-agentic", "tool-agentic data", "mcp environments",
      "execution-based evaluation", "long-horizon task execution"
    ].freeze

    FOCUSED_QUERY_TERMS = [
      "phone-use agents", "phone-use safety", "phone safety",
      "safety-critical moments", "safe unsafe incapable", "simply incapable",
      "computer-use agents", "agent world", "environment synthesis",
      "environment generation", "self-evolving training", "agent training arena",
      "mcp benchmark", "skill environment", "mcp server", "mcp tools",
      "multi-server routing", "tool composition", "mcp atlas", "tool poisoning",
      "tool-use environment", "agent world model", "language world model",
      "environment simulation", "hybrid verifier", "mobile world model",
      "gui world model", "professional task", "mcpworld", "mobileworld",
      "digiworld", "cuaharm", "riosworld", "phone-harm", "computer-use safety",
      "mcp security", "mcp-safetybench", "mcpsecbench", "agentgym-rl",
      "agent-rlvr", "agent rlvr", "mcp-cosmos", "tool decathlon",
      "toolathlon", "toucan", "mcp-agentbench", "tool-agentic", "mcp environments"
    ].freeze

    CATEGORIES = %w[cs.AI cs.CL cs.CV cs.LG cs.RO cs.SE cs.HC].freeze

    WEIGHTS = {
      "agent world" => 8, "computer use" => 6, "gui agent" => 6,
      "web agent" => 5, "browser agent" => 5, "mobile agent" => 5,
      "tool agent" => 5, "software engineering agent" => 6,
      "embodied agent" => 5, "interactive environment" => 5,
      "agent benchmark" => 5, "verifiable reward" => 7, "verifier" => 5,
      "trajectory" => 4, "sandbox" => 4, "post-training" => 5, "rlvr" => 5,
      "rollout" => 4, "resettable" => 4, "evaluation" => 2, "benchmark" => 2,
      "computer-use agent" => 6, "computer-use agents" => 6,
      "phone-use agent" => 6, "phone-use agents" => 6,
      "phone use agent" => 6, "phone use agents" => 6, "agent safety" => 5,
      "safety evaluation" => 4, "mobile privacy" => 5, "privacy compliance" => 5,
      "phone-use safety" => 7, "phone safety" => 7, "safety-critical moments" => 6,
      "safe unsafe incapable" => 7, "incapable" => 4, "unintended behavior" => 5,
      "harmful behavior" => 5, "environment synthesis" => 8,
      "environment generation" => 8, "real-world environment" => 6,
      "real-world environments" => 6, "tool ecosystem" => 6, "mcp" => 4,
      "mcp benchmark" => 7, "mcp-gui" => 7, "skill environment" => 7,
      "mcp server" => 6, "mcp servers" => 6, "mcp tool" => 6, "mcp tools" => 6,
      "tool routing" => 7, "multi-server routing" => 8, "tool composition" => 7,
      "large-scale mcp" => 7, "mcp atlas" => 8, "tool poisoning" => 7,
      "mcp safety" => 7, "agentic world modeling" => 8,
      "generative sketch world model" => 7, "self-evolving agent" => 8,
      "self-evolving training" => 8, "agent training arena" => 8,
      "world model" => 6, "synthetic environment" => 6,
      "tool-use environment" => 7, "stateful tool" => 6, "crud operation" => 5,
      "language world model" => 8, "language environment simulation" => 8,
      "environment simulation" => 7, "professional task" => 6,
      "occupational task" => 6, "hybrid verifier" => 7, "process reward" => 6,
      "gui world model" => 7, "mobile world model" => 7, "state transition" => 6,
      "mcpworld" => 9, "mobileworld" => 9, "digiworld" => 8,
      "cuaharm" => 8, "riosworld" => 8, "phone-harm" => 8,
      "computer-use safety" => 7, "mcp security" => 7,
      "mcp-safetybench" => 8, "mcpsecbench" => 8, "agentgym-rl" => 8,
      "agent-rlvr" => 8, "agent rlvr" => 8,
      "multi-turn reinforcement learning" => 7, "mobile task world" => 7,
      "mcp-cosmos" => 9, "byowm" => 7, "tool decathlon" => 9,
      "toolathlon" => 9, "toucan" => 9, "mcp-agentbench" => 9, "mcp-mediated" => 7,
      "tool-agentic" => 8, "tool-agentic data" => 8, "mcp environments" => 8,
      "execution-based evaluation" => 7, "long-horizon task execution" => 7
    }.freeze

    ANCHOR_TERMS = [
      "agent world", "computer use", "gui agent", "web agent", "browser agent",
      "mobile agent", "tool agent", "software engineering agent", "embodied agent",
      "agent benchmark", "verifiable reward", "post-training", "rlvr",
      "reinforcement learning agent", "computer-use agent", "computer-use agents",
      "phone-use agent", "phone-use agents", "phone use agent", "phone use agents",
      "agent safety", "phone-use safety", "phone safety", "mobile privacy",
      "privacy compliance", "environment synthesis", "environment generation",
      "mcp benchmark", "mcp-gui", "skill environment", "self-evolving agent",
      "self-evolving training", "mcp server", "mcp tools", "tool routing",
      "multi-server routing", "tool composition", "mcp atlas", "tool poisoning",
      "mcp safety", "agentic world modeling", "generative sketch world model",
      "agent training arena", "world model", "tool-use environment",
      "language world model", "environment simulation", "hybrid verifier",
      "gui world model", "mobile world model", "mcpworld", "mobileworld",
      "digiworld", "cuaharm", "riosworld", "phone-harm", "computer-use safety",
      "mcp security", "agentgym-rl", "agent-rlvr", "agent rlvr",
      "mobile task world", "mcp-cosmos", "tool decathlon", "toolathlon",
      "toucan", "mcp-agentbench", "tool-agentic", "mcp environments"
    ].freeze

    OFF_TOPIC_TERMS = [
      "scrnaseq", "scrna", "single-cell", "precipitation", "nowcasting",
      "pde", "protein", "molecular", "trading", "autonomous driving"
    ].freeze

    WATCHLIST_CHECKLIST = [
      "world_or_infrastructure_role",
      "observation_and_action_surface",
      "verifier_or_reward",
      "reset_or_replay_support",
      "trajectory_access",
      "sandbox_or_safety_boundary",
      "first_party_source"
    ].freeze
  end
end
