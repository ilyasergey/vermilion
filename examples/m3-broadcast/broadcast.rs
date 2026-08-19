use vstd::prelude::*;

verus! {

spec fn double(n: nat) -> nat {
    2 * n
}

/// A broadcast lemma: `broadcast use` injects its quantified fact into
/// the using scope. The lemma itself is verified like any proof fn.
broadcast proof fn double_even(n: nat)
    ensures #[trigger] double(n) % 2 == 0
{
}

fn user() {
    broadcast use double_even;
    assert(double(21) % 2 == 0);
}

fn main() {}

}
