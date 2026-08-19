use vstd::prelude::*;

verus! {

/// A `Vec<u32>` is modeled by its `Seq<u32>` view: `v@` is the sequence,
/// `v@.len()` / `v@.index(i)` are the Seq operations, and `v[i]`'s exec
/// contract relates the element to `v@.index(i)`.
fn first_le_bound(v: &Vec<u32>, bound: u32) -> (r: bool)
    requires
        v@.len() > 0,
        v@.index(0) <= bound,
    ensures
        r == (v@.index(0) <= bound),
{
    v[0] <= bound
}

/// Pure spec reasoning about the view.
proof fn view_len_nonneg(v: &Vec<u32>)
    ensures
        v@.len() >= 0,
{
}

proof fn index_in_bounds(v: &Vec<u32>, i: int)
    requires
        0 <= i < v@.len(),
    ensures
        v@.index(i) == v@.index(i),
{
}

} // verus!
