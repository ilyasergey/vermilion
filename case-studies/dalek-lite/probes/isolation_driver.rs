// SPDX-License-Identifier: BSD-3-Clause
//
// TOOLING PROBE: per-function lowering isolation (the DL1 driver).
//
// Two functions: `double_is_even` is squarely inside the supported fragment;
// `mentions_choose` uses a `choose`-bearing spec fn (the same construct as
// field_sqrt_choose.rs). Today the adapter's first refusal aborts the whole
// run (`vermilion_direct` exits on the first unsupported construct), so the
// green sibling emits NOTHING. The DL1 tooling slice makes the adapter lower
// what lowers and report the rest as source-mapped per-function dispositions;
// when it lands, this probe must yield exactly one verified function and one
// refusal, and the --expect-unsupported flag comes off its explore.sh line.
//
// The construct pairing mirrors dalek-lite at crate scale: 24 `choose` sites
// scattered across specs/ must not hide the arithmetic core.

use vstd::prelude::*;

verus! {

pub open spec fn some_even() -> nat {
    choose|y: nat| #[trigger] (y % 2) == 0
}

/// Inside the fragment: must survive its sibling's refusal once DL1 lands.
pub fn double_is_even(x: u32) -> (d: u64)
    ensures
        d == 2 * (x as u64),
        d % 2 == 0,
{
    2 * (x as u64)
}

/// Outside the fragment (choose): must become a source-mapped disposition,
/// not a whole-run abort.
pub proof fn mentions_choose()
    ensures
        some_even() == some_even(),
{
}

} // verus!
