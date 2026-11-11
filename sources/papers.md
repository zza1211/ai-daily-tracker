# 近两年热点论文基线

> 首次整理：2026-11-11（Asia/Shanghai）
> 时间范围：以 2024-11-11 至 2026-11-11 为主；少量更早但仍是当前技术链条关键的论文会在条目中明确标注。

> 选取标准：优先选择有公开论文、代码/模型或可复现实验，且对训练、推理效率、Agent 或记忆系统有直接影响的工作。链接优先指向论文原文，代码链接单独列出。

## 一、训练与推理能力

### 1. [Tulu 3: Pushing Frontiers in Open Language Model Post-Training](https://arxiv.org/abs/2411.15124)（2024-11）

- **方向**：开放后训练、SFT/DPO/RLVR。
- **核心贡献**：公开完整的数据、训练代码、评测和基础设施，把 SFT、DPO 与可验证奖励强化学习（RLVR）组合成可复现的后训练配方。
- **为什么值得跟踪**：它是理解“开放模型如何通过后训练接近闭源模型”的重要基线，也直接连接到后续推理模型训练。
- **代码/模型**：[allenai/open-instruct](https://github.com/allenai/open-instruct)、[Tulu-3 模型](https://huggingface.co/collections/allenai/tulu-3-models)

### 2. [DeepSeek-V3 Technical Report](https://arxiv.org/abs/2412.19437)（2024-12）

- **方向**：大规模预训练、MoE、训练效率。
- **核心贡献**：671B 总参数、每 token 激活 37B 的 MoE；使用 MLA、无辅助损失负载均衡和多 token 预测，在 14.8T token 上完成训练。
- **为什么值得跟踪**：把稀疏架构、训练稳定性、数据规模和工程成本放在同一份公开技术报告中，是开放大模型训练的关键参照。
- **代码/模型**：[deepseek-ai/DeepSeek-V3](https://github.com/deepseek-ai/DeepSeek-V3)

### 3. [DeepSeek-R1: Incentivizing Reasoning Capability in LLMs via Reinforcement Learning](https://arxiv.org/abs/2501.12948)（2025-01）

- **方向**：推理模型、RL、RLVR、蒸馏。
- **核心贡献**：展示了仅依靠面向推理的强化学习可以诱导出更长的思考、反思和自校验行为，并公开 R1-Zero、R1 及多种蒸馏模型。
- **为什么值得跟踪**：它推动了“训练时 RL + 推理时额外计算”的主线，成为后续 GRPO、测试时扩展和开放推理模型的共同基线。
- **代码/模型**：[deepseek-ai/DeepSeek-R1](https://github.com/deepseek-ai/DeepSeek-R1)

### 4. [Kimi k1.5: Scaling Reinforcement Learning with LLMs](https://arxiv.org/abs/2501.12599)（2025-01）

- **方向**：长思维链、多模态推理、强化学习。
- **核心贡献**：系统讨论长上下文、长程奖励、策略优化和视觉/文本统一推理，并报告了在数学、代码和多模态任务上的强化学习结果。
- **为什么值得跟踪**：补充了 DeepSeek-R1 之外的另一条大规模推理训练路线，尤其适合跟踪长轨迹和多模态推理。

### 5. [Qwen2.5-1M Technical Report](https://arxiv.org/abs/2501.15383)（2025-01）

- **方向**：长上下文训练、推理服务。
- **核心贡献**：把上下文扩展到 100 万 token，结合长数据合成、渐进式预训练、多阶段 SFT，并公开稀疏注意力、分块预填充和推理引擎优化。
- **为什么值得跟踪**：长上下文是 Agent 记忆的基础设施问题；这篇报告同时覆盖训练方法和部署侧性能。
- **项目页/模型**：[Qwen2.5-1M 官方项目页](https://qwenlm.github.io/blog/qwen2.5-1m/)、[7B 模型](https://huggingface.co/Qwen/Qwen2.5-7B-Instruct-1M)

### 6. [s1: Simple test-time scaling](https://arxiv.org/abs/2501.19393)（2025-01）

- **方向**：测试时计算、推理预算控制。
- **核心贡献**：用约 1,000 个高质量样本微调 Qwen2.5-32B，再通过 budget forcing 控制思考长度，展示顺序式测试时扩展的效果。
- **为什么值得跟踪**：它把“推理时多算一点”从闭源模型能力变成了低成本、可复现的开放实验。
- **代码/模型**：[simplescaling/s1](https://github.com/simplescaling/s1)

### 7. [OLMo 2: The Best Fully Open Language Model to Date](https://arxiv.org/abs/2501.00656)（2025-01）

- **方向**：全开放预训练与后训练。
- **核心贡献**：公开数据、代码、训练日志、检查点和评测流程，分析持续预训练、SFT、DPO 等阶段如何协同提升能力。
- **为什么值得跟踪**：对于研究训练数据、损失曲线、训练稳定性和开放复现实验，它是比只发布权重更完整的参考。
- **代码/模型**：[allenai/OLMo](https://github.com/allenai/OLMo)

### 8. [SmolLM2: When Smol Goes Big](https://arxiv.org/abs/2502.02737)（2025-02）

- **方向**：小模型、数据配方、端侧推理。
- **核心贡献**：以 1.7B 模型为对象，使用约 11T token 的多阶段过训练，并公开 FineMath、Stack-Edu、SmolTalk 等数据。
- **为什么值得跟踪**：小模型是 Agent 本地规划、路由和低延迟工具调用的重要组成，且这篇论文把数据质量和配比讲得较清楚。
- **代码/模型**：[Hugging Face SmolLM2](https://huggingface.co/HuggingFaceTB/SmolLM2-1.7B-Instruct)

### 9. [Gemma 3 Technical Report](https://arxiv.org/abs/2503.19786)（2025-03）

- **方向**：多模态、小型开放模型、长上下文。
- **核心贡献**：1B–27B 多尺度模型，加入视觉理解、128K 以上上下文，并通过局部/全局注意力配比降低长上下文 KV cache 压力。
- **为什么值得跟踪**：它把“可部署模型规模、视觉输入和长上下文”放进一个统一模型家族，适合做本地 Agent 基线。
- **代码/模型**：[google-deepmind/gemma](https://github.com/google-deepmind/gemma)

### 10. [Qwen3 Technical Report](https://arxiv.org/abs/2505.09388)（2025-05）

- **方向**：统一思考/非思考模式、MoE、推理预算。
- **核心贡献**：在同一模型中支持 thinking 与 non-thinking 模式，并允许通过 thinking budget 动态分配推理计算；同时覆盖 dense 和 MoE 规模。
- **为什么值得跟踪**：它是“一个模型根据任务动态选择推理深度”的代表性开放方案，直接关联 Agent 的延迟/质量权衡。
- **代码/模型**：[QwenLM/Qwen3](https://github.com/QwenLM/Qwen3)

### 11. [TinyV: Reducing False Negatives in Verification Improves RL for LLM Reasoning](https://arxiv.org/abs/2505.14625)（2025-05）

- **方向**：RLVR、验证器、推理训练稳定性。
- **核心贡献**：研究轻量级模型验证器如何减少规则验证器的 false negative，并改善奖励信号与收敛。
- **为什么值得跟踪**：验证器质量决定 RLVR 能否扩展到数学之外，是训练 Agent 可靠行为的关键环节。

### 12. [RL^V: Putting the Value Back in RL](https://arxiv.org/abs/2505.04842)（2025-05；后续版本 2026）

- **方向**：推理模型、生成式验证器、测试时扩展。
- **核心贡献**：联合训练推理器与生成式验证器，让模型自己生成和评估候选解，补足只依赖 outcome reward 的 RL 方法。
- **为什么值得跟踪**：它连接了训练期价值估计、验证器和推理时搜索，是从单次生成走向可控搜索的一条路线。

### 13. [SWE-Gym: Training Software Engineering Agents and Verifiers](https://arxiv.org/abs/2412.21139)（2024-12）

- **方向**：代码 Agent、可执行环境、验证器训练。
- **核心贡献**：提供大规模真实软件工程环境、可执行任务和轨迹，支持训练代码 Agent 及其 verifier。
- **为什么值得跟踪**：它把 RL/验证器从数学题扩展到真实仓库和测试反馈，是“工程 Agent 训练数据化”的重要节点。
- **代码/数据**：[SWE-Gym/SWE-Gym](https://github.com/SWE-Gym/SWE-Gym)

### 14. [SWE-RL: Advancing LLM Reasoning via Reinforcement Learning on Open Software Evolution](https://arxiv.org/abs/2502.18449)（2025-02）

- **方向**：软件工程 RL、代码推理。
- **核心贡献**：用开源软件演化记录（代码快照、提交、Issue、PR）和轻量规则奖励训练 Llama3-SWE-RL。
- **为什么值得跟踪**：它证明 RL 的数据源不必是人工推理轨迹，也可以来自真实软件生命周期。
- **代码/模型**：[facebookresearch/swe-rl](https://github.com/facebookresearch/swe-rl)

## 二、推理系统与长上下文效率

### 15. [RetroInfer: A Vector-Storage Approach for Scalable Long-Context LLM Inference](https://arxiv.org/abs/2505.02922)（2025-05）

- **方向**：KV cache、稀疏注意力、CPU/GPU 协同。
- **核心贡献**：把 KV cache 重构为可检索向量存储，利用注意力稀疏性从长上下文中挑选关键 token；报告了最高约 4.5× 的加速。
- **为什么值得跟踪**：Agent 的长期记忆最终要落到可扩展的上下文访问；这篇论文提供了系统层的实现思路。

### 16. [Efficient Long-Context LLM Inference via KV Cache Clustering (Chelsea)](https://arxiv.org/abs/2506.11418)（2025-06）

- **方向**：KV cache 压缩、长上下文服务。
- **核心贡献**：在线对 KV 状态做分块聚类和合并，报告最高约 80% 的 KV 内存削减，同时保持接近原模型效果。
- **为什么值得跟踪**：适合持续观察“上下文越来越长但 GPU 内存不变”的工程路线。

### 17. [LaCache: Ladder-Shaped KV Caching for Efficient Long-Context Modeling](https://arxiv.org/abs/2507.14204)（2025-07）

- **方向**：训练无关的 KV cache 压缩与持续生成。
- **核心贡献**：通过跨层的 ladder-shaped cache 和迭代压缩，在固定存储预算下支持更长的连续生成。
- **为什么值得跟踪**：对长时 Agent 和多轮会话，持续生成期间的 cache 管理比单次长输入更接近实际需求。
- **代码**：[GATECH-EIC/LaCache](https://github.com/GATECH-EIC/LaCache)

### 18. [INFERCEPT: Efficient Intercept Support for Augmented LLM Inference](https://arxiv.org/abs/2402.01869)（2024-05，补充基线）

- **方向**：工具调用中断、Agent 推理服务。
- **核心贡献**：针对工具调用/人工反馈造成的生成中断，保留并调度已有上下文，避免重复计算 KV cache。
- **为什么值得跟踪**：虽然早于本次主时间窗，但它定义了 Agent 推理服务必须解决的核心问题：工具调用会把一次生成拆成多个阶段。

## 三、Agent、工具使用与记忆

### 19. [TheAgentCompany: Benchmarking LLM Agents on Consequential Real World Tasks](https://arxiv.org/abs/2412.14161)（2024-12）

- **方向**：真实工作流 Agent 评测。
- **核心贡献**：构建一个模拟软件公司的可执行环境，覆盖网页浏览、写代码、运行程序、跨角色沟通等任务。
- **为什么值得跟踪**：比单轮问答更接近“数字员工”，可观察长时任务、错误恢复和工具协作。
- **项目页**：[the-agent-company.com](https://the-agent-company.com/)

### 20. [A-MEM: Agentic Memory for LLM Agents](https://arxiv.org/abs/2502.12110)（2025-02）

- **方向**：Agent 长期记忆、动态组织。
- **核心贡献**：借鉴 Zettelkasten，将新记忆组织成带关键词、标签和连接的网络，并允许旧记忆随新信息演化。
- **为什么值得跟踪**：代表了从“向量库检索”走向“Agent 主动组织记忆”的设计方向。
- **代码**：[agiresearch/A-mem](https://github.com/agiresearch/A-mem)、[评测代码](https://github.com/WujiangXu/AgenticMemory)

### 21. [Position: Episodic Memory is the Missing Piece for Long-Term LLM Agents](https://arxiv.org/abs/2502.06975)（2025-02）

- **方向**：长期 Agent、情景记忆。
- **核心贡献**：提出面向长期 Agent 的情景记忆路线图，强调单次经历、时间关系、可检索性、更新和遗忘等属性。
- **为什么值得跟踪**：适合作为记忆系统的概念框架和评测检查清单，而不是单一实现方案。

### 22. [How Memory Management Impacts LLM Agents](https://arxiv.org/abs/2505.16067)（2025-05）

- **方向**：记忆写入/删除策略、经验回放。
- **核心贡献**：实证研究记忆添加和删除如何影响 Agent 行为，揭示错误传播与过期经验错配，并报告选择性增删的收益。
- **为什么值得跟踪**：说明记忆容量增长不是单调有益，写入、删除和分布漂移需要一起设计。

### 23. [Evaluating Memory in LLM Agents via Incremental Multi-Turn Interactions (MemoryAgentBench)](https://arxiv.org/abs/2507.05257)（2025-07）

- **方向**：记忆评测。
- **核心贡献**：提出覆盖准确检索、测试时学习、长程理解和选择性遗忘的多轮增量基准。
- **为什么值得跟踪**：为比较不同记忆系统提供统一测试面，避免只用静态长上下文 QA 代替真正的长期交互评测。

### 24. [Agent S2: A Compositional Generalist-Specialist Framework for Computer Use Agents](https://arxiv.org/abs/2504.00906)（2025-04）

- **方向**：电脑使用 Agent、GUI grounding、分层规划。
- **核心贡献**：将通用模型与定位、规划等专用模型组合，提出 Mixture-of-Grounding 和主动分层规划。
- **为什么值得跟踪**：代表“一个大模型包办所有能力”向多组件协作的演进。
- **代码**：[simular-ai/Agent-S](https://github.com/simular-ai/Agent-S)

### 25. [TRAJECT-Bench: A Trajectory-Aware Benchmark for Evaluating Agentic Tool Use](https://arxiv.org/abs/2510.04550)（2025-10）

- **方向**：工具使用、轨迹级评测。
- **核心贡献**：在多样任务上细粒度评估工具选择、调用顺序、参数、错误恢复和完整轨迹，而非只看最终答案。
- **为什么值得跟踪**：适合衡量 Agent 的过程可靠性，尤其是多工具、多步骤和部分失败场景。

### 26. [Agentic Memory: Learning Unified Long-Term and Short-Term Memory Management](https://arxiv.org/abs/2601.01885)（2026-01）

- **方向**：统一短期/长期记忆、记忆操作策略学习。
- **核心贡献**：把存储、检索、更新、摘要和丢弃作为 Agent 的工具动作，并用分阶段 RL 和 step-wise GRPO 学习何时执行这些动作。
- **为什么值得跟踪**：将记忆从外部启发式模块提升为策略的一部分，是当前“记忆即行动”的代表性工作。

## 四、建议的后续跟踪字段

每天新增内容建议至少记录：

1. **日期、来源类型、主题标签**：训练 / 推理 / Agent / 记忆 / 评测。
2. **标题、论文或项目链接、代码/模型链接**。
3. **一句话摘要**：解决什么问题，采用什么方法。
4. **可复现性**：是否开放代码、权重、数据、评测环境。
5. **与既有条目的关系**：延续、改进、反驳或新方向。
6. **值得继续观察的指标**：效果、训练成本、推理延迟、显存、长程成功率、错误恢复率等。


