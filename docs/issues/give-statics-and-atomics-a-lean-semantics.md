---
title: Give statics and atomic ghost protocols a Lean semantics
labels: [feature, vcgen, foundations]
state: open
github: 27
---

The pinned Verus `examples/statics.rs` case study verifies nine items with
Verus. Vermilion currently fails closed at its first `StaticVar` expression,
an `exec static AtomicU64` counter. The rest of the file is a verified
thread-safe `Lazy<T>` using `PCell`, `PointsTo`, `AtomicU64` ghost state,
`struct_with_invariants!`, compare-exchange, and tracked static references.

This is not safely solved by treating a static as a local constant. A full
slice needs:

1. a module-level global/static environment with initialization obligations,
   stable identity, and lifetime-aware references;
2. M5 semantics for ghost memory permissions (`PCell`, `PointsTo`, tracked
   static references);
3. M6 semantics for atomic operations, invariant opening, and ownership
   transfer through the ghost protocol;
4. positive and negative concurrency guards before removing the
   `--expect-unsupported` case-study gate.

The plain static/global layer may be designed first, but atomic calls must
remain fail-closed until the protocol semantics exist. This case study is
therefore ordered after the sequential `HashMap::entry` study.
