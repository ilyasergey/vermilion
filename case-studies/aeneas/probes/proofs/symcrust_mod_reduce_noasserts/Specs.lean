import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec symcrust_mod_reduce_noasserts.Q case-studies/aeneas/probes/symcrust_mod_reduce_noasserts.rs:16:1
def symcrust_mod_reduce_noasserts.Q : Int :=
  3329


-- vrml:user:begin
/-- Logical right shift by 16 at width 32 is division by `2^16` for
in-range operands — the bridge from `Bits.shr` to the arithmetic the
branchless-mask reasoning below runs on. -/
theorem shr32_sixteen_eq_div (x : Int)
    (low : 0 ≤ x) (high : x < 4294967296) :
    Vermilion.Bits.shr 32 x 16 = x / 65536 := by
  have hto : (((BitVec.ofInt 32 x)).toNat : Int) = x :=
    Vermilion.Bits.toNat_ofInt_of_range 32 x low (by norm_num; exact high)
  simp only [Vermilion.Bits.shr, BitVec.toNat_ushiftRight,
    Nat.shiftRight_eq_div_pow]
  rw [show (16 : Int).toNat = 16 from rfl, show (2 : Nat) ^ 16 = 65536 from rfl]
  omega

/-- `Q & 0xffff = Q` at width 32 (Q = 3329 fits in 16 bits). -/
theorem band32_q_ffff :
    Vermilion.Bits.band 32 3329 65535 = 3329 := by decide
-- vrml:user:end
