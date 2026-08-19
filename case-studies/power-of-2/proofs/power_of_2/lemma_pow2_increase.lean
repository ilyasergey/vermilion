import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.lemma_pow2_increase

-- vrml:begin power_of_2.lemma_pow2_increase.assert_anonymous_0 05b6baaf54bac011
/--
Generated VC `power_of_2.lemma_pow2_increase.assert_anonymous_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:112:9-112:44`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `05b6baaf54bac011`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 112
  startColumn := 9
  endLine := 112
  endColumn := 44
  assertId := "anonymous_0"
  functionName := "power_of_2.lemma_pow2_increase"
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
-- vrml:end power_of_2.lemma_pow2_increase.assert_anonymous_0

-- vrml:begin power_of_2.lemma_pow2_increase.call_requires_0 48e8ed118e223291
/--
Generated VC `power_of_2.lemma_pow2_increase.call_requires_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:112:9-112:44`
- Rust/SST construct: call lemma_pow2_increase
- AssertId: `0`
- Statement hash: `48e8ed118e223291`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 112
  startColumn := 9
  endLine := 112
  endColumn := 44
  assertId := "0"
  functionName := "power_of_2.lemma_pow2_increase"
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
-- vrml:end power_of_2.lemma_pow2_increase.call_requires_0

-- vrml:begin power_of_2.lemma_pow2_increase.ensures_1 81e8f62bcd5a3d5a
/--
Generated VC `power_of_2.lemma_pow2_increase.ensures_1`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:107:9-107:39`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `81e8f62bcd5a3d5a`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 107
  startColumn := 9
  endLine := 107
  endColumn := 39
  assertId := "1"
  functionName := "power_of_2.lemma_pow2_increase"
  kind := "ensures"
  statementHash := "81e8f62bcd5a3d5a"
}
@[vrml_obligation] theorem ensures_1
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e > 0)
    (else_0_assert_anonymous_0 : (¬ (e = 1)) → (((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False)))
    (else_0_call_lemma_pow2_increase_ensures_0 : (¬ (e = 1)) → (power_of_2.pow2 (Vermilion.natClip (e - 1)) > power_of_2.pow2 (Vermilion.natClip (Vermilion.natClip (e - 1) - 1)))) :
    power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  have hprev : e - 1 ≥ 0 := by omega
  simp only [Vermilion.iteP_pos hprev]
  have hrec := power_of_2.pow2_succ (e - 1) hprev
  have heq : e - 1 + 1 = e := by omega
  rw [heq] at hrec
  nlinarith [power_of_2.pow2_pos (e - 1) hprev]
-- vrml:end power_of_2.lemma_pow2_increase.ensures_1

end power_of_2.lemma_pow2_increase

