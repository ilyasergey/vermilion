import Vermilion.Obligations
import bit_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus.ensures_0 1876de8ae4e80649
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus.ensures_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:62:1-62:53`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `1876de8ae4e80649`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 62
  startColumn := 1
  endLine := 62
  endColumn := 53
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus"
  kind := "ensures"
  statementHash := "1876de8ae4e80649"
}
@[vrml_obligation] theorem ensures_0
    (a : Int)
    (b : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 a)
    (requires_1 : Vermilion.inUnsignedRange 16 b)
    (requires_2 : Vermilion.inUnsignedRange 16 k)
    (requires_3 : k < 16)
    (requires_4 : a < Vermilion.Bits.shl 16 1 k)
    (requires_5 : b ≤ Vermilion.Bits.shr 16 65535 k) :
    Vermilion.Bits.bor 16 a (Vermilion.Bits.shl 16 b k) = (a + Vermilion.Bits.shl 16 b k) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus.ensures_0

end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus

