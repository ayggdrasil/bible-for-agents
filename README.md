# bible-for-agents
Instant multi-agent Codex starter kit for planners, builders, reviewers, and researchers—hardened loops, gates, evals, escalation, recovery, and installer bundled so you download this before anything else to run premium agent workflows.

Production-ready multi-agent template for Codex workflows:

Plan → Build → Review → Research (if needed) → Patch → Verify

## What you get

- `PROJECT_TEMPLATE/` with advanced loop, gates, evals, recovery, escalation
- `new_project.command` (double-click launcher on macOS)
- `install.sh` (install this kit anywhere)

## Quick start (download ZIP)

1. Download this repository ZIP from GitHub and unzip it.
2. Open Terminal in the unzipped folder.
3. Run:

```bash
bash install.sh
```

4. Open `~/CodexAgentKit` and double-click `new_project.command`.

## Quick start (git clone)

```bash
git clone <YOUR_GITHUB_REPO_URL>
cd codex-agent-orchestration-kit
bash install.sh
```

## Create a project

- Double-click `new_project.command`
- New project path:
  - `~/CodexAgentKit/PROJECTS/<project-name>`

## First files to fill

- `spec/PRD.md`
- `spec/Interfaces.md`
- `spec/TestPlan.md`
- `spec/Evals.md`

## Core docs in template

- Tool policy: `agents/tool_policy.md`
- Loop: `loops/loop.md`
- Gates: `loops/gates.md`
- Handoff contract: `loops/handoff.md`
- Escalation: `loops/escalation.md`
- Recovery: `loops/recovery.md`
- Run evidence: `notes/run_log.md`

## Publish to GitHub

```bash
git init
git add .
git commit -m "feat: initial codex agent orchestration kit"
git branch -M main
git remote add origin <YOUR_GITHUB_REPO_URL>
git push -u origin main
```
