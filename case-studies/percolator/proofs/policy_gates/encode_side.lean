import Vermilion.Obligations
import policy_gates.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace policy_gates.encode_side

-- vrml:begin policy_gates.encode_side.ensures_0 a7d4994b3ea633e5
/--
Generated VC `policy_gates.encode_side.ensures_0`.

- Rust source: `case-studies/percolator/policy_gates.rs:98:9-101:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `a7d4994b3ea633e5`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/policy_gates.rs"
  startLine := 98
  startColumn := 9
  endLine := 101
  endColumn := 10
  assertId := "0"
  functionName := "policy_gates.encode_side"
  kind := "ensures"
  statementHash := "a7d4994b3ea633e5"
}
@[vrml_obligation] theorem ensures_0
    (value : policy_gates.SideV16) :
    (Vermilion.iteP (policy_gates.SideV16.is_Long value) 0 1) = (Vermilion.iteP (policy_gates.SideV16.is_Long value) 0 1) := by
  vrml
-- vrml:end policy_gates.encode_side.ensures_0

end policy_gates.encode_side

