// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn sum_to(n: int) -> int
    decreases n,
{
    if n <= 0 { 0 } else { n + sum_to(n - 1) }
}
proof fn sum_to_three() {
    reveal_with_fuel(sum_to, 4);
    assert(sum_to(3) == 6);
}
}
