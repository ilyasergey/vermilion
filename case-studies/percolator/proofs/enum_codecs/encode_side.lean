import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.encode_side

-- vrml:begin enum_codecs.encode_side.ensures_0 90142118d99d9ad5
/--
Generated VC `enum_codecs.encode_side.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:81:9-84:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `90142118d99d9ad5`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 81
  startColumn := 9
  endLine := 84
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.encode_side"
  kind := "ensures"
  statementHash := "90142118d99d9ad5"
}
@[vrml_obligation] theorem ensures_0
    (value : enum_codecs.SideV16) :
    (Vermilion.iteP (enum_codecs.SideV16.is_Long value) 0 1) = (Vermilion.iteP (enum_codecs.SideV16.is_Long value) 0 1) := by
  vrml
-- vrml:end enum_codecs.encode_side.ensures_0

end enum_codecs.encode_side

