// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn ground() {
    assert(7 * 11 * 13 == 1001) by (compute);
    assert(1001int % 7 == 0) by (compute_only);
}
}
