# frozen_string_literal: true

module AgentWorlds
  module HotPaperPins
    PINNED = [
      {
        "id" => "2604.18292v1",
        "title" => "Agent-World: Scaling Real-World Environment Synthesis for Evolving General Agent Intelligence",
        "published" => "2026-04-20T14:01:10Z",
        "updated" => "2026-04-20T14:01:10Z",
        "authors" => ["Guanting Dong", "Junting Lu", "Junjie Huang", "Wanjun Zhong", "Longxiang Liu", "Shijue Huang", "Zhenyu Li", "Yang Zhao"],
        "categories" => ["cs.AI", "cs.LG"],
        "score" => 46,
        "matched_terms" => ["agent world", "environment synthesis", "real-world environment", "tool ecosystem", "mcp", "self-evolving training", "agent training arena", "verifiable reward"]
      },
      {
        "id" => "2602.00933v2",
        "title" => "MCP-Atlas: A Large-Scale Benchmark for Tool-Use Competency with Real MCP Servers",
        "published" => "2026-01-31T23:19:39Z",
        "updated" => "2026-05-04T02:49:08Z",
        "authors" => ["Chaithanya Bandi", "Ben Hertzberg", "Geobio Boo", "Tejas Polakam", "Jeff Da", "Sami Hassaan", "Manasi Sharma", "Andrew Park"],
        "categories" => ["cs.AI"],
        "score" => 39,
        "matched_terms" => ["mcp atlas", "mcp servers", "tool routing", "tool composition", "mcp benchmark", "benchmark"]
      },
      {
        "id" => "2605.07630v1",
        "title" => "Safe, or Simply Incapable? Rethinking Safety Evaluation for Phone-Use Agents",
        "published" => "2026-05-08T11:58:57Z",
        "updated" => "2026-05-08T11:58:57Z",
        "authors" => ["Zhengyang Tang", "Yi Zhang", "Chenxin Li", "Xin Lai", "Pengyuan Lyu", "Yiduo Guo", "Weinong Wang", "Junyi Li"],
        "categories" => ["cs.AI"],
        "score" => 32,
        "matched_terms" => ["phone-use agent", "phone-use agents", "safety evaluation", "safety-critical moments", "incapable", "benchmark"]
      },
      {
        "id" => "2604.02947v1",
        "title" => "AgentHazard: A Benchmark for Evaluating Harmful Behavior in Computer-Use Agents",
        "published" => "2026-04-03T10:29:31Z",
        "updated" => "2026-04-03T10:29:31Z",
        "authors" => ["Yunhao Feng", "Yifan Ding", "Yingshui Tan", "Xingjun Ma", "Yige Li", "Yutao Wu", "Yifeng Gao", "Kun Zhai"],
        "categories" => ["cs.AI"],
        "score" => 33,
        "matched_terms" => ["computer-use agents", "agent safety", "harmful behavior", "benchmark", "tool-use environment"]
      },
      {
        "id" => "2602.14093v1",
        "title" => "GUI-GENESIS: Automated Synthesis of Efficient Environments with Verifiable Rewards for GUI Agent Post-Training",
        "published" => "2026-02-15T10:58:01Z",
        "updated" => "2026-02-15T10:58:01Z",
        "authors" => ["Yuan Cao", "Dezhi Ran", "Mengzhou Wu", "Yuzhe Guo", "Xin Chen", "Ang Li", "Gang Cao", "Gong Zhi"],
        "categories" => ["cs.AI", "cs.LG"],
        "score" => 34,
        "matched_terms" => ["gui agent", "environment synthesis", "verifiable reward", "post-training", "synthetic environment"]
      },
      {
        "id" => "2605.09131v1",
        "title" => "MCP-Cosmos: World Model-Augmented Agents for Complex Task Execution in MCP Environments",
        "published" => "2026-05-09T19:25:56Z",
        "updated" => "2026-05-09T19:25:56Z",
        "authors" => ["Giridhar Ganapavarapu", "Dhaval Patel"],
        "categories" => ["cs.AI", "cs.MA"],
        "score" => 35,
        "matched_terms" => ["mcp-cosmos", "mcp environments", "world model", "tool-use environment", "state transition"]
      },
      {
        "id" => "2510.25726v2",
        "title" => "The Tool Decathlon: Benchmarking Language Agents for Diverse, Realistic, and Long-Horizon Task Execution",
        "published" => "2025-10-29T17:32:49Z",
        "updated" => "2026-02-26T09:46:48Z",
        "authors" => ["Junlong Li", "Wenshuo Zhao", "Jian Zhao", "Weihao Zeng", "Haoze Wu", "Xiaochen Wang", "Rui Ge", "Yuxuan Cao"],
        "categories" => ["cs.CL", "cs.AI"],
        "score" => 36,
        "matched_terms" => ["tool decathlon", "toolathlon", "mcp", "execution-based evaluation", "long-horizon task execution", "benchmark"]
      },
      {
        "id" => "2510.01179v1",
        "title" => "TOUCAN: Synthesizing 1.5M Tool-Agentic Data from Real-World MCP Environments",
        "published" => "2025-10-01T17:58:03Z",
        "updated" => "2025-10-01T17:58:03Z",
        "authors" => ["Zhangchen Xu", "Adriana Meza Soria", "Shawn Tan", "Anurag Roy", "Ashish Sunil Agrawal", "Radha Poovendran", "Rameswar Panda"],
        "categories" => ["cs.LG", "cs.AI", "cs.CL"],
        "score" => 35,
        "matched_terms" => ["toucan", "tool-agentic data", "mcp environments", "trajectory", "tool-use environment"]
      },
      {
        "id" => "2509.09734v1",
        "title" => "MCP-AgentBench: Evaluating Real-World Language Agent Performance with MCP-Mediated Tools",
        "published" => "2025-09-10T14:08:40Z",
        "updated" => "2025-09-10T14:08:40Z",
        "authors" => ["Zikang Guo", "Benfeng Xu", "Chiwei Zhu", "Wentao Hong", "Xiaorui Wang", "Zhendong Mao"],
        "categories" => ["cs.CL", "cs.AI", "cs.LG"],
        "score" => 33,
        "matched_terms" => ["mcp-agentbench", "mcp-mediated", "mcp server", "mcp tools", "benchmark"]
      }
    ].freeze

    module_function

    def papers
      PINNED.map do |paper|
        paper.merge(
          "url" => "https://arxiv.org/abs/#{paper['id']}",
          "pdf_url" => "https://arxiv.org/pdf/#{paper['id']}",
          "bucket" => "frontier_pinned",
          "reason" => "indexed",
          "pinned" => true
        )
      end
    end
  end
end
