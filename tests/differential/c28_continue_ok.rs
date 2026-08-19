// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn sum_evens(n: u32) -> (s: u32)
    requires n <= 100,
    ensures s <= 100 * 100,
{
    let mut s: u32 = 0;
    let mut i: u32 = 0;
    while i < n
        invariant i <= n, n <= 100, s <= 100 * i,
        decreases n - i,
    {
        i = i + 1;
        if i % 2 == 1 {
            continue;
        }
        s = s + i;
    }
    s
}
}
