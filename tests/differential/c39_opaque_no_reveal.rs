// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
#[verifier::opaque]
spec fn boxed(x: int) -> int {
    x + 1
}
proof fn no_reveal() {
    assert(boxed(2) == 3); // opaque and not revealed: must fail in BOTH verifiers
}
}
