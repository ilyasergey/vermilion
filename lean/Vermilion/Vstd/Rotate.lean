import Vermilion.Prelude

/-! # vstd unsigned `rotate_left` mirror

The exact modulo-width definition added to the pinned Verus vstd fork. It is
kept after `Prelude` in the import graph so the established bit-operation
library remains in its original module and import order. -/

namespace Vermilion.Vstd.Rotate

/-- Unsigned rotation at width `w`, exactly following vstd's definition:
reduce the Rust `u32` count modulo the lane width, preserve `x` at zero,
and otherwise combine the two truncating/logical shifts. -/
def rotateLeft (w : Nat) (x shift : Int) : Int :=
  let shift := shift % (w : Int)
  if shift = 0 then x
  else Vermilion.Bits.bor w
    (Vermilion.Bits.shl w x shift)
    (Vermilion.Bits.shr w x ((w : Int) - shift))

@[simp] theorem rotateLeft_def (w : Nat) (x shift : Int) :
    rotateLeft w x shift =
      let reduced := shift % (w : Int)
      if reduced = 0 then x
      else Vermilion.Bits.bor w
        (Vermilion.Bits.shl w x reduced)
        (Vermilion.Bits.shr w x ((w : Int) - reduced)) := rfl

@[simp] theorem rotateLeft_zero (w : Nat) (x : Int) :
    rotateLeft w x 0 = x := by simp [rotateLeft]

@[simp] theorem rotateLeft_width (w : Nat) (x : Int) :
    rotateLeft w x w = x := by simp [rotateLeft]

/-- A rotation preserves the unsigned lane range when its input is a lane. -/
theorem rotateLeft_range (w : Nat) (x shift : Int)
    (low : 0 ≤ x) (high : x < (2 : Int) ^ w) :
    0 ≤ rotateLeft w x shift ∧ rotateLeft w x shift < (2 : Int) ^ w := by
  simp only [rotateLeft]
  split
  · exact ⟨low, high⟩
  · exact ⟨Vermilion.Bits.bor_nonneg _ _ _, Vermilion.Bits.bor_lt _ _ _⟩

abbrev u8_rotate_left := rotateLeft 8
abbrev u16_rotate_left := rotateLeft 16
abbrev u32_rotate_left := rotateLeft 32
abbrev u64_rotate_left := rotateLeft 64
abbrev u128_rotate_left := rotateLeft 128
/-- `usize` is arch-neutral 64-bit in the embedding (docs/ir.md). -/
abbrev usize_rotate_left := rotateLeft 64

end Vermilion.Vstd.Rotate
