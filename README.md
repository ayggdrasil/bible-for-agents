# bible-for-agents
If you run coding agents, install this first.

This project is not a prompt pack. It is an operating system for agent-driven delivery:

Plan -> Build -> Review -> Research (if needed) -> Patch -> Verify

## What this project means

Most teams do not fail because of model quality. They fail because execution is inconsistent:

- unclear handoffs
- missing quality gates
- weak rollback and escalation rules
- no evidence trail for what was done and why

`bible-for-agents` standardizes that chaos into a repeatable system your team can trust.

## Concrete outcomes

- Faster execution with fewer rewrite cycles
- Higher release confidence from required gates and eval thresholds
- Lower operational risk from escalation and recovery playbooks
- Better decision quality because every run leaves an auditable log

## Who should use this

- founders and operators shipping with small teams
- developers managing multi-agent workflows
- non-developers who need a safe, structured way to run coding agents

## Why teams adopt it quickly

- install in minutes with `install.sh`
- create projects in one click with `new_project.command`
- start with a complete structure, not a blank repo
- enforce standards without building internal process docs from scratch

## One-command install (CLI and IDE)

Run this in Terminal, or in your IDE terminal (VS Code, Cursor, JetBrains):

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/ayggdrasil/bible-for-agents/main/bootstrap.sh)
```

Install to a custom path and overwrite existing installation:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/ayggdrasil/bible-for-agents/main/bootstrap.sh) --target "$HOME/CodexAgentKit" --force
```

After install:

1. Open `~/CodexAgentKit`
2. Double-click `new_project.command`
3. Enter your project name

## What you get

- `PROJECT_TEMPLATE/` with advanced loop, gates, evals, recovery, escalation
- `new_project.command` for 1-click project creation on macOS
- `install.sh` for quick installation to any local directory
- `bootstrap.sh` for one-command GitHub installation

## Update: 0001Codex_setup

This repository was expanded from a simple template into a full multi-agent coding operating model.

- Multi-agent roles: `Planner`, `Builder`, `Reviewer`, `Researcher`
- Fixed execution loop: `Plan -> Build -> Review -> Research (if needed) -> Patch -> Verify`
- Artifact-first workflow: specs, interfaces, ADRs, test plans, perf plans, and logs
- Reuse-first setup: clone once, create many projects from `PROJECT_TEMPLATE/`
- Non-developer onboarding: 1-click project creation with `new_project.command`

### Capability map

- `agents/roles/*`: role responsibilities and scope boundaries
- `agents/prompts/*`: task prompts for planning, design, review, research
- `agents/checklists/*`: quality, performance, and security checklists
- `agents/tool_policy.md`: tool permission model and approval rules
- `loops/loop.md`: execution states and transition rules
- `loops/gates.md`: mandatory quality gates before release
- `loops/handoff.md`: required handoff contract between agents
- `loops/escalation.md`: human-in-the-loop escalation triggers
- `loops/recovery.md`: rollback and recovery playbook
- `spec/Evals.md`: quantitative pass/fail thresholds
- `spec/ContextBudget.md`: context and memory budget controls
- `spec/DeliveryPolicy.md`: branch, CI, and merge requirements
- `notes/run_log.md`: auditable evidence for each run

### Why this matters

- You reduce rework by locking interfaces and quality gates early.
- You reduce risk with explicit escalation and recovery rules.
- You improve team clarity because every agent step leaves evidence.

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

## Create your first project

- Double-click `new_project.command`
- Project output path: `~/CodexAgentKit/PROJECTS/<project-name>`
- Fill first: `spec/PRD.md`, `spec/Interfaces.md`, `spec/TestPlan.md`, `spec/Evals.md`

## Core system docs

- Tool policy: `agents/tool_policy.md`
- Loop definition: `loops/loop.md`
- Quality gates: `loops/gates.md`
- Handoff contract: `loops/handoff.md`
- Escalation rules: `loops/escalation.md`
- Recovery playbook: `loops/recovery.md`
- Run evidence log: `notes/run_log.md`

## Publish to GitHub

```bash
git init
git add .
git commit -m "feat: initial codex agent orchestration kit"
git branch -M main
git remote add origin <YOUR_GITHUB_REPO_URL>
git push -u origin main
```
