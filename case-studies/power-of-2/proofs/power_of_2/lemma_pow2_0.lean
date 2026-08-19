import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.lemma_pow2_0

-- vrml:begin power_of_2.lemma_pow2_0.ensures_0 e1abef7e8b8f2382
/--
Generated VC `power_of_2.lemma_pow2_0.ensures_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:47:9-47:21`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `e1abef7e8b8f2382`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 47
  startColumn := 9
  endLine := 47
  endColumn := 21
  assertId := "0"
  functionName := "power_of_2.lemma_pow2_0"
  kind := "ensures"
  statementHash := "e1abef7e8b8f2382"
}
@[vrml_obligation] theorem ensures_0
    (no_param : Int) :
    power_of_2.pow2 0 = 1 := by
  iterate 1 (try first | rw [power_of_2.pow2])
  vrml
-- vrml:end power_of_2.lemma_pow2_0.ensures_0

end power_of_2.lemma_pow2_0

