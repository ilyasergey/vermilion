import Vermilion.Obligations
import bit_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u8_bit_or_is_plus

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u8_bit_or_is_plus.ensures_0 fd82f7e2fc0c5a18
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u8_bit_or_is_plus.ensures_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:61:1-61:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `fd82f7e2fc0c5a18`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 61
  startColumn := 1
  endLine := 61
  endColumn := 51
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u8_bit_or_is_plus"
  kind := "ensures"
  statementHash := "fd82f7e2fc0c5a18"
}
@[vrml_obligation] theorem ensures_0
    (a : Int)
    (b : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : Vermilion.inUnsignedRange 8 k)
    (requires_3 : k < 8)
    (requires_4 : a < Vermilion.Bits.shl 8 1 k)
    (requires_5 : b ≤ Vermilion.Bits.shr 8 255 k) :
    Vermilion.Bits.bor 8 a (Vermilion.Bits.shl 8 b k) = (a + Vermilion.Bits.shl 8 b k) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u8_bit_or_is_plus.ensures_0

end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u8_bit_or_is_plus

