import Mathlib.Data.Set.Basic
import Mathlib.Data.Finset.Card

/-! # `vstd::set` — the Vermilion mirror

The model for vstd's finite `Set` (a `Finset`) and its spec surface, in
namespace `Vermilion.Set`. -/

namespace Vermilion

/-- Base-camp finite-set representation: vstd's finite `Set` is a
`Finset`, so membership, cardinality, and extensional equality carry
Mathlib's lemma library. -/
abbrev Set (α : Type u) := Finset α

namespace Set

def empty : Set α := ∅

def insert [DecidableEq α] (s : Set α) (x : α) : Set α := Insert.insert x s

def contains (s : Set α) (x : α) : Prop := x ∈ s

def remove [DecidableEq α] (s : Set α) (x : α) : Set α := s.erase x

def len (s : Set α) : Int := s.card

@[simp] theorem contains_empty (x : α) : ¬ (empty : Set α).contains x := by
  simp [contains, empty]

@[simp] theorem contains_insert [DecidableEq α] (s : Set α) (x y : α) :
    (s.insert x).contains y ↔ y = x ∨ s.contains y := by
  simp [contains, insert]

@[simp] theorem contains_remove [DecidableEq α] (s : Set α) (x y : α) :
    (s.remove x).contains y ↔ y ≠ x ∧ s.contains y := by
  simp [contains, remove]

@[simp] theorem len_empty : (empty : Set α).len = 0 := rfl

@[simp] theorem len_nonneg (s : Set α) : 0 ≤ s.len := by
  simp [len]

theorem len_insert [DecidableEq α] (s : Set α) (x : α) :
    (s.insert x).len = if x ∈ s then s.len else s.len + 1 := by
  simp only [len, insert, Finset.card_insert_eq_ite]
  split <;> simp

@[simp] theorem len_insert_new [DecidableEq α] (s : Set α) (x : α)
    (fresh : ¬ s.contains x) : (s.insert x).len = s.len + 1 := by
  simp only [contains] at fresh
  simp [len_insert, fresh]

@[simp] theorem len_insert_old [DecidableEq α] (s : Set α) (x : α)
    (present : s.contains x) : (s.insert x).len = s.len := by
  simp only [contains] at present
  simp [len_insert, present]

@[simp] theorem len_remove_present [DecidableEq α] (s : Set α) (x : α)
    (present : s.contains x) : (s.remove x).len = s.len - 1 := by
  simp only [contains] at present
  have one_le : 1 ≤ s.card := Finset.one_le_card.mpr ⟨x, present⟩
  simp only [len, remove, Finset.card_erase_of_mem present]
  omega

end Set
end Vermilion
