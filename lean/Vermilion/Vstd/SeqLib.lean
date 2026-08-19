import Vermilion.Vstd.Seq
import Vermilion.Vstd.Multiset

/-! # `vstd::seq_lib` — the Vermilion mirror

The extended `Seq` surface (`first`/`last`/`drop_last`/`drop_first`/
`remove`/`contains`, the `to_multiset` bridge) mirroring `vstd::seq_lib`,
reopening namespace `Vermilion.Seq`. Deferred (not required by the
merge-sort acceptance test — the corresponding vstd lemmas enter as
droppable hints): the `remove` half of `to_multiset_ensures`,
`sorted_by`/`lemma_sorted_unique` (spec-closure comparators). -/

namespace Vermilion

namespace Seq

/-! ### The wider `vstd::seq`/`vstd::seq_lib` spec-fn surface

Model definitions mirroring vstd's spec fns beyond the base operations,
each faithful to the vstd body (which is itself defined over subrange/
index/add). Twins reference these as `Vermilion.Seq.*`; the vstd mirror
registry (`Vermilion/Vstd/Registry.lean`) maps the vstd paths here. -/

/-- vstd `Seq::first` = `self[0]`. -/
def first [Inhabited α] (s : Seq α) : α := s.index 0

/-- vstd `Seq::last` = `self[len - 1]`. -/
def last [Inhabited α] (s : Seq α) : α := s.index (s.len - 1)

/-- vstd `Seq::drop_last` = `subrange(0, len - 1)`. -/
def dropLast (s : Seq α) : Seq α := s.subrange 0 (s.len - 1)

/-- vstd `Seq::drop_first` = `subrange(1, len)`. -/
def dropFirst (s : Seq α) : Seq α := s.subrange 1 s.len

/-- vstd `Seq::remove i` = `subrange(0, i) + subrange(i + 1, len)`. -/
def remove (s : Seq α) (i : Int) : Seq α :=
  (s.subrange 0 i).add (s.subrange (i + 1) s.len)

/-- vstd `Seq::contains needle` = `∃ i, 0 ≤ i < len ∧ self[i] = needle`. -/
def contains [Inhabited α] (s : Seq α) (x : α) : Prop :=
  ∃ i : Int, (0 ≤ i ∧ i < s.len) ∧ s.index i = x

/-- vstd `Seq::sort_by leq`: the sequence sorted by the comparator `leq`.
vstd defines it as a CLOSED recursive merge sort but characterizes it
ONLY through `lemma_sort_by_ensures` (sorted permutation) and
`lemma_sorted_unique` — both vstd-PROVED proof fns, assumed at their call
sites like any external contract. We model `sort_by` abstractly (an
opaque total function); its behaviour reaches obligations through those
assumed lemmas, not this definition. Reproving the vstd lemmas here is out
of scope — vstd's own proof of `lemma_sorted_unique` uses Hilbert
`choose`. -/
opaque sortBy [Inhabited α] (s : Seq α) (leq : α → α → Prop) : Seq α

/-- `drop_last` shrinks the length by one (in range). -/
@[simp] theorem len_dropLast (s : Seq α) (h : 0 < s.len) :
    s.dropLast.len = s.len - 1 := by
  have := len_nonneg s
  simp only [dropLast]
  rw [len_subrange s 0 (s.len - 1) (by omega) (by omega) (by omega)]; omega

/-- Indexing `drop_last` below its length reads the base sequence. -/
@[simp] theorem index_dropLast [Inhabited α] (s : Seq α) (i : Int)
    (low : 0 ≤ i) (high : i < s.len - 1) : s.dropLast.index i = s.index i := by
  simp only [dropLast]
  rw [index_subrange s 0 (s.len - 1) i (by omega) low (by omega)]; simp

