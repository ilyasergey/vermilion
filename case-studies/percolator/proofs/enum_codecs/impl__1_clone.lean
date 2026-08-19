import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.impl__1.clone

-- vrml:begin enum_codecs.impl__1.clone.ensures_0 1bc74ebea0c40083
/--
Generated VC `enum_codecs.impl__1.clone.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:11:10-11:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `1bc74ebea0c40083`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 11
  startColumn := 10
  endLine := 11
  endColumn := 15
  assertId := "0"
  functionName := "enum_codecs.impl__1.clone"
  kind := "ensures"
  statementHash := "1bc74ebea0c40083"
}
@[vrml_obligation] theorem ensures_0
    (self : enum_codecs.V16Error) :
    self = self := by
  vrml
-- vrml:end enum_codecs.impl__1.clone.ensures_0

end enum_codecs.impl__1.clone

