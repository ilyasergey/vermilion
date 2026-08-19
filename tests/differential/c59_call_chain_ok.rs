// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn inc(x: u32) -> (r: u32)
    requires x < 4000,
    ensures r == x + 1,
{
    x + 1
}
fn inc2(x: u32) -> (r: u32)
    requires x < 3000,
    ensures r == x + 2,
{
    inc(inc(x))
}
fn inc4(x: u32) -> (r: u32)
    requires x < 2000,
    ensures r == x + 4,
{
    inc2(inc2(x))
}
}
