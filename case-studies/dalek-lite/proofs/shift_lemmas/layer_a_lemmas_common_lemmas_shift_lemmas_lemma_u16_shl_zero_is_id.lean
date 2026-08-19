import Vermilion.Obligations
import shift_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_shl_zero_is_id

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_shl_zero_is_id.ensures_0 0686743f600eb79c
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_shl_zero_is_id.ensures_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:79:1-79:53`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `0686743f600eb79c`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 79
  startColumn := 1
  endLine := 79
  endColumn := 53
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_shl_zero_is_id"
  kind := "ensures"
  statementHash := "0686743f600eb79c"
}
@[vrml_obligation] theorem ensures_0
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v) :
    Vermilion.Bits.shl 16 v 0 = v := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_shl_zero_is_id.ensures_0

end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_shl_zero_is_id

