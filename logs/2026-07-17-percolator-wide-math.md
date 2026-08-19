# 2026-07-17 — Percolator `wide_math.rs` boundary and verified slices

## Question

Determine whether Percolator's pinned 2,170-line `src/wide_math.rs` can be
specified and verified verbatim, and preserve any honest supported subset as
a source-identity-checked case study.

## Whole-file result

The complete file is not currently a verbatim Verus input. A diagnostic copy
wrapped only in `verus!` first failed because public U256/I256 constants
construct values through private tuple fields. Making the fields public in
the diagnostic copy exposed the next front-end boundary: this pinned Verus
does not specify `u128::overflowing_add`, `u128::overflowing_sub`,
`u128::leading_zeros`, `i128::unsigned_abs`, or the formatted panic/assert
`core::fmt::Arguments` path. These failures precede Vermilion SST export.

## Green body-verbatim subset

Two production slices now verify under both pinned Verus and Lean:

- `saturating_mul_u128_u64`: unchanged standalone body, a full exact-product
  versus `u128::MAX` saturation contract, 1 Verus result and 4 Lean VCs. Three
  VCs are automatic; the persistent twin proves the successful checked-mul
  modular-arithmetic VC interactively.
- BPF U256 representation/bitwise basics: unchanged bodies of `new`,
  `from_u128`, `from_u64`, `lo`, `hi`, `is_zero`, `try_into_u128`, `bitand`,
  and `bitor`; 10 Verus results and 40 automatically discharged Lean VCs. The
  local tuple field is public so Verus contracts can project it; upstream's
  field is private. The README
  therefore calls these method bodies verbatim, not the declaration.

`check_verbatim.py` now selects the BPF U256 section explicitly (avoiding the
same-named Kani methods) and checks 34 copied body occurrences / 33 distinct
upstream functions across both `src/v16.rs` and `src/wide_math.rs`.

## Commands

```console
python3 case-studies/percolator/check_verbatim.py /private/tmp/vermilion-percolator-wide-math
./case-studies/percolator/verify_verus.sh
./case-studies/percolator/run.sh
```

The first command reports 34 matching bodies. The two new standalone Verus
checks report 1/1 and 10/10; the Vermilion drivers kernel-check all 4 and 40
Lean obligations respectively.

No VC-generation rule or theorem shape changed, so `docs/vcgen.md` needs no
update in this slice. No new Vermilion feature or issue was introduced; the
remaining clean tool gaps are already represented in `docs/issues/`, while
the newly observed whole-file failures are Verus standard-library/visibility
boundaries.
