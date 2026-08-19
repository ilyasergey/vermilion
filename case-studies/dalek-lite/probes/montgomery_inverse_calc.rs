// SPDX-License-Identifier: BSD-3-Clause
//
// BOUNDARY PROBE: a `calc!` equality chain inside a proof function.
//
// Lemma and spec functions extracted verbatim from
// Beneficial-AI-Foundation/dalek-lite curve25519-dalek/src/lemmas/scalar_lemmas.rs:981
// (lemma_montgomery_inverse) and curve25519-dalek/src/specs/scalar52_specs.rs:89-110
// (group_order, montgomery_radix, inv_montgomery_radix) at
// de9ebf01599fedbbced28b938e2c36c538fe4ae5. `calc!` appears at 32 sites in
// the crate. Policy (user, 2026-07-20): `calc!` needs NO dedicated support —
// its step claims already lower as ordinary scoped asserts, its scripted
// justifications are droppable Z3-steering, and equality chains are proved
// directly in the Lean twin when automation misses. The only work it induces
// is the macro-expansion SPAN COLOCATION defect this probe measures (DL3).

use vstd::prelude::*;
use vstd::arithmetic::power2::{pow2, lemma2_to64, lemma2_to64_rest, lemma_pow2_adds};
use vstd::calc_macro::*;

verus! {

// Group order: the value of L as a natural number
pub open spec fn group_order() -> nat {
    pow2(252) + 27742317777372353535851937790883648493nat
}

// Montgomery radix R = 2^260
pub open spec fn montgomery_radix() -> nat {
    pow2(260)
}

// Montgomery radix inverse under L
pub open spec fn inv_montgomery_radix() -> nat {
    0x8e84371e098e4fc4_u64 as nat + pow2(64) * 0xfb2697cda3adacf5_u64 as nat + pow2(128)
        * 0x3614e75438ffa36b_u64 as nat + pow2(192) * 0xc9db6c6f26fe918_u64 as nat
}

pub proof fn lemma_montgomery_inverse()
    ensures
// r * r_inv ≡ 1 (mod n)

        (montgomery_radix() * inv_montgomery_radix()) % group_order() == 1,
{
    lemma2_to64();
    lemma2_to64_rest();

    lemma_pow2_adds(64, 64);  // prove pow2(128) in nat
    lemma_pow2_adds(128, 64);  // prove pow2(192) in nat
    lemma_pow2_adds(192, 60);  // prove pow2(252) in nat
    lemma_pow2_adds(252, 8);  // prove pow2(260) in nat

    calc! {
        (==)
        (montgomery_radix() * inv_montgomery_radix()) % group_order(); {}
        (1852673427797059126777135760139006525652319754650249024631321344126610074238976_nat
            * 5706410653605570882457795059301885719620630590890452783038400561109479083972_nat)
            % 7237005577332262213973186563042994240857116359379907606001950938285454250989_nat; {}
        1;
    }

}

} // verus!
