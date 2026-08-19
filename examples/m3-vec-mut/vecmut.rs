use vstd::prelude::*;

verus! {

/// `v.push(x)`: the callee contract relates the final view to the entry
/// view (`final(v)@ == old(v)@.push(x)`) — extensional equality on `Seq`,
/// which is plain equality of the Lean model.
fn push_one(v: &mut Vec<u32>)
    requires
        old(v)@.len() < 100,
    ensures
        final(v)@ == old(v)@.push(7u32),
        final(v)@.len() == old(v)@.len() + 1,
{
    v.push(7);
}

/// Build a vector from scratch and reason about its contents: `Vec::new`,
/// two pushes, and the exec `len()` (vstd's `spec_vec_len`, identified
/// with the view length).
fn build_and_check() {
    let mut v: Vec<u32> = Vec::new();
    v.push(1);
    v.push(2);
    assert(v@.len() == 2);
    assert(v@.index(1) == 2);
    let n = v.len();
    assert(n == 2);
}

fn main() {}

}
