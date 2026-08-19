import Vermilion.Obligations
import wide_math_u256_basics.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_u256_basics.impl__1.clone

-- vrml:begin wide_math_u256_basics.impl__1.clone.ensures_0 78deb3ff53489cbd
/--
Generated VC `wide_math_u256_basics.impl__1.clone.ensures_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:12:10-12:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `78deb3ff53489cbd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 12
  startColumn := 10
  endLine := 12
  endColumn := 15
  assertId := "0"
  functionName := "wide_math_u256_basics.impl__1.clone"
  kind := "ensures"
  statementHash := "78deb3ff53489cbd"
}
@[vrml_obligation] theorem ensures_0
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0)))) :
    self = self := by
  vrml
-- vrml:end wide_math_u256_basics.impl__1.clone.ensures_0

end wide_math_u256_basics.impl__1.clone

