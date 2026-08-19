// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn apply_twice(f: spec_fn(int) -> int, x: int) -> int {
    f(f(x))
}
proof fn use_closure() {
    let bump = |x: int| x + 1;
    assert(apply_twice(bump, 3) == 5);
}
}
