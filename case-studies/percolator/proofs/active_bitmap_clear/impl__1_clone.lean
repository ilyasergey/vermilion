import Vermilion.Obligations
import active_bitmap_clear.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace active_bitmap_clear.impl__1.clone

-- vrml:begin active_bitmap_clear.impl__1.clone.ensures_0 4f80173d06143bd4
/--
Generated VC `active_bitmap_clear.impl__1.clone.ensures_0`.

- Rust source: `case-studies/percolator/active_bitmap_clear.rs:15:10-15:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `4f80173d06143bd4`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_clear.rs"
  startLine := 15
  startColumn := 10
  endLine := 15
  endColumn := 15
  assertId := "0"
  functionName := "active_bitmap_clear.impl__1.clone"
  kind := "ensures"
  statementHash := "4f80173d06143bd4"
}
@[vrml_obligation] theorem ensures_0
    (self : active_bitmap_clear.V16Error) :
    self = self := by
  vrml [active_bitmap_clear.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_clear.impl__1.clone.ensures_0

end active_bitmap_clear.impl__1.clone

