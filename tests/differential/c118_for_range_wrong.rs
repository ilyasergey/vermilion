// expect: fail
// Soundness guard: the loop counts n iterations, not n + 1.
use vstd::prelude::*;
verus! {
fn count_up(n: usize) -> (c: usize)
    ensures c == n + 1, // off by one
{
    let mut c: usize = 0;
    for i in 0..n
        invariant c == i,
    {
        c = c + 1;
    }
    c
}
}
