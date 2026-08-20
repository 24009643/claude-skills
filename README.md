# claude-skills

> 一组给 [Claude Code](https://docs.claude.com/en/docs/claude-code) 用的自定义 Skill。每个技能独立成库,放在 `skills/<name>/` 下。

## 什么是 Skill?

Skill 是一份写给 Claude 的"操作说明书":当你的任务属于某一类(某套评审清单、某个工作流、某种判断框架)时,Claude 会**加载它、按里面的规范来做**,而不是用默认方式。一个 skill 就是一个目录,核心是带 YAML frontmatter 的 `SKILL.md`,外加可选的 `references/` 深度文档。

## 目录结构(分库)

```
claude-skills/
├── README.md
├── LICENSE
├── install.sh                     # 一键把 skills/ 下所有技能软链到 ~/.claude/skills/
└── skills/
    └── engineering-philosophy/    # 每个 skill 一个独立子库,自带 README
        ├── README.md
        ├── SKILL.md
        └── references/
```

## 技能清单

| Skill | 一句话 | 触发方式 |
|---|---|---|
| [engineering-philosophy](skills/engineering-philosophy) | 给**非科班的 Vibe Coding 者**:看穿你用 AI 做出来的东西——每一层是什么、是真是假、这次该做多真,让 vibe coding 更全面、更具体 | 显式点名 `/engineering-philosophy` |

> 👉 想 3 分钟明白它干嘛,直接看那个[「读书笔记 App」的实际例子](skills/engineering-philosophy#一个实际例子)。

## 安装

Claude Code 的用户级 skill 放在 `~/.claude/skills/`。两种方式:

**软链接(推荐,仓库一更新就自动生效):**

```bash
./install.sh
```

**手动复制单个技能:**

```bash
cp -R skills/engineering-philosophy ~/.claude/skills/
```

装好后,在 Claude Code 里用 `/engineering-philosophy` 调用。

## 设计原则

这些 skill 自己也遵守它们所倡导的工程思维:**结构分库、每个模块自文档、只做够用的抽象、冗余就删**。`engineering-philosophy` 本身是一场"多模型分角色辩论 + 裁判综合 + 对抗式审查 + 深度瘦身"的产物——完整取舍记录在它的 [`references/debate-synthesis.md`](skills/engineering-philosophy/references/debate-synthesis.md)。

## License

[MIT](LICENSE) © 2026 Zohe
