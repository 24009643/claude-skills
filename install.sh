#!/usr/bin/env bash
# 把本仓库 skills/ 下的每个技能,软链接到 ~/.claude/skills/。
# 软链接的好处:仓库一 git pull,已安装的 skill 立即跟着更新。
set -euo pipefail

dest="${HOME}/.claude/skills"
src="$(cd "$(dirname "${BASH_SOURCE[0]}")/skills" && pwd)"

mkdir -p "$dest"

count=0
for path in "$src"/*/; do
  name="$(basename "$path")"
  ln -sfn "$path" "$dest/$name"
  echo "linked  $name  ->  $dest/$name"
  count=$((count + 1))
done

echo "完成,共链接 $count 个技能。在 Claude Code 里用 /<skill-name> 调用。"
