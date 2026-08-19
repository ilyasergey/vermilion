// SPDX-License-Identifier: BSD-3-Clause
//
// BOUNDARY PROBE: `let ghost` bindings in executable code.
//
// Distilled from the `let ghost high_byte: u8 = bytes[31];` pattern at
// Beneficial-AI-Foundation/dalek-lite curve25519-dalek/src/scalar.rs:388
// (at de9ebf01599fedbbced28b938e2c36c538fe4ae5), including its downstream
// `by (bit_vector)` use with a `requires`. The crate has ~761 ghost
// mentions; this measures whether the plain ghost-binding shape already
// lowers through the spec-let substitution machinery.

use vstd::prelude::*;

verus! {

pub fn high_bit_is_clear(bytes: &[u8; 32]) -> (result: bool)
    requires
        bytes[31] <= 127,
    ensures
        result,
{
    // Capture the high byte value for proof (avoids Verus interpreter issues)
    let ghost high_byte: u8 = bytes[31];

    proof {
        assert(high_byte >> 7 == 0) by (bit_vector)
            requires
                high_byte <= 127,
        ;
    }
    true
}

} // verus!
