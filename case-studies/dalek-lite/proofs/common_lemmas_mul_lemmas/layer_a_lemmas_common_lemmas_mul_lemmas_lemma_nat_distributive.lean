import Vermilion.Obligations
import common_lemmas_mul_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.mul_lemmas.lemma_nat_distributive

-- vrml:begin layer_a.lemmas.common_lemmas.mul_lemmas.lemma_nat_distributive.ensures_1 a9a99ed508f788d2
/--
Generated VC `layer_a.lemmas.common_lemmas.mul_lemmas.lemma_nat_distributive.ensures_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mul_lemmas.rs:56:9-56:37`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `a9a99ed508f788d2`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mul_lemmas.rs"
  startLine := 56
  startColumn := 9
  endLine := 56
  endColumn := 37
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.mul_lemmas.lemma_nat_distributive"
  kind := "ensures"
  statementHash := "a9a99ed508f788d2"
}
@[vrml_obligation] theorem ensures_1
    (x : Int)
    (y : Int)
    (z : Int)
    (requires_0 : 0 ≤ x)
    (requires_1 : 0 ≤ y)
    (requires_2 : 0 ≤ z)
    (call_lemma_mul_is_distributive_add_other_way_ensures_0 : ((y + z) * x) = ((y * x) + (z * x))) :
    Vermilion.natClip (Vermilion.natClip (y + z) * x) = Vermilion.natClip (Vermilion.natClip (y * x) + Vermilion.natClip (z * x)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.mul_lemmas.lemma_nat_distributive.ensures_1

end layer_a.lemmas.common_lemmas.mul_lemmas.lemma_nat_distributive

