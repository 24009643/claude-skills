# claude-skills

> **专门为 [Claude(Claude Code)](https://docs.claude.com/en/docs/claude-code) 生态打造的自定义 skill 合集。** 每个 skill 对应一种能力、独立成库,放在 `skills/<name>/` 下。
>
> 这个仓库本身是个"总目录",它只讲清两件事:**① 这是为 Claude 做的、② 现在收录了哪些 skill**。每个 skill 具体干嘛、怎么用,进它自己的文件夹看。

## 什么是 Skill?

Skill 是一份写给 Claude 的"操作说明书":当你的任务属于某一类(某套评审清单、某个工作流、某种判断框架)时,Claude 会**加载它、按里面的规范来做**,而不是用默认方式。一个 skill 就是一个目录,核心是带 YAML frontmatter 的 `SKILL.md`,外加可选的 `references/` 深度文档。

## 为 Claude 生态而做

这里的 skill 都是**按 Claude Code 的 skill 机制**做的:一个带 frontmatter 的 `SKILL.md`、靠显式点名触发、装在 `~/.claude/skills/`。所以它们服务的是 **Claude 生态**。

> **想搬到别的 agent(比如 OpenAI Codex CLI)?** skill 的*内容*(例如"工程判断"本身)跟工具无关、能直接复用;但*打包与触发的方式*是 Claude Code 的约定——迁到别的工具时,内容照搬,规则要按目标工具各自的约定做细微调整。

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

这些 skill 自己也遵守它们所倡导的工程思维:**结构分库、每个模块自文档、只做够用的抽象、冗余就删**。

## License

[MIT](LICENSE) © 2026 Zohe
