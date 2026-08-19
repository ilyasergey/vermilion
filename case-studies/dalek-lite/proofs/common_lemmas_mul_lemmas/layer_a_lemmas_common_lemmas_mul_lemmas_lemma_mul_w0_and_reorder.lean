import Vermilion.Obligations
import common_lemmas_mul_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.mul_lemmas.lemma_mul_w0_and_reorder

-- vrml:begin layer_a.lemmas.common_lemmas.mul_lemmas.lemma_mul_w0_and_reorder.ensures_5 1b6177d39a8ae732
/--
Generated VC `layer_a.lemmas.common_lemmas.mul_lemmas.lemma_mul_w0_and_reorder.ensures_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mul_lemmas.rs:308:9-309:53`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `1b6177d39a8ae732`
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mul_lemmas.rs"
  startLine := 308
  startColumn := 9
  endLine := 309
  endColumn := 53
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.mul_lemmas.lemma_mul_w0_and_reorder"
  kind := "ensures"
  statementHash := "1b6177d39a8ae732"
}
@[vrml_obligation] theorem ensures_5
    (w0 : Int)
    (v0 : Int)
    (s1 : Int)
    (v1 : Int)
    (s2 : Int)
    (v2 : Int)
    (s3 : Int)
    (v3 : Int)
    (s4 : Int)
    (v4 : Int)
    (call_lemma_mul_distributive_5_terms_ensures_0 : ((w0 * ((((v0 + (s1 * v1)) + (s2 * v2)) + (s3 * v3)) + (s4 * v4))) = (((((v0 + (s1 * v1)) + (s2 * v2)) + (s3 * v3)) + (s4 * v4)) * w0)) ∧ ((((((v0 + (s1 * v1)) + (s2 * v2)) + (s3 * v3)) + (s4 * v4)) * w0) = (((((w0 * v0) + (w0 * (s1 * v1))) + (w0 * (s2 * v2))) + (w0 * (s3 * v3))) + (w0 * (s4 * v4)))))
    (call_lemma_mul_is_associative_ensures_0 : (w0 * (v1 * s1)) = ((w0 * v1) * s1))
    (call_lemma_mul_is_associative_1_ensures_0 : (w0 * (v2 * s2)) = ((w0 * v2) * s2))
    (call_lemma_mul_is_associative_2_ensures_0 : (w0 * (v3 * s3)) = ((w0 * v3) * s3))
    (call_lemma_mul_is_associative_3_ensures_0 : (w0 * (v4 * s4)) = ((w0 * v4) * s4)) :
    (w0 * ((((v0 + (s1 * v1)) + (s2 * v2)) + (s3 * v3)) + (s4 * v4))) = (((((s4 * (w0 * v4)) + (s3 * (w0 * v3))) + (s2 * (w0 * v2))) + (s1 * (w0 * v1))) + (w0 * v0)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.mul_lemmas.lemma_mul_w0_and_reorder.ensures_5

end layer_a.lemmas.common_lemmas.mul_lemmas.lemma_mul_w0_and_reorder

