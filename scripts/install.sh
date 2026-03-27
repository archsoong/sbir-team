#!/bin/bash
# install.sh — 首次安裝：同步 agent 到 ~/.claude/agents/ + 設定 hook
# clone repo 後執行一次即可

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SBIR_TEAM_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
SETTINGS_FILE="$HOME/.claude/settings.local.json"

echo "=== SBIR Team install ==="
echo ""

# 1. 同步 agent
echo "[1/2] sync agents to ~/.claude/agents/ ..."
bash "$SCRIPT_DIR/sync.sh"

# 2. 設定 hook
echo ""
echo "[2/2] setup hook..."

mkdir -p "$HOME/.claude"

PULL_CMD="bash $SBIR_TEAM_DIR/scripts/pull.sh"

if [ -f "$SETTINGS_FILE" ]; then
  if grep -q "sbir-team/scripts/pull.sh" "$SETTINGS_FILE"; then
    echo "hook exists, skip"
  else
    echo ""
    echo "NOTE: $SETTINGS_FILE exists. Please add this hook manually:"
    echo ""
    echo '  "hooks": {'
    echo '    "SessionStart": [{ "hooks": [{'
    echo '      "type": "command",'
    echo "      \"command\": \"$PULL_CMD\""
    echo '    }]}]'
    echo '  }'
    echo ""
  fi
else
  cat > "$SETTINGS_FILE" << EOF
{
  "hooks": {
    "SessionStart": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "$PULL_CMD",
            "timeout": 30
          }
        ]
      }
    ]
  }
}
EOF
  echo "hook written to $SETTINGS_FILE"
fi

echo ""
echo "=== install done ==="
echo ""
echo "agents installed:"
ls "$HOME/.claude/agents/sbir-"*.md 2>/dev/null | while read f; do echo "  - $(basename $f)"; done
echo ""
echo "pull.sh will run automatically on every Claude Code session start"
echo "after editing sbir-team, run: bash scripts/push.sh"
