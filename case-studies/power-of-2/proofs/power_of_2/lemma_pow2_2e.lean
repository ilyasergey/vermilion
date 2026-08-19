import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.lemma_pow2_2e

-- vrml:begin power_of_2.lemma_pow2_2e.assert_0 21081ce6fa2714f0
/--
Generated VC `power_of_2.lemma_pow2_2e.assert_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:83:16-83:28`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `21081ce6fa2714f0`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 83
  startColumn := 16
  endLine := 83
  endColumn := 28
  assertId := "0"
  functionName := "power_of_2.lemma_pow2_2e"
  kind := "assert"
  statementHash := "21081ce6fa2714f0"
}
@[vrml_obligation] theorem assert_0
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e > 0)
    (branch_0 : e = 1) :
    power_of_2.pow2 2 = 4 := by
  iterate 3 (try first | rw [power_of_2.pow2])
  vrml
-- vrml:end power_of_2.lemma_pow2_2e.assert_0

-- vrml:begin power_of_2.lemma_pow2_2e.assert_anonymous_0 05b6baaf54bac011
/--
Generated VC `power_of_2.lemma_pow2_2e.assert_anonymous_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:85:9-85:38`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `05b6baaf54bac011`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 85
  startColumn := 9
  endLine := 85
  endColumn := 38
  assertId := "anonymous_0"
  functionName := "power_of_2.lemma_pow2_2e"
  kind := "assert"
  statementHash := "05b6baaf54bac011"
}
@[vrml_obligation] theorem assert_anonymous_0
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e > 0)
    (branch_0 : (¬ (e = 1))) :
    ((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False) := by
  iterate 3 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.lemma_pow2_2e.assert_anonymous_0

-- vrml:begin power_of_2.lemma_pow2_2e.call_requires_1 48e8ed118e223291
/--
Generated VC `power_of_2.lemma_pow2_2e.call_requires_1`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:85:9-85:38`
- Rust/SST construct: call lemma_pow2_2e
- AssertId: `1`
- Statement hash: `48e8ed118e223291`
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 85
  startColumn := 9
  endLine := 85
  endColumn := 38
  assertId := "1"
  functionName := "power_of_2.lemma_pow2_2e"
  kind := "call_requires"
  statementHash := "48e8ed118e223291"
}
@[vrml_obligation] theorem call_requires_1
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e > 0)
    (branch_0 : (¬ (e = 1)))
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False)) :
    Vermilion.natClip (e - 1) > 0 := by
  iterate 3 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.lemma_pow2_2e.call_requires_1

-- vrml:begin power_of_2.lemma_pow2_2e.ensures_2 71569b9751d8f7e1
/--
Generated VC `power_of_2.lemma_pow2_2e.ensures_2`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:78:9-78:56`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `71569b9751d8f7e1`
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 78
  startColumn := 9
  endLine := 78
  endColumn := 56
  assertId := "2"
  functionName := "power_of_2.lemma_pow2_2e"
  kind := "ensures"
  statementHash := "71569b9751d8f7e1"
}
@[vrml_obligation] theorem ensures_2
    (e : Int)
    (requires_0 : 0 ≤ e)
    (requires_1 : e > 0)
    (then_0_assert_0 : (e = 1) → (power_of_2.pow2 2 = 4))
    (else_0_assert_anonymous_0 : (¬ (e = 1)) → (((0 ≤ Vermilion.natClip (e - 1)) ∧ (Vermilion.natClip (e - 1) < e)) ∨ ((Vermilion.natClip (e - 1) = e) ∧ False)))
    (else_0_call_lemma_pow2_2e_ensures_0 : (¬ (e = 1)) → (power_of_2.pow2 (Vermilion.natClip (2 * Vermilion.natClip (e - 1))) = Vermilion.natClip (4 * power_of_2.pow2 (Vermilion.natClip (2 * Vermilion.natClip (Vermilion.natClip (e - 1) - 1)))))) :
    power_of_2.pow2 (Vermilion.natClip (2 * e)) = Vermilion.natClip (4 * power_of_2.pow2 (Vermilion.natClip (2 * Vermilion.natClip (e - 1)))) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  have heprev : e - 1 ≥ 0 := by omega
  have h2e : 2 * e ≥ 0 := by omega
  have h2prev : 2 * (e - 1) ≥ 0 := by omega
  have hfour : 4 * power_of_2.pow2 (2 * (e - 1)) ≥ 0 := by
    nlinarith [power_of_2.pow2_nonneg (2 * (e - 1))]
  simp only [Vermilion.iteP_pos heprev, Vermilion.iteP_pos h2e,
    Vermilion.iteP_pos h2prev, Vermilion.iteP_pos hfour]
  have h1 := power_of_2.pow2_succ (2 * e - 1) (by omega)
  have heq1 : 2 * e - 1 + 1 = 2 * e := by omega
  rw [heq1] at h1
  have h2 := power_of_2.pow2_succ (2 * (e - 1)) (by omega)
  have heq2 : 2 * (e - 1) + 1 = 2 * e - 1 := by omega
  rw [heq2] at h2
  nlinarith
-- vrml:end power_of_2.lemma_pow2_2e.ensures_2

end power_of_2.lemma_pow2_2e

