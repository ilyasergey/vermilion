// expect: fail
// Wrong direction of c193: Verus does not expose the Unicode-scalar
// invariant for a char projected out of a Seq<char>, so Vermilion must not
// emit it for container elements either. Both verifiers must reject.
use vstd::prelude::*;

verus! {

pub proof fn char_seq_index_range_wrong(s: Seq<char>, i: int)
    requires
        0 <= i < s.len(),
    ensures
        (s[i] as int) <= 0x10FFFF,
{
}

} // verus!
