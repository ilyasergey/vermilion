import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.impl__22.clone

-- vrml:begin enum_codecs.impl__22.clone.ensures_0 65fbed10fe84927b
/--
Generated VC `enum_codecs.impl__22.clone.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:42:10-42:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `65fbed10fe84927b`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 42
  startColumn := 10
  endLine := 42
  endColumn := 15
  assertId := "0"
  functionName := "enum_codecs.impl__22.clone"
  kind := "ensures"
  statementHash := "65fbed10fe84927b"
}
@[vrml_obligation] theorem ensures_0
    (self : enum_codecs.AssetLifecycleV16) :
    self = self := by
  vrml
-- vrml:end enum_codecs.impl__22.clone.ensures_0

end enum_codecs.impl__22.clone

