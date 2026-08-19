// Seq::add (the spec `+` on sequences): concatenation. Length is additive,
// and indexing splits at the boundary — the prelude's `Seq.add` lemmas
// (`len_add`, `index_add_left`, `index_add_right`) close these.
use vstd::prelude::*;

verus! {

proof fn concat_len(s: Seq<u64>, t: Seq<u64>)
    ensures
        (s + t).len() == s.len() + t.len(),
{
}

proof fn concat_index(s: Seq<u64>, t: Seq<u64>, i: int)
    requires
        0 <= i < s.len(),
    ensures
        (s + t)[i] == s[i],
{
}

proof fn concat_index_right(s: Seq<u64>, t: Seq<u64>, j: int)
    requires
        0 <= j < t.len(),
    ensures
        (s + t)[s.len() + j] == t[j],
{
}

} // verus!
