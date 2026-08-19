# 2026-07-20 — DL3: macro-expansion span attribution (#44)

## Planning inputs

- dalek-lite agenda DL3, issue #44, driver probe
  `montgomery_inverse_calc.rs` (verbatim `lemma_montgomery_inverse` with a
  `calc!` chain): the lemma lowered to 4 obligations but the expansion
  span attributed the function to `vstd/calc_macro.rs`, colocating output
  into a spurious `vstd/generated/` tree.
- Per the user's 2026-07-20 policy, `calc!` gets NO dedicated machinery —
  its step claims are ordinary obligations and the `{}` scripts are
  droppable — so the entire defect is the span attribution.

## What landed

- **Fork `ilyasergey/verus` dev `486008364`** — `to_air_span`
  (`rust_verify/src/spans.rs`) resolves macro-expansion spans to their
  **source call site**, rustc's own diagnostic practice; ordinary
  `verus!{}` token spans are call-site spans already and are unaffected.
  One accommodation, no Vermilion-side lowering/IR/VCGen change.
- **Pin bumped** to `48600836424a` (`scripts/setup_verus.sh`).
- Probe moved to the green gate; the explore.sh known-defect arm (and its
  `rm -rf vstd` cleanup hack) removed.

## Evidence

- Fork native: basic 62 passed / 0 failed / 1 ignored; functions 11/11;
  release vstd 1,972 verified / 0 errors (vargo build).
- Vermilion: `montgomery_inverse_calc.rs` **4/4 obligations automatic**,
  output correctly colocated (`probes/generated/montgomery_inverse_calc/`,
  no spurious tree); differential corpus re-measured against the new
  binary: **182/182 verdict parity, 89/89 failure-span agreement** (the
  89 span agreements are the strongest available span-regression guard).
- Issue #44 closed with the resolution note.

## Next executable task

DL4 — Bits bridge for indexed operands (#35 continuation): isolated
`by (bit_vector)` queries whose operands are `Seq.index` applications
(the `ghost_high_byte.rs` twin's residual), plus `shr`-as-division
characterization lemmas in `Vermilion.Bits`.
