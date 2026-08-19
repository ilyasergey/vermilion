import Vermilion.Obligations
import bit_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u128_bit_or_is_plus

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u128_bit_or_is_plus.ensures_0 84738d12af2b9bca
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u128_bit_or_is_plus.ensures_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:65:1-65:55`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `84738d12af2b9bca`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 65
  startColumn := 1
  endLine := 65
  endColumn := 55
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u128_bit_or_is_plus"
  kind := "ensures"
  statementHash := "84738d12af2b9bca"
}
@[vrml_obligation] theorem ensures_0
    (a : Int)
    (b : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 a)
    (requires_1 : Vermilion.inUnsignedRange 128 b)
    (requires_2 : Vermilion.inUnsignedRange 128 k)
    (requires_3 : k < 128)
    (requires_4 : a < Vermilion.Bits.shl 128 1 k)
    (requires_5 : b ≤ Vermilion.Bits.shr 128 340282366920938463463374607431768211455 k) :
    Vermilion.Bits.bor 128 a (Vermilion.Bits.shl 128 b k) = (a + Vermilion.Bits.shl 128 b k) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u128_bit_or_is_plus.ensures_0

end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u128_bit_or_is_plus

