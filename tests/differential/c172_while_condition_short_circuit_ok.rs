// expect: pass
use vstd::prelude::*;

verus! {

fn checked_condition_short_circuits(i: usize, n: usize)
    requires i > n,
{
    let mut j = i;
    while j <= n && 8 * j + 8 <= n
        invariant j == i, i > n,
        decreases 0int,
    {
        assert(false);
    }
}

} // verus!
