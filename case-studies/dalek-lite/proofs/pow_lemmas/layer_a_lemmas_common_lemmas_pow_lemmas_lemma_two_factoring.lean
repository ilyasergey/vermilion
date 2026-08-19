import Vermilion.Obligations
import pow_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.pow_lemmas.lemma_two_factoring

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_two_factoring.ensures_2 196ee8990cea46a5
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_two_factoring.ensures_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:128:9-128:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `196ee8990cea46a5`
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 128
  startColumn := 9
  endLine := 128
  endColumn := 51
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_two_factoring"
  kind := "ensures"
  statementHash := "196ee8990cea46a5"
}
@[vrml_obligation] theorem ensures_2
    (a : Int)
    (b : Int)
    (v : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : Vermilion.inUnsignedRange 64 v)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b))
    (call_lemma_mul_is_associative_ensures_0 : (vstd.arithmetic.power2.pow2 a * (vstd.arithmetic.power2.pow2 b * v)) = ((vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b) * v)) :
    (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) * v) = (vstd.arithmetic.power2.pow2 a * (vstd.arithmetic.power2.pow2 b * v)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_two_factoring.ensures_2

end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_two_factoring

