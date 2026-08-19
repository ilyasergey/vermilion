import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.left_shift_by_one_is_mul2

-- vrml:begin power_of_2.left_shift_by_one_is_mul2.ensures_0 3121f3d0dc633911
/--
Generated VC `power_of_2.left_shift_by_one_is_mul2.ensures_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:31:9-31:45`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `3121f3d0dc633911`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 31
  startColumn := 9
  endLine := 31
  endColumn := 45
  assertId := "0"
  functionName := "power_of_2.left_shift_by_one_is_mul2"
  kind := "ensures"
  statementHash := "3121f3d0dc633911"
}
@[vrml_obligation] theorem ensures_0
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e > 0)
    (requires_3 : e ≤ 32)
    (requires_4 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1) :
    Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296) := by
  rw [requires_4]
  simp only [Vermilion.Bits.shl]
  have hinner :
      BitVec.ofInt 32 ((BitVec.ofInt 32 bv <<< ((e - 1) % 4294967296).toNat).toNat : Int) =
        BitVec.ofInt 32 bv <<< ((e - 1) % 4294967296).toNat := by
    simp only [BitVec.ofInt_natCast, BitVec.ofNat_toNat, BitVec.setWidth_eq]
  rw [hinner]
  rw [BitVec.toNat_shiftLeft]
  rw [Nat.shiftLeft_eq]
  have hone : Int.toNat 1 = 1 := rfl
  rw [hone, pow_one]
  rw [Int.natCast_emod]
  norm_num only [Int.natCast_mul, Int.natCast_pow]
  let a : Int := (BitVec.ofInt 32 bv <<< ((e - 1) % 4294967296).toNat).toNat
  change (a * 2) % 4294967296 = (2 * a) % 4294967296
  rw [Int.mul_comm]
-- vrml:end power_of_2.left_shift_by_one_is_mul2.ensures_0

end power_of_2.left_shift_by_one_is_mul2

