// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
#[verifier::opaque]
spec fn secret(x: int) -> int {
    x * 3
}
proof fn cannot_see() {
    assert(secret(2) == 6); // opaque, never revealed: fails in BOTH
}
}
