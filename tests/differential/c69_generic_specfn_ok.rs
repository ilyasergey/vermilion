// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn id_spec<T>(x: T) -> T { x }
proof fn id_is_id<T>(x: T)
    ensures id_spec(x) == x,
{
}
}
