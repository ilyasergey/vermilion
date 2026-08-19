// expect: pass
// peek's guard is inclusive: for lo == hi the entry instance binds i = lo,
// so this invariant IS checkable (and true) even though the body never runs.
use vstd::prelude::*;
verus! {
proof fn lemma() {}
fn empty_range() {
    for i in 2..2
        invariant i == 2,
    {
    }
}
}
