import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace imo_1988_6.vieta_jump

-- vrml:begin imo_1988_6.vieta_jump.ensures_0 1fc772418402e3ac
/--
Generated VC `imo_1988_6.vieta_jump.ensures_0`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:22:9-25:11`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `1fc772418402e3ac`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 22
  startColumn := 9
  endLine := 25
  endColumn := 11
  assertId := "0"
  functionName := "imo_1988_6.vieta_jump"
  kind := "ensures"
  statementHash := "1fc772418402e3ac"
}
@[vrml_obligation] theorem ensures_0
    (b : Int)
    (c : Int)
    (x : Int)
    (requires_0 : (((x * x) - (b * x)) + c) = 0) :
    (((((b - x) * (b - x)) - (b * (b - x))) + c) = 0) ∧ (((b - x) * x) = c) := by
  vrml
-- vrml:end imo_1988_6.vieta_jump.ensures_0

end imo_1988_6.vieta_jump

