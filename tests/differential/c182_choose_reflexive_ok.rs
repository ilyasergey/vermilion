// expect: pass
// DL2 (#45): `choose` in a spec-fn body lowers to `Vermilion.chooseSpec`;
// a reflexive use pins lowering, rendering, and hash stability.
use vstd::prelude::*;

verus! {

pub open spec fn some_even() -> nat {
    choose|y: nat| #[trigger] (y % 2) == 0
}

pub proof fn choose_reflexive()
    ensures
        some_even() == some_even(),
{
}

} // verus!
