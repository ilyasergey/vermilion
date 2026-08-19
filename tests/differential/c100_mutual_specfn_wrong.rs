// expect: fail @ 18
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
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
    assert(is_odd(4)); // it is even
}
}
