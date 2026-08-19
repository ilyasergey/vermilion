// expect: pass
use vstd::prelude::*;

verus! {

fn checked_condition_ok(mut i: usize, n: usize)
    requires 8 * i <= n, n < 200,
{
    while 8 * i + 8 <= n
        invariant 8 * i <= n, n < 200,
        decreases n - 8 * i,
    {
        i += 1;
    }
}

} // verus!
