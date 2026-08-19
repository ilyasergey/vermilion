---
title: Support iterator for loops via ghost-iterator contracts
labels: [feature, vcgen, verus]
state: open
github: 38
---

`for` loops over anything but a literal range fail in two stacked
layers, measured by the `sha3_compress_u64` probe
(`case-studies/aeneas/probes/`):

1. **vstd has no specs for common std iterator types** — the Verus
   front end rejects `core::slice::iter::ChunksExact` and
   `core::iter::adapters::enumerate::Enumerate` outright
   (`external_type_specification` hint). Verus's for-loop machinery
   (`ForLoopGhostIterator`) is general; only `Range` (and a few others)
   have vstd instances. Growing these is fork/upstream vstd work.
2. **Vermilion lowers only the range shape** — `recognize_for_range`
   special-cases `for x in lo..hi`; any other iterator loop fails
   closed ("only plain range loops are lowered"). The right growth is
   to consume the general ghost-iterator contract (invariant +
   yielded-element relation + decreases) rather than adding per-adapter
   recognizers.

Off the crypto critical path (PLAN C2 was retargeted to plain-array
Keccak, which uses indexed loops), but this unlocks a lot of idiomatic
Rust — Aeneas translates these adapters unannotated, so it is a
visible corpus gap in any breadth comparison.

Ship with: vstd `ForLoopGhostIterator` instances for `ChunksExact` and
`Enumerate` in the fork (upstream-able), the generalized `for`
lowering, `docs/ir.md` in the same slice, differential cases, and the
`sha3_compress_u64` probe advancing past the front end.
