import Vermilion.Obligations
import pow2_51_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_mul_sub

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_mul_sub.ensures_4 8fadf6369a9cb0a4
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_mul_sub.ensures_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:90:9-91:19`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `8fadf6369a9cb0a4`
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 90
  startColumn := 9
  endLine := 91
  endColumn := 19
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_mul_sub"
  kind := "ensures"
  statementHash := "8fadf6369a9cb0a4"
}
@[vrml_obligation] theorem ensures_4
    (ci : Int)
    (cj : Int)
    (cj_0 : Int)
    (k : Int)
    (requires_0 : 0 ≤ k)
    (call_lemma_mul_is_distributive_sub_ensures_0 : (vstd.arithmetic.power2.pow2 k * (ci - (vstd.arithmetic.power2.pow2 51 * (cj - cj_0)))) = ((vstd.arithmetic.power2.pow2 k * ci) - (vstd.arithmetic.power2.pow2 k * (vstd.arithmetic.power2.pow2 51 * (cj - cj_0)))))
    (call_lemma_mul_is_associative_ensures_0 : (vstd.arithmetic.power2.pow2 k * (vstd.arithmetic.power2.pow2 51 * (cj - cj_0))) = ((vstd.arithmetic.power2.pow2 k * vstd.arithmetic.power2.pow2 51) * (cj - cj_0)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (k + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 k * vstd.arithmetic.power2.pow2 51))
    (call_lemma_mul_is_distributive_sub_1_ensures_0 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k + 51)) * (cj - cj_0)) = ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (k + 51)) * cj) - (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k + 51)) * cj_0))) :
    (vstd.arithmetic.power2.pow2 k * (ci - (vstd.arithmetic.power2.pow2 51 * (cj - cj_0)))) = (((vstd.arithmetic.power2.pow2 k * ci) - (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k + 51)) * cj)) + (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k + 51)) * cj_0)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_mul_sub.ensures_4

end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_mul_sub

