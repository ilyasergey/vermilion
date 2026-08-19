// SPDX-License-Identifier: BSD-3-Clause
//
// BOUNDARY PROBE: `#[verifier::loop_isolation(false)]`.
//
// Distilled from the two non-isolated loops in Beneficial-AI-Foundation/dalek-lite
// curve25519-dalek/src/scalar.rs:2338 and :3160 at
// de9ebf01599fedbbced28b938e2c36c538fe4ae5: with isolation off, the loop body
// sees the enclosing context's facts (here `n <= 1000`) without restating
// them as invariants. Vermilion's isolated-loop discharge deliberately fails
// closed on this attribute (a distinct sound rule is required; deferred by
// design until corpus demand — dalek-lite is that demand).

use vstd::prelude::*;

verus! {

#[verifier::loop_isolation(false)]
pub fn count_up(n: u64) -> (i: u64)
    requires
        n <= 1000,
    ensures
        i == n,
{
    let mut i: u64 = 0;
    while i < n
        invariant
            i <= n,
        decreases n - i,
    {
        // Non-isolated: `n <= 1000` flows in from the function context, so
        // `i + 1` needs no overflow invariant of its own.
        i = i + 1;
    }
    i
}

} // verus!
