import Vermilion.Obligations
import bit_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u32_bit_or_is_plus

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u32_bit_or_is_plus.ensures_0 31782ae9876c1302
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u32_bit_or_is_plus.ensures_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:63:1-63:53`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `31782ae9876c1302`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 63
  startColumn := 1
  endLine := 63
  endColumn := 53
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u32_bit_or_is_plus"
  kind := "ensures"
  statementHash := "31782ae9876c1302"
}
@[vrml_obligation] theorem ensures_0
    (a : Int)
    (b : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : Vermilion.inUnsignedRange 32 b)
    (requires_2 : Vermilion.inUnsignedRange 32 k)
    (requires_3 : k < 32)
    (requires_4 : a < Vermilion.Bits.shl 32 1 k)
    (requires_5 : b ≤ Vermilion.Bits.shr 32 4294967295 k) :
    Vermilion.Bits.bor 32 a (Vermilion.Bits.shl 32 b k) = (a + Vermilion.Bits.shl 32 b k) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u32_bit_or_is_plus.ensures_0

end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u32_bit_or_is_plus

