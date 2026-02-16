# Loop Definition

Plan -> Build -> Review -> Research (if needed) -> Patch -> Verify

## Entry conditions

- `spec/PRD.md`, `spec/Interfaces.md`, and `spec/TestPlan.md` exist.
- Role and tool constraints in `agents/tool_policy.md` acknowledged.

## Operating rules

- Every stage writes a handoff using `loops/handoff.md`.
- If uncertainty > 10%, run Research before final implementation.
- If risk matches `loops/escalation.md`, stop and escalate.
- Verify must satisfy all checks in `loops/gates.md`.

## Exit condition

- Required checks passed and evidence logged in `notes/run_log.md`.
