// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn rows_of_ten(n: u32) -> (s: u32)
    requires n <= 100,
    ensures s == 10 * n,
{
    let mut s: u32 = 0;
    let mut i: u32 = 0;
    while i < n
        invariant i <= n, n <= 100, s == 10 * i,
        decreases n - i,
    {
        let mut j: u32 = 0;
        while j < 10
            invariant j <= 10, i < n, n <= 100, s == 10 * i + j,
            decreases 10 - j,
        {
            s = s + 1;
            j = j + 1;
        }
        i = i + 1;
    }
    s
}
}
