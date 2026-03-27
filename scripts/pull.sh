#!/bin/bash
# pull.sh — git pull + 同步 agent 執行檔
# 由 hook 在 session 啟動時自動呼叫

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

cd "$REPO_ROOT"

# git pull（如果有 remote）
if git remote | grep -q origin; then
  git pull --rebase origin "$(git branch --show-current)" 2>/dev/null || true
fi

# 同步 agent
bash "$SCRIPT_DIR/sync.sh"
