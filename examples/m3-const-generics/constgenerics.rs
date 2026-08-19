use vstd::prelude::*;

verus! {

/// A const generic is a value parameter: `N` enters the obligations as
/// an `Int` binder carrying its `usize` range, and instantiated calls
/// substitute the literal.
fn shift<const N: usize>(x: u32) -> (r: u64)
    requires x < 100, N < 100,
    ensures r as int == x + N,
{
    (x as u64) + (N as u64)
}

fn caller() {
    let a = shift::<3>(10);
    assert(a == 13);
    let b = shift::<7>(6);
    assert(b == 13);
}

fn main() {}

}
