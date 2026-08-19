// expect: fail
// DL2 (#45): a `choose` value is underspecified beyond its guarded
// predicate — asserting a concrete value must fail in BOTH verifiers at
// the same span (Verus's skolem axiom pins nothing but the predicate;
// `Vermilion.chooseSpec`'s characterizing hypothesis pins exactly as much).
use vstd::prelude::*;

verus! {

pub open spec fn some_even() -> nat {
    choose|y: nat| #[trigger] (y % 2) == 0
}

pub proof fn choose_is_two()
    ensures
        some_even() == 2,
{
}

} // verus!
