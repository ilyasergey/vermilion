// expect: fail
// Soundness guard: the loop preserves length; claiming it grows must fail.
use vstd::prelude::*;
verus! {
fn zero_prefix(v: &mut Vec<u64>, n: usize)
    requires n <= old(v).len(),
    ensures final(v).len() == old(v).len() + 1, // length is preserved
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
