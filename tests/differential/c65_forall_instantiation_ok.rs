// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn instantiate(n: int, bound: int)
    requires
        0 <= n,
        forall|i: int| 0 <= i ==> #[trigger] (i * 1) <= bound + i,
    ensures
        n * 1 <= bound + n, // mentions the trigger shape so Z3 instantiates too
{
}
}
