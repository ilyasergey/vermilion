// expect: pass
// DL5 (#19): a GENERIC uninterp spec fn stays one fixed generic symbol;
// applications carry explicit named type arguments. The consumer proves
// its postcondition from an assumed contract phrased with the symbol.
use vstd::prelude::*;

verus! {

pub uninterp spec fn spec_digest<H, T>(state: H, value: T) -> H;

pub fn absorb<H>(state: H, byte: u8) -> (result: H)
    ensures
        result == spec_digest(state, byte),
{
    proof {
        assume(false); // body is irrelevant: exercise declaration + application
    }
    state
}

pub proof fn digest_congruence<H>(s: H, a: u8, b: u8)
    requires
        a == b,
    ensures
        spec_digest(s, a) == spec_digest(s, b),
{
}

} // verus!
