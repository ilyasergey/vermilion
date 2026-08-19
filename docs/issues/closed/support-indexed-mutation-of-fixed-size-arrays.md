---
title: Support indexed mutation of fixed-size arrays through mutable references
labels: [feature, vcgen]
state: closed
github: 22
---

Percolator's verbatim `active_bitmap_set` body verifies with Verus, but
Vermilion refuses the assignment destination for `bitmap[word] |= ...` where
`bitmap: &mut [u64; 1]`:

```text
unsupported SST assignment destination Binary(Index(Array, Allow), ... MutRefCurrent ...)
```

Fixed arrays already lower to the `Seq` model and array reads work in the
verified `active_bitmap_get` slice. Extend assignment-place lowering so an
in-bounds indexed update through `&mut [T; N]` becomes the same functional
sequence update used for `Vec::set`, while preserving the prophecy/final-value
discipline for the mutable reference.

Ship the feature with a successful set/update driver, an out-of-bounds or
wrong-postcondition negative guard, IR/parser/documentation updates, and the
Percolator bitmap-set slice green. The verbatim `active_bitmap_clear` body has
the same indexed destination, but lowering currently stops earlier on unary
`BitNot`; it should become green once both issues land.

**Closed 2026-07-17.** Landed together with array-repeat lowering:
`destination_path` now carries index projections (`DestProj`), rebuilt as
the same functional `sequpdate` used for `Vec::set`, for both local
arrays and `&mut [T; N]` destinations. The work also surfaced and fixed
a latent prophecy staleness: an early-return arm's `has_resolved`
snapshot permanently shadowed the fall-through path's resolution
(insert-if-absent); return-site resolutions now re-snapshot per path,
call-created futures stay immutable. Percolator's `active_bitmap_set`
lowers fully (11 obligations; 10 discharged, the last blocked only by
the pre-existing typed-`Result` rendering gap of issue #18);
differential corpus c146/c147 guard array-repeat; parity 146/146.
