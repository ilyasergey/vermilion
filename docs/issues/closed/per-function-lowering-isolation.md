---
title: Isolate lowering failures per function in large crates
labels: [enhancement, feature]
state: closed
github: 20
---

Large real projects such as Percolator mix immediately supported pure helpers
with engine methods that use constructs outside Vermilion's current fragment.
Whole-crate fail-closed lowering makes one unsupported function hide every
supported function in the same 16,000-line module, forcing manual extraction
before coverage can be measured.

Lower and emit each function independently after the shared declaration/type
environment is built. An unsupported function must produce a span-mapped
diagnostic and no obligations for that function, while supported siblings are
still emitted and judged. Declaration failures that make another function's
meaning ambiguous must continue to fail that dependent function closed.

Add a mixed file with one supported and one deliberately unsupported function,
assert both the successful Lean verdict and the localized refusal, and expose
the per-function disposition in the JSON/run report. This is coverage
tooling, not permission to silently approximate unsupported constructs.

**2026-07-20 — promoted to the front of the queue (DL1).** The dalek-lite
acquisition (`case-studies/dalek-lite/`) makes this the first blocking
tooling item: the crate has 121 interdependent files and today one refusal
(e.g. any of its 24 `choose` sites) suppresses every obligation in the run —
`vermilion_direct`'s refusal path exits the process on the first unsupported
function. Measured driver: `case-studies/dalek-lite/isolation_driver.rs`
(one green function + one `choose` function; currently a whole-run abort,
must become 1 verified + 1 source-mapped disposition). Design note recorded
there: a refused *spec fn* must poison exactly its reference closure — the
reference analysis from per-function emission (`Expr.applies`/`dataRefs`)
already computes it.

**RESOLVED 2026-07-20 (dalek-lite DL1).** `vermilion_direct` now lowers past
refused functions: each refusal prints its span-mapped diagnostic and enters
the textual IR as a `(refused id span MESSAGE)` form (docs/ir.md); the Lean
side records it as a manifest disposition (`"refused": [...]`), emits no
module for it, and `vrml_check` reports every disposition at its span and
keeps the run non-green while any exists (including the twin-check and
coverage fast paths). A fully-refused file keeps the historical whole-run
refusal (exit 1), so `--expect-unsupported` probes retain their meaning.
Soundness: the spec registry caches only successfully lowered spec fns and
per-function state resets on entry, so a refused spec fn fails exactly the
functions that reference it — no obligation is ever emitted with a silently
weakened statement. Guards: `scripts/test_lowering_isolation.sh`
(tests/lowering_isolation/mixed_refusal.rs: Verus 2/2; Vermilion 2 verified
obligations + 1 disposition + non-green exit + fully-refused regression) and
the dalek-lite driver probe
`case-studies/dalek-lite/probes/isolation_driver.rs` (3 verified + 1
disposition, pinned in its explore.sh).
