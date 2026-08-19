// expect: fail
use vstd::prelude::*;

verus! {

fn checked_condition_may_overflow(mut i: usize, n: usize)
    requires i <= n,
{
    while 8 * i + 8 <= n
        invariant i <= n,
        decreases n - i,
    {
        i += 1;
    }
}

} // verus!
