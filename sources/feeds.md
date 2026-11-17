# 每日检索入口与采编规则

> 覆盖：训练、后训练、推理、Agent、记忆、RSI（recursive self-improvement，递归自我改进）、持续学习、自进化系统与自动化 AI 研究。入口核查日期：2026-11-17；动态页面、登录墙或失效入口应记录并寻找替代，不能算作已读。

## 一、新闻与官方公告

每日同时查看官方源、中文资讯、英文资讯和社区，不能只看少数框架的 release。

### 官方源（事实核验优先）

- [OpenAI News](https://openai.com/news/)、[Anthropic News](https://www.anthropic.com/news)、[Anthropic Research](https://www.anthropic.com/research)
- [Google DeepMind](https://deepmind.google/blog/)、[Google AI Blog](https://blog.google/technology/ai/)、[Meta AI](https://ai.meta.com/blog/)
- [Qwen 新官网](https://qwen.ai/)、[Qwen GitHub](https://github.com/QwenLM)、[DeepSeek GitHub](https://github.com/deepseek-ai)
- [Hugging Face Blog](https://huggingface.co/blog)、[Microsoft Research](https://www.microsoft.com/en-us/research/blog/)、[NVIDIA 技术博客](https://developer.nvidia.com/blog/)
- [vLLM](https://vllm.ai/blog)、[LMSYS/SGLang](https://www.lmsys.org/blog/)

### 中文资讯与社区（发现线索与不同视角）

- [机器之心](https://www.jiqizhixin.com/)、[量子位](https://www.qbitai.com/)、[53AI 资讯聚合](https://www.53ai.com/)、[雷峰网 AI](https://www.leiphone.com/)、[InfoQ 中文](https://www.infoq.cn/)
- [LINUX DO](https://linux.do/)、[V2EX 技术讨论](https://www.v2ex.com/)、[知乎](https://www.zhihu.com/)、[ModelScope 社区](https://modelscope.cn/)
- 53AI 为聚合入口，可能转载其他媒体；新智元等公众号文章应核查署名和原始发布地址，不能把聚合站当作作者官网。
- 搜索关键词组合：大模型 / 智能体 / 自进化 / 递归自我改进 / 持续学习 / 记忆 / 开源 / 推理优化；搜索引擎按站点与日期过滤公开文章。

### 英文资讯与论坛

- [Hacker News](https://news.ycombinator.com/)、[Show HN](https://news.ycombinator.com/show)
- [Reddit LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/)、[MachineLearning](https://www.reddit.com/r/MachineLearning/)
- [Hugging Face Posts](https://huggingface.co/posts)、[Hugging Face Forums](https://discuss.huggingface.co/)
- [LessWrong](https://www.lesswrong.com/)、[AI Alignment Forum](https://www.alignmentforum.org/)：RSI、自动化研究和评测讨论，区分论证、预测和实验事实。
- [Simon Willison](https://simonwillison.net/)、[Latent Space](https://www.latent.space/)、[The Batch](https://www.deeplearning.ai/the-batch/)、[MIT Technology Review AI](https://www.technologyreview.com/topic/artificial-intelligence/)、[TechCrunch AI](https://techcrunch.com/category/artificial-intelligence/)
- X 等社交媒体只在有公开原帖、作者身份与日期可核查时用作线索，不依赖登录后信息。

## 二、论文（独立于新闻采集）

- [arXiv cs.AI](https://arxiv.org/list/cs.AI/recent)、[cs.LG](https://arxiv.org/list/cs.LG/recent)、[cs.CL](https://arxiv.org/list/cs.CL/recent)
- 扩展至 [cs.MA](https://arxiv.org/list/cs.MA/recent)、[cs.DC](https://arxiv.org/list/cs.DC/recent)、[cs.RO](https://arxiv.org/list/cs.RO/recent)、[cs.CV](https://arxiv.org/list/cs.CV/recent)、[stat.ML](https://arxiv.org/list/stat.ML/recent)，按相关性筛选，不限制在列表首页。
- [Hugging Face Daily Papers](https://huggingface.co/papers)：发现社区关注的论文，投票和推荐日期不能当作首次发表日期。
- [OpenReview](https://openreview.net/)、[ACL Anthology](https://aclanthology.org/)、[PMLR](https://proceedings.mlr.press/)、[MLSys](https://proceedings.mlsys.org/)；关注 ICLR、ICML、NeurIPS、ACL/EMNLP、COLM、MLSys 及相关 workshop。
- [Semantic Scholar](https://www.semanticscholar.org/)、[Google Scholar](https://scholar.google.com/)用作发现与引用线索，结论回原论文核对。
- Papers with Code 仅作可选历史入口；不可访问时改查作者仓库、论文项目页和 HF Papers，不以失败入口结束检索。

### 论文专题检索词（英文与中文轮换）

1. RSI：recursive self-improvement、self-improving / self-evolving agents、self-modifying agents、Gödel / Darwin Gödel machine、meta-learning、automated AI research、AI scientist、research agents、open-ended learning、自进化、递归自我改进、自动化科研。
2. 训练：continual / lifelong / online learning、test-time training / adaptation、reinforcement learning、GRPO、synthetic data、self-play、curriculum、distillation、catastrophic forgetting。
3. 推理与系统：test-time compute、speculative decoding、KV cache、quantization、sparse / linear attention、MoE、distributed training / serving、kernel、reasoning efficiency。
4. Agent 与记忆：tool use、planning、multi-agent、coding / browser agents、long-horizon、agent memory、episodic / procedural memory、memory consolidation、retrieval、forgetting、benchmark。
5. 相邻领域：多模态、世界模型、具身智能、AI for Science、安全与评测；优先与学习、推理或自主研究有直接联系的工作。

RSI 条目需区分固定模型的反思/提示词优化、代码或工具演化、权重更新，以及改进“改进机制”本身；记录外部反馈、计算预算、独立测试与跨轮收益，不能把所有自我纠错都称为 RSI。

## 三、开源项目

- [GitHub Trending](https://github.com/trending)、[HF Models](https://huggingface.co/models)、[HF Spaces](https://huggingface.co/spaces)
- 既有项目基线的 Releases、CHANGELOG、重大合并 PR；新增项目可从论文作者仓库、论坛原创发布与技术文章发现。
- 扩展到自进化 Agent、自动化科研、持续学习与评测项目。星标数仅作线索，记录具体技术变化；例行 nightly 不计重大进展。
- 核对版本/tag/commit、发布时间、许可证原文件、代码和权重各自许可、复现入口。无许可证写明“未发现明确许可证”，不能推断可自由使用。

## 四、窗口、去重与信息量

- 新闻优先过去 24 小时；不足时查过去 72 小时，独立标为“近期补充”，记录原始日期。周末不强行制造新发布。
- 论文每天同时查“24 小时新提交/实质修订”和“近 7 天首次收录精选”；专题可补近 30 天工作，标为专题补读，不伪装当日首发。arXiv 公告日、v1 日期、最新修订日与发现日分别核对。
- 新闻、论文、项目各自独立选材。同一成果只计一个主事件，其他栏目用一句交叉引用；多家转载合并为一条。
- 目标为新闻 5–10 条、论文 3–6 篇、项目 2–5 项；这是检索深度目标而非配额，不用弱相关内容或例行构建凑数。
- 每天至少尝试官方源、中文媒体、英文媒体、中文社区、英文社区、论文索引、项目更新七类入口；每类优先两处独立入口。失败记录原因并换源。
- 去重使用 arXiv ID/DOI、规范化原始 URL、项目+版本/提交、事件主体+发布日期；先搜历史记录。论文实质修订需写清与旧版差异。
- 完成上述扩展后仍不足则报告实际数量与检索限制；不能因列表首页日期较旧就推断整个领域没有进展。

## 五、证据与栏目分工

- 新闻：产品/公司/产业/政策/研究公告与社区讨论。论坛帖附标题、作者/社区、日期、讨论链接和讨论焦点；无原始证据的消息标“社区观点/待核验”，不当作已证实事实。
- 论文：标题、作者、原始日期/版本、问题、方法、关键证据与限制、代码/模型链接、为何值得读；需实际读摘要及方法/结果相关段落，不复制新闻摘要。
- 项目：版本/提交、具体变化、用途、许可证、部署或复现条件；无公开代码的模型公告归新闻。
- 对每条信息区分已核验事实、作者自报指标、评论与本日报判断。若只能读到摘要或媒体转述，明确说明。
- 日报末写“检索覆盖与缺口”：实际访问入口、不可访问入口、各类新增/近期精选/待核验数量，以及主事件去重数量。
