# Evals

Purpose: define measurable pass/fail standards to reduce rework.

## Functional metrics

- Critical path pass rate: >= 99% on CI runs.
- Regression suite: 100% required tests pass.

## Performance metrics

- p95 latency target: [fill target ms]
- Throughput target: [fill req/s or jobs/min]
- Memory ceiling: [fill MB]

## Quality metrics

- Lint errors: 0
- Type errors: 0
- Sev-1 or Sev-2 review findings: 0 open at merge time.

## Evaluation protocol

- Baseline before change.
- Compare after change.
- Record results in `notes/run_log.md` with timestamp and command.

## Release gate

Release is blocked if any required metric fails without an approved exception note.
