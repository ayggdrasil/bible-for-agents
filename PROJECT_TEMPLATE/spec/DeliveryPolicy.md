# Delivery Policy

Purpose: standardize branch, CI, and merge requirements.

## Branch policy

- Use short-lived feature branches.
- One concern per branch.
- Rebase or merge with main before final verification.

## Required CI checks

- Lint
- Typecheck
- Unit and integration tests on critical paths
- Evals defined in `spec/Evals.md`

## Merge checklist

- Review findings resolved or explicitly accepted.
- `notes/review_log.md` updated.
- `notes/run_log.md` includes final gate evidence.
- Changelog entry added.

## Post-merge

- Smoke test in target environment.
- If regression appears, follow `loops/recovery.md`.
