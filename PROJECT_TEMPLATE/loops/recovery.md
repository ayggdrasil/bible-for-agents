# Recovery Playbook

Purpose: restore known-good state fast after regression.

## Trigger conditions

- Critical test failures post-merge.
- p95 latency exceeds target by agreed threshold.
- Error rate exceeds baseline threshold.

## Steps

1. Freeze further merges affecting the same area.
2. Identify last known-good commit/build.
3. Roll back or hotfix with minimal scope.
4. Re-run required gates in `loops/gates.md`.
5. Document root cause and prevention in `notes/review_log.md`.

## Re-entry condition

Normal development resumes only after all required gates pass.
