// Uninterpreted spec functions (`uninterp spec fn`): a fixed but unknown
// total function, emitted as a Lean `opaque` symbol and reasoned about
// purely by congruence (equal arguments ⇒ equal result) — no body, no
// unfolding, nothing added to the trusted base.
use vstd::prelude::*;

verus! {

uninterp spec fn valid(x: u64) -> bool;

// Congruence is free: equal arguments give equal (unknown) results.
proof fn congruence(a: u64, b: u64)
    requires
        a == b,
        valid(a),
    ensures
        valid(b),
{
}

// The predicate propagates through a contract like any other fact.
fn keep_valid(x: u64) -> (r: u64)
    requires
        valid(x),
    ensures
        valid(r),
{
    x
}

} // verus!
