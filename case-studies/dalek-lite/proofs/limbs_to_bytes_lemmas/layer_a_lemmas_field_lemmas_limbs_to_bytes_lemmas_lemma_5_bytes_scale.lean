import Vermilion.Obligations
import limbs_to_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_0 e15886d505eb8135
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:504:12-504:32`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `e15886d505eb8135`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 504
  startColumn := 12
  endLine := 504
  endColumn := 32
  assertId := "0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale"
  kind := "assert"
  statementHash := "e15886d505eb8135"
}
@[vrml_obligation] theorem assert_0
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (scale : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : 0 ≤ scale)
    (requires_7 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) = value) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (value * vstd.arithmetic.power2.pow2 scale) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_2 dfcd2f71af06cd7f
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:515:12-515:65`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `dfcd2f71af06cd7f`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 515
  startColumn := 12
  endLine := 515
  endColumn := 65
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale"
  kind := "assert"
  statementHash := "dfcd2f71af06cd7f"
}
@[vrml_obligation] theorem assert_2
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (scale : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : 0 ≤ scale)
    (requires_7 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) = value)
    (assert_0 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (value * vstd.arithmetic.power2.pow2 scale))
    (assume_9 : True)
    (call_lemma_mul_distributive_5_terms_ensures_0 : ((vstd.arithmetic.power2.pow2 scale * ((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))) = (((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale)) ∧ ((((((Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = (((((vstd.arithmetic.power2.pow2 scale * Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0)) + (vstd.arithmetic.power2.pow2 scale * Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8))) + (vstd.arithmetic.power2.pow2 scale * Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16))) + (vstd.arithmetic.power2.pow2 scale * Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24))) + (vstd.arithmetic.power2.pow2 scale * Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32))))) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_5 60c4a32dea334413
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:528:12-528:48`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `60c4a32dea334413`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 528
  startColumn := 12
  endLine := 528
  endColumn := 48
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale"
  kind := "assert"
  statementHash := "60c4a32dea334413"
}
@[vrml_obligation] theorem assert_5
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (scale : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : 0 ≤ scale)
    (requires_7 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) = value)
    (assert_0 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (value * vstd.arithmetic.power2.pow2 scale))
    (assume_9 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale))))
    (assume_10 : True)
    (call_lemma_mul_is_associative_ensures_0 : (byte0 * (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 scale)) = ((byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 + scale)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 0 * vstd.arithmetic.power2.pow2 scale)) :
    Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 scale) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_9 1a4113e9508b25a0
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:534:12-534:52`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `1a4113e9508b25a0`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 534
  startColumn := 12
  endLine := 534
  endColumn := 52
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale"
  kind := "assert"
  statementHash := "1a4113e9508b25a0"
}
@[vrml_obligation] theorem assert_9
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (scale : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : 0 ≤ scale)
    (requires_7 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) = value)
    (assert_0 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (value * vstd.arithmetic.power2.pow2 scale))
    (assume_9 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale))))
    (assume_10 : True → (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 scale)))
    (assume_11 : True)
    (call_lemma_mul_is_associative_1_ensures_0 : (byte1 * (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 scale)) = ((byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + scale)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 scale))
    (call_lemma_mul_is_commutative_ensures_0 : (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 scale) = (vstd.arithmetic.power2.pow2 scale * vstd.arithmetic.power2.pow2 8)) :
    Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 8))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_13 5130e1be531d1a27
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:541:12-541:53`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `5130e1be531d1a27`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 541
  startColumn := 12
  endLine := 541
  endColumn := 53
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale"
  kind := "assert"
  statementHash := "5130e1be531d1a27"
}
@[vrml_obligation] theorem assert_13
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (scale : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : 0 ≤ scale)
    (requires_7 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) = value)
    (assert_0 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (value * vstd.arithmetic.power2.pow2 scale))
    (assume_9 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale))))
    (assume_10 : True → (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 scale)))
    (assume_11 : True → (Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 8)))))
    (assume_12 : True)
    (call_lemma_mul_is_associative_2_ensures_0 : (byte2 * (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 scale)) = ((byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + scale)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 scale))
    (call_lemma_mul_is_commutative_1_ensures_0 : (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 scale) = (vstd.arithmetic.power2.pow2 scale * vstd.arithmetic.power2.pow2 16)) :
    Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 16))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_13

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_17 aaa2feb4e4064fd4
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:548:12-548:53`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `aaa2feb4e4064fd4`
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 548
  startColumn := 12
  endLine := 548
  endColumn := 53
  assertId := "17"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale"
  kind := "assert"
  statementHash := "aaa2feb4e4064fd4"
}
@[vrml_obligation] theorem assert_17
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (scale : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : 0 ≤ scale)
    (requires_7 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) = value)
    (assert_0 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (value * vstd.arithmetic.power2.pow2 scale))
    (assume_9 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale))))
    (assume_10 : True → (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 scale)))
    (assume_11 : True → (Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 8)))))
    (assume_12 : True → (Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 16)))))
    (assume_13 : True)
    (call_lemma_mul_is_associative_3_ensures_0 : (byte3 * (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 scale)) = ((byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + scale)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 scale))
    (call_lemma_mul_is_commutative_2_ensures_0 : (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 scale) = (vstd.arithmetic.power2.pow2 scale * vstd.arithmetic.power2.pow2 24)) :
    Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 24))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_17

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_21 508e33a863f1a532
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_21`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:555:12-555:53`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `508e33a863f1a532`
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 555
  startColumn := 12
  endLine := 555
  endColumn := 53
  assertId := "21"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale"
  kind := "assert"
  statementHash := "508e33a863f1a532"
}
@[vrml_obligation] theorem assert_21
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (scale : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : 0 ≤ scale)
    (requires_7 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) = value)
    (assert_0 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (value * vstd.arithmetic.power2.pow2 scale))
    (assume_9 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale))))
    (assume_10 : True → (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 scale)))
    (assume_11 : True → (Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 8)))))
    (assume_12 : True → (Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 16)))))
    (assume_13 : True → (Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 24)))))
    (assume_14 : True)
    (call_lemma_mul_is_associative_4_ensures_0 : (byte4 * (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 scale)) = ((byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale))
    (call_lemma_pow2_adds_4_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + scale)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 scale))
    (call_lemma_mul_is_commutative_3_ensures_0 : (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 scale) = (vstd.arithmetic.power2.pow2 scale * vstd.arithmetic.power2.pow2 32)) :
    Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 32))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.assert_21

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.ensures_22 179f50319db55b06
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.ensures_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:493:9-497:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `22`
- Statement hash: `179f50319db55b06`
-/
def ensures_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 493
  startColumn := 9
  endLine := 497
  endColumn := 10
  assertId := "22"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale"
  kind := "ensures"
  statementHash := "179f50319db55b06"
}
@[vrml_obligation] theorem ensures_22
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (scale : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : 0 ≤ scale)
    (requires_7 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) = value)
    (assert_0 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (value * vstd.arithmetic.power2.pow2 scale))
    (assume_9 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) + Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale)) + Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale))))
    (assume_10 : True → (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 scale)))
    (assume_11 : True → (Vermilion.natClip (Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 8)))))
    (assume_12 : True → (Vermilion.natClip (Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 16)))))
    (assume_13 : True → (Vermilion.natClip (Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 24)))))
    (assume_14 : True → (Vermilion.natClip (Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32) * vstd.arithmetic.power2.pow2 scale) = Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 32))))) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 scale) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 8)))) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 16)))) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 24)))) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (scale + 32)))) = Vermilion.natClip (value * vstd.arithmetic.power2.pow2 scale) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale.ensures_22

end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_scale

