// SPDX-License-Identifier: BSD-3-Clause
//
// BOUNDARY PROBE: `assume_specification` on qualified trait-method
// targets (`<u64 as Trait>::method`) with `&mut` parameters and `old()`
// in the contract.
//
// Replicates, standalone, the exact construct family of
// Beneficial-AI-Foundation/dalek-lite
// curve25519-dalek/src/backend/serial/u64/subtle_assumes.rs:219-238 at
// de9ebf01599fedbbced28b938e2c36c538fe4ae5:
// `<u64 as ConditionallySelectable>::conditional_swap` and
// `::conditional_assign` — the constant-time primitives the field
// layers call inside scalar-multiplication ladders. The `subtle`
// dependency is replaced by a local `#[verifier::external]` module so
// the probe is a one-file measurement; the Verus surface is unchanged.

use vstd::prelude::*;

// Stand-in for the external `subtle` crate: invisible to Verus.
#[verifier::external]
mod subtle_stub {
    #[derive(Clone, Copy)]
    pub struct Choice(pub u8);

    pub trait ConditionallySelectable: Copy {
        fn conditional_assign(&mut self, other: &Self, choice: Choice);
        fn conditional_swap(a: &mut Self, b: &mut Self, choice: Choice);
    }

    impl ConditionallySelectable for u64 {
        fn conditional_assign(&mut self, other: &Self, choice: Choice) {
            let mask = (choice.0 as u64).wrapping_neg();
            *self ^= mask & (*self ^ *other);
        }

        fn conditional_swap(a: &mut Self, b: &mut Self, choice: Choice) {
            let mask = (choice.0 as u64).wrapping_neg();
            let t = mask & (*a ^ *b);
            *a ^= t;
            *b ^= t;
        }
    }
}

use subtle_stub::{Choice, ConditionallySelectable};

verus! {

#[verifier::external_type_specification]
#[verifier::external_body]
pub struct ExChoice(Choice);

/// Spec-level view of Choice as a boolean (upstream `choice_is_true`).
pub uninterp spec fn choice_is_true(c: Choice) -> bool;

/* <MODIFIED CODE> dalek-lite (Verus pin ~88f7396 era) writes bare `*a`
for the final value of a `&mut` parameter in these ensures; our newer
pinned Verus requires the `final()` disambiguation introduced by the
mut-ref migration. Contract meaning unchanged — a DL7 drift data
point. */
pub assume_specification[ <u64 as ConditionallySelectable>::conditional_swap ](
    a: &mut u64,
    b: &mut u64,
    choice: Choice,
)
    ensures
        !choice_is_true(choice) ==> (*final(a) == *old(a) && *final(b) == *old(b)),
        choice_is_true(choice) ==> (*final(a) == *old(b) && *final(b) == *old(a)),
;

pub assume_specification[ <u64 as ConditionallySelectable>::conditional_assign ](
    a: &mut u64,
    b: &u64,
    choice: Choice,
)
    ensures
        !choice_is_true(choice) ==> *final(a) == *old(a),
        choice_is_true(choice) ==> *final(a) == *b,
;
/* </MODIFIED CODE> */

/// Probe consumer (ours): a constant-time swap round-trip — swapping
/// twice under the same choice restores both limbs, whatever the choice.
pub fn swap_twice(x: u64, y: u64, c: Choice) -> (result: (u64, u64))
    ensures
        result.0 == x,
        result.1 == y,
{
    let mut a = x;
    let mut b = y;
    u64::conditional_swap(&mut a, &mut b, c);
    u64::conditional_swap(&mut a, &mut b, c);
    (a, b)
}

/// Probe consumer (ours): assigning under a known-true choice copies.
pub fn assign_true(x: u64, y: u64, c: Choice) -> (result: u64)
    requires
        choice_is_true(c),
    ensures
        result == y,
{
    let mut a = x;
    a.conditional_assign(&y, c);
    a
}

} // verus!
