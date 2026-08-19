// Vec::pop and Seq::subrange. pop's vstd contract returns Option<T> and
// relates the shortened vector to old@.subrange(0, len-1); the prelude's
// `Seq.subrange` lemmas (length j-i, index k = index (i+k) in range) close
// the obligations.
use vstd::prelude::*;

verus! {

// The returned element is the old last; the vector loses its last slot.
fn pop_one(v: &mut Vec<u64>) -> (x: u64)
    requires
        old(v).len() > 0,
    ensures
        final(v).len() == old(v).len() - 1,
        x == old(v)[old(v).len() - 1],
{
    v.pop().unwrap()
}

// Every surviving element kept its value (subrange index reasoning).
fn pop_keeps_prefix(v: &mut Vec<u64>)
    requires
        old(v).len() > 0,
    ensures
        forall|k: int| 0 <= k < final(v).len() ==> final(v)[k] == old(v)[k],
{
    let _ = v.pop();
}

} // verus!
