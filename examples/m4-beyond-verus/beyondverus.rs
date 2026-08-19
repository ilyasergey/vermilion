use vstd::prelude::*;

verus! {

// Every obligation in this file is TRUE, is proved here fully
// automatically (kernel-checked), and is REJECTED by stock Verus.
//
// Verus's default prover deliberately disables nonlinear arithmetic:
// these functions fail there with "possible arithmetic overflow" until
// the user hand-writes `assert(...) by (nonlinear_arith)` hint blocks
// around each product bound. Vermilion's Lean-native ladder proves them
// directly — no hints, no prover scripting, nothing trusted beyond the
// kernel. See README.md next to this file.

fn square(side: u32) -> (a: u64)
    requires side < 100,
    ensures a as int == side * side,
{
    (side as u64) * (side as u64)
}

fn area(w: u32, h: u32) -> (a: u64)
    requires w < 10000, h < 10000,
    ensures a as int == w * h,
{
    (w as u64) * (h as u64)
}

fn main() {}

}
