---
title: Support unary BitNot on machine integers
labels: [feature, vcgen]
state: open
github: 21
---

Add Verus-compatible lowering and Lean semantics for unary bitwise NOT (`!x`
when `x` is a machine integer). This is the remaining basic bit operation in
the M4 `Bits` surface and is used verbatim by Percolator's
`active_bitmap_clear`:

```rust
bitmap[word] &= !(1u64 << bit);
```

Model it at the operand's fixed width, not as mathematical integer negation.
Add positive identities (for example, masking a bit after complement) and a
negative/wrong-width differential guard. Keep `docs/ir.md`, the Lean parser
and prelude, and `docs/vcgen.md` synchronized with the implementation. The
Percolator clear driver also needs indexed fixed-array mutation before it can
run end to end.
