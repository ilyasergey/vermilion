// expect: fail @ 12
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
#[verifier::exec_allows_no_decreases_clause]
fn breaks_invariant(n: u32) -> (c: u32)
    requires n <= 100,
    ensures c <= n,
{
    let mut c: u32 = 0;
    while c < n
        invariant c <= n,
    {
        if c + 1 == n {
            c = c + 2; // invariant c <= n does not hold at the break
            break;
        }
        c = c + 1;
    }
    c
}
}
