// Vec::set (vstd `Seq::update`): overwrite an element in place. The `&mut`
// contract gives `final@ == old@.update(i, x)`; the prelude's `Seq.update`
// lemmas (length preserved, updated slot reads `x`, others unchanged) close
// the obligations. `zero_prefix` additionally exercises a `while` loop that
// holds a live `&mut` borrow — its condition resolves the borrow on exit.
use vstd::prelude::*;

verus! {

fn set_at(v: &mut Vec<u64>, i: usize, x: u64)
    requires
        i < old(v).len(),
    ensures
        final(v).len() == old(v).len(),
        final(v)[i as int] == x,
{
    v.set(i, x);
}

// Two updates: the second leaves the first slot intact (index_update_other).
fn set_two(v: &mut Vec<u64>, x: u64, y: u64)
    requires
        old(v).len() >= 2,
    ensures
        final(v)[0] == x,
        final(v)[1] == y,
{
    v.set(0, x);
    v.set(1, y);
}

// A while loop over a live `&mut` borrow: zero the first `n` slots.
fn zero_prefix(v: &mut Vec<u64>, n: usize)
    requires
        n <= old(v).len(),
    ensures
        final(v).len() == old(v).len(),
        forall|k: int| 0 <= k < n ==> final(v)[k] == 0,
{
    let mut i: usize = 0;
    while i < n
        invariant
            i <= n,
            n <= v.len(),
            v.len() == old(v).len(),
            forall|k: int| 0 <= k < i ==> v[k] == 0,
        decreases n - i,
    {
        v.set(i, 0);
        i = i + 1;
    }
}

} // verus!
