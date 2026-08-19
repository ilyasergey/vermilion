import Vermilion.Obligations
import policy_gates.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace policy_gates.opposite_side

-- vrml:begin policy_gates.opposite_side.ensures_0 5f497a0ce1ffff10
/--
Generated VC `policy_gates.opposite_side.ensures_0`.

- Rust source: `case-studies/percolator/policy_gates.rs:111:9-111:23`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `5f497a0ce1ffff10`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/policy_gates.rs"
  startLine := 111
  startColumn := 9
  endLine := 111
  endColumn := 23
  assertId := "0"
  functionName := "policy_gates.opposite_side"
  kind := "ensures"
  statementHash := "5f497a0ce1ffff10"
}
@[vrml_obligation] theorem ensures_0
    (side : policy_gates.SideV16) :
    (¬ ((Vermilion.iteP (policy_gates.SideV16.is_Long side) policy_gates.SideV16.Short policy_gates.SideV16.Long) = side)) := by
  vrml
-- vrml:end policy_gates.opposite_side.ensures_0

end policy_gates.opposite_side

