// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
pub enum Sign { Neg, Zero, Pos }
spec fn sign_of(x: int) -> Sign {
    if x < 0 { Sign::Neg } else if x == 0 { Sign::Zero } else { Sign::Pos }
}
proof fn sign_props(x: int)
    requires x > 0,
    ensures sign_of(x) is Pos,
{
}
}
