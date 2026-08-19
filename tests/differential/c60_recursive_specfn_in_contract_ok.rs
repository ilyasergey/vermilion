// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn tri(n: int) -> int
    decreases n,
{
    if n <= 0 { 0 } else { n + tri(n - 1) }
}
proof fn tri_two() {
    reveal_with_fuel(tri, 3);
    assert(tri(2) == 3);
}
}
