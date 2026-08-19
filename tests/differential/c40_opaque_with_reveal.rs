// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
#[verifier::opaque]
spec fn boxed(x: int) -> int {
    x + 1
}
proof fn with_reveal() {
    reveal(boxed);
    assert(boxed(2) == 3);
}
}
