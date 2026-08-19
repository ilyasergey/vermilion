use vstd::prelude::*;

verus! {

/// A slice `&[T]` is its `Seq<T>` view; its length is a spec-level
/// value (`s@.len()`) rather than a const generic.
fn first_of_slice(s: &[u32]) -> (r: u32)
    requires s@.len() > 0, s@.index(0) < 100,
    ensures r == s@.index(0),
{
    s[0]
}

fn main() {}

}
