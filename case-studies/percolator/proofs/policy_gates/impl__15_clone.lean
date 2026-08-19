import Vermilion.Obligations
import policy_gates.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace policy_gates.impl__15.clone

-- vrml:begin policy_gates.impl__15.clone.ensures_0 c8cc848b102315b5
/--
Generated VC `policy_gates.impl__15.clone.ensures_0`.

- Rust source: `case-studies/percolator/policy_gates.rs:24:10-24:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `c8cc848b102315b5`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/policy_gates.rs"
  startLine := 24
  startColumn := 10
  endLine := 24
  endColumn := 15
  assertId := "0"
  functionName := "policy_gates.impl__15.clone"
  kind := "ensures"
  statementHash := "c8cc848b102315b5"
}
@[vrml_obligation] theorem ensures_0
    (self : policy_gates.AssetLifecycleV16) :
    self = self := by
  vrml
-- vrml:end policy_gates.impl__15.clone.ensures_0

end policy_gates.impl__15.clone

