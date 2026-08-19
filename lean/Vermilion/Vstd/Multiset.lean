import Mathlib.Data.Multiset.AddSub

/-! # `vstd::multiset` — the Vermilion mirror

The model for vstd's `Multiset` (Mathlib's `Multiset`) and its base spec
surface, in namespace `Vermilion.Multiset` — twins and generated modules
reference these names regardless of file location. The vstd-path →
Lean-name index lives in `Vermilion/Vstd/Registry.lean`; a build-time
probe checks every registered name exists. Everything here is proved Lean
code over the model — nothing enters the trusted base (docs/trust.md). -/

namespace Vermilion

/-- Base-camp multiset representation: Mathlib's `Multiset`, so counts,
cardinality, and extensionality carry its lemma library. -/
abbrev Multiset (α : Type u) := _root_.Multiset α

namespace Multiset

def empty : Multiset α := 0

def insert (m : Multiset α) (x : α) : Multiset α := x ::ₘ m

def count [DecidableEq α] (m : Multiset α) (x : α) : Int :=
  _root_.Multiset.count x m

def len (m : Multiset α) : Int := _root_.Multiset.card m

/-- vstd `Multiset::remove a`: remove ONE occurrence of `a`. -/
def remove [DecidableEq α] (m : Multiset α) (x : α) : Multiset α :=
  _root_.Multiset.erase m x

@[simp] theorem count_empty [DecidableEq α] (x : α) :
    (empty : Multiset α).count x = 0 := by
  simp [count, empty]

@[simp] theorem count_insert_same [DecidableEq α] (m : Multiset α) (x : α) :
    (m.insert x).count x = m.count x + 1 := by
  simp [count, insert]

@[simp] theorem count_insert_other [DecidableEq α] (m : Multiset α)
    (x y : α) (ne : y ≠ x) : (m.insert x).count y = m.count y := by
  simp [count, insert, ne]

@[simp] theorem count_nonneg [DecidableEq α] (m : Multiset α) (x : α) :
    0 ≤ m.count x := by
  simp [count]

@[simp] theorem len_empty : (empty : Multiset α).len = 0 := rfl

@[simp] theorem len_insert (m : Multiset α) (x : α) :
    (m.insert x).len = m.len + 1 := by
  simp [len, insert]

@[simp] theorem len_nonneg (m : Multiset α) : 0 ≤ m.len := by
  simp [len]

/- Associativity/commutativity shuffles for interactive proofs: the prelude
deliberately imports a small Mathlib slice without the `AddCommMonoid`
instance for `Multiset`, so the generic `add_right_comm`/`add_left_comm`
are not available — these concrete forms are. -/

theorem add_right_comm (s t u : Multiset α) : s + t + u = s + u + t := by
  rw [_root_.Multiset.add_assoc, _root_.Multiset.add_comm t u,
    ← _root_.Multiset.add_assoc]

theorem add_left_comm (s t u : Multiset α) : s + (t + u) = t + (s + u) := by
  rw [← _root_.Multiset.add_assoc, _root_.Multiset.add_comm s t,
    _root_.Multiset.add_assoc]

end Multiset
end Vermilion
