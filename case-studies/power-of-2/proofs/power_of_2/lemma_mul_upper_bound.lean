import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.lemma_mul_upper_bound

-- vrml:begin power_of_2.lemma_mul_upper_bound.ensures_0 7150ea3adfd2840d
/--
Generated VC `power_of_2.lemma_mul_upper_bound.ensures_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:121:9-121:23`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `7150ea3adfd2840d`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 121
  startColumn := 9
  endLine := 121
  endColumn := 23
  assertId := "0"
  functionName := "power_of_2.lemma_mul_upper_bound"
  kind := "ensures"
  statementHash := "7150ea3adfd2840d"
}
@[vrml_obligation] theorem ensures_0
    (x : Int)
    (y : Int)
    (z : Int)
    (requires_0 : 0 ≤ x)
    (requires_1 : 0 ≤ y)
    (requires_2 : 0 ≤ z)
    (requires_3 : x < y) :
    Vermilion.natClip (z * x) ≤ Vermilion.natClip (z * y) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  have hzx : 0 ≤ z * x := mul_nonneg requires_2 requires_0
  have hzy : 0 ≤ z * y := mul_nonneg requires_2 requires_1
  simp [Vermilion.iteP, hzx, hzy]
  nlinarith
-- vrml:end power_of_2.lemma_mul_upper_bound.ensures_0

end power_of_2.lemma_mul_upper_bound

