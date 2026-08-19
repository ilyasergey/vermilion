import Vermilion.Obligations
import shift_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_shl_zero_is_id

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_shl_zero_is_id.ensures_0 1a9f48ac1820a278
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_shl_zero_is_id.ensures_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:77:1-77:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `1a9f48ac1820a278`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 77
  startColumn := 1
  endLine := 77
  endColumn := 51
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_shl_zero_is_id"
  kind := "ensures"
  statementHash := "1a9f48ac1820a278"
}
@[vrml_obligation] theorem ensures_0
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 v) :
    Vermilion.Bits.shl 8 v 0 = v := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_shl_zero_is_id.ensures_0

end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_shl_zero_is_id

