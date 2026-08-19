import Vermilion.Obligations
import policy_gates.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace policy_gates.impl__22.clone

-- vrml:begin policy_gates.impl__22.clone.ensures_0 8a1cc0904407e910
/--
Generated VC `policy_gates.impl__22.clone.ensures_0`.

- Rust source: `case-studies/percolator/policy_gates.rs:34:10-34:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `8a1cc0904407e910`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/policy_gates.rs"
  startLine := 34
  startColumn := 10
  endLine := 34
  endColumn := 15
  assertId := "0"
  functionName := "policy_gates.impl__22.clone"
  kind := "ensures"
  statementHash := "8a1cc0904407e910"
}
@[vrml_obligation] theorem ensures_0
    (self : policy_gates.PermissionlessRecoveryReasonV16) :
    self = self := by
  vrml
-- vrml:end policy_gates.impl__22.clone.ensures_0

end policy_gates.impl__22.clone

