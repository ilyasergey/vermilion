# 2026-07-17 — Refresh the sequential case-study report

`docs/reports/sequential-case-studies.md` had a current summary table above a
stale 2026-07-14 body. The body still presented landed opaque spec functions,
range loops, condition-side mutable-reference resolution, and `Vec::pop` as
future or deferred work; it also attributed already-fixed update/iterator gaps
to `reverse_no_spinoff`.

The report is now organized around current evidence:

- one complete verified/partial/blocked/research table;
- the 144/144 verdict and 69/69 span checkpoint;
- driver-specific Percolator, Entry API, statics, recursion, and Aeneas
  blockers, linked to synchronized issues where available;
- the same ordered next work as `plans/execution-plan.md`;
- a compact historical `vectors.rs` appendix whose dispositions are updated
  to today (only `loop_isolation(false)` remains for the duplicate
  `_no_spinoff` variants);
- current reproduction commands and reporting rules.

The long obsolete implementation sketches were removed. Landed F1–F7/S4
work remains recorded as a concise evidence table pointing to examples and
differential guards. All local Markdown links in the refreshed report were
checked to resolve. No implementation or VC-generation behavior changed.
