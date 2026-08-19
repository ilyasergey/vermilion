// expect: pass
// DL6 (#46): with loop_isolation(false) the body keeps the enclosing
// context's facts across the havoc — `n <= 1000` flows in from the
// function requires, so `i + 1` needs no overflow invariant of its own.
// The isolated variant of this program would fail.
use vstd::prelude::*;

verus! {

#[verifier::loop_isolation(false)]
pub fn count_up(n: u64) -> (i: u64)
    requires
        n <= 1000,
    ensures
        i == n,
{
    let mut i: u64 = 0;
    while i < n
        invariant
            i <= n,
        decreases n - i,
    {
        i = i + 1;
    }
    i
}

} // verus!
