import Vermilion.Obligations
import to_bytes_reduction_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms

-- vrml:begin layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_5 cbc59fda6d0d436e
/--
Generated VC `layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs:248:12-248:43`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `cbc59fda6d0d436e`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs"
  startLine := 248
  startColumn := 12
  endLine := 248
  endColumn := 43
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms"
  kind := "assert"
  statementHash := "cbc59fda6d0d436e"
}
@[vrml_obligation] theorem assert_5
    (no_param : Int)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_4 : True)
    (call_lemma_mul_is_distributive_sub_ensures_0 : (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204) * (vstd.arithmetic.power2.pow2 51 - 1)) = ((Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204) * vstd.arithmetic.power2.pow2 51) - (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204) * 1))) :
    ((vstd.arithmetic.power2.pow2 51 - 1) * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) - Vermilion.natClip (1 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_10 abacc221a4866eb8
/--
Generated VC `layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs:253:12-254:43`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `abacc221a4866eb8`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs"
  startLine := 253
  startColumn := 12
  endLine := 254
  endColumn := 43
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms"
  kind := "assert"
  statementHash := "abacc221a4866eb8"
}
@[vrml_obligation] theorem assert_10
    (no_param : Int)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_4 : True → (((vstd.arithmetic.power2.pow2 51 - 1) * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) - Vermilion.natClip (1 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)))))
    (assume_5 : True)
    (call_lemma_mul_is_distributive_add_ensures_0 : (vstd.arithmetic.power2.pow2 51 * (1 + vstd.arithmetic.power2.pow2 51)) = ((vstd.arithmetic.power2.pow2 51 * 1) + (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51)))
    (call_lemma_mul_is_distributive_add_1_ensures_0 : (vstd.arithmetic.power2.pow2 51 * ((1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102)) = ((vstd.arithmetic.power2.pow2 51 * (1 + vstd.arithmetic.power2.pow2 51)) + (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102)))
    (call_lemma_mul_is_distributive_add_2_ensures_0 : (vstd.arithmetic.power2.pow2 51 * ((Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153)) = ((vstd.arithmetic.power2.pow2 51 * (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102)) + (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153)))
    (call_lemma_mul_is_distributive_add_3_ensures_0 : (vstd.arithmetic.power2.pow2 51 * ((Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = ((vstd.arithmetic.power2.pow2 51 * (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153)) + (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))) :
    Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * 1) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_11 d8922e6b0e740db7
/--
Generated VC `layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs:270:12-270:45`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `d8922e6b0e740db7`
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs"
  startLine := 270
  startColumn := 12
  endLine := 270
  endColumn := 45
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms"
  kind := "assert"
  statementHash := "d8922e6b0e740db7"
}
@[vrml_obligation] theorem assert_11
    (no_param : Int)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_4 : True → (((vstd.arithmetic.power2.pow2 51 - 1) * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) - Vermilion.natClip (1 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)))))
    (assume_5 : True → (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * 1) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204)))) :
    Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153) = vstd.arithmetic.power2.pow2 204 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_11

-- vrml:begin layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_12 5615dc2ceb522167
/--
Generated VC `layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs:271:12-271:45`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `5615dc2ceb522167`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs"
  startLine := 271
  startColumn := 12
  endLine := 271
  endColumn := 45
  assertId := "12"
  functionName := "layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms"
  kind := "assert"
  statementHash := "5615dc2ceb522167"
}
@[vrml_obligation] theorem assert_12
    (no_param : Int)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_4 : True → (((vstd.arithmetic.power2.pow2 51 - 1) * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) - Vermilion.natClip (1 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)))))
    (assume_5 : True → (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * 1) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))))
    (assert_11 : Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153) = vstd.arithmetic.power2.pow2 204) :
    Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204) = vstd.arithmetic.power2.pow2 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.assert_12

-- vrml:begin layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.ensures_13 24860c2d3bdb458f
/--
Generated VC `layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.ensures_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs:226:9-226:93`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `13`
- Statement hash: `24860c2d3bdb458f`
-/
def ensures_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs"
  startLine := 226
  startColumn := 9
  endLine := 226
  endColumn := 93
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms"
  kind := "ensures"
  statementHash := "24860c2d3bdb458f"
}
@[vrml_obligation] theorem ensures_13
    (no_param : Int)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_4 : True → (((vstd.arithmetic.power2.pow2 51 - 1) * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) - Vermilion.natClip (1 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)))))
    (assume_5 : True → (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * 1) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))))
    (assert_11 : Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153) = vstd.arithmetic.power2.pow2 204)
    (assert_12 : Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204) = vstd.arithmetic.power2.pow2 255) :
    ((vstd.arithmetic.power2.pow2 51 - 1) * Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (1 + vstd.arithmetic.power2.pow2 51) + vstd.arithmetic.power2.pow2 102) + vstd.arithmetic.power2.pow2 153) + vstd.arithmetic.power2.pow2 204)) = (vstd.arithmetic.power2.pow2 255 - 1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms.ensures_13

end layer_a.lemmas.field_lemmas.to_bytes_reduction_lemmas.lemma_geometric_sum_5_terms

