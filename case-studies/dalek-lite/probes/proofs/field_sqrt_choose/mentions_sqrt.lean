import Vermilion.Obligations
import field_sqrt_choose.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace field_sqrt_choose.mentions_sqrt

-- vrml:begin field_sqrt_choose.mentions_sqrt.ensures_0 bc2d834a4a041781
/--
Generated VC `field_sqrt_choose.mentions_sqrt.ensures_0`.

- Rust source: `case-studies/dalek-lite/probes/field_sqrt_choose.rs:54:9-54:39`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `bc2d834a4a041781`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/field_sqrt_choose.rs"
  startLine := 54
  startColumn := 9
  endLine := 54
  endColumn := 39
  assertId := "0"
  functionName := "field_sqrt_choose.mentions_sqrt"
  kind := "ensures"
  statementHash := "bc2d834a4a041781"
}
@[vrml_obligation] theorem ensures_0
    (a : Int)
    (requires_0 : 0 ≤ a) :
    field_sqrt_choose.field_sqrt a = field_sqrt_choose.field_sqrt a := by
  vrml [vstd.arithmetic.power2.pow2, field_sqrt_choose.p, field_sqrt_choose.field_canonical, field_sqrt_choose.field_mul, field_sqrt_choose.field_sqrt]
-- vrml:end field_sqrt_choose.mentions_sqrt.ensures_0

end field_sqrt_choose.mentions_sqrt

