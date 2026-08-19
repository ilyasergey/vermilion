use vstd::prelude::*;

verus! {

/// Nonlinear overflow goals (products of bounded variables) close on
/// the `nlinarith` rung — Lean-native, no SMT encodings.
fn scale<const N: usize>(x: u32) -> (r: u64)
    requires x < 100, 0 < N, N < 100,
    ensures r as int == x * N,
{
    (x as u64) * (N as u64)
}

fn square(side: u32) -> (a: u64)
    requires side < 100,
    ensures a as int == side * side,
{
    (side as u64) * (side as u64)
}

fn main() {}

}
