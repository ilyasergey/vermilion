// SPDX-License-Identifier: BSD-3-Clause (curve25519-dalek)
//
// Executable bodies extracted verbatim from AeneasVerif/aeneas
// tests/src/curve25519.rs (adapted there from curve25519-dalek):
// `Scalar52` 5×u64-limb schoolbook multiplication. Verus contracts,
// the spec-only `IndexSpecImpl` instance (vstd's requires hook for
// `Index` impls), and result binders are the only additions — no
// executable code is modified.
//
// The Aeneas-side theorem this study subsumes
// (tests/lean/Curve25519/Properties.lean): `wideAsNat r = asNat a *
// asNat b` for limbs < 2^62. Our contract states the nine per-limb
// defining equations; proofs/curve25519_specbridge.lean proves those
// equations equivalent to the same asNat identity, in Lean, by ring
// reasoning — the same specification, shared across toolchains.

use vstd::prelude::*;
use std::ops::Index;

verus! {

pub struct Scalar52(pub [u64; 5]);

impl vstd::std_specs::core::IndexSpecImpl<usize> for Scalar52 {
    open spec fn index_req(&self, i: &usize) -> bool {
        *i < 5
    }
}

impl Index<usize> for Scalar52 {
    type Output = u64;
    fn index(&self, _index: usize) -> (r: &u64)
        ensures
            *r == self.0[_index as int],
    {
        &(self.0[_index])
    }
}

fn m(x: u64, y: u64) -> (result: u128)
    ensures
        result == x as int * y as int,
{
    (x as u128) * (y as u128)
}

pub fn mul_internal(a: &Scalar52, b: &Scalar52) -> (z: [u128; 9])
    requires
        forall|i: int| 0 <= i < 5 ==> a.0[i] < 0x4000000000000000,
        forall|i: int| 0 <= i < 5 ==> b.0[i] < 0x4000000000000000,
    ensures
        z[0] == a.0[0] as int * b.0[0] as int,
        z[1] == a.0[0] as int * b.0[1] as int + a.0[1] as int * b.0[0] as int,
        z[2] == a.0[0] as int * b.0[2] as int + a.0[1] as int * b.0[1] as int
            + a.0[2] as int * b.0[0] as int,
        z[3] == a.0[0] as int * b.0[3] as int + a.0[1] as int * b.0[2] as int
            + a.0[2] as int * b.0[1] as int + a.0[3] as int * b.0[0] as int,
        z[4] == a.0[0] as int * b.0[4] as int + a.0[1] as int * b.0[3] as int
            + a.0[2] as int * b.0[2] as int + a.0[3] as int * b.0[1] as int
            + a.0[4] as int * b.0[0] as int,
        z[5] == a.0[1] as int * b.0[4] as int + a.0[2] as int * b.0[3] as int
            + a.0[3] as int * b.0[2] as int + a.0[4] as int * b.0[1] as int,
        z[6] == a.0[2] as int * b.0[4] as int + a.0[3] as int * b.0[3] as int
            + a.0[4] as int * b.0[2] as int,
        z[7] == a.0[3] as int * b.0[4] as int + a.0[4] as int * b.0[3] as int,
        z[8] == a.0[4] as int * b.0[4] as int,
{
    let mut z = [0u128; 9];

    z[0] = m(a[0], b[0]);
    z[1] = m(a[0], b[1]) + m(a[1], b[0]);
    z[2] = m(a[0], b[2]) + m(a[1], b[1]) + m(a[2], b[0]);
    z[3] = m(a[0], b[3]) + m(a[1], b[2]) + m(a[2], b[1]) + m(a[3], b[0]);
    z[4] = m(a[0], b[4]) + m(a[1], b[3]) + m(a[2], b[2]) + m(a[3], b[1]) + m(a[4], b[0]);
    z[5] = m(a[1], b[4]) + m(a[2], b[3]) + m(a[3], b[2]) + m(a[4], b[1]);
    z[6] = m(a[2], b[4]) + m(a[3], b[3]) + m(a[4], b[2]);
    z[7] = m(a[3], b[4]) + m(a[4], b[3]);
    z[8] = m(a[4], b[4]);

    z
}

} // verus!
