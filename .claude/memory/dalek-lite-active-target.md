On 2026-07-20 the user paused the Aeneas SHA-3 push and set the active
target: **acquire and verify `Beneficial-AI-Foundation/dalek-lite`** (the
CryptoProver paper's benchmark — production curve25519-dalek with a complete
in-source Verus verification), pinned at `de9ebf015`, under
`case-studies/dalek-lite/`.

- **Goal:** reproduce CryptoProver's result with a strictly smaller trusted
  base — Lean kernel instead of Z3, and the crate's 48-`axiom_*` trusted
  floor progressively *proved* against Mathlib (upstream's own
  `docs/feasibility_lean_comparisons.md` maps each axiom to a Mathlib
  counterpart). Effort is reported against CryptoProver's published numbers.
- **Workflow directive (verbatim intent):** set up the agenda of all missing
  Vermilion features, then implement them **one by one**; after each slice
  update logs, documentation, differential tests, examples, the dalek-lite
  probes (flip `--expect-unsupported` off as the fragment catches up), and
  the READMEs; **then commit and push, and go to the next one.**
- The ordered agenda is the **DL series** in
  `case-studies/dalek-lite/PLAN.md` (DL1 per-function lowering isolation →
  DL2 `choose` → DL3 `calc!` colocation defect → DL4 Bits bridge for indexed
  operands → DL5 `assume_specification` breadth → DL6 non-isolated loops →
  DL7 vstd drift → DL8 Layer Set A → ladder → floor discharge → residual
  nonlinear frontier). Execution plan queue item 0 mirrors it; SHA-3 is
  queue item 1, explicitly PAUSED, and `case-studies/aeneas/` stays
  read-only per [[aeneas-folder-read-only]].

**Why:** The user wants Vermilion measured head-to-head against an
AI-verification result on a production crate that is already Verus syntax —
the strongest available external benchmark of the Lean-backend thesis.

**How to apply:** Work the DL slices in order with the per-slice
update-everything-then-commit-and-push loop above. Never re-pin dalek-lite
implicitly; the pin lives in `fetch_upstream.sh` and the case README.
Related: [[vermilion-conventions]], [[interactive-proofs-first-class]],
[[issue-tracker-workflow]], [[per-function-emission-default]].
