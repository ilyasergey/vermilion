import Vermilion.Obligations
import pow_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_1 8eb89b339207cd4a
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1392:12-1394:93`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `8eb89b339207cd4a`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1392
  startColumn := 12
  endLine := 1394
  endColumn := 93
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "assert"
  statementHash := "8eb89b339207cd4a"
}
@[vrml_obligation] theorem assert_1
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))))) :
    Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_4 2920d779d7a347ed
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1399:12-1399:60`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `2920d779d7a347ed`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1399
  startColumn := 12
  endLine := 1399
  endColumn := 60
  assertId := "4"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "assert"
  statementHash := "2920d779d7a347ed"
}
@[vrml_obligation] theorem assert_4
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))))
    (assert_1 : Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp)) :
    Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_4

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_7 66eefbbc3d5dce62
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1403:12-1403:64`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `66eefbbc3d5dce62`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1403
  startColumn := 12
  endLine := 1403
  endColumn := 64
  assertId := "7"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "assert"
  statementHash := "66eefbbc3d5dce62"
}
@[vrml_obligation] theorem assert_7
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))))
    (assert_1 : Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp))
    (assert_4 : Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_1_ensures_0 : (byte1 * (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp)) = ((byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) :
    Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 8))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_7

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_10 fd3282892d236e98
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1407:12-1407:66`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `fd3282892d236e98`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1407
  startColumn := 12
  endLine := 1407
  endColumn := 66
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "assert"
  statementHash := "fd3282892d236e98"
}
@[vrml_obligation] theorem assert_10
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))))
    (assert_1 : Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp))
    (assert_4 : Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_1_ensures_0 : (byte1 * (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp)) = ((byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp))
    (assert_7 : Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 8))))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_2_ensures_0 : (byte2 * (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp)) = ((byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) :
    Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 16))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_10

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_13 e79b3e49886e45a4
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1411:12-1411:66`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `e79b3e49886e45a4`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1411
  startColumn := 12
  endLine := 1411
  endColumn := 66
  assertId := "13"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "assert"
  statementHash := "e79b3e49886e45a4"
}
@[vrml_obligation] theorem assert_13
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))))
    (assert_1 : Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp))
    (assert_4 : Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_1_ensures_0 : (byte1 * (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp)) = ((byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp))
    (assert_7 : Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 8))))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_2_ensures_0 : (byte2 * (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp)) = ((byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp))
    (assert_10 : Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 16))))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_3_ensures_0 : (byte3 * (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp)) = ((byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) :
    Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 24))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_13

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_16 86cc36d6a8301cbf
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1415:12-1415:66`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `86cc36d6a8301cbf`
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1415
  startColumn := 12
  endLine := 1415
  endColumn := 66
  assertId := "16"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "assert"
  statementHash := "86cc36d6a8301cbf"
}
@[vrml_obligation] theorem assert_16
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))))
    (assert_1 : Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp))
    (assert_4 : Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_1_ensures_0 : (byte1 * (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp)) = ((byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp))
    (assert_7 : Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 8))))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_2_ensures_0 : (byte2 * (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp)) = ((byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp))
    (assert_10 : Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 16))))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_3_ensures_0 : (byte3 * (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp)) = ((byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp))
    (assert_13 : Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 24))))
    (call_lemma_pow2_adds_4_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_4_ensures_0 : (byte4 * (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp)) = ((byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) :
    Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 32))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_16

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_19 7755e66c512214c3
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_19`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1419:12-1419:66`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `7755e66c512214c3`
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1419
  startColumn := 12
  endLine := 1419
  endColumn := 66
  assertId := "19"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "assert"
  statementHash := "7755e66c512214c3"
}
@[vrml_obligation] theorem assert_19
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))))
    (assert_1 : Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp))
    (assert_4 : Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_1_ensures_0 : (byte1 * (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp)) = ((byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp))
    (assert_7 : Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 8))))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_2_ensures_0 : (byte2 * (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp)) = ((byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp))
    (assert_10 : Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 16))))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_3_ensures_0 : (byte3 * (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp)) = ((byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp))
    (assert_13 : Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 24))))
    (call_lemma_pow2_adds_4_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_4_ensures_0 : (byte4 * (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp)) = ((byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp))
    (assert_16 : Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 32))))
    (call_lemma_pow2_adds_5_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (40 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 40 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_5_ensures_0 : (byte5 * (vstd.arithmetic.power2.pow2 40 * vstd.arithmetic.power2.pow2 exp)) = ((byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) :
    Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 40))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_19

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_22 8c2e184d8b6f232e
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1423:12-1423:66`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `8c2e184d8b6f232e`
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1423
  startColumn := 12
  endLine := 1423
  endColumn := 66
  assertId := "22"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "assert"
  statementHash := "8c2e184d8b6f232e"
}
@[vrml_obligation] theorem assert_22
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))))
    (assert_1 : Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp))
    (assert_4 : Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_1_ensures_0 : (byte1 * (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp)) = ((byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp))
    (assert_7 : Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 8))))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_2_ensures_0 : (byte2 * (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp)) = ((byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp))
    (assert_10 : Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 16))))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_3_ensures_0 : (byte3 * (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp)) = ((byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp))
    (assert_13 : Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 24))))
    (call_lemma_pow2_adds_4_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_4_ensures_0 : (byte4 * (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp)) = ((byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp))
    (assert_16 : Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 32))))
    (call_lemma_pow2_adds_5_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (40 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 40 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_5_ensures_0 : (byte5 * (vstd.arithmetic.power2.pow2 40 * vstd.arithmetic.power2.pow2 exp)) = ((byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp))
    (assert_19 : Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 40))))
    (call_lemma_pow2_adds_6_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (48 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 48 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_6_ensures_0 : (byte6 * (vstd.arithmetic.power2.pow2 48 * vstd.arithmetic.power2.pow2 exp)) = ((byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) :
    Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 48))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_22

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_25 081bd44fdcb17289
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_25`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1427:12-1427:66`
- Rust/SST construct: Rust source assertion
- AssertId: `25`
- Statement hash: `081bd44fdcb17289`
-/
def assert_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1427
  startColumn := 12
  endLine := 1427
  endColumn := 66
  assertId := "25"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "assert"
  statementHash := "081bd44fdcb17289"
}
@[vrml_obligation] theorem assert_25
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))))
    (assert_1 : Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp))
    (assert_4 : Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_1_ensures_0 : (byte1 * (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp)) = ((byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp))
    (assert_7 : Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 8))))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_2_ensures_0 : (byte2 * (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp)) = ((byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp))
    (assert_10 : Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 16))))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_3_ensures_0 : (byte3 * (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp)) = ((byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp))
    (assert_13 : Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 24))))
    (call_lemma_pow2_adds_4_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_4_ensures_0 : (byte4 * (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp)) = ((byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp))
    (assert_16 : Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 32))))
    (call_lemma_pow2_adds_5_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (40 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 40 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_5_ensures_0 : (byte5 * (vstd.arithmetic.power2.pow2 40 * vstd.arithmetic.power2.pow2 exp)) = ((byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp))
    (assert_19 : Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 40))))
    (call_lemma_pow2_adds_6_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (48 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 48 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_6_ensures_0 : (byte6 * (vstd.arithmetic.power2.pow2 48 * vstd.arithmetic.power2.pow2 exp)) = ((byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp))
    (assert_22 : Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 48))))
    (call_lemma_pow2_adds_7_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (56 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 56 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_7_ensures_0 : (byte7 * (vstd.arithmetic.power2.pow2 56 * vstd.arithmetic.power2.pow2 exp)) = ((byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)) :
    Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 56))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.assert_25

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.ensures_26 2675dfbfefeec90b
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.ensures_26`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1376:9-1378:54`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `26`
- Statement hash: `2675dfbfefeec90b`
-/
def ensures_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1376
  startColumn := 9
  endLine := 1378
  endColumn := 54
  assertId := "26"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word"
  kind := "ensures"
  statementHash := "2675dfbfefeec90b"
}
@[vrml_obligation] theorem ensures_26
    (word : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (byte6 : Int)
    (byte7 : Int)
    (exp : Int)
    (requires_0 : 0 ≤ word)
    (requires_1 : 0 ≤ byte0)
    (requires_2 : 0 ≤ byte1)
    (requires_3 : 0 ≤ byte2)
    (requires_4 : 0 ≤ byte3)
    (requires_5 : 0 ≤ byte4)
    (requires_6 : 0 ≤ byte5)
    (requires_7 : 0 ≤ byte6)
    (requires_8 : 0 ≤ byte7)
    (requires_9 : 0 ≤ exp)
    (requires_10 : word = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))
    (call_lemma_mul_distributive_8_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 exp * (((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56))) = ((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp)) ∧ (((((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48)) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)) * vstd.arithmetic.power2.pow2 exp) = ((((((((vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48))) + (vstd.arithmetic.power2.pow2 exp * Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56)))))
    (assert_1 : Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp)) + Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 exp)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp))
    (assert_4 : Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_1_ensures_0 : (byte1 * (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 exp)) = ((byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp))
    (assert_7 : Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 8))))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_2_ensures_0 : (byte2 * (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 exp)) = ((byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp))
    (assert_10 : Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 16))))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_3_ensures_0 : (byte3 * (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 exp)) = ((byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp))
    (assert_13 : Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 24))))
    (call_lemma_pow2_adds_4_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_4_ensures_0 : (byte4 * (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 exp)) = ((byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp))
    (assert_16 : Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 32))))
    (call_lemma_pow2_adds_5_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (40 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 40 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_5_ensures_0 : (byte5 * (vstd.arithmetic.power2.pow2 40 * vstd.arithmetic.power2.pow2 exp)) = ((byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp))
    (assert_19 : Vermilion.natClip (Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 40))))
    (call_lemma_pow2_adds_6_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (48 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 48 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_6_ensures_0 : (byte6 * (vstd.arithmetic.power2.pow2 48 * vstd.arithmetic.power2.pow2 exp)) = ((byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp))
    (assert_22 : Vermilion.natClip (Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 48) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 48))))
    (call_lemma_pow2_adds_7_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (56 + exp)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 56 * vstd.arithmetic.power2.pow2 exp))
    (call_lemma_mul_is_associative_7_ensures_0 : (byte7 * (vstd.arithmetic.power2.pow2 56 * vstd.arithmetic.power2.pow2 exp)) = ((byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp))
    (assert_25 : Vermilion.natClip (Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 56) * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 56)))) :
    Vermilion.natClip (word * vstd.arithmetic.power2.pow2 exp) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 exp) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 8)))) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 16)))) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 24)))) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 32)))) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 40)))) + Vermilion.natClip (byte6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 48)))) + Vermilion.natClip (byte7 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (exp + 56)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word.ensures_26

end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_distributivity_over_word

