import Mathlib.Data.Int.Basic
import Mathlib.Tactic.Positivity

/-! # vstd `wrapping` mirror (unsigned)

Model definitions for vstd's `wrapping_{add,sub,mul}` spec fns on the
unsigned widths, resolved through the mirror registry
(`Vermilion.Vstd.Registry`) instead of being re-emitted per generated
module. The model is the plain Euclidean remainder — extensionally
equal to vstd's branching definitions on every input the lowering can
produce (machine-int values travel with `urange` facts, and `emod` by
`2^w` agrees with vstd's add/sub branch arithmetic on all of `Int`
anyway):

    vstd: if x + y > MAX { x + y - 2^w } else { x + y }   (as uN)
    here: (x + y) % 2^w

The lemma surface is the one twin proofs actually use: the definitional
`% 2^w` reading, and the in-range collapse. -/

namespace Vermilion.Vstd.Wrapping

/-- Wrapping addition at width `w`: `(x + y) % 2^w`. -/
def add (w : Nat) (x y : Int) : Int := (x + y) % (2 : Int) ^ w

/-- Wrapping subtraction at width `w`: `(x - y) % 2^w`. -/
def sub (w : Nat) (x y : Int) : Int := (x - y) % (2 : Int) ^ w

/-- Wrapping multiplication at width `w`: `(x * y) % 2^w`. -/
def mul (w : Nat) (x y : Int) : Int := (x * y) % (2 : Int) ^ w

@[simp] theorem add_def (w : Nat) (x y : Int) :
    add w x y = (x + y) % (2 : Int) ^ w := rfl
@[simp] theorem sub_def (w : Nat) (x y : Int) :
    sub w x y = (x - y) % (2 : Int) ^ w := rfl
@[simp] theorem mul_def (w : Nat) (x y : Int) :
    mul w x y = (x * y) % (2 : Int) ^ w := rfl

/-- In-range wrapping addition is addition. -/
theorem add_eq_of_range (w : Nat) (x y : Int)
    (low : 0 ≤ x + y) (high : x + y < (2 : Int) ^ w) :
    add w x y = x + y := Int.emod_eq_of_lt low high

/-- In-range wrapping subtraction is subtraction. -/
theorem sub_eq_of_range (w : Nat) (x y : Int)
    (low : 0 ≤ x - y) (high : x - y < (2 : Int) ^ w) :
    sub w x y = x - y := Int.emod_eq_of_lt low high

/-- In-range wrapping multiplication is multiplication. -/
theorem mul_eq_of_range (w : Nat) (x y : Int)
    (low : 0 ≤ x * y) (high : x * y < (2 : Int) ^ w) :
    mul w x y = x * y := Int.emod_eq_of_lt low high

/-- Wrapping results are unsigned-in-range (the fact the generator
assumes about every machine-op result); stated as a plain conjunction —
this file precedes the prelude in the import chain. -/
theorem add_range (w : Nat) (x y : Int) :
    0 ≤ add w x y ∧ add w x y < (2 : Int) ^ w :=
  ⟨Int.emod_nonneg _ (by positivity), Int.emod_lt_of_pos _ (by positivity)⟩
theorem sub_range (w : Nat) (x y : Int) :
    0 ≤ sub w x y ∧ sub w x y < (2 : Int) ^ w :=
  ⟨Int.emod_nonneg _ (by positivity), Int.emod_lt_of_pos _ (by positivity)⟩
theorem mul_range (w : Nat) (x y : Int) :
    0 ≤ mul w x y ∧ mul w x y < (2 : Int) ^ w :=
  ⟨Int.emod_nonneg _ (by positivity), Int.emod_lt_of_pos _ (by positivity)⟩

end Vermilion.Vstd.Wrapping

namespace Vermilion.Vstd.Wrapping

/-! Per-width abbreviations — the names the mirror registry resolves. -/
abbrev u8_add := add 8
abbrev u8_sub := sub 8
abbrev u8_mul := mul 8
abbrev u16_add := add 16
abbrev u16_sub := sub 16
abbrev u16_mul := mul 16
abbrev u32_add := add 32
abbrev u32_sub := sub 32
abbrev u32_mul := mul 32
abbrev u64_add := add 64
abbrev u64_sub := sub 64
abbrev u64_mul := mul 64
abbrev u128_add := add 128
abbrev u128_sub := sub 128
abbrev u128_mul := mul 128
/-- `usize` is arch-neutral 64-bit in the embedding (docs/ir.md). -/
abbrev usize_add := add 64
abbrev usize_sub := sub 64
abbrev usize_mul := mul 64

end Vermilion.Vstd.Wrapping
