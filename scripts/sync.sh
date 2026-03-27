#!/bin/bash
# sync.sh — 從 agents/ 生成 ~/.claude/agents/ 的執行檔
# 會自動把 agent 裡的相對路徑轉成絕對路徑

set -e
export LANG=en_US.UTF-8

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SBIR_TEAM_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

SOURCE_DIR="$SBIR_TEAM_DIR/agents"
TARGET_DIR="$HOME/.claude/agents"

if [ ! -d "$SOURCE_DIR" ]; then
  echo "error: $SOURCE_DIR not found"
  exit 1
fi

mkdir -p "$TARGET_DIR"

for src_file in "$SOURCE_DIR"/*.md; do
  filename=$(basename "$src_file")

  if [[ "$filename" == "README.md" ]]; then
    continue
  fi

  agent_name="${filename%.md}"
  first_line=$(grep -v "^#" "$src_file" | grep -v "^$" | grep -v "^---" | head -1)

  tmp_file="$TARGET_DIR/${filename}.tmp"
  cp "$src_file" "$tmp_file"

  # 替換路徑：相對路徑轉成絕對路徑
  sed -i '' "s|\`shared/|\`$SBIR_TEAM_DIR/shared/|g" "$tmp_file"
  sed -i '' "s|\`skills/|\`$SBIR_TEAM_DIR/skills/|g" "$tmp_file"
  sed -i '' "s|\`agents/|\`$SBIR_TEAM_DIR/agents/|g" "$tmp_file"

  if head -1 "$tmp_file" | grep -q "^---"; then
    mv "$tmp_file" "$TARGET_DIR/$filename"
  else
    printf '%s\n' "---" "name: $agent_name" "description: \"$first_line\"" "tools: [Read, Write, Edit, Bash, Glob, Grep]" "---" "" > "$TARGET_DIR/$filename"
    cat "$tmp_file" >> "$TARGET_DIR/$filename"
    rm "$tmp_file"
  fi

  echo "sync: $filename -> $TARGET_DIR/$filename"
done

echo "done"
