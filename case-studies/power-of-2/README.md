# Powers of two — shifts, recursion, and machine clipping

[`power_of_2.rs`](power_of_2.rs) is a byte-for-byte copy of Verus's
[`examples/power_of_2.rs`](https://github.com/verus-lang/verus/blob/c569645bd37b00b23d349ef64bafee0aa0a49242/examples/power_of_2.rs)
at the acquisition source commit `c569645bd37b00b23d349ef64bafee0aa0a49242`
(MIT). Its SHA-256 is
`5d7ede0901bf72ad850515b7f0ef5cb24e88188b08147de091a90df00cb6132a`.
`verify_verus.sh` checks byte identity and the upstream baseline: **18
verified, 0 errors**.

The file connects a recursive `pow2 : nat → nat` specification to `u32`
left shift. It combines mutual arithmetic lemmas, recursion/decreases,
`reveal_with_fuel`, `#[verifier::bit_vector]`, isolated nonlinear query
blocks, and explicit `verus_builtin::{sub,mul}` machine operations.

Vermilion verifies the unchanged file as **57 Lean obligations: 40 automatic
and 17 interactive**. The persistent twin
[`proofs/power_of_2/`](proofs/power_of_2/) (one unit module per function)
contains small BitVec conversion arguments and the recursive arithmetic
steps. Its helper lemmas live in the marker-delimited user section of the
shared [`proofs/power_of_2/Specs.lean`](proofs/power_of_2/Specs.lean) and
survive regeneration; `generated/` is disposable.

This study both reuses isolated nonlinear-query support and exposed a
semantic bug in the adapter: VIR `Clip` nodes had been discarded. That is
valid only after proving a checked value is in range; it is wrong for an
explicit wrapping operation such as `mul(2u32, 0x8000_0000u32)`. Vermilion
now preserves exact clipping in the existing expression IR:

- `nat`: saturation at zero;
- unsigned width `w`: Euclidean remainder modulo `2^w`;
- signed width `w`: the same residue interpreted in the two's-complement
  interval.

The discharger normalizes ground clipped predecessors between bounded
recursive unfolds and can establish collection-cardinality nonnegativity in
clipping side conditions. Differential cases c144/c145 pin wrapping in both
directions.

```console
./case-studies/power-of-2/verify_verus.sh
./case-studies/power-of-2/run.sh
```
