// SPDX-License-Identifier: BSD-3-Clause
//
// BOUNDARY PROBE: `choose` in a spec-function body.
//
// Spec functions extracted verbatim from Beneficial-AI-Foundation/dalek-lite
// curve25519-dalek/src/specs/field_specs_u64.rs:11 (p) and
// curve25519-dalek/src/specs/field_specs.rs:119-338 (field_canonical,
// field_mul, is_square, field_sqrt) at de9ebf01599fedbbced28b938e2c36c538fe4ae5.
// `field_sqrt` is one of 24 `choose` sites in the crate; the S3 execution-plan
// stage (`choose` as `Classical.choose` over the Verus-checked guard) is the
// scheduled fragment growth. The consumer proof is ours and is deliberately
// trivial so pinned Verus accepts the file while Vermilion measures the
// lowering boundary.

use vstd::prelude::*;
use vstd::arithmetic::power2::pow2;

verus! {

// p = 2^255 - 19
pub open spec fn p() -> nat {
    (pow2(255) - 19) as nat
}

pub open spec fn field_canonical(n: nat) -> nat {
    n % p()
}

/// Math-level field multiplication
pub open spec fn field_mul(a: nat, b: nat) -> nat {
    field_canonical(a * b)
}

/// Check if a value is a quadratic residue (square) modulo p
pub open spec fn is_square(a: nat) -> bool {
    exists|y: nat| (#[trigger] field_mul(y, y)) == field_canonical(a)
}

/// Compute a square root modulo p (if it exists)
/// Returns some y such that y^2 ≡ a (mod p)
/// The result is unspecified if a is not a quadratic residue
/// Note result is not unique
pub open spec fn field_sqrt(a: nat) -> nat
    recommends
        is_square(a),
{
    choose|y: nat| y < p() && #[trigger] field_mul(y, y) == field_canonical(a)
}

/// Probe consumer (ours): forces `field_sqrt` — and therefore the `choose`
/// body — through emission without demanding any choice reasoning.
pub proof fn mentions_sqrt(a: nat)
    ensures
        field_sqrt(a) == field_sqrt(a),
{
}

} // verus!
