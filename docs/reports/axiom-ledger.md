# Axiom and trust ledger

This is a dated measurement record. Tool versions, counts, and timings below
apply to the recorded runs. For current setup and scope, see the
[development guide](../development.md) and [case-study registry](../../case-studies/README.md). A current dependency-axiom audit has not been recorded here;
these rows do not establish the axiom set of the Lean 4.33 dependency pins.

| Date | Milestone | Vermilion `axiom` | Vermilion `sorry` | Inherited / trusted notes |
|---|---|---:|---:|---|
| 2026-07-12 | M0 infrastructure | 0 | 0 | lean-smt `Smt.Reconstruct.BitVec.Bitblast` reports one inherited `sorry`; trusted cvc5 mode is measured separately |
| 2026-07-12 | M1a source slice | 0 | 0 | Generated, reconstructed-SMT, and interactive proofs are kernel-checked; inherited lean-smt bit-vector `sorry` remains upstream |
