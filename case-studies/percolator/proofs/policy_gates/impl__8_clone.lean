import Vermilion.Obligations
import policy_gates.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace policy_gates.impl__8.clone

-- vrml:begin policy_gates.impl__8.clone.ensures_0 c0a0f3033ee02af1
/--
Generated VC `policy_gates.impl__8.clone.ensures_0`.

- Rust source: `case-studies/percolator/policy_gates.rs:17:10-17:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `c0a0f3033ee02af1`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/policy_gates.rs"
  startLine := 17
  startColumn := 10
  endLine := 17
  endColumn := 15
  assertId := "0"
  functionName := "policy_gates.impl__8.clone"
  kind := "ensures"
  statementHash := "c0a0f3033ee02af1"
}
@[vrml_obligation] theorem ensures_0
    (self : policy_gates.SideModeV16) :
    self = self := by
  vrml
-- vrml:end policy_gates.impl__8.clone.ensures_0

end policy_gates.impl__8.clone

