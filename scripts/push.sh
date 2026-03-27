#!/bin/bash
# push.sh — 同步 agent + git add/commit/push
# 在你改完 sbir-team 後執行

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SBIR_TEAM_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$SBIR_TEAM_DIR"

# 先同步 agent 到 ~/.claude/agents/
bash "$SCRIPT_DIR/sync.sh"

# 判斷是否在 git repo 內
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
  echo "not in a git repo, sync done but no push"
  exit 0
fi

REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

# git add
git add .

if git diff --cached --quiet; then
  echo "nothing to push"
  exit 0
fi

echo ""
echo "changes to commit:"
git diff --cached --stat
echo ""
read -p "commit message (Enter for default): " msg
if [ -z "$msg" ]; then
  msg="update: sbir-team"
fi

git commit -m "$msg"

if git remote | grep -q origin; then
  git push origin "$(git branch --show-current)"
  echo "pushed"
else
  echo "committed (no remote)"
fi
