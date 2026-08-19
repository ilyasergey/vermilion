// expect: pass
// A while loop holding a live &mut borrow: the condition setup resolves the
// borrow on exit. Vermilion recognizes that shape and lowers the real
// condition, replaying the resolution in the continuation.
use vstd::prelude::*;
verus! {
fn zero_prefix(v: &mut Vec<u64>, n: usize)
    requires n <= old(v).len(),
    ensures final(v).len() == old(v).len(),
{
    let mut i: usize = 0;
    while i < n
        invariant i <= n, n <= v.len(), v.len() == old(v).len(),
        decreases n - i,
    {
        v.set(i, 0);
        i = i + 1;
    }
}
}
