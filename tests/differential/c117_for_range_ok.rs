// expect: pass
// A range for-loop with an invariant naming the loop variable; the exit
// instance at i = n discharges the postcondition.
use vstd::prelude::*;
verus! {
fn count_up(n: usize) -> (c: usize)
    ensures c == n,
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
