// expect: fail
// For hi < lo the peek is None and the loop variable in the invariant is
// vstd's arbitrary() — a fixed unknown — so this invariant is unprovable at
// entry. Both verifiers must reject.
use vstd::prelude::*;
verus! {
fn reversed_range() {
    let lo: usize = 3;
    let hi: usize = 2;
    for i in lo..hi
        invariant i == 3,
    {
    }
}
}
