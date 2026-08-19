// expect: pass
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
    broadcast use double_even;
    assert(double(21) % 2 == 0);
}
}
