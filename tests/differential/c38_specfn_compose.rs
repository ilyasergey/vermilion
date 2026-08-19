// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn min_int(a: int, b: int) -> int {
    if a <= b { a } else { b }
}
spec fn clamp(x: int, lo: int, hi: int) -> int {
    min_int(if x >= lo { x } else { lo }, hi)
}
proof fn clamp_bounds(x: int, lo: int, hi: int)
    requires lo <= hi,
    ensures
        clamp(x, lo, hi) <= hi,
        clamp(x, lo, hi) >= lo,
{
}
}
