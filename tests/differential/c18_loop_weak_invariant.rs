// expect: fail @ 9
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
#[verifier::exec_allows_no_decreases_clause]
fn count_weak(n: u32) -> (c: u32)
    requires n < 1000,
    ensures
        c == n,
{
    let mut c: u32 = 0;
    while c < n
        invariant c <= 1000,
    {
        c = c + 1;
    }
    c
}
}
