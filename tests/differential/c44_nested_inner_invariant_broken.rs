// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn bad_grid(n: u32, m: u32) -> (s: u32)
    requires n <= 100, m <= 100,
    ensures s <= 20000,
{
    let mut s: u32 = 0;
    let mut i: u32 = 0;
    while i < n
        invariant i <= n, n <= 100, m <= 100, s <= 10000,
        decreases n - i,
    {
        let mut j: u32 = 0;
        while j < m
            invariant j <= m, s <= 10000, // not preserved: s grows past the bound
            decreases m - j,
        {
            s = s + 2;
            j = j + 1;
        }
        i = i + 1;
    }
    s
}
}
