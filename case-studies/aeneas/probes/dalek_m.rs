// Probe: u64 -> u128 widening multiplication (the dalek limb product).
//
// Executable body extracted verbatim from AeneasVerif/aeneas
// tests/src/curve25519.rs (adapted there from curve25519-dalek,
// BSD-3-Clause). Verus result binder and contract are the only changes
// around the body.

use vstd::prelude::*;

verus! {

fn m(x: u64, y: u64) -> (result: u128)
    ensures
        result == x as int * y as int,
{
    (x as u128) * (y as u128)
}

} // verus!
