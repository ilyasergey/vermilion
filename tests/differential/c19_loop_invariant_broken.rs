// expect: fail @ 13
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
#[verifier::exec_allows_no_decreases_clause]
fn skip_two(n: u32) -> (c: u32)
    requires n < 1000,
    ensures c >= n,
{
    let mut c: u32 = 0;
    while c < n
        invariant
            c <= n,
    {
        c = c + 2;
    }
    c
}
}
