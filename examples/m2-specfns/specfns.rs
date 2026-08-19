use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

spec fn double(x: int) -> int {
    2 * x
}

spec fn is_even(x: int) -> bool {
    x % 2 == 0
}

spec fn max_int(a: int, b: int) -> int {
    if a >= b {
        a
    } else {
        b
    }
}

/// The exec body must realize the spec-level `double`. In the generated
/// obligations the call stays an application (`specfns.double x`) whose
/// definition is emitted alongside as a real Lean `def` — never inlined,
/// never fueled.
fn double_exec(x: u32) -> (r: u32)
    requires
        x <= 1000,
    ensures
        r == double(x as int),
{
    2 * x
}

/// Spec functions compose in spec positions like any other expression.
proof fn max_bounds(a: int, b: int)
    ensures
        max_int(a, b) >= a,
        max_int(a, b) >= b,
        is_even(double(a)),
{
}

/// An opaque definition is invisible to the machine attempt until a
/// `reveal` at that program point — Verus's visibility verdicts,
/// reproduced without fuel: the obligation before the reveal carries no
/// unfold hint for `boxed`, the one after it does.
#[verifier::opaque]
spec fn boxed(x: int) -> int {
    x + 1
}

proof fn opaque_needs_reveal(x: int) {
    reveal(boxed);
    assert(boxed(2) == 3);
}

/// A recursive spec function becomes a genuinely recursive Lean
/// definition (`termination_by` justified by the same `decreases` Verus
/// checks); machine attempts unfold it by bounded rewriting — as many
/// rounds as `reveal_with_fuel` grants — never by simp, which would loop.
spec fn sum_to(n: int) -> int
    decreases n,
{
    if n <= 0 {
        0
    } else {
        n + sum_to(n - 1)
    }
}

proof fn sum_to_three() {
    reveal_with_fuel(sum_to, 4);
    assert(sum_to(3) == 6);
}

} // verus!
