// expect: fail
// Soundness guard: an uninterpreted spec fn is genuinely unknown, so its
// value at an unconstrained argument is NOT provable. Both verifiers reject.
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
uninterp spec fn p(x: int) -> bool;
proof fn unknown(a: int)
    ensures p(a),
{
}
}
