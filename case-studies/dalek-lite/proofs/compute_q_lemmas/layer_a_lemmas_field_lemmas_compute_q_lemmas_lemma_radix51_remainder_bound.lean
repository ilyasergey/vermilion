import Vermilion.Obligations
import compute_q_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_5 3d4e34e5a9890cc5
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:272:9-272:56`
- Rust/SST construct: call lemma_pow2_mul_bound_general
- AssertId: `5`
- Statement hash: `3d4e34e5a9890cc5`
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 272
  startColumn := 9
  endLine := 272
  endColumn := 56
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound"
  kind := "call_requires"
  statementHash := "3d4e34e5a9890cc5"
}
@[vrml_obligation] theorem call_requires_5
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_1 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_2 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_3 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_4 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_10 : True) :
    Vermilion.natClip r1 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_5

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_6 0e023e7de6d97ee4
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:271:12-271:49`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `0e023e7de6d97ee4`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 271
  startColumn := 12
  endLine := 271
  endColumn := 49
  assertId := "6"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound"
  kind := "assert"
  statementHash := "0e023e7de6d97ee4"
}
@[vrml_obligation] theorem assert_6
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_1 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_2 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_3 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_4 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_10 : True)
    (call_lemma_pow2_mul_bound_general_ensures_0 : Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip r1) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) - vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_mul_bound_general_ensures_1 : Vermilion.natClip (Vermilion.natClip r1 * vstd.arithmetic.power2.pow2 51) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) - vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_mul_bound_general_ensures_2 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) - vstd.arithmetic.power2.pow2 51) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51))) :
    (r1 * vstd.arithmetic.power2.pow2 51) ≤ (vstd.arithmetic.power2.pow2 102 - vstd.arithmetic.power2.pow2 51) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_6

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_7 42bec23ca61f2d8d
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:276:9-276:57`
- Rust/SST construct: call lemma_pow2_mul_bound_general
- AssertId: `7`
- Statement hash: `42bec23ca61f2d8d`
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 276
  startColumn := 9
  endLine := 276
  endColumn := 57
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound"
  kind := "call_requires"
  statementHash := "42bec23ca61f2d8d"
}
@[vrml_obligation] theorem call_requires_7
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_1 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_2 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_3 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_4 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_10 : True → ((r1 * vstd.arithmetic.power2.pow2 51) ≤ (vstd.arithmetic.power2.pow2 102 - vstd.arithmetic.power2.pow2 51)))
    (assume_11 : True) :
    Vermilion.natClip r2 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_7

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_8 a15c249e06841043
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:275:12-275:51`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `a15c249e06841043`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 275
  startColumn := 12
  endLine := 275
  endColumn := 51
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound"
  kind := "assert"
  statementHash := "a15c249e06841043"
}
@[vrml_obligation] theorem assert_8
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_1 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_2 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_3 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_4 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_10 : True → ((r1 * vstd.arithmetic.power2.pow2 51) ≤ (vstd.arithmetic.power2.pow2 102 - vstd.arithmetic.power2.pow2 51)))
    (assume_11 : True)
    (call_lemma_pow2_mul_bound_general_1_ensures_0 : Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.natClip r2) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (102 + 51)) - vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_mul_bound_general_1_ensures_1 : Vermilion.natClip (Vermilion.natClip r2 * vstd.arithmetic.power2.pow2 102) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (102 + 51)) - vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_mul_bound_general_1_ensures_2 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (102 + 51)) - vstd.arithmetic.power2.pow2 102) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (102 + 51))) :
    (r2 * vstd.arithmetic.power2.pow2 102) ≤ (vstd.arithmetic.power2.pow2 153 - vstd.arithmetic.power2.pow2 102) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_8

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_9 a1ec82c452f034c5
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:280:9-280:57`
- Rust/SST construct: call lemma_pow2_mul_bound_general
- AssertId: `9`
- Statement hash: `a1ec82c452f034c5`
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 280
  startColumn := 9
  endLine := 280
  endColumn := 57
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound"
  kind := "call_requires"
  statementHash := "a1ec82c452f034c5"
}
@[vrml_obligation] theorem call_requires_9
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_1 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_2 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_3 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_4 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_10 : True → ((r1 * vstd.arithmetic.power2.pow2 51) ≤ (vstd.arithmetic.power2.pow2 102 - vstd.arithmetic.power2.pow2 51)))
    (assume_11 : True → ((r2 * vstd.arithmetic.power2.pow2 102) ≤ (vstd.arithmetic.power2.pow2 153 - vstd.arithmetic.power2.pow2 102)))
    (assume_12 : True) :
    Vermilion.natClip r3 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_9

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_10 0495ae05fffd294d
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:279:12-279:51`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `0495ae05fffd294d`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 279
  startColumn := 12
  endLine := 279
  endColumn := 51
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound"
  kind := "assert"
  statementHash := "0495ae05fffd294d"
}
@[vrml_obligation] theorem assert_10
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_1 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_2 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_3 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_4 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_10 : True → ((r1 * vstd.arithmetic.power2.pow2 51) ≤ (vstd.arithmetic.power2.pow2 102 - vstd.arithmetic.power2.pow2 51)))
    (assume_11 : True → ((r2 * vstd.arithmetic.power2.pow2 102) ≤ (vstd.arithmetic.power2.pow2 153 - vstd.arithmetic.power2.pow2 102)))
    (assume_12 : True)
    (call_lemma_pow2_mul_bound_general_2_ensures_0 : Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.natClip r3) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (153 + 51)) - vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_mul_bound_general_2_ensures_1 : Vermilion.natClip (Vermilion.natClip r3 * vstd.arithmetic.power2.pow2 153) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (153 + 51)) - vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_mul_bound_general_2_ensures_2 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (153 + 51)) - vstd.arithmetic.power2.pow2 153) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (153 + 51))) :
    (r3 * vstd.arithmetic.power2.pow2 153) ≤ (vstd.arithmetic.power2.pow2 204 - vstd.arithmetic.power2.pow2 153) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_11 cb96f83e0f141a16
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:284:9-284:57`
- Rust/SST construct: call lemma_pow2_mul_bound_general
- AssertId: `11`
- Statement hash: `cb96f83e0f141a16`
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 284
  startColumn := 9
  endLine := 284
  endColumn := 57
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound"
  kind := "call_requires"
  statementHash := "cb96f83e0f141a16"
}
@[vrml_obligation] theorem call_requires_11
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_1 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_2 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_3 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_4 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_10 : True → ((r1 * vstd.arithmetic.power2.pow2 51) ≤ (vstd.arithmetic.power2.pow2 102 - vstd.arithmetic.power2.pow2 51)))
    (assume_11 : True → ((r2 * vstd.arithmetic.power2.pow2 102) ≤ (vstd.arithmetic.power2.pow2 153 - vstd.arithmetic.power2.pow2 102)))
    (assume_12 : True → ((r3 * vstd.arithmetic.power2.pow2 153) ≤ (vstd.arithmetic.power2.pow2 204 - vstd.arithmetic.power2.pow2 153)))
    (assume_13 : True) :
    Vermilion.natClip r4 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.call_requires_11

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_12 30193a711666abbc
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:283:12-283:51`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `30193a711666abbc`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 283
  startColumn := 12
  endLine := 283
  endColumn := 51
  assertId := "12"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound"
  kind := "assert"
  statementHash := "30193a711666abbc"
}
@[vrml_obligation] theorem assert_12
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_1 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_2 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_3 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_4 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_10 : True → ((r1 * vstd.arithmetic.power2.pow2 51) ≤ (vstd.arithmetic.power2.pow2 102 - vstd.arithmetic.power2.pow2 51)))
    (assume_11 : True → ((r2 * vstd.arithmetic.power2.pow2 102) ≤ (vstd.arithmetic.power2.pow2 153 - vstd.arithmetic.power2.pow2 102)))
    (assume_12 : True → ((r3 * vstd.arithmetic.power2.pow2 153) ≤ (vstd.arithmetic.power2.pow2 204 - vstd.arithmetic.power2.pow2 153)))
    (assume_13 : True)
    (call_lemma_pow2_mul_bound_general_3_ensures_0 : Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.natClip r4) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (204 + 51)) - vstd.arithmetic.power2.pow2 204))
    (call_lemma_pow2_mul_bound_general_3_ensures_1 : Vermilion.natClip (Vermilion.natClip r4 * vstd.arithmetic.power2.pow2 204) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (204 + 51)) - vstd.arithmetic.power2.pow2 204))
    (call_lemma_pow2_mul_bound_general_3_ensures_2 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (204 + 51)) - vstd.arithmetic.power2.pow2 204) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (204 + 51))) :
    (r4 * vstd.arithmetic.power2.pow2 204) ≤ (vstd.arithmetic.power2.pow2 255 - vstd.arithmetic.power2.pow2 204) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.assert_12

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.ensures_13 f8cff3fb2d39c7ab
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.ensures_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:257:9-258:47`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `13`
- Statement hash: `f8cff3fb2d39c7ab`
-/
def ensures_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 257
  startColumn := 9
  endLine := 258
  endColumn := 47
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound"
  kind := "ensures"
  statementHash := "f8cff3fb2d39c7ab"
}
@[vrml_obligation] theorem ensures_13
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_1 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_2 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_3 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_4 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_10 : True → ((r1 * vstd.arithmetic.power2.pow2 51) ≤ (vstd.arithmetic.power2.pow2 102 - vstd.arithmetic.power2.pow2 51)))
    (assume_11 : True → ((r2 * vstd.arithmetic.power2.pow2 102) ≤ (vstd.arithmetic.power2.pow2 153 - vstd.arithmetic.power2.pow2 102)))
    (assume_12 : True → ((r3 * vstd.arithmetic.power2.pow2 153) ≤ (vstd.arithmetic.power2.pow2 204 - vstd.arithmetic.power2.pow2 153)))
    (assume_13 : True → ((r4 * vstd.arithmetic.power2.pow2 204) ≤ (vstd.arithmetic.power2.pow2 255 - vstd.arithmetic.power2.pow2 204))) :
    ((((r0 + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)) < vstd.arithmetic.power2.pow2 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound.ensures_13

end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_remainder_bound

