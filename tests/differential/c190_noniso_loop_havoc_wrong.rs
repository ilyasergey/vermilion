// expect: fail @ 23
// DL6 (#46): outer facts about a variable the loop MODIFIES must not
// survive the havoc — `x == 5` holds on entry but `x` changes every
// iteration, so asserting it inside the body fails in BOTH verifiers
// (only the declared invariant `x <= 100` is available).
use vstd::prelude::*;

verus! {

#[verifier::loop_isolation(false)]
pub fn stale_fact(n: u64)
    requires
        n <= 10,
{
    let mut x: u64 = 5;
    let mut i: u64 = 0;
    while i < n
        invariant
            i <= n,
            x <= 100,
        decreases n - i,
    {
        assert(x == 5); // stale: x is havoced across iterations
        x = x + 1;
        i = i + 1;
    }
}

} // verus!
