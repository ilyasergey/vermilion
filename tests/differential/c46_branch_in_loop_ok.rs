// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn alternating(n: u32) -> (s: u32)
    requires n <= 100,
    ensures s <= n,
{
    let mut s: u32 = 0;
    let mut i: u32 = 0;
    while i < n
        invariant i <= n, n <= 100, s <= i,
        decreases n - i,
    {
        if i % 2 == 0 {
            s = s + 1;
        }
        i = i + 1;
    }
    s
}
}
