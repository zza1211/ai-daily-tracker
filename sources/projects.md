# 近两年 AI 训练、推理、Agent 与记忆开源项目清单

> 首次整理：2026-11-11（Asia/Shanghai）  
> 时间范围：约 2024-11 至 2026-11。  
> 说明：项目按“值得持续跟踪”筛选，链接优先指向官方 GitHub 或官方文档。热度和活跃度会快速变化，因此不把某一天的 star 数当作结论；每日更新时应记录新增 release、重大 PR、论文、基准或生态集成。

## 1. 训练与后训练

| 项目 | 方向 | 主要用途 | 近两年值得跟踪的信号 | 官方链接 | 为什么值得跟踪 |
|---|---|---|---|---|---|
| PyTorch TorchTitan | 大模型预训练 | PyTorch 原生的大规模训练参考实现，覆盖 FSDP2、张量/流水线/上下文/专家并行、量化训练等 | README 持续加入 Qwen、DeepSeek、MoE、Blackwell/NVFP4 等 recipe，并覆盖后训练工作流 | [GitHub](https://github.com/pytorch/torchtitan) | 观察 PyTorch 官方如何把前沿并行策略沉淀成可复用训练栈 |
| verl / HybridFlow | RL 后训练 | 面向 PPO、GRPO 等 LLM 强化学习的训练框架，连接 FSDP、Megatron、推理引擎与 rollout | 持续适配 Qwen、DeepSeek 等模型，并强化 trainer/generator 异步协同 | [GitHub](https://github.com/volcengine/verl) | 推理、采样、奖励和训练开始合并为统一系统，适合跟踪 reasoning model 训练基础设施 |
| DeepSpeed | 分布式训练/推理 | ZeRO、3D 并行、offload、checkpoint 等，降低大模型训练显存与通信成本 | 仍是大量训练项目的底层依赖，并持续维护 ZeRO-3、推理和 MoE 能力 | [GitHub](https://github.com/microsoft/DeepSpeed) | 适合观察“训练规模扩张”如何转化为内存、通信和容错工程 |
| Megatron-LM | 大规模预训练 | NVIDIA 生态中的张量、流水线、序列和专家并行训练参考实现 | 持续跟进新一代 dense/MoE 模型、FP8/FP4 和大集群训练 | [GitHub](https://github.com/NVIDIA/Megatron-LM) | 是多数 frontier 训练系统的基线之一，适合对照 TorchTitan/DeepSpeed 的取舍 |
| Hugging Face TRL | 对齐与后训练 | SFT、DPO、GRPO、奖励模型和 PEFT 等训练流程 | 2025–2026 持续加入 reasoning/RL 训练 recipe，和 Transformers、PEFT、vLLM 生态联动 | [GitHub](https://github.com/huggingface/trl) | 追踪开放模型从预训练到指令/偏好/推理能力的标准工具链 |
| Axolotl | 微调工程 | 用 YAML 配置完成 SFT、LoRA/QLoRA、DPO、RL 等多种微调 | 社区快速跟进新模型架构、量化和多 GPU 训练 | [GitHub](https://github.com/axolotl-ai-cloud/axolotl) | 适合观察研究方法如何被压缩成可复现实验配置 |
| Unsloth | 高效微调 | 通过自定义 kernel、显存优化和量化加速 LoRA/SFT/RL 训练 | 持续适配新模型与长上下文，并提供面向个人 GPU 的低门槛路径 | [GitHub](https://github.com/unslothai/unsloth) | 关注“单机可复现训练”与 kernel/量化优化的结合 |
| Liger Kernel | 训练 kernel | 为 Triton/PyTorch 提供 RMSNorm、RoPE、SwiGLU、cross-entropy 等融合 kernel | 持续被 TRL、Transformers 等训练栈集成，用于降低显存并提高吞吐 | [GitHub](https://github.com/linkedin/Liger-Kernel) | 适合跟踪训练性能从框架层下沉到 kernel 层的趋势 |
| OpenRLHF | RLHF/推理协同 | 将 actor、critic、reward、reference 与 vLLM/DeepSpeed 组合起来做 RLHF | 继续支持 PPO、DPO、GRPO 及多模型并行训练 | [GitHub](https://github.com/OpenRLHF/OpenRLHF) | 可作为研究 reasoning/RL pipeline 的另一套实现对照 |
| Hugging Face Open-R1 | 开放推理训练 | 提供复现和扩展 DeepSeek-R1 类推理模型的训练脚本、数据与评测配方 | 2025 起持续加入 SFT、GRPO、蒸馏和多模态推理 recipe | [GitHub](https://github.com/huggingface/open-r1) | 适合跟踪开放推理训练如何从论文走向可运行配方 |

## 2. 推理、服务与系统优化

| 项目 | 方向 | 主要用途 | 近两年值得跟踪的信号 | 官方链接 | 为什么值得跟踪 |
|---|---|---|---|---|---|
| vLLM | LLM 推理服务 | PagedAttention、连续批处理、分布式推理和 OpenAI 兼容 API | 已成为开放模型服务的事实基线之一，持续支持新模型、MoE、量化和多模态 | [GitHub](https://github.com/vllm-project/vllm) / [文档](https://docs.vllm.ai/) | 关注 KV cache、调度、并行和服务 API 的主流演进 |
| SGLang | 结构化推理/服务 | 用程序化生成与高性能 runtime 优化多轮、JSON、RAG、Agent 和多模态请求 | 2024–2025 连续发布 v0.2–v0.4，推进大规模专家并行和 prefill/decode 解耦 | [GitHub](https://github.com/sgl-project/sglang) | 特别适合跟踪 Agent/结构化输出场景下的端到端吞吐与延迟 |
| TensorRT-LLM | NVIDIA 推理优化 | Python/C++ runtime、量化、并行、投机解码和 disaggregated serving | 持续支持 FP8/NVFP4、EAGLE 类投机解码及新 GPU/模型 | [GitHub](https://github.com/NVIDIA/TensorRT-LLM) / [文档](https://nvidia.github.io/TensorRT-LLM/) | 代表硬件厂商如何把 kernel、编译器和服务整合在一起 |
| llama.cpp | 本地/边缘推理 | C/C++ 实现、GGUF 量化、CPU/GPU 混合推理和本地 HTTP 服务 | 持续适配新模型、Metal/CUDA/ROCm/风格后端与量化格式 | [GitHub](https://github.com/ggml-org/llama.cpp) | 观察“低成本本地推理”与硬件可移植性的长期路线 |
| LMDeploy | 压缩与部署 | TurboMind/PyTorch 推理后端、量化、批量推理和 OpenAI 兼容服务 | 持续支持 InternLM、Llama、Qwen、VLM 等模型与新量化方案 | [GitHub](https://github.com/InternLM/lmdeploy) / [文档](https://lmdeploy.readthedocs.io/) | 中国开源模型生态中较重要的部署和量化基线 |
| Text Generation Inference (TGI) | 生产级服务 | Hugging Face 的 Rust/Python/gRPC 推理服务器，含连续批处理、量化、流式输出和监控 | 仍是 Hugging Face 生产服务和大量部署文档中的核心组件；需同时留意项目维护策略变化 | [GitHub](https://github.com/huggingface/text-generation-inference) | 用于对照 vLLM/SGLang 的 API、硬件支持与生产运维设计 |
| FlashInfer | Attention kernel | 面向 LLM serving 的可组合 attention、采样和 KV cache kernel 库 | 2025 论文和工程持续优化长上下文、并行生成，并被 vLLM/SGLang 等集成 | [GitHub](https://github.com/flashinfer-ai/flashinfer) / [论文](https://arxiv.org/abs/2501.01005) | 连接算法、kernel 与服务框架，是推理性能优化的重要观察点 |
| MLC LLM | 编译与端侧部署 | 将模型编译到 CUDA、Metal、Vulkan、WebGPU、Android/iOS 等后端 | 持续推进跨硬件、浏览器和移动端部署 | [GitHub](https://github.com/mlc-ai/mlc-llm) | 关注模型服务从数据中心向端侧和浏览器迁移 |

## 3. Agent 编排与执行

| 项目 | 方向 | 主要用途 | 近两年值得跟踪的信号 | 官方链接 | 为什么值得跟踪 |
|---|---|---|---|---|---|
| LangGraph | 有状态 Agent runtime | 用图、检查点、持久化和人工介入构建长运行、可恢复的 Agent | 持续完善 Python/JS runtime、持久化和生产部署；官方文档明确定位为 long-running/stateful agents | [GitHub](https://github.com/langchain-ai/langgraph) / [文档](https://langchain-ai.github.io/langgraph/) | 适合跟踪 Agent 状态、恢复、可观测性和工作流化 |
| CrewAI | 多 Agent 编排 | 以 role/task/crew/flow 抽象多 Agent 协作和业务流程 | 社区活跃，持续扩展工具、流程和记忆能力 | [GitHub](https://github.com/crewAIInc/crewAI) | 代表“角色化多 Agent”在应用开发中的工程化路径 |
| Microsoft Agent Framework | 企业 Agent runtime | 微软将 AutoGen 与 Semantic Kernel 的经验收敛到统一的 Agent/Workflow SDK | 2025 年公开后持续推进 Python/.NET、工作流、检查点和企业集成 | [GitHub](https://github.com/microsoft/agent-framework) | 用于观察研究型多 Agent 框架如何走向企业运行时 |
| Microsoft AutoGen | 多 Agent 研究框架 | 通过对话、工具和团队抽象构建多 Agent 应用 | 原项目已归档，官方建议新项目迁移到 Microsoft Agent Framework；仍值得作为 2024–2025 多 Agent 热点基线保留 | [GitHub](https://github.com/microsoft/autogen) | 追踪历史方案与迁移方向，避免把旧框架当作新项目首选 |
| OpenHands | 软件工程 Agent | 让 Agent 在沙箱中读写代码、运行命令、调试并完成开发任务 | 2024–2026 持续扩展为平台与 SDK，并有公开论文和 SWE-bench 生态 | [GitHub](https://github.com/All-Hands-AI/OpenHands) / [论文](https://arxiv.org/abs/2407.16741) | 软件工程 Agent 是工具调用、记忆、评测和安全边界的综合试验场 |
| browser-use | 浏览器 Agent | 为 LLM 提供浏览器控制、页面观察、点击/输入/导航等能力 | 2025–2026 在浏览器自动化和本地模型适配方面快速迭代 | [GitHub](https://github.com/browser-use/browser-use) | 适合追踪视觉/网页状态、长轨迹和真实环境工具使用 |
| Hugging Face smolagents | 轻量 Agent SDK | 用少量抽象构建代码 Agent、工具调用和多 Agent 流程，可接本地或云端模型 | 2025 起持续扩展工具、MCP、代码执行和模型适配 | [GitHub](https://github.com/huggingface/smolagents) | 代表“短代码、可组合、易实验”的 Agent 工程路线 |
| OpenAI Agents SDK | Agent runtime | 提供 Python Agent、工具、handoff、guardrail、会话状态和 tracing 基础组件 | 2025 公开后持续演进，适合与 LangGraph、Microsoft Agent Framework 对照 | [GitHub](https://github.com/openai/openai-agents-python) / [文档](https://openai.github.io/openai-agents-python/) | 观察模型厂商如何把工具调用、委派和可观测性封装成 SDK |
| Model Context Protocol (MCP) Servers | 工具/上下文协议 | 提供 MCP 服务端参考实现，让 Agent 以统一协议接入文件、数据库、浏览器和 SaaS 工具 | 2025–2026 生态快速扩张，需持续关注协议版本、权限与安全实践 | [GitHub](https://github.com/modelcontextprotocol/servers) / [规范](https://modelcontextprotocol.io/) | 是 Agent 工具互操作和生态集成的重要基础设施 |

## 4. Agent 记忆、知识图谱与长期状态

| 项目 | 方向 | 主要用途 | 近两年值得跟踪的信号 | 官方链接 | 为什么值得跟踪 |
|---|---|---|---|---|---|
| Mem0 | 通用 Agent memory | 从对话中提取、更新、检索并按 user/session/agent 维度管理长期记忆，支持向量和图存储 | 2025 论文公开后持续扩展 SDK、图记忆、MCP/插件和生产部署 | [GitHub](https://github.com/mem0ai/mem0) / [论文](https://arxiv.org/abs/2504.19413) | 目前最适合作为“通用记忆层”基线观察抽取、更新与评测 |
| Letta（原 MemGPT） | 有状态 Agent | 让 Agent 自主管理 core/recall/archival 等分层记忆和工具状态 | 持续推进可编辑 memory blocks、长时间身份和 Letta Code 生态 | [GitHub](https://github.com/letta-ai/letta) | 代表“Agent 自己管理上下文和记忆”的操作系统式路线 |
| Graphiti | 时间知识图谱 | 从对话和业务数据构建可随时间变化、带来源的知识图谱 | 2025 Zep 论文和开源实现推动 temporal graph memory 进入主流讨论 | [GitHub](https://github.com/getzep/graphiti) / [论文](https://arxiv.org/abs/2501.13956) | 适合跟踪事实更新、时间有效性和关系检索 |
| Cognee | 图+向量记忆平台 | 将文档、代码、对话转为图和向量表示，供 Agent 持久检索和复用 | 2025–2026 快速扩展本地模型、MCP/Claude/Codex 插件和多模态管线 | [GitHub](https://github.com/topoteretes/cognee) | 观察知识工程、代码记忆与 Agent memory 的融合 |
| LangMem | LangGraph 记忆 SDK | 在 LangGraph 等应用中抽取并管理 semantic、episodic、procedural memory | 持续完善长期记忆抽取、存储与运行时集成 | [GitHub](https://github.com/langchain-ai/langmem) | 适合对照独立 memory 平台与编排框架内置记忆的差异 |
| A-MEM | 研究型 Agent memory | 用动态链接、笔记组织和 Zettelkasten 风格结构实现可演化记忆 | 以 NeurIPS 2025 论文和开源实现为代表，推动 agentic memory 研究 | [GitHub](https://github.com/agiresearch/A-mem) | 适合作为“记忆组织策略”而非生产平台的研究基线 |

## 建议的每日跟踪字段

每天新增条目建议记录：

1. `日期`：公告、release、论文或重大 PR 的日期。
2. `类别`：训练 / 推理 / Agent / 记忆。
3. `事件`：一句话描述新增内容。
4. `影响`：对训练效率、推理成本、Agent 可靠性或记忆质量的实际影响。
5. `链接`：优先官方 release、论文、README、技术博客或基准结果。
6. `状态`：新增、更新、迁移、归档、争议或待验证。

每日更新时，项目是否“热门”应结合近期 release/commit、论文引用或复现实验、社区采用和兼容性变化判断，避免只复制排行榜或 star 数。

## 5. 2026-11-12 新增跟踪项目

| 项目 | 方向 | 主要用途 | 近期信号 | 官方链接 | 许可证 |
|---|---|---|---|---|---|
| BotPsy-0.8B | 端侧 Agent / 工具调用 | 基于 Qwen3.5-0.8B 的个人助理模型，面向低至中等难度的多轮工具工作流 | 2026-11-11 发布；SFT、on-policy distillation、规则奖励 RL；提供 safetensors 与 GGUF | [模型页](https://huggingface.co/qvac/botpsy-0.8b) / [官方文章](https://huggingface.co/blog/qvac/botpsy) | Apache-2.0 |
