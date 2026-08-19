import Vermilion.Obligations
import pow_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric.ensures_3 bd834b5de015a209
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric.ensures_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1140:9-1140:67`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `bd834b5de015a209`
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1140
  startColumn := 9
  endLine := 1140
  endColumn := 67
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric"
  kind := "ensures"
  statementHash := "bd834b5de015a209"
}
@[vrml_obligation] theorem ensures_3
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b))
    (call_lemma_mul_is_distributive_sub_ensures_0 : (vstd.arithmetic.power2.pow2 b * (vstd.arithmetic.power2.pow2 a - 1)) = ((vstd.arithmetic.power2.pow2 b * vstd.arithmetic.power2.pow2 a) - (vstd.arithmetic.power2.pow2 b * 1))) :
    (((vstd.arithmetic.power2.pow2 a - 1) * vstd.arithmetic.power2.pow2 b) + (vstd.arithmetic.power2.pow2 b - 1)) = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) - 1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric.ensures_3

end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric

