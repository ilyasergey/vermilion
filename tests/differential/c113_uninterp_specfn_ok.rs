// expect: pass
// An uninterpreted spec fn is reasoned about by congruence: equal arguments
// give equal results. This must verify on both sides.
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
uninterp spec fn p(x: int) -> bool;
proof fn congruent(a: int, b: int)
    requires a == b, p(a),
    ensures p(b),
{
}
}
