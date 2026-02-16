# Tool Policy

Purpose: enforce least privilege and predictable human approval points.

## Allowed by default

- Read files in project workspace.
- Run non-destructive checks: lint, typecheck, unit tests, benchmark read-only runs.
- Generate or update docs in `spec/`, `loops/`, `notes/`.

## Requires human approval

- Any destructive operation: delete, reset, force push, schema drop.
- Changes to production config, secrets, auth, billing, or data retention.
- External network actions that can change remote state.
- Dependency major-version upgrades.

## Prohibited by default

- Writing secrets to source control.
- Skipping mandatory gates in `loops/gates.md`.
- Merging code without review log and eval evidence.

## Role-specific limits

- Planner: docs only.
- Builder: code + tests, no deploy.
- Reviewer: no code writes except review notes.
- Researcher: evidence collection and recommendations only.
