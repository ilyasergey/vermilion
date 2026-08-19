// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn bump(x: u32) -> (r: u32)
    requires x < 1000,
    ensures r == x + 1,
{
    x + 1
}
fn count_calls(n: u32) -> (c: u32)
    requires n <= 500,
    ensures c == n,
{
    let mut c: u32 = 0;
    while c < n
        invariant c <= n, n <= 500,
        decreases n - c,
    {
        c = bump(c);
    }
    c
}
}
