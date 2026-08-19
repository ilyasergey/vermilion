use vstd::prelude::*;

verus! {

/// The classic mutable-reference contract: `old(x)` is the referent at
/// entry, `final(x)` the resolved prophecy — the referent when the borrow
/// expires.
fn incr(x: &mut u32)
    requires
        *old(x) < 100,
    ensures
        *final(x) == *old(x) + 1,
{
    *x = *x + 1;
}

/// `old(x)` read AFTER the write still means the entry value (adapted from
/// the Verus test suite's `mut_refs_old.rs`).
fn old_in_body(x: &mut u32)
    requires
        *old(x) == 0,
    ensures
        *final(x) == 5,
{
    *x = 5;
    assert(*old(x) == 0);
}

/// Two independent mutable references.
fn swap(a: &mut u32, b: &mut u32)
    ensures
        *final(a) == *old(b),
        *final(b) == *old(a),
{
    let tmp: u32 = *a;
    *a = *b;
    *b = tmp;
}

/// Caller side: the callee's contract constrains the written-back value,
/// and chained calls thread it through.
fn caller() {
    let mut y: u32 = 10;
    incr(&mut y);
    assert(y == 11);
    incr(&mut y);
    assert(y == 12);
    let mut a: u32 = 1;
    let mut b: u32 = 2;
    swap(&mut a, &mut b);
    assert(a == 2 && b == 1);
}

fn main() {}

}
