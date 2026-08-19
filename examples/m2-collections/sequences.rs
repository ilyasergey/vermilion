use vstd::prelude::*;
use vstd::multiset::Multiset;

verus! {

/// vstd `Seq` operations in spec positions, mapped onto the named
/// `Vermilion.Seq` prelude conventions (`len`, `push`, `index`, `empty`).
proof fn push_grows(s: Seq<int>, x: int)
    ensures
        s.push(x).len() == s.len() + 1,
        s.push(x).index(s.len() as int) == x,
{
}

/// Lengths are nonnegative and `empty` has none.
proof fn empty_smallest(s: Seq<int>)
    ensures
        Seq::<int>::empty().len() == 0,
        s.len() >= Seq::<int>::empty().len(),
{
}

/// vstd `Set` in spec positions: membership through `insert`/`remove`,
/// cardinality of a fresh insertion (`Vermilion.Set` is a Lean `Finset`).
proof fn set_basics(s: Set<int>, x: int)
    ensures
        s.insert(x).contains(x),
        !s.remove(x).contains(x),
        Set::<int>::empty().len() == 0,
        !s.contains(x) ==> s.insert(x).len() == s.len() + 1,
{
}

/// vstd `Map` in spec positions: lookup after insert, domain membership.
proof fn map_basics(m: Map<int, int>, k: int, v: int)
    ensures
        m.insert(k, v)[k] == v,
        m.insert(k, v).contains_key(k),
        m.insert(k, v).dom().contains(k),
        !Map::<int, int>::empty().contains_key(k),
{
}

/// vstd `Multiset` in spec positions: counts and sizes across `insert`.
proof fn multiset_basics(m: Multiset<int>, x: int)
    ensures
        m.insert(x).count(x) == m.count(x) + 1,
        m.insert(x).len() == m.len() + 1,
        Multiset::<int>::empty().count(x) == 0,
        m.count(x) >= 0,
{
}

} // verus!
