// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn twice(x: int) -> int {
    2 * x
}
fn doubler(n: u32) -> (s: u32)
    requires n <= 100,
    ensures s == twice(n as int),
{
    let mut s: u32 = 0;
    let mut i: u32 = 0;
    while i < n
        invariant i <= n, n <= 100, s == twice(i as int),
        decreases n - i,
    {
        s = s + 2;
        i = i + 1;
    }
    s
}
}
