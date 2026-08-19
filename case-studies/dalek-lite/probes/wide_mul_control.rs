// SPDX-License-Identifier: BSD-3-Clause
//
// CONTROL PROBE (expected green in both verifiers).
//
// Executable body and contract extracted verbatim from
// Beneficial-AI-Foundation/dalek-lite curve25519-dalek/src/backend/serial/u64/scalar.rs:150
// at de9ebf01599fedbbced28b938e2c36c538fe4ae5. This is the wide u64 -> u128
// multiplication helper the whole scalar backend is built on; it pins that
// the dalek-lite arithmetic core is inside the already-supported fragment
// before the boundary probes measure what is not.

use vstd::prelude::*;
use vstd::arithmetic::mul::lemma_mul_upper_bound;

verus! {

/// u64 * u64 = u128 multiply helper
fn m(x: u64, y: u64) -> (z: u128)
    ensures
        (z as nat) == (x as nat) * (y as nat),
{
    proof {
        /* <MODIFIED CODE> dalek-lite (vstd 88f7396) calls
           lemma_mul_le(x as nat, u64::MAX as nat, y as nat, u64::MAX as nat);
           that name is gone from vstd at our pin — the July equivalent is
           lemma_mul_upper_bound over int. First measured vstd-drift point
           (PLAN.md, DL8). */
        lemma_mul_upper_bound(x as int, u64::MAX as int, y as int, u64::MAX as int);
        /* </MODIFIED CODE> */
    }
    (x as u128) * (y as u128)
}

/// Local consumer: one limb product of the schoolbook multiply shape.
pub fn limb_product(a: u64, b: u64) -> (z: u128)
    ensures
        (z as nat) == (a as nat) * (b as nat),
{
    m(a, b)
}

} // verus!
