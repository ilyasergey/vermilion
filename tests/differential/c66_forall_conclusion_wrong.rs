// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn wrong(n: int, bound: int)
    requires
        0 <= n,
        forall|i: int| 0 <= i ==> #[trigger] (i * 1) <= bound + i,
    ensures
        n <= bound, // not implied
{
}
}
