import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.impl__43.clone

-- vrml:begin enum_codecs.impl__43.clone.ensures_0 84127a46962cfaba
/--
Generated VC `enum_codecs.impl__43.clone.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:67:10-67:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `84127a46962cfaba`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 67
  startColumn := 10
  endLine := 67
  endColumn := 15
  assertId := "0"
  functionName := "enum_codecs.impl__43.clone"
  kind := "ensures"
  statementHash := "84127a46962cfaba"
}
@[vrml_obligation] theorem ensures_0
    (self : enum_codecs.PermissionlessRecoveryReasonV16) :
    self = self := by
  vrml
-- vrml:end enum_codecs.impl__43.clone.ensures_0

end enum_codecs.impl__43.clone

