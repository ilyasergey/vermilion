import Vermilion.Obligations
import from_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow

-- vrml:begin layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_1 b5d27c071ba87852
/--
Generated VC `layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs:66:12-66:54`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `b5d27c071ba87852`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs"
  startLine := 66
  startColumn := 12
  endLine := 66
  endColumn := 54
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow"
  kind := "assert"
  statementHash := "b5d27c071ba87852"
}
@[vrml_obligation] theorem assert_1
    (a : Int)
    (j : Int)
    (k : Int)
    (l : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ j)
    (requires_2 : 0 ≤ k)
    (requires_3 : 0 ≤ l)
    (requires_4 : Vermilion.natClip (k * 8) > l)
    (assume_5 : True)
    (call_lemma_mul_is_commutative_ensures_0 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)) * (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l)))) = ((a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)))) :
    Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)) * Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l)))) = Vermilion.natClip (Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_4 26a4eac1c95dfab5
/--
Generated VC `layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs:70:12-70:51`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `26a4eac1c95dfab5`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs"
  startLine := 70
  startColumn := 12
  endLine := 70
  endColumn := 51
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow"
  kind := "assert"
  statementHash := "26a4eac1c95dfab5"
}
@[vrml_obligation] theorem assert_4
    (a : Int)
    (j : Int)
    (k : Int)
    (l : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ j)
    (requires_2 : 0 ≤ k)
    (requires_3 : 0 ≤ l)
    (requires_4 : Vermilion.natClip (k * 8) > l)
    (assume_5 : True → (Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)) * Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l)))) = Vermilion.natClip (Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)))))
    (assume_6 : True)
    (call_lemma_mul_is_associative_ensures_0 : (a * (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)))) = ((a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l))))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (k * 8) - l) + Vermilion.natClip (Vermilion.natClip (j * 8) + l))) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)))) :
    Vermilion.natClip (Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l))) = Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (k * 8) - l) + Vermilion.natClip (Vermilion.natClip (j * 8) + l)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_4

-- vrml:begin layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_6 7769ee32671aff20
/--
Generated VC `layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs:76:16-76:44`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `7769ee32671aff20`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs"
  startLine := 76
  startColumn := 16
  endLine := 76
  endColumn := 44
  assertId := "6"
  functionName := "layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow"
  kind := "assert"
  statementHash := "7769ee32671aff20"
}
@[vrml_obligation] theorem assert_6
    (a : Int)
    (j : Int)
    (k : Int)
    (l : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ j)
    (requires_2 : 0 ≤ k)
    (requires_3 : 0 ≤ l)
    (requires_4 : Vermilion.natClip (k * 8) > l)
    (assume_5 : True → (Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)) * Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l)))) = Vermilion.natClip (Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)))))
    (assume_6 : True → (Vermilion.natClip (Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l))) = Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (k * 8) - l) + Vermilion.natClip (Vermilion.natClip (j * 8) + l))))))
    (assume_7 : True)
    (assume_8 : True)
    (call_lemma_mul_is_distributive_add_other_way_ensures_0 : ((Vermilion.natClip (Vermilion.natClip (k * 8) - l) + Vermilion.natClip (Vermilion.natClip (j * 8) + l)) * 8) = ((Vermilion.natClip (Vermilion.natClip (k * 8) - l) * 8) + (Vermilion.natClip (Vermilion.natClip (j * 8) + l) * 8))) :
    Vermilion.natClip (Vermilion.natClip (j + k) * 8) = Vermilion.natClip (Vermilion.natClip (j * 8) + Vermilion.natClip (k * 8)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_6

-- vrml:begin layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_7 8b3b58acab593156
/--
Generated VC `layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs:75:12-75:33`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `8b3b58acab593156`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs"
  startLine := 75
  startColumn := 12
  endLine := 75
  endColumn := 33
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow"
  kind := "assert"
  statementHash := "8b3b58acab593156"
}
@[vrml_obligation] theorem assert_7
    (a : Int)
    (j : Int)
    (k : Int)
    (l : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ j)
    (requires_2 : 0 ≤ k)
    (requires_3 : 0 ≤ l)
    (requires_4 : Vermilion.natClip (k * 8) > l)
    (assume_5 : True → (Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)) * Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l)))) = Vermilion.natClip (Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)))))
    (assume_6 : True → (Vermilion.natClip (Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l))) = Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (k * 8) - l) + Vermilion.natClip (Vermilion.natClip (j * 8) + l))))))
    (assume_7 : True)
    (assume_8 : True → (Vermilion.natClip (Vermilion.natClip (j + k) * 8) = Vermilion.natClip (Vermilion.natClip (j * 8) + Vermilion.natClip (k * 8)))) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (k * 8) - l) + Vermilion.natClip (Vermilion.natClip (j * 8) + l)) = Vermilion.natClip (Vermilion.natClip (j + k) * 8) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.ensures_8 ecd0393c25ec335e
/--
Generated VC `layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.ensures_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs:60:9-60:82`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `8`
- Statement hash: `ecd0393c25ec335e`
-/
def ensures_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs"
  startLine := 60
  startColumn := 9
  endLine := 60
  endColumn := 82
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow"
  kind := "ensures"
  statementHash := "ecd0393c25ec335e"
}
@[vrml_obligation] theorem ensures_8
    (a : Int)
    (j : Int)
    (k : Int)
    (l : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ j)
    (requires_2 : 0 ≤ k)
    (requires_3 : 0 ≤ l)
    (requires_4 : Vermilion.natClip (k * 8) > l)
    (assume_5 : True → (Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)) * Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l)))) = Vermilion.natClip (Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)))))
    (assume_6 : True → (Vermilion.natClip (Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l))) = Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (k * 8) - l) + Vermilion.natClip (Vermilion.natClip (j * 8) + l))))))
    (assume_7 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (k * 8) - l) + Vermilion.natClip (Vermilion.natClip (j * 8) + l)) = Vermilion.natClip (Vermilion.natClip (j + k) * 8))) :
    Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) + l)) * Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * 8) - l)))) = Vermilion.natClip (a * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j + k) * 8))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow.ensures_8

end layer_a.lemmas.field_lemmas.from_bytes_lemmas.lemma_assemble_pow_a_pow

