# SBIR Team Setup

## Install

```bash
git clone <repo-url> sbir-team
cd sbir-team
bash scripts/install.sh
```

This will:
1. Generate agent files to `~/.claude/agents/` (with correct absolute paths)
2. Set up a SessionStart hook so agents auto-update on every Claude Code launch

## Daily Use

### Auto (on session start)

Every time you open Claude Code, the hook runs `pull.sh`:
1. `git pull` to get latest changes
2. Re-sync agents to `~/.claude/agents/` with updated paths

You don't need to do anything.

### Push changes

After modifying anything in sbir-team:

```bash
bash scripts/push.sh
```

This will sync agents, commit, and push. Others get the update on their next session start.

### Manual sync (no git)

Just update local `~/.claude/agents/` without pull or push:

```bash
bash scripts/sync.sh
```

## Commands

| Command | What it does | When to use |
|---------|-------------|-------------|
| `scripts/install.sh` | sync + setup hook | First time only |
| `scripts/pull.sh` | git pull + sync | Auto on session start, or manual |
| `scripts/push.sh` | sync + git commit + push | After editing sbir-team |
| `scripts/sync.sh` | agents/ -> ~/.claude/agents/ | Called by others, rarely manual |
