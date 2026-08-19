import Vermilion.Obligations
import result_gates.Specs
import result_gates.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace result_gates.impl__1.clone

-- vrml:begin result_gates.impl__1.clone.ensures_0 d5405666f23f28e2
/--
Generated VC `result_gates.impl__1.clone.ensures_0`.

- Rust source: `case-studies/percolator/result_gates.rs:11:10-11:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `d5405666f23f28e2`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/result_gates.rs"
  startLine := 11
  startColumn := 10
  endLine := 11
  endColumn := 15
  assertId := "0"
  functionName := "result_gates.impl__1.clone"
  kind := "ensures"
  statementHash := "d5405666f23f28e2"
}
@[vrml_obligation] theorem ensures_0
    (self : result_gates.V16Error) :
    self = self := by
  vrml
-- vrml:end result_gates.impl__1.clone.ensures_0

end result_gates.impl__1.clone

