# Vermilion workplan

This checklist is retained as a short index. The ported, authoritative plan is
in [`plans/execution-plan.md`](plans/execution-plan.md), with the incremental
computation workstream in
[`plans/incremental-computation.md`](plans/incremental-computation.md). The
locked architecture is:

- retain Verus's unchanged front/middle end, pinned at
  `c569645bd37b00b23d349ef64bafee0aa0a49242`;
- fork at pre-poly-boxing VIR-SST, isolated inside `crates/vermilion_direct`;
- cross the Rust/Lean boundary through the versioned textual IR
  (`docs/ir.md`); Lean parses it with a proper lexer and owns VC generation
  and emission — fragment growth always extends the IR grammar and both of
  its sides in the same slice;
- future milestones (user-requested TODO): give the lowered fragment a formal
  semantics in Lean and make VC generation foundational — derived and proved
  sound against that semantics — instead of the current syntactic generator;
- emit explicit, readable, discharger-independent Lean theorem statements;
- use Lean 4.28.0 and Veil's manager/SMT stack;
- preserve Verus's CLI/JSON and executable-Rust contracts;
- measure every milestone with differential, performance, and axiom ledgers.

## Execution order

Status index only; [`plans/execution-plan.md`](plans/execution-plan.md) is
authoritative for the detail and the exact gate wording behind each line.

- **M0 — automation calibration.** ✅ Infrastructure complete (Lean 4.28 +
  pinned Veil 2.0 package, named prelude + convention probes, 20 hand-translated
  obligations, isolated `grind`/lean-smt/`omega`/`nlinarith` runner). ⏸ Full
  solve-rate matrix and R1 gate **deferred** — VC infrastructure was prioritized
  by user direction (2026-07-12); resume when automation tuning does.
- **M1 — sequential straight-line core.** ✅ **CLOSED 2026-07-12.** Direct
  `FunctionSst` adapter (patched Verus exports the finalized VIR crate;
  `vermilion_direct` reruns the pinned `vir` middle end in process), widened
  straight-line fragment, span-mapped JSON diagnostics (`vrml_check`),
  incremental fingerprints, and the differential subset. Gate met: 12/12 verdict
  parity, 4/4 failure spans.
- **M2 — base camp.** ✅ **CLOSED 2026-07-13** (gate met; two explicit
  carry-overs). Loops/invariants, recursion/decreases, vstd mathematical
  collections, reveal/hide, the Veil manager + discharger ladder, interactive
  overrides, and diagnostics. (Incrementality removed by user decision
  2026-07-13.)
- **M2.5 — interactive experimentation kit.** 🔧 Core workflow landed:
  dual Rust/Lean VS Code verification, staleness diagnostics, bidirectional
  navigation, the getting-started guide (`docs/TUTORIAL.md`), and graded
  examples. Open design TODOs remain in `docs/issues/` (goal display,
  proof assistance/caching, semantic-diff-aware twin-proof co-evolution).
- **M3 — sequential corpus.** 🔧 Feature slices complete
  (datatypes, quantifiers, generics, `Vec` incl. mutation, `&mut`, traits +
  bounds, spec/exec closures, const generics and const-generic spec fns,
  arrays/slices, mutual spec-fn recursion, broadcast groups, user `View`)
  plus the F/V saturation slices. **Gate-project coverage measurement is
  outstanding.** The first external acquisition is complete:
  `case-studies/percolator` verifies 16 unchanged production functions and
  records its exact next-feature boundaries.
- **M4 — specialty provers (Lean-native).** ✅ Feature slices complete:
  `Vermilion.Bits`, isolated real-content `by (bit_vector)` queries,
  `nlinarith`, the beyond-Verus nonlinear showcase, and `by (compute)`.
  The large gate-project measurements (BLAKE3, page tables, rlsf,
  curve25519, ≥75% suite coverage) remain outstanding and join the corpus
  acquisition workstream.
- **Saturation push (F-series/V-series).** ✅ Landed through the current
  137-case differential corpus and the verified merge-sort/sorting studies;
  `loop_isolation(false)` remains deliberately deferred. Percolator is the
  first completed external-project acquisition; the next explicit stage is
  chosen from its synchronized issues or the remaining ladder in
  `docs/reports/target-projects.md`.
- **Per-function emission (2026-07-19).** ✅ Landed as the default layout:
  one generated unit module per function around a shared imported `Specs`
  module, parallel unit checking, mirrored per-function proof twins with
  hash-keyed cross-mode migration, `--per-file` preserved; mode-invariant
  verdicts asserted by `scripts/test_emission_modes.sh`.
- **Aeneas SHA-3 frontier (2026-07-19).** 🔧 The complete project remains in
  pristine and annotated copies; unchanged `iota` and `rho` are 29/29 with no
  `sorry` (ρ: 13 automatic + 4 interactive). Exact unsigned rotation is pinned
  at Verus `a33ad1534`; c158/c159 make parity 158/158 with 76/76 failure spans.
  Source erasure covers 42 typed regions. π and χ are next, then θ. Proof and
  arbitrary generated roots with sibling `Specs` are editor-resolvable.
- **M5 / M6 / M7 — widening.** ⬜ Not started: ghost memory; concurrency;
  temporal/liveness. Coverage rises monotonically toward dispositioning 100% of
  the Verus suite at M7; no earlier green gate may regress.
- **M8 — project-level verification.** ⬜ Deferred post-parity by user
  direction (2026-07-13) — only after the language features above reach Verus
  parity.

## Per-change definition of done

- relevant builds and tests pass;
- no new `axiom`, `sorry`, or trusted boundary lacks a ledger entry;
- semantic conventions are named in `Vermilion/Prelude` and probe-tested;
- performance regressions over 20% are explained;
- progress and exact verification commands are appended under `logs/`;
- each coherent, green milestone is committed separately.
