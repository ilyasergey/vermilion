import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.impl__8.clone

-- vrml:begin enum_codecs.impl__8.clone.ensures_0 f2ef66ef5dc166f0
/--
Generated VC `enum_codecs.impl__8.clone.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:29:10-29:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `f2ef66ef5dc166f0`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 29
  startColumn := 10
  endLine := 29
  endColumn := 15
  assertId := "0"
  functionName := "enum_codecs.impl__8.clone"
  kind := "ensures"
  statementHash := "f2ef66ef5dc166f0"
}
@[vrml_obligation] theorem ensures_0
    (self : enum_codecs.SideV16) :
    self = self := by
  vrml
-- vrml:end enum_codecs.impl__8.clone.ensures_0

end enum_codecs.impl__8.clone

