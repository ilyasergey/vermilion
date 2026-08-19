import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.left_shift_by_one

-- vrml:begin power_of_2.left_shift_by_one.ensures_0 85b4d8f59bc1a418
/--
Generated VC `power_of_2.left_shift_by_one.ensures_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:17:9-17:45`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `85b4d8f59bc1a418`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 17
  startColumn := 9
  endLine := 17
  endColumn := 45
  assertId := "0"
  functionName := "power_of_2.left_shift_by_one"
  kind := "ensures"
  statementHash := "85b4d8f59bc1a418"
}
@[vrml_obligation] theorem ensures_0
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e > 0)
    (requires_3 : e ≤ 32) :
    Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1 := by
  simp only [Vermilion.inUnsignedRange] at requires_0 requires_1
  have hmod : (e - 1) % 4294967296 = e - 1 := Int.emod_eq_of_lt (by omega) (by omega)
  rw [hmod]
  have he : (e - 1).toNat + 1 = e.toNat := by omega
  simp only [Vermilion.Bits.shl]
  have hinner :
      BitVec.ofInt 32 ((BitVec.ofInt 32 bv <<< (e - 1).toNat).toNat : Int) =
        BitVec.ofInt 32 bv <<< (e - 1).toNat := by
    simp only [BitVec.ofInt_natCast, BitVec.ofNat_toNat, BitVec.setWidth_eq]
  apply congrArg (fun n : Nat => (n : Int))
  rw [hinner, ← BitVec.shiftLeft_add]
  norm_num
  have he' : e.toNat - 1 + 1 = e.toNat := by omega
  rw [he']
-- vrml:end power_of_2.left_shift_by_one.ensures_0

end power_of_2.left_shift_by_one

