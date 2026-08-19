// Case study: the `pop_test` function from the Verus A0-gate example
// (vectors.rs). It was blocked on TWO features — uninterpreted spec fns (F1)
// and Vec::pop / Seq::subrange (F4) — now both supported.
use vstd::prelude::*;

verus! {

uninterp spec fn uninterp_fn(x: u64) -> bool;

fn pop_test(t: Vec<u64>)
    requires
        t.len() > 0,
        forall|i: int| #![auto] 0 <= i < t.len() ==> uninterp_fn(t[i]),
{
    let mut t = t;
    let x = t.pop().unwrap();
    assert(uninterp_fn(x));
    assert(forall|i: int| #![auto] 0 <= i < t.len() ==> uninterp_fn(t[i]));
}

} // verus!