/-- vstd's `drop_last_distributes_over_add`: `(a + b).drop_last = a +
b.drop_last` when `b` is nonempty. -/
theorem dropLast_add (a b : Seq α) (h : 0 < b.len) :
    (a.add b).dropLast = a.add b.dropLast := by
  have hb : 0 < b.length := by simpa [len] using h
  simp only [dropLast, add, subrange, len, Int.toNat_zero, List.drop_zero]
  have e1 : (((a ++ b).length : Int) - 1 - 0).toNat = a.length + (b.length - 1) := by
    simp only [List.length_append]; omega
  have e2 : ((b.length : Int) - 1 - 0).toNat = b.length - 1 := by omega
  rw [e1, e2, List.take_append]
  have ht : List.take (a.length + (b.length - 1)) a = a :=
    List.take_of_length_le (by omega)
  have he : a.length + (b.length - 1) - a.length = b.length - 1 := by omega
  rw [ht, he]

/-- `remove` at an in-range index shrinks the length by one. -/
@[simp] theorem len_remove (s : Seq α) (i : Int)
    (low : 0 ≤ i) (high : i < s.len) : (s.remove i).len = s.len - 1 := by
  have := len_nonneg s
  simp only [remove]
  rw [len_add, len_subrange s 0 i (by omega) low (by omega),
    len_subrange s (i + 1) s.len (by omega) (by omega) (by omega)]
  omega

end Seq

/-! ### Sequence → multiset bridge (vstd `Seq::to_multiset`)

Verus keeps `to_multiset` CLOSED and exposes its behaviour through the
`to_multiset_ensures` broadcast lemmas. Here it is definitionally the
underlying `List` coerced to Mathlib's `Multiset`, so that lemma surface is
library-fact territory (proved, kernel-checked) instead of an
axiomatization. -/

namespace Seq

/-- vstd `Seq::to_multiset`: the multiset of a sequence's elements, order
forgotten. -/
def toMultiset (s : Seq α) : Vermilion.Multiset α := (s : _root_.Multiset α)

@[simp] theorem toMultiset_empty : (empty : Seq α).toMultiset = Multiset.empty :=
  rfl

/-- `to_multiset` turns concatenation into multiset sum (the fact
`mergesort.rs` proves by hand as `lemma_to_multiset_distributes_over_add`). -/
@[simp, grind =] theorem toMultiset_add (s1 s2 : Seq α) :
    (s1.add s2).toMultiset = s1.toMultiset + s2.toMultiset := by
  simp [toMultiset, add]

/-- `to_multiset` turns `push` into multiset insertion (vstd's
`to_multiset_build`). -/
@[simp, grind =] theorem toMultiset_push (s : Seq α) (x : α) :
    (s.push x).toMultiset = s.toMultiset.insert x := by
  simp only [toMultiset, push, Multiset.insert, Multiset.cons_coe]
  exact Multiset.coe_eq_coe.mpr (List.perm_append_singleton x s)

/-- `to_multiset` preserves length (vstd's `to_multiset_len`). -/
@[simp] theorem toMultiset_len (s : Seq α) : s.toMultiset.len = s.len := by
  simp [toMultiset, Multiset.len, len]

/-- `to_multiset` reflects membership (vstd's `to_multiset_contains`):
`s.contains a ↔ s.to_multiset().count(a) > 0`. -/
theorem toMultiset_contains [Inhabited α] [DecidableEq α] (s : Seq α) (a : α) :
    s.contains a ↔ 0 < s.toMultiset.count a := by
  have hcount : 0 < s.toMultiset.count a ↔ a ∈ (s : List α) := by
    rw [toMultiset, Multiset.count, _root_.Multiset.coe_count]
    constructor
    · intro h; exact List.count_pos_iff.mp (by exact_mod_cast h)
    · intro h; exact_mod_cast List.count_pos_iff.mpr h
  rw [hcount, contains]
  constructor
  · rintro ⟨i, ⟨hi0, hilt⟩, rfl⟩
    have hb : i.toNat < s.length := by simp only [len] at hilt; omega
    simp only [index, if_pos hi0, List.getD_eq_getElem s default hb]
    exact List.getElem_mem hb
  · intro h
    obtain ⟨n, hn, hval⟩ := List.mem_iff_getElem.mp h
    refine ⟨(n : Int), ⟨Int.natCast_nonneg n, ?_⟩, ?_⟩
    · simp only [len]; exact_mod_cast hn
    · simp only [index, if_pos (Int.natCast_nonneg n), Int.toNat_natCast,
        List.getD_eq_getElem s default hn]; exact hval

end Seq
end Vermilion
