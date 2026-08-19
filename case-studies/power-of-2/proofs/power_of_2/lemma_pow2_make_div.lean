import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.lemma_pow2_make_div

-- vrml:begin power_of_2.lemma_pow2_make_div.assert_anonymous_0 05b6baaf54bac011
/--
Generated VC `power_of_2.lemma_pow2_make_div.assert_anonymous_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:70:9-70:44`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `05b6baaf54bac011`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 70
  startColumn := 9
  endLine := 70
  endColumn := 44
  assertId := "anonymous_0"
  functionName := "power_of_2.lemma_pow2_make_div"
  kind := "assert"
  statementHash := "05b6baaf54bac011"
}
@[vrml_obligation] theorem assert_anonymous_0
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e > 0)
    (branch_0 : (¬ (e = 1))) :
    ((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.lemma_pow2_make_div.assert_anonymous_0

-- vrml:begin power_of_2.lemma_pow2_make_div.call_requires_0 48e8ed118e223291
/--
Generated VC `power_of_2.lemma_pow2_make_div.call_requires_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:70:9-70:44`
- Rust/SST construct: call lemma_pow2_make_div
- AssertId: `0`
- Statement hash: `48e8ed118e223291`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 70
  startColumn := 9
  endLine := 70
  endColumn := 44
  assertId := "0"
  functionName := "power_of_2.lemma_pow2_make_div"
  kind := "call_requires"
  statementHash := "48e8ed118e223291"
}
@[vrml_obligation] theorem call_requires_0
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e > 0)
    (branch_0 : (¬ (e = 1)))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False)) :
    Vermilion.natClip (e - 1) > 0 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.lemma_pow2_make_div.call_requires_0

-- vrml:begin power_of_2.lemma_pow2_make_div.ensures_1 aeb387992131cbd6
/--
Generated VC `power_of_2.lemma_pow2_make_div.ensures_1`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:65:9-65:54`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `aeb387992131cbd6`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 65
  startColumn := 9
  endLine := 65
  endColumn := 54
  assertId := "1"
  functionName := "power_of_2.lemma_pow2_make_div"
  kind := "ensures"
  statementHash := "aeb387992131cbd6"
}
@[vrml_obligation] theorem ensures_1
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e > 0)
    (else_0_assert_anonymous_0 : (¬ (e = 1)) → (((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False)))
    (else_0_call_lemma_pow2_make_div_ensures_0 : (¬ (e = 1)) → (((power_of_2.pow2 (Vermilion.natClip (e - 1)) - 1) / 2) = (power_of_2.pow2 (Vermilion.natClip (Vermilion.natClip (e - 1) - 1)) - 1))) :
    ((power_of_2.pow2 e - 1) / 2) = (power_of_2.pow2 (Vermilion.natClip (e - 1)) - 1) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  simp only [Vermilion.iteP_pos (show e - 1 ≥ 0 by omega)]
  have hrec := power_of_2.pow2_succ (e - 1) (by omega)
  have heq : e - 1 + 1 = e := by omega
  rw [heq] at hrec
  omega
-- vrml:end power_of_2.lemma_pow2_make_div.ensures_1

end power_of_2.lemma_pow2_make_div

