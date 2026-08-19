import Vermilion.Obligations
import bounded_arithmetic.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace bounded_arithmetic.impl__1.clone

-- vrml:begin bounded_arithmetic.impl__1.clone.ensures_0 fa2493ac7a4d788e
/--
Generated VC `bounded_arithmetic.impl__1.clone.ensures_0`.

- Rust source: `case-studies/percolator/bounded_arithmetic.rs:11:10-11:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `fa2493ac7a4d788e`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/bounded_arithmetic.rs"
  startLine := 11
  startColumn := 10
  endLine := 11
  endColumn := 15
  assertId := "0"
  functionName := "bounded_arithmetic.impl__1.clone"
  kind := "ensures"
  statementHash := "fa2493ac7a4d788e"
}
@[vrml_obligation] theorem ensures_0
    (self : bounded_arithmetic.V16Error) :
    self = self := by
  vrml
-- vrml:end bounded_arithmetic.impl__1.clone.ensures_0

end bounded_arithmetic.impl__1.clone

