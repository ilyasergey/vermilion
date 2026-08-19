// expect: fail
// DL5 (#19): a generic uninterp spec fn is a fixed but UNKNOWN function —
// asserting a concrete value at unconstrained arguments must fail in BOTH
// verifiers (congruence only, no defining equation, no axioms).
use vstd::prelude::*;

verus! {

pub uninterp spec fn spec_digest<H, T>(state: H, value: T) -> H;

pub proof fn digest_is_not_identity(s: int, a: u8)
    ensures
        spec_digest(s, a) == s,
{
}

} // verus!
