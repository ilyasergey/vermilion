// SPDX-License-Identifier: BSD-3-Clause
//
// BOUNDARY PROBE: `assume_specification` + external-type specification +
// `uninterp spec fn` over an external type.
//
// Replicates, standalone, the exact construct family of
// Beneficial-AI-Foundation/dalek-lite
// curve25519-dalek/src/backend/serial/u64/subtle_assumes.rs:40-56 at
// de9ebf01599fedbbced28b938e2c36c538fe4ae5, where the `subtle` crate's
// constant-time `Choice` type is modeled: an external type gets a
// `#[verifier::external_type_specification]` shadow, a `uninterp spec fn`
// view, and `assume_specification` contracts for its methods. The `subtle`
// dependency is replaced by a local `#[verifier::external]` module so the
// probe is a one-file measurement; the Verus surface is unchanged.

use vstd::prelude::*;

// Stand-in for the external `subtle` crate: invisible to Verus.
#[verifier::external]
mod subtle_stub {
    #[derive(Clone, Copy)]
    pub struct Choice(pub u8);

    impl Choice {
        pub fn from_u8(u: u8) -> Choice {
            Choice(u)
        }

        pub fn unwrap_u8(&self) -> u8 {
            self.0
        }
    }
}

use subtle_stub::Choice;

verus! {

#[verifier::external_type_specification]
#[verifier::external_body]
pub struct ExChoice(Choice);

/// Spec-level view of Choice as a boolean
/// true = Choice(1), false = Choice(0)
pub uninterp spec fn choice_is_true(c: Choice) -> bool;

pub assume_specification[ Choice::from_u8 ](u: u8) -> (c: Choice)
    ensures
        (u == 1) == choice_is_true(c),
;

pub assume_specification[ Choice::unwrap_u8 ](c: &Choice) -> (u: u8)
    ensures
        choice_is_true(*c) ==> u == 1u8,
        !choice_is_true(*c) ==> u == 0u8,
;

/// Probe consumer (ours): round-trips a bit through the assumed contracts.
pub fn roundtrip_one() -> (u: u8)
    ensures
        u == 1u8,
{
    let c = Choice::from_u8(1);
    c.unwrap_u8()
}

} // verus!
