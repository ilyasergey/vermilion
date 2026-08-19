// SPDX-License-Identifier: BSD-3-Clause
//
// BOUNDARY PROBE: `assume_specification` on core-library targets —
// (a) a lifetime-parameterized path target with NO contract
//     (`core::fmt::Formatter::<'a>::write_str`, plus the paired
//     `external_type_specification` shadows for `Formatter`/`fmt::Error`),
// (b) a generic + const-generic qualified trait-method target with
//     `where` clauses and an `uninterp spec fn` over the generics
//     (`<[T; N] as core::hash::Hash>::hash`).
//
// Replicates, standalone, Beneficial-AI-Foundation/dalek-lite
// curve25519-dalek/src/core_assumes.rs:161-176 and 285-302 at
// de9ebf01599fedbbced28b938e2c36c538fe4ae5. The Verus surface is
// verbatim; the consumers are ours.

use vstd::prelude::*;

verus! {

// ---- (a) Formatter::write_str: lifetime target, contract-free ----

#[verifier::external_type_specification]
#[verifier::external_body]
pub struct ExFormatter<'a>(core::fmt::Formatter<'a>);

#[verifier::external_type_specification]
#[verifier::external_body]
pub struct ExFmtError(core::fmt::Error);

pub assume_specification<'a>[ core::fmt::Formatter::<'a>::write_str ](
    _0: &mut core::fmt::Formatter<'a>,
    _1: &str,
) -> core::result::Result<(), core::fmt::Error>
;

/// Probe consumer (ours): a `&str` parameter flows through the assumed
/// contract (`Vermilion.StrSlice` binder lowering).
pub fn expecting_message(f: &mut core::fmt::Formatter<'_>, msg: &str) -> (r: core::result::Result<(), core::fmt::Error>)
{
    f.write_str(msg)
}

/// Probe consumer (ours): the verbatim serde-Visitor `expecting` shape —
/// a string *literal* constant (`StrSlice` literal lowering).
pub fn expecting_default(f: &mut core::fmt::Formatter<'_>) -> (r: core::result::Result<(), core::fmt::Error>)
{
    f.write_str("canonical Ed25519 scalar")
}

// ---- (b) array Hash: generics + const generic + where clauses ----

pub uninterp spec fn spec_state_after_hash<H, T, const N: usize>(
    initial_state: H,
    bytes: &[T; N],
) -> H;

/* <MODIFIED CODE> dalek-lite writes bare `*state` for the final value;
our newer pinned Verus requires the mut-ref migration's `final()`
disambiguation. Contract meaning unchanged — a DL7 drift data point. */
pub assume_specification<T, const N: usize, H>[ <[T; N] as core::hash::Hash>::hash ](
    bytes: &[T; N],
    state: &mut H,
) where H: core::hash::Hasher, T: core::hash::Hash
    ensures
        *final(state) == spec_state_after_hash(*old(state), bytes),
;
/* </MODIFIED CODE> */

/// Probe consumer (ours): hashing a 32-byte key transitions the hasher
/// to exactly the modeled state (the MontgomeryPoint Hash-impl shape).
pub fn hash_key<H: core::hash::Hasher>(bytes: &[u8; 32], state: &mut H)
    ensures
        *final(state) == spec_state_after_hash(*old(state), bytes),
{
    core::hash::Hash::hash(bytes, state);
}

} // verus!
