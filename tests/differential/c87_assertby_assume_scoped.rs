// expect: fail @ 13
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn scoped_assume(x: u32) {
    assert(x < 0x1_0000_0000) by {
        assume(x < 5); // dies with the block in BOTH verifiers
    }
    // The block's assume must NOT leak: this assert is unprovable.
    // Before the scope construct, Vermilion leaked it and accepted
    // what Verus rejects.
    assert(x < 5);
}
}
