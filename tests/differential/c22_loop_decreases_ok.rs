// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn count(n: u32) -> (c: u32)
    requires n < 1000,
    ensures c == n,
{
    let mut c: u32 = 0;
    while c < n
        invariant c <= n,
        decreases n - c,
    {
        c = c + 1;
    }
    c
}
}
