// expect: fail
// DL8 wrong direction of c191: element agreement on a strict PREFIX does
// not extend to whole-array extensional equality — index 4 is
// unconstrained. Both verifiers must reject the ensures.
use vstd::prelude::*;

verus! {

pub struct Fe {
    pub limbs: [u64; 5],
}

pub proof fn array_ext_eq_prefix_wrong(a: Fe, b: Fe)
    requires
        forall|i: int| 0 <= i < 4 ==> a.limbs[i] == b.limbs[i],
    ensures
        a.limbs =~= b.limbs,
{
}

} // verus!
