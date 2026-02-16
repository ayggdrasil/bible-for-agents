# AGENT.md

## Mission

Run a reliable multi-agent coding workflow that minimizes rework and maximizes release quality.

Core loop:

`Plan -> Build -> Review -> Research (if needed) -> Patch -> Verify`

## Roles

- `Planner`: clarify scope, constraints, success criteria, and interface contracts.
- `Builder`: implement in small changes, add tests, update change logs.
- `Reviewer`: identify bugs, regressions, performance risks, security gaps, and missing tests.
- `Researcher`: resolve uncertainty with evidence before risky implementation decisions.

## Required Artifacts

- Requirements and design: `spec/PRD.md`, `spec/ADR.md`
- Contract and validation: `spec/Interfaces.md`, `spec/TestPlan.md`, `spec/Evals.md`
- Runtime and delivery policy: `spec/PerfPlan.md`, `spec/ContextBudget.md`, `spec/DeliveryPolicy.md`
- Execution evidence: `notes/run_log.md`, `notes/change_log.md`, `notes/review_log.md`, `notes/research_log.md`

## Execution Rules

1. Do not start coding until `PRD`, `Interfaces`, and `TestPlan` are present.
2. Keep changes small and reversible.
3. Update logs on every loop iteration.
4. Use `loops/handoff.md` fields for every role transition.
5. If uncertainty is meaningful, run research before final implementation.

## Quality Gates (Must Pass)

- Lint and type checks
- Critical tests and regression tests
- Performance targets from `spec/Evals.md`
- No unresolved high-severity findings
- Evidence recorded in `notes/run_log.md`

Detailed gate policy: `loops/gates.md`

## Safety and Tool Policy

- Follow least-privilege tool usage in `agents/tool_policy.md`.
- Require human approval for destructive or high-impact actions.
- Never bypass mandatory gates for convenience.

## Escalation Rules

Escalate to a human when:

- Security, privacy, legal, or compliance impact is unclear
- Data loss risk exists
- Required eval targets fail and a tradeoff decision is needed

Use `loops/escalation.md` and record decisions in `notes/review_log.md`.

## Recovery Rules

If regression or instability is detected:

1. Stop related merges
2. Restore last known-good state
3. Re-run mandatory gates
4. Record root cause and prevention

Use `loops/recovery.md` for details.

## Definition of Done

A loop is complete only when:

- Required gates pass
- Required logs are updated
- Next action is explicit
- No unresolved release-blocking risk remains

## Starter Prompt

Use this to start each task:

`Run one full loop: Planner -> Builder -> Reviewer -> Researcher if needed -> Patch -> Verify. Enforce loops/gates.md, update required notes files, and report blockers, risks, and next action.`
