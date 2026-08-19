use vstd::prelude::*;

verus! {

/// Mutually recursive spec fns become one Lean `mutual` block, each
/// with its own `termination_by` from the Verus-checked decreases.
spec fn is_even(n: nat) -> bool
    decreases n
{
    if n == 0 { true } else { is_odd((n - 1) as nat) }
}

spec fn is_odd(n: nat) -> bool
    decreases n
{
    if n == 0 { false } else { is_even((n - 1) as nat) }
}

proof fn check() {
    reveal_with_fuel(is_even, 6);
    reveal_with_fuel(is_odd, 6);
    assert(is_even(4));
    assert(!is_odd(2));
}

fn main() {}

}
