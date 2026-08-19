// Case study: preserving an *uninterpreted* element predicate across Vec
// operations (Verus A0-gate example). Sequential; the only gap is the
// uninterpreted spec function `uninterp_fn` (a bodyless spec predicate).
use vstd::prelude::*;

verus! {

uninterp spec fn uninterp_fn(x: u64) -> bool;

fn push_test(t: Vec<u64>, y: u64)
    requires
        forall|i: int| #![auto] 0 <= i < t.len() ==> uninterp_fn(t[i]),
        uninterp_fn(y),
{
    let mut t = t;
    t.push(y);
    assert(forall|i: int| #![auto] 0 <= i < t.len() ==> uninterp_fn(t[i]));
}

} // verus!
