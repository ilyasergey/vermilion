// The FULLY-refused companion to mixed_refusal.rs: every function is
// outside the fragment (bitwise NOT), so the run must take the historical
// whole-run refusal path — this is what keeps --expect-unsupported probes
// meaningful (DL1 part (e)).

use vstd::prelude::*;

verus! {

pub fn flip_bits(x: u64) -> (y: u64)
    ensures
        y == !x,
{
    !x
}

} // verus!
