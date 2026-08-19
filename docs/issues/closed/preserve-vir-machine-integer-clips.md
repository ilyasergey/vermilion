---
title: Preserve VIR machine-integer clipping semantics
labels: [bug, vcgen, foundations]
state: closed
github: 29
---

**Resolution.** The direct adapter no longer drops `UnaryOp::Clip`. Dropping
was conditionally harmless for checked arithmetic once its range assertion
was available, but changed the meaning of explicit wrapping helpers such as
`verus_builtin::mul`: `2u32 * 0x8000_0000u32` became the unbounded integer
`2^32` instead of zero.

The lowering now expresses exact clips using existing neutral expressions:

- mathematical `int` is unchanged;
- `nat` saturates negative values to zero;
- unsigned width `w` uses Euclidean remainder modulo `2^w`;
- signed width `w` interprets that residue in the two's-complement interval;
- `char` continues to fail closed because its Unicode scalar-value range has
  a gap.

The Lean ladder establishes collection-cardinality nonnegativity only inside
clip side conditions, and bounded recursive unfolding normalizes ground
clipped predecessors between steps. Differential c144/c145 pin the wrapping
semantics in both directions; the verbatim `power_of_2.rs` case study exposes
the real-world use. No new IR form or axiom was introduced.
