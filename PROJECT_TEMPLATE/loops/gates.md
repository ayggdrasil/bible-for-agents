# Quality Gates

## Mandatory checks

- Lint and typecheck pass.
- Critical tests pass.
- Performance targets met.
- Evaluation thresholds in `spec/Evals.md` pass.

## Blocking conditions

- Any Sev-1 or Sev-2 unresolved review finding.
- Any missing evidence in `notes/run_log.md` for required checks.
- Any required human escalation decision still open.

## Exception process

- Exception must include owner, reason, risk, expiration date.
- Exception approval must be recorded in `notes/review_log.md`.
