// expect: fail @ 16
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
#[verifier::opaque]
spec fn double(n: nat) -> nat {
    2 * n
}
broadcast proof fn double_even(n: nat)
    ensures #[trigger] double(n) % 2 == 0
{
    reveal(double);
}
fn user() {
    // No `broadcast use`: the fact is not in scope in EITHER verifier.
    assert(double(21) % 2 == 0);
}
}
