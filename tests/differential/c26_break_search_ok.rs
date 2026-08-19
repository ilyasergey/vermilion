// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn find_divisor(n: u32) -> (d: u32)
    requires 2 <= n, n <= 1000,
    ensures 2 <= d, d <= n,
{
    let mut d: u32 = 2;
    while d < n
        invariant 2 <= d, d <= n,
        decreases n - d,
    {
        if n % d == 0 {
            break;
        }
        d = d + 1;
    }
    d
}
}
