import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive vermilion.tuple_0 where
  | tuple_0
deriving Inhabited

@[simp, grind] def vermilion.tuple_0.is_tuple_0 : vermilion.tuple_0 → Prop
  | .tuple_0 => True
instance (x : vermilion.tuple_0) : Decidable (vermilion.tuple_0.is_tuple_0 x) := by
  cases x
  exact isTrue trivial

-- vrml:spec mergesort.is_sorted case-studies/merge-sort/mergesort.rs:18:1
def mergesort.is_sorted (v : (Vermilion.Seq Int)) : Prop :=
  (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i < j)) ∧ (j < Vermilion.Seq.len v)) → (Vermilion.Seq.index v i ≤ Vermilion.Seq.index v j)))


-- vrml:user:begin
/-! ## Interactive-proof helpers (user-owned section)

Everything between `vrml:user:begin` and `vrml:user:end` survives
regeneration verbatim. The general `Seq`/multiset model facts live in the
Vermilion prelude (`subrange_push`, `subrange_add_subrange`, `subrange_all`,
`add_push`, `toMultiset_add/push`); the lemmas here are about THIS program's
`is_sorted` predicate — the extrinsic Lean counterparts of what the verbatim
Verus source (`mergesort.rs`) proves with inline lemma invocations. -/

namespace MergeSortHelpers

open Vermilion

/-- Pushing an element no smaller than every current element keeps the
sequence sorted. -/
theorem is_sorted_push (r : Seq Int) (x : Int)
    (hr : mergesort.is_sorted r)
    (hx : ∀ i : Int, 0 ≤ i → i < Seq.len r → Seq.index r i ≤ x) :
    mergesort.is_sorted (Seq.push r x) := by
  intro i j hij
  obtain ⟨⟨hi0, hij'⟩, hj⟩ := hij
  rw [Seq.len_push] at hj
  by_cases hjr : j < Seq.len r
  · rw [Seq.index_push_prefix _ _ i hi0 (by omega),
      Seq.index_push_prefix _ _ j (by omega) hjr]
    exact hr i j ⟨⟨hi0, hij'⟩, hjr⟩
  · have hj_eq : j = Seq.len r := by omega
    rw [Seq.index_push_prefix _ _ i hi0 (by omega), hj_eq, Seq.index_push_last]
    exact hx i hi0 (by omega)

/-- Concatenating sorted sequences stays sorted when every left element is
bounded by every right element. -/
theorem is_sorted_add (r s : Seq Int)
    (hr : mergesort.is_sorted r) (hs : mergesort.is_sorted s)
    (hcross : ∀ i j : Int, 0 ≤ i → i < Seq.len r → 0 ≤ j → j < Seq.len s →
      Seq.index r i ≤ Seq.index s j) :
    mergesort.is_sorted (Seq.add r s) := by
  intro i j hij
  obtain ⟨⟨hi0, hij'⟩, hj⟩ := hij
  rw [Seq.len_add] at hj
  have hrlen := Seq.len_nonneg r
  have hslen := Seq.len_nonneg s
  by_cases hir : i < Seq.len r
  · rw [Seq.index_add_left _ _ i hi0 hir]
    by_cases hjr : j < Seq.len r
    · rw [Seq.index_add_left _ _ j (by omega) hjr]
      exact hr i j ⟨⟨hi0, hij'⟩, hjr⟩
    · rw [Seq.index_add_right _ _ j (by omega)]
      exact hcross i (j - Seq.len r) hi0 hir (by omega) (by omega)
  · rw [Seq.index_add_right _ _ i (by omega), Seq.index_add_right _ _ j (by omega)]
    exact hs _ _ ⟨⟨by omega, by omega⟩, by omega⟩

/-- A subrange of a sorted sequence is sorted. -/
theorem is_sorted_subrange (v : Seq Int) (a b : Int)
    (hv : mergesort.is_sorted v)
    (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ Seq.len v) :
    mergesort.is_sorted (Seq.subrange v a b) := by
  intro i j hij
  obtain ⟨⟨hi0, hij'⟩, hj⟩ := hij
  rw [Seq.len_subrange v a b ha hab hb] at hj
  rw [Seq.index_subrange v a b i ha hi0 (by omega),
    Seq.index_subrange v a b j ha (by omega) (by omega)]
  exact hv _ _ ⟨⟨by omega, by omega⟩, by omega⟩

/-- The merge loop's multiset invariant, one step: pushing the next LEFT
element extends the left subrange. -/
theorem multiset_step_left (v1 v2 r : Seq Int) (i1 i2 : Int)
    (h : Seq.toMultiset r
      = Seq.toMultiset (Seq.add (Seq.subrange v1 0 i1) (Seq.subrange v2 0 i2)))
    (h1 : 0 ≤ i1) (h1l : i1 < Seq.len v1) :
    Seq.toMultiset (Seq.push r (Seq.index v1 i1))
      = Seq.toMultiset (Seq.add (Seq.subrange v1 0 (i1 + 1)) (Seq.subrange v2 0 i2)) := by
  rw [← Seq.subrange_push v1 0 i1 le_rfl h1 h1l]
  simp only [Seq.toMultiset_push, Seq.toMultiset_add, h, Multiset.insert,
    ← Multiset.singleton_add]
  simp

/-- …and pushing the next RIGHT element extends the right subrange. -/
theorem multiset_step_right (v1 v2 r : Seq Int) (i1 i2 : Int)
    (h : Seq.toMultiset r
      = Seq.toMultiset (Seq.add (Seq.subrange v1 0 i1) (Seq.subrange v2 0 i2)))
    (h2 : 0 ≤ i2) (h2l : i2 < Seq.len v2) :
    Seq.toMultiset (Seq.push r (Seq.index v2 i2))
      = Seq.toMultiset (Seq.add (Seq.subrange v1 0 i1) (Seq.subrange v2 0 (i2 + 1)))
    := by
  rw [← Seq.subrange_push v2 0 i2 le_rfl h2 h2l]
  simp only [Seq.toMultiset_push, Seq.toMultiset_add, h, Multiset.insert,
    ← Multiset.singleton_add]
  simp

end MergeSortHelpers
-- vrml:user:end
