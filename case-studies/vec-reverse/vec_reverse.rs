// Case study: in-place reverse of a Vec<u64> (Verus A0-gate example).
// Sequential, but needs two fragment features Vermilion lacks today:
//   * for-range loops (Verus desugars `for n in 0..h` through Iterator, an
//     associated-type Projection the lowering rejects), and
//   * Vec::set (lowered by Verus as the 3-arg Seq::update).
use vstd::prelude::*;

verus! {

fn reverse(v: &mut Vec<u64>)
    ensures
        final(v).len() == old(v).len(),
        forall|i: int| 0 <= i < old(v).len() ==> final(v)[i] == old(v)[old(v).len() - i - 1],
{
    let length = v.len();
    let ghost v1 = v@;
    for n in 0..(length / 2)
        invariant
            length == v.len(),
            forall|i: int| 0 <= i < n ==> v[i] == v1[length - i - 1],
            forall|i: int| 0 <= i < n ==> v1[i] == v[length - i - 1],
            forall|i: int| n <= i && i + n < length ==> #[trigger] v[i] == v1[i],
    {
        let x = v[n];
        let y = v[length - 1 - n];
        v.set(n, y);
        v.set(length - 1 - n, x);
    }
}

} // verus!
