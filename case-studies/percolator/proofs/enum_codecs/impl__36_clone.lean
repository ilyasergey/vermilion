import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.impl__36.clone

-- vrml:begin enum_codecs.impl__36.clone.ensures_0 a830da23a2bb24ba
/--
Generated VC `enum_codecs.impl__36.clone.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:59:10-59:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `a830da23a2bb24ba`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 59
  startColumn := 10
  endLine := 59
  endColumn := 15
  assertId := "0"
  functionName := "enum_codecs.impl__36.clone"
  kind := "ensures"
  statementHash := "a830da23a2bb24ba"
}
@[vrml_obligation] theorem ensures_0
    (self : enum_codecs.BackingBucketStatusV16) :
    self = self := by
  vrml
-- vrml:end enum_codecs.impl__36.clone.ensures_0

end enum_codecs.impl__36.clone

