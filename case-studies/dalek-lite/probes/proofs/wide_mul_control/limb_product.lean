import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_mul_control.limb_product

-- vrml:begin wide_mul_control.limb_product.ensures_1 1ab61adf91627fc9
/--
Generated VC `wide_mul_control.limb_product.ensures_1`.

- Rust source: `case-studies/dalek-lite/probes/wide_mul_control.rs:37:9-37:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `1ab61adf91627fc9`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/wide_mul_control.rs"
  startLine := 37
  startColumn := 9
  endLine := 37
  endColumn := 46
  assertId := "1"
  functionName := "wide_mul_control.limb_product"
  kind := "ensures"
  statementHash := "1ab61adf91627fc9"
}
@[vrml_obligation] theorem ensures_1
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (assume_2 : Vermilion.inUnsignedRange 128 (Vermilion.natClip (a * b))) :
    Vermilion.natClip (a * b) = Vermilion.natClip (a * b) := by
  vrml
-- vrml:end wide_mul_control.limb_product.ensures_1

end wide_mul_control.limb_product

