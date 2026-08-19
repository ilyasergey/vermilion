# M1 differential verdict report

Method: every case in `tests/differential/` runs twice — once through the
pinned Verus with full SMT verification, once through the Vermilion pipeline
(front end + direct SST adapter + Lean via `vrml_check`). A case passes when
both verifiers agree with each other and with the expectation encoded in the
case header; for rejections, the primary failure line must also match.
Regenerate with:

```console
python3 scripts/run_differential.py
```

The generated table lands in `docs/reports/generated/differential-m1-results.md`
(untracked). Snapshot as of 2026-07-12, twelve cases (eight provable, four
deliberately wrong):

- **Verdict parity: 12/12 (100%)** — formal M1 gate is ≥95%.
- **Failure-span agreement: 4/4** — Verus and Lean point at the same line for
  every rejection (failed assertion, overflow, postcondition, call
  precondition).

Coverage caveat: the corpus is a curated M1 straight-line set, not yet the
tagged `rust_verify_test` extraction; widening the corpus tracks the fragment
as M2 lands loops, recursion, and collections. The script exits nonzero if
parity ever drops below the gate, so it can run in CI.
