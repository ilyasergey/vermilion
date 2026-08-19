// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn spin(n: u32) -> (s: u32)
    requires n <= 100,
    ensures s <= 100,
{
    let mut s: u32 = 0;
    let mut i: u32 = 0;
    while i < n
        invariant i <= n, s <= 100,
        decreases n - i,
    {
        if s == 0 {
            continue; // measure n - i has not decreased
        }
        i = i + 1;
    }
    s
}
}
