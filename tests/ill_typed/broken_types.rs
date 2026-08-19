// Deliberately ill-typed: this file must never reach the verifier. The
// suite asserts that the pipeline stops in the Verus front end (exit 3,
// phase "front-end"), that no obligations are generated or judged, and
// that the rustc error is reported at its span.
use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

fn mistyped(n: u32) -> (r: u32)
    ensures
        r == n,
{
    let wrong: u32 = true; // E0308: expected `u32`, found `bool`
    n + wrong
}

} // verus!
