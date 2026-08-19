import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.impl__15.clone

-- vrml:begin enum_codecs.impl__15.clone.ensures_0 f25339cca34196b3
/--
Generated VC `enum_codecs.impl__15.clone.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:35:10-35:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `f25339cca34196b3`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 35
  startColumn := 10
  endLine := 35
  endColumn := 15
  assertId := "0"
  functionName := "enum_codecs.impl__15.clone"
  kind := "ensures"
  statementHash := "f25339cca34196b3"
}
@[vrml_obligation] theorem ensures_0
    (self : enum_codecs.SideModeV16) :
    self = self := by
  vrml
-- vrml:end enum_codecs.impl__15.clone.ensures_0

end enum_codecs.impl__15.clone

