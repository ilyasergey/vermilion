import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.impl__29.clone

-- vrml:begin enum_codecs.impl__29.clone.ensures_0 9a1c7ae818db3770
/--
Generated VC `enum_codecs.impl__29.clone.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:52:10-52:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `9a1c7ae818db3770`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 52
  startColumn := 10
  endLine := 52
  endColumn := 15
  assertId := "0"
  functionName := "enum_codecs.impl__29.clone"
  kind := "ensures"
  statementHash := "9a1c7ae818db3770"
}
@[vrml_obligation] theorem ensures_0
    (self : enum_codecs.MarketModeV16) :
    self = self := by
  vrml
-- vrml:end enum_codecs.impl__29.clone.ensures_0

end enum_codecs.impl__29.clone

