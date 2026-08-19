import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.lemma_pow2_unfold3

-- vrml:begin power_of_2.lemma_pow2_unfold3.ensures_0 c0ebeff4eacd33cb
/--
Generated VC `power_of_2.lemma_pow2_unfold3.ensures_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:55:9-55:44`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `c0ebeff4eacd33cb`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 55
  startColumn := 9
  endLine := 55
  endColumn := 44
  assertId := "0"
  functionName := "power_of_2.lemma_pow2_unfold3"
  kind := "ensures"
  statementHash := "c0ebeff4eacd33cb"
}
@[vrml_obligation] theorem ensures_0
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e > 3) :
    power_of_2.pow2 e = Vermilion.natClip (power_of_2.pow2 (Vermilion.natClip (e - 3)) * 8) := by
  iterate 3 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.lemma_pow2_unfold3.ensures_0

end power_of_2.lemma_pow2_unfold3

