# 2026-07-20 — DL6: non-isolated loops (`loop_isolation(false)`, #46)

## Planning inputs

- dalek-lite agenda DL6, issue #46, driver probe
  `count_loop_isolation.rs` (distilled from the two upstream sites,
  `scalar.rs:2338`/`:3160`): with isolation off, the loop body sees the
  enclosing context's facts (`n <= 1000`) without restating them as
  invariants. The F6 assessment deferred this until corpus demand
  because the non-isolated rule is distinct and must not be inferred
  from the isolated case.
- Verus's recipe read from `sst_to_air.rs` (the AIR comment block):
  non-isolated loops stay in the SAME query — havoc modified vars,
  assume typ_invs + invs, with the enclosing context still in scope;
  nothing is assumed after the loop when control can leave via `break`.
  `ast_to_sst` compiles a non-isolated `while` into a `loop` whose
  condition becomes a leading `cond_stm; if !cond { break }` prefix
  (`simple_while` requires isolation).

## What landed

- **IR**: the loop node grows an optional `noniso` marker
  (`(loop noniso …)`); the isolated form is byte-identical to the old
  grammar. `docs/ir.md` updated.
- **Rust lowering**: recognizes exactly ast_to_sst's canonical
  non-isolated `while` shape, reconstructs the condition, and reuses the
  existing while machinery with `isolated = false`. Any *user*
  break/continue in a non-isolated loop fails closed (`stm_has_break`,
  nested loops included — conservative about labeled breaks): Verus
  assumes nothing after a broken-out non-isolated loop, so our exit
  facts (at-exit invariants + ¬cond) would be too strong there.
- **Lean (NLOOP) rule** (`Vcgen.lean`, `docs/vcgen.md` in-slice): the
  body's hypotheses are the ENCLOSING hypotheses followed by the
  iteration facts; everything else is (LOOP) unchanged. Soundness rests
  on the SSA-style havoc binders: surviving outer facts keep referring
  to pre-loop symbols (Verus's snapshot semantics) while the body reads
  the fresh havoc symbols constrained only by type facts + invariants.
- **Guards**: c189 (outer fact needed for the body's overflow check —
  the isolated variant would fail) and c190 (an outer fact about a
  variable the loop modifies must NOT survive: fails at the assert span
  in both verifiers).
- **Probe flipped**: `count_loop_isolation.rs` **5/5 automatic**, twin
  identical; moved to `run.sh`. `explore.sh` now has NO expected
  boundaries — every measured dalek-lite probe construct lowers.
- **Issue #46 closed** with the resolution note; the sequential
  case-studies' two `_no_spinoff` `vectors.rs` functions are unblocked
  for their next measurement.

## Evidence

- dalek-lite probes: 9/9 green (`run.sh`).
- Differential corpus: **189/189 verdict parity (100%), 92/92
  failure-span agreement** (c189/c190 join).
- Full six-phase suite passed. One in-slice guard update: the DL1
  isolation fixture had used `loop_isolation(false)` as its refused
  construct (its comment anticipated the swap) — it now refuses on
  bitwise NOT, and part (e)'s fully-refused path got its own dedicated
  fixture (`tests/lowering_isolation/fully_refused.rs`) since the
  dalek-lite probe it borrowed lowers now.

## Next executable task

DL7 — vstd drift assessment (their pin `88f7396`, Jan → our July pin):
sweep dalek-lite's vstd imports, classify removed/renamed/changed
lemmas, decide accommodation vs upstream-alignment per case.
