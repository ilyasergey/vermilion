use vstd::prelude::*;

verus! {

/// `forall` over a `nat` becomes a genuine Lean `∀ (i : Int)` with the
/// `0 ≤ i` guard folded in — Verus's own typ_invariant discipline,
/// carried structurally. Triggers never reach the IR: they are SMT
/// instantiation hints with no Lean meaning.
proof fn pushed_bound(s: Seq<int>, x: int, bound: int)
    requires
        x <= bound,
        forall|i: int| 0 <= i < s.len() ==> #[trigger] s.index(i) <= bound,
    ensures
        forall|i: int| 0 <= i < s.push(x).len() ==> #[trigger] s.push(x).index(i) <= bound,
{
}

/// An existential witness flows from the requires to the ensures.
proof fn witness_shift(y: int)
    requires
        exists|x: int| #[trigger] (x + x) == y,
    ensures
        exists|x: int| #[trigger] (x + x) == y + 2,
{
}

} // verus!
