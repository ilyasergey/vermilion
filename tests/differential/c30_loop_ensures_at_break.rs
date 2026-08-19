// expect: fail @ 13
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
#[verifier::exec_allows_no_decreases_clause]
fn early_out(n: u32) -> (c: u32)
    requires n <= 100,
    ensures c == n,
{
    let mut c: u32 = 0;
    loop
        invariant c <= n,
        ensures c == n,
    {
        if c + 1 == n {
            break; // loop ensures c == n does not hold here
        }
        if c == n {
            break;
        }
        c = c + 1;
    }
    c
}
}
