import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.lemma_pow2_two_e

-- vrml:begin power_of_2.lemma_pow2_two_e.assert_anonymous_0 dfc10ab7049c274a
/--
Generated VC `power_of_2.lemma_pow2_two_e.assert_anonymous_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:98:9-98:41`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `dfc10ab7049c274a`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 98
  startColumn := 9
  endLine := 98
  endColumn := 41
  assertId := "anonymous_0"
  functionName := "power_of_2.lemma_pow2_two_e"
  kind := "assert"
  statementHash := "dfc10ab7049c274a"
}
@[vrml_obligation] theorem assert_anonymous_0
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e ≥ 0)
    (branch_0 : (¬ (e = 0))) :
    ((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.lemma_pow2_two_e.assert_anonymous_0

-- vrml:begin power_of_2.lemma_pow2_two_e.call_requires_0 ea0e974e59760c42
/--
Generated VC `power_of_2.lemma_pow2_two_e.call_requires_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:98:9-98:41`
- Rust/SST construct: call lemma_pow2_two_e
- AssertId: `0`
- Statement hash: `ea0e974e59760c42`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 98
  startColumn := 9
  endLine := 98
  endColumn := 41
  assertId := "0"
  functionName := "power_of_2.lemma_pow2_two_e"
  kind := "call_requires"
  statementHash := "ea0e974e59760c42"
}
@[vrml_obligation] theorem call_requires_0
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e ≥ 0)
    (branch_0 : (¬ (e = 0)))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False)) :
    Vermilion.natClip (e - 1) ≥ 0 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.lemma_pow2_two_e.call_requires_0

-- vrml:begin power_of_2.lemma_pow2_two_e.call_requires_1 9680b736aac79614
/--
Generated VC `power_of_2.lemma_pow2_two_e.call_requires_1`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:99:9-99:25`
- Rust/SST construct: call lemma_pow2_2e
- AssertId: `1`
- Statement hash: `9680b736aac79614`
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 99
  startColumn := 9
  endLine := 99
  endColumn := 25
  assertId := "1"
  functionName := "power_of_2.lemma_pow2_two_e"
  kind := "call_requires"
  statementHash := "9680b736aac79614"
}
@[vrml_obligation] theorem call_requires_1
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e ≥ 0)
    (branch_0 : (¬ (e = 0)))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False))
    (call_lemma_pow2_two_e_ensures_0 : Vermilion.natClip (power_of_2.pow2 (Vermilion.natClip (e - 1)) * power_of_2.pow2 (Vermilion.natClip (e - 1))) = power_of_2.pow2 (Vermilion.natClip (2 * Vermilion.natClip (e - 1)))) :
    e > 0 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.lemma_pow2_two_e.call_requires_1

-- vrml:begin power_of_2.lemma_pow2_two_e.ensures_2 36dd06dd4f7c7b15
/--
Generated VC `power_of_2.lemma_pow2_two_e.ensures_2`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:94:9-94:41`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `36dd06dd4f7c7b15`
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 94
  startColumn := 9
  endLine := 94
  endColumn := 41
  assertId := "2"
  functionName := "power_of_2.lemma_pow2_two_e"
  kind := "ensures"
  statementHash := "36dd06dd4f7c7b15"
}
@[vrml_obligation] theorem ensures_2
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e ≥ 0)
    (then_0_assert_anonymous_0 : (¬ (e = 0)) → (((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False)))
    (then_0_call_lemma_pow2_two_e_ensures_0 : (¬ (e = 0)) → (Vermilion.natClip (power_of_2.pow2 (Vermilion.natClip (e - 1)) * power_of_2.pow2 (Vermilion.natClip (e - 1))) = power_of_2.pow2 (Vermilion.natClip (2 * Vermilion.natClip (e - 1)))))
    (then_0_call_lemma_pow2_2e_ensures_0 : (¬ (e = 0)) → (power_of_2.pow2 (Vermilion.natClip (2 * e)) = Vermilion.natClip (4 * power_of_2.pow2 (Vermilion.natClip (2 * Vermilion.natClip (e - 1)))))) :
    Vermilion.natClip (power_of_2.pow2 e * power_of_2.pow2 e) = power_of_2.pow2 (Vermilion.natClip (2 * e)) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  by_cases h : e = 0
  · subst e
    have hpow0 : power_of_2.pow2 0 = 1 := by
      rw [power_of_2.pow2]
      norm_num
    norm_num [Vermilion.iteP, hpow0]
  · have he : 0 < e := by omega
    have hprev : e - 1 ≥ 0 := by omega
    have h2e : 2 * e ≥ 0 := by omega
    have h2prev : 2 * (e - 1) ≥ 0 := by omega
    have hp := power_of_2.pow2_nonneg (e - 1)
    have hsq : power_of_2.pow2 (e - 1) * power_of_2.pow2 (e - 1) ≥ 0 :=
      mul_nonneg hp hp
    have hcursq : power_of_2.pow2 e * power_of_2.pow2 e ≥ 0 :=
      mul_nonneg (power_of_2.pow2_nonneg e) (power_of_2.pow2_nonneg e)
    have hfour : 4 * power_of_2.pow2 (2 * (e - 1)) ≥ 0 := by
      nlinarith [power_of_2.pow2_nonneg (2 * (e - 1))]
    have ih := then_0_call_lemma_pow2_two_e_ensures_0 h
    have hstep := then_0_call_lemma_pow2_2e_ensures_0 h
    simp only [Vermilion.iteP_pos hprev, Vermilion.iteP_pos h2e,
      Vermilion.iteP_pos h2prev, Vermilion.iteP_pos hsq,
      Vermilion.iteP_pos hcursq, Vermilion.iteP_pos hfour] at ih hstep ⊢
    have hrec := power_of_2.pow2_succ (e - 1) hprev
    have heq : e - 1 + 1 = e := by omega
    rw [heq] at hrec
    nlinarith
-- vrml:end power_of_2.lemma_pow2_two_e.ensures_2

end power_of_2.lemma_pow2_two_e

