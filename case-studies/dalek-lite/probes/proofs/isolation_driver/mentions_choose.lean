import Vermilion.Obligations
import isolation_driver.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace isolation_driver.mentions_choose

-- vrml:begin isolation_driver.mentions_choose.ensures_0 21499c9b0cf75283
/--
Generated VC `isolation_driver.mentions_choose.ensures_0`.

- Rust source: `case-studies/dalek-lite/probes/isolation_driver.rs:38:9-38:35`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `21499c9b0cf75283`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/isolation_driver.rs"
  startLine := 38
  startColumn := 9
  endLine := 38
  endColumn := 35
  assertId := "0"
  functionName := "isolation_driver.mentions_choose"
  kind := "ensures"
  statementHash := "21499c9b0cf75283"
}
@[vrml_obligation] theorem ensures_0
    (no_param : Int) :
    isolation_driver.some_even 0 = isolation_driver.some_even 0 := by
  vrml [isolation_driver.some_even]
-- vrml:end isolation_driver.mentions_choose.ensures_0

end isolation_driver.mentions_choose

