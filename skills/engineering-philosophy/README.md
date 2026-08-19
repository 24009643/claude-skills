# 工程哲学 · engineering-philosophy

> 给业余 / 非技术出身产品经理的一套「工程判断法」:在 Vibe Coding(用 AI 辅助编程)做 **Demo / POC / MVP** 时,判断该在哪一层作弊、哪一层动真格,以及前后端如何协同。

它不教你写代码,教你分清一件事:你手里那个"能跑"的东西,到底是**证据**(证明了某件真事),还是**幻觉**(看着像、其实啥也没证明)。

## 一句话核心

> **你不是在写软件,你是在制造证据。**
> 严谨度跟着阶段走,诚实度不跟阶段走。

## 什么时候触发

**仅显式点名**——在 Claude Code 里输入 `/engineering-philosophy`,或说"用工程哲学 skill 审一下 / 拆一下"。它**不会**因为你聊到 demo、前后端就自动跳出来。

## 文件结构

| 文件 | 内容 |
|---|---|
| [`SKILL.md`](SKILL.md) | 操作骨架:核心哲学 · 三阶段模型(Demo/POC/MVP)· 五条原则(each 带"违反信号")· 决策程序 · 阶段滑移预警 |
| [`references/mental-models.md`](references/mental-models.md) | 最小技术心智模型(餐厅隐喻:前端 = 大堂、后端 = 厨房冷库、契约 = 点菜单)+ "你在哪里作弊"对照表 |
| [`references/faking-ladder.md`](references/faking-ladder.md) | 作弊的六级阶梯、每级成本(含 2026 BaaS 修正)与天花板;纵切原则 |
| [`references/failure-catalog.md`](references/failure-catalog.md) | PM Vibe Coding 的十种死法(症状 + 翻车 + 纪律)+ 三阶段红线 |
| [`references/debate-synthesis.md`](references/debate-synthesis.md) | 来历:五个模型辩论"严谨 vs 速度"后的三条裁决 |

## 三阶段一览

| | Demo | POC | MVP |
|---|---|---|---|
| 回答的问题 | 能不能"演"出来? | 技术上成不成? | 有没有人真会用 / 付钱? |
| 能作弊到多狠 | 几乎全假 | 只把风险点做真 | 这条线上必须真:能存、能登录、别串数据 |

## 怎么来的

这套框架是一场**多模型分角色辩论**(前端 / 后端 / 前后端契约 / 红队 / 速度务实派)+ 一个裁判(Opus 4.8)综合,再经**对抗式审查 + 正交维度深度优化**打磨出来的。它自己就是"匹配投入与问题、冗余就删"这套工程思维的产物。
