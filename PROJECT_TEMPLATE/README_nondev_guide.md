# 1-page guide for non-developers

This template runs projects with a controlled loop:

Plan -> Build -> Review -> Research (if needed) -> Patch -> Verify

## 1. Create a new project

Double-click:

`/Users/kang/Desktop/00_Setups/0001Codex_setup/new_project.command`

It asks for a project name and creates:

`/Users/kang/Desktop/00_Setups/0001Codex_setup/PROJECTS/<project-name>`

## 2. Fill these first

- `spec/PRD.md` (what and why)
- `spec/Interfaces.md` (input and output)
- `spec/TestPlan.md` (how success is checked)
- `spec/Evals.md` (numeric pass/fail targets)

## 3. Run with Codex

Use these requests in order:

- "Planner role: refine PRD and Interfaces."
- "Builder role: implement and add tests."
- "Reviewer role: report only bugs, regressions, performance risks, and test gaps."
- "Researcher role: resolve unclear points with evidence."

## 4. What makes this an advanced version

- Strict handoff format: `loops/handoff.md`
- Human escalation rules: `loops/escalation.md`
- Recovery playbook: `loops/recovery.md`
- Tool permission policy: `agents/tool_policy.md`
- Quantitative gates: `loops/gates.md` + `spec/Evals.md`
- Evidence log for every run: `notes/run_log.md`

## 5. Merge or release only when

- All mandatory gates pass.
- No unresolved severe review findings.
- Run evidence is recorded in `notes/run_log.md`.
