// Per-function lowering isolation (DL1): one function inside the fragment,
// one outside it (bitwise NOT, its own open issue — swap the construct
// again when that lands; `choose` drove this until DL2 lowered it,
// `loop_isolation(false)` until DL6). The adapter must verify the first
// and record a source-mapped disposition for the second — never abort the
// whole run, and never report the file as fully verified while the
// refusal exists.

use vstd::prelude::*;

verus! {

/// Inside the fragment: must be emitted and verified despite the sibling.
pub fn triple(x: u32) -> (t: u64)
    ensures
        t == 3 * (x as u64),
{
    3 * (x as u64)
}

/// Outside the fragment: must become a manifest disposition, not an abort.
pub fn flip_bits(x: u64) -> (y: u64)
    ensures
        y == !x,
{
    !x
}

} // verus!
