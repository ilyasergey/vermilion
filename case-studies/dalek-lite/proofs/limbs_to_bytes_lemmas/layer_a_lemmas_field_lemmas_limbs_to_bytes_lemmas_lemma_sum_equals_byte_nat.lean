import Vermilion.Obligations
import limbs_to_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_0 ac61338992c5dcdd
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2115:9-2115:74`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `1_0`
- Statement hash: `ac61338992c5dcdd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2115
  startColumn := 9
  endLine := 2115
  endColumn := 74
  assertId := "1_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "ac61338992c5dcdd"
}
@[vrml_obligation] theorem call_requires_1_0
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True) :
    Vermilion.Seq.index limbs 0 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_1 bce89779a26bbd1c
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2115:9-2115:74`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `1_1`
- Statement hash: `bce89779a26bbd1c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2115
  startColumn := 9
  endLine := 2115
  endColumn := 74
  assertId := "1_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "bce89779a26bbd1c"
}
@[vrml_obligation] theorem call_requires_1_1
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True) :
    Vermilion.Seq.index limbs 1 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_2 82c4f4f4404f526f
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2115:9-2115:74`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `1_2`
- Statement hash: `82c4f4f4404f526f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2115
  startColumn := 9
  endLine := 2115
  endColumn := 74
  assertId := "1_2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "82c4f4f4404f526f"
}
@[vrml_obligation] theorem call_requires_1_2
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True) :
    3 < 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_3 f076b60ee00696ea
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2115:9-2115:74`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `1_3`
- Statement hash: `f076b60ee00696ea`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2115
  startColumn := 9
  endLine := 2115
  endColumn := 74
  assertId := "1_3"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "f076b60ee00696ea"
}
@[vrml_obligation] theorem call_requires_1_3
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True) :
    Vermilion.natClip (48 + 3) = 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_3

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_4 45d567e28a6b73ca
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2115:9-2115:74`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `1_4`
- Statement hash: `45d567e28a6b73ca`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_1_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2115
  startColumn := 9
  endLine := 2115
  endColumn := 74
  assertId := "1_4"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "45d567e28a6b73ca"
}
@[vrml_obligation] theorem call_requires_1_4
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True) :
    Vermilion.Seq.index bytes 6 = ((Vermilion.Bits.bor 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 48) (Vermilion.Bits.shl 64 (Vermilion.Seq.index limbs 1) 3)) % 256) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_1_4

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_2 ebfcce3754dd7faf
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2113:12-2113:97`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `ebfcce3754dd7faf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2113
  startColumn := 12
  endLine := 2113
  endColumn := 97
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "ebfcce3754dd7faf"
}
@[vrml_obligation] theorem assert_2
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True)
    (call_lemma_boundary_byte_combines_ensures_0 : Vermilion.Seq.index bytes 6 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) (vstd.arithmetic.power2.pow2 3)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 3)))) * vstd.arithmetic.power2.pow2 3))) :
    Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_4 f72525aed23d22b2
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2118:12-2119:50`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `f72525aed23d22b2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2118
  startColumn := 12
  endLine := 2119
  endColumn := 50
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "f72525aed23d22b2"
}
@[vrml_obligation] theorem assert_4
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True)
    (call_lemma_mul_is_distributive_add_other_way_ensures_0 : ((((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = ((((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))) :
    Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_4

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_5 922c7bf27f1dff97
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2127:12-2127:67`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `922c7bf27f1dff97`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2127
  startColumn := 12
  endLine := 2127
  endColumn := 67
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "922c7bf27f1dff97"
}
@[vrml_obligation] theorem assert_5
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))) :
    Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_0 d5911cbd17e028bd
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2133:9-2133:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `6_0`
- Statement hash: `d5911cbd17e028bd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2133
  startColumn := 9
  endLine := 2133
  endColumn := 75
  assertId := "6_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "d5911cbd17e028bd"
}
@[vrml_obligation] theorem call_requires_6_0
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True) :
    Vermilion.Seq.index limbs 1 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_1 624a394d4846e022
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2133:9-2133:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `6_1`
- Statement hash: `624a394d4846e022`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2133
  startColumn := 9
  endLine := 2133
  endColumn := 75
  assertId := "6_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "624a394d4846e022"
}
@[vrml_obligation] theorem call_requires_6_1
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True) :
    Vermilion.Seq.index limbs 2 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_2 7fa39a3a368ed0bf
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2133:9-2133:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `6_2`
- Statement hash: `7fa39a3a368ed0bf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_6_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2133
  startColumn := 9
  endLine := 2133
  endColumn := 75
  assertId := "6_2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "7fa39a3a368ed0bf"
}
@[vrml_obligation] theorem call_requires_6_2
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True) :
    6 < 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_3 0734137bd59e41f9
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2133:9-2133:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `6_3`
- Statement hash: `0734137bd59e41f9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_6_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2133
  startColumn := 9
  endLine := 2133
  endColumn := 75
  assertId := "6_3"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "0734137bd59e41f9"
}
@[vrml_obligation] theorem call_requires_6_3
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True) :
    Vermilion.natClip (45 + 6) = 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_3

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_4 7b79b772147a1aa8
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2133:9-2133:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `6_4`
- Statement hash: `7b79b772147a1aa8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_6_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2133
  startColumn := 9
  endLine := 2133
  endColumn := 75
  assertId := "6_4"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "7b79b772147a1aa8"
}
@[vrml_obligation] theorem call_requires_6_4
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True) :
    Vermilion.Seq.index bytes 12 = ((Vermilion.Bits.bor 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 45) (Vermilion.Bits.shl 64 (Vermilion.Seq.index limbs 2) 6)) % 256) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_6_4

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_7 03f84427edbb14b4
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2131:12-2132:18`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `03f84427edbb14b4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2131
  startColumn := 12
  endLine := 2132
  endColumn := 18
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "03f84427edbb14b4"
}
@[vrml_obligation] theorem assert_7
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True)
    (call_lemma_boundary_byte_combines_1_ensures_0 : Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 6)))) * vstd.arithmetic.power2.pow2 6))) :
    Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_9 f48ff72d05fefc00
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2136:12-2138:63`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `f48ff72d05fefc00`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2136
  startColumn := 12
  endLine := 2138
  endColumn := 63
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "f48ff72d05fefc00"
}
@[vrml_obligation] theorem assert_9
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True)
    (call_lemma_mul_is_distributive_add_other_way_1_ensures_0 : (((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = (((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))) :
    Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_10 c9f6bb0ba6df7c5e
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2146:12-2146:71`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `c9f6bb0ba6df7c5e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2146
  startColumn := 12
  endLine := 2146
  endColumn := 71
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "c9f6bb0ba6df7c5e"
}
@[vrml_obligation] theorem assert_10
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))) :
    Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_0 733d77dc22f3380a
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2152:9-2152:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `11_0`
- Statement hash: `733d77dc22f3380a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_11_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2152
  startColumn := 9
  endLine := 2152
  endColumn := 75
  assertId := "11_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "733d77dc22f3380a"
}
@[vrml_obligation] theorem call_requires_11_0
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True) :
    Vermilion.Seq.index limbs 2 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_1 9eea7ce33d951ce3
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2152:9-2152:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `11_1`
- Statement hash: `9eea7ce33d951ce3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_11_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2152
  startColumn := 9
  endLine := 2152
  endColumn := 75
  assertId := "11_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "9eea7ce33d951ce3"
}
@[vrml_obligation] theorem call_requires_11_1
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True) :
    Vermilion.Seq.index limbs 3 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_2 1b63ac85a6ba6a3e
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2152:9-2152:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `11_2`
- Statement hash: `1b63ac85a6ba6a3e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_11_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2152
  startColumn := 9
  endLine := 2152
  endColumn := 75
  assertId := "11_2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "1b63ac85a6ba6a3e"
}
@[vrml_obligation] theorem call_requires_11_2
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True) :
    1 < 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_3 2ebd1f0820ba6ba6
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2152:9-2152:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `11_3`
- Statement hash: `2ebd1f0820ba6ba6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_11_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2152
  startColumn := 9
  endLine := 2152
  endColumn := 75
  assertId := "11_3"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "2ebd1f0820ba6ba6"
}
@[vrml_obligation] theorem call_requires_11_3
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True) :
    Vermilion.natClip (50 + 1) = 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_3

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_4 683a989cbb4dfbba
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2152:9-2152:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `11_4`
- Statement hash: `683a989cbb4dfbba`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_11_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2152
  startColumn := 9
  endLine := 2152
  endColumn := 75
  assertId := "11_4"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "683a989cbb4dfbba"
}
@[vrml_obligation] theorem call_requires_11_4
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True) :
    Vermilion.Seq.index bytes 19 = ((Vermilion.Bits.bor 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 50) (Vermilion.Bits.shl 64 (Vermilion.Seq.index limbs 3) 1)) % 256) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_11_4

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_12 4323dee2747b3d1d
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2150:12-2150:98`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `4323dee2747b3d1d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2150
  startColumn := 12
  endLine := 2150
  endColumn := 98
  assertId := "12"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "4323dee2747b3d1d"
}
@[vrml_obligation] theorem assert_12
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True)
    (call_lemma_boundary_byte_combines_2_ensures_0 : Vermilion.Seq.index bytes 19 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) (vstd.arithmetic.power2.pow2 1)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))) * vstd.arithmetic.power2.pow2 1))) :
    Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_12

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_14 459c143abe9d1f22
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2155:12-2156:51`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `459c143abe9d1f22`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2155
  startColumn := 12
  endLine := 2156
  endColumn := 51
  assertId := "14"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "459c143abe9d1f22"
}
@[vrml_obligation] theorem assert_14
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True)
    (call_lemma_mul_is_distributive_add_other_way_2_ensures_0 : ((((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = ((((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))) :
    Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_14

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_15 8acc7f0d1442d6f1
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2164:12-2164:71`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `8acc7f0d1442d6f1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2164
  startColumn := 12
  endLine := 2164
  endColumn := 71
  assertId := "15"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "8acc7f0d1442d6f1"
}
@[vrml_obligation] theorem assert_15
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))) :
    Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_15

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_0 6b5044717d47e5fa
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2170:9-2170:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `16_0`
- Statement hash: `6b5044717d47e5fa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_16_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2170
  startColumn := 9
  endLine := 2170
  endColumn := 75
  assertId := "16_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "6b5044717d47e5fa"
}
@[vrml_obligation] theorem call_requires_16_0
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True) :
    Vermilion.Seq.index limbs 3 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_1 465ed12d033f99a1
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2170:9-2170:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `16_1`
- Statement hash: `465ed12d033f99a1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_16_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2170
  startColumn := 9
  endLine := 2170
  endColumn := 75
  assertId := "16_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "465ed12d033f99a1"
}
@[vrml_obligation] theorem call_requires_16_1
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True) :
    Vermilion.Seq.index limbs 4 < vstd.arithmetic.power2.pow2 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_2 898d221e27a1cbbe
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2170:9-2170:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `16_2`
- Statement hash: `898d221e27a1cbbe`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_16_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2170
  startColumn := 9
  endLine := 2170
  endColumn := 75
  assertId := "16_2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "898d221e27a1cbbe"
}
@[vrml_obligation] theorem call_requires_16_2
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True) :
    4 < 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_3 8bebda47cf9f558a
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2170:9-2170:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `16_3`
- Statement hash: `8bebda47cf9f558a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_16_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2170
  startColumn := 9
  endLine := 2170
  endColumn := 75
  assertId := "16_3"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "8bebda47cf9f558a"
}
@[vrml_obligation] theorem call_requires_16_3
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True) :
    Vermilion.natClip (47 + 4) = 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_3

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_4 d82829e51d2a81cd
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2170:9-2170:75`
- Rust/SST construct: call lemma_boundary_byte_combines
- AssertId: `16_4`
- Statement hash: `d82829e51d2a81cd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def call_requires_16_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2170
  startColumn := 9
  endLine := 2170
  endColumn := 75
  assertId := "16_4"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "call_requires"
  statementHash := "d82829e51d2a81cd"
}
@[vrml_obligation] theorem call_requires_16_4
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True) :
    Vermilion.Seq.index bytes 25 = ((Vermilion.Bits.bor 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 47) (Vermilion.Bits.shl 64 (Vermilion.Seq.index limbs 4) 4)) % 256) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.call_requires_16_4

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_17 795dc91266e88299
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2168:12-2169:18`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `795dc91266e88299`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2168
  startColumn := 12
  endLine := 2169
  endColumn := 18
  assertId := "17"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "795dc91266e88299"
}
@[vrml_obligation] theorem assert_17
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True)
    (call_lemma_boundary_byte_combines_3_ensures_0 : Vermilion.Seq.index bytes 25 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 4)))) * vstd.arithmetic.power2.pow2 4))) :
    Vermilion.Seq.index bytes 25 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_17

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_19 e8092263dd2ae650
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_19`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2173:12-2175:63`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `e8092263dd2ae650`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2173
  startColumn := 12
  endLine := 2175
  endColumn := 63
  assertId := "19"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "e8092263dd2ae650"
}
@[vrml_obligation] theorem assert_19
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True → (Vermilion.Seq.index bytes 25 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4))))
    (assume_50 : True)
    (call_lemma_mul_is_distributive_add_other_way_3_ensures_0 : (((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = (((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))))) :
    Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_19

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_20 a864ef1becf4f9ea
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_20`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2183:12-2183:71`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `a864ef1becf4f9ea`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2183
  startColumn := 12
  endLine := 2183
  endColumn := 71
  assertId := "20"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "a864ef1becf4f9ea"
}
@[vrml_obligation] theorem assert_20
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True → (Vermilion.Seq.index bytes 25 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4))))
    (assume_50 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))))) :
    Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_20

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_21 3f15b41e51dec69b
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_21`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2200:12-2200:61`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `3f15b41e51dec69b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2200
  startColumn := 12
  endLine := 2200
  endColumn := 61
  assertId := "21"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "3f15b41e51dec69b"
}
@[vrml_obligation] theorem assert_21
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True → (Vermilion.Seq.index bytes 25 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4))))
    (assume_50 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))))))
    (assert_20 : Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))))) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index bytes 0 + Vermilion.natClip (Vermilion.Seq.index bytes 1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 7 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 8 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 9 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (9 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 10 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (10 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 11 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (11 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 13 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (13 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 14 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (14 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 15 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (15 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 16 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 17 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (17 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 18 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (18 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 20 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (20 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 21 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (21 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 22 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (22 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 23 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (23 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 24 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 26 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (26 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 27 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (27 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 28 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (28 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 29 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (29 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 30 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (30 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 31 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (31 * 8)))) = layer_a.specs.core_specs.u8_32_as_nat bytes := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_21

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_22 1ed0e8488d89909e
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2202:12-2202:64`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `1ed0e8488d89909e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2202
  startColumn := 12
  endLine := 2202
  endColumn := 64
  assertId := "22"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "1ed0e8488d89909e"
}
@[vrml_obligation] theorem assert_22
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True → (Vermilion.Seq.index bytes 25 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4))))
    (assume_50 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))))))
    (assert_20 : Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))))
    (assert_21 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index bytes 0 + Vermilion.natClip (Vermilion.Seq.index bytes 1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 7 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 8 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 9 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (9 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 10 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (10 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 11 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (11 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 13 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (13 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 14 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (14 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 15 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (15 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 16 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 17 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (17 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 18 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (18 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 20 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (20 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 21 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (21 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 22 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (22 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 23 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (23 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 24 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 26 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (26 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 27 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (27 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 28 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (28 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 29 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (29 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 30 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (30 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 31 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (31 * 8)))) = layer_a.specs.core_specs.u8_32_as_nat bytes) :
    Vermilion.natClip (Vermilion.Seq.index bytes 0 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 * 8))) = Vermilion.natClip (Vermilion.Seq.index bytes 0 * 1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_22

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_23 4c550b377e2ecaf8
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_23`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2204:12-2206:88`
- Rust/SST construct: Rust source assertion
- AssertId: `23`
- Statement hash: `4c550b377e2ecaf8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2204
  startColumn := 12
  endLine := 2206
  endColumn := 88
  assertId := "23"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "assert"
  statementHash := "4c550b377e2ecaf8"
}
@[vrml_obligation] theorem assert_23
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True → (Vermilion.Seq.index bytes 25 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4))))
    (assume_50 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))))))
    (assert_20 : Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))))
    (assert_21 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index bytes 0 + Vermilion.natClip (Vermilion.Seq.index bytes 1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 7 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 8 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 9 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (9 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 10 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (10 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 11 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (11 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 13 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (13 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 14 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (14 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 15 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (15 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 16 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 17 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (17 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 18 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (18 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 20 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (20 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 21 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (21 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 22 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (22 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 23 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (23 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 24 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 26 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (26 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 27 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (27 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 28 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (28 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 29 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (29 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 30 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (30 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 31 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (31 * 8)))) = layer_a.specs.core_specs.u8_32_as_nat bytes)
    (assert_22 : Vermilion.natClip (Vermilion.Seq.index bytes 0 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 * 8))) = Vermilion.natClip (Vermilion.Seq.index bytes 0 * 1)) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index bytes 0 + Vermilion.natClip (Vermilion.Seq.index bytes 1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 7 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 8 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 9 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (9 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 10 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (10 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 11 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (11 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 13 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (13 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 14 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (14 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 15 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (15 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 16 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 17 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (17 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 18 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (18 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 20 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (20 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 21 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (21 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 22 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (22 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 23 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (23 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 24 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 26 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (26 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 27 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (27 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 28 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (28 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 29 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (29 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 30 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (30 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 31 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (31 * 8)))) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution limbs bytes + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution limbs bytes) + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution limbs bytes) + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution limbs bytes) + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution limbs bytes) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.assert_23

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.ensures_24 4eabf81be0496d9d
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.ensures_24`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:2074:9-2078:52`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24`
- Statement hash: `4eabf81be0496d9d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩
-/
def ensures_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 2074
  startColumn := 9
  endLine := 2078
  endColumn := 52
  assertId := "24"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat"
  kind := "ensures"
  statementHash := "4eabf81be0496d9d"
}
@[vrml_obligation] theorem ensures_24
    (limbs : (Vermilion.Seq Int))
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < vstd.arithmetic.power2.pow2 51))))
    (requires_5 : layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing limbs bytes)
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
    (assume_40 : True → (Vermilion.Seq.index bytes 6 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8))))
    (assume_41 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))))))
    (assert_5 : Vermilion.natClip (Vermilion.Seq.index bytes 6 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))))
    (assume_43 : True → (Vermilion.Seq.index bytes 12 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6))))
    (assume_44 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))))))
    (assert_10 : Vermilion.natClip (Vermilion.Seq.index bytes 12 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))))
    (assume_46 : True → (Vermilion.Seq.index bytes 19 = Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2))))
    (assume_47 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))))))
    (assert_15 : Vermilion.natClip (Vermilion.Seq.index bytes 19 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) = Vermilion.natClip (Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))))
    (assume_49 : True → (Vermilion.Seq.index bytes 25 = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) + Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4))))
    (assume_50 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))))))
    (assert_20 : Vermilion.natClip (Vermilion.Seq.index bytes 25 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))))
    (assert_21 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index bytes 0 + Vermilion.natClip (Vermilion.Seq.index bytes 1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 7 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 8 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 9 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (9 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 10 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (10 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 11 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (11 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 13 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (13 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 14 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (14 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 15 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (15 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 16 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 17 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (17 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 18 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (18 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 20 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (20 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 21 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (21 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 22 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (22 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 23 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (23 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 24 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 26 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (26 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 27 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (27 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 28 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (28 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 29 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (29 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 30 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (30 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 31 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (31 * 8)))) = layer_a.specs.core_specs.u8_32_as_nat bytes)
    (assert_22 : Vermilion.natClip (Vermilion.Seq.index bytes 0 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 * 8))) = Vermilion.natClip (Vermilion.Seq.index bytes 0 * 1))
    (assert_23 : Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index bytes 0 + Vermilion.natClip (Vermilion.Seq.index bytes 1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 2 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 3 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 4 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 5 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 0) (vstd.arithmetic.power2.pow2 48)) % 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 5)) * 8) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 7 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 8 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 9 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (9 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 10 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (10 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 11 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (11 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 1) (vstd.arithmetic.power2.pow2 45)) (vstd.arithmetic.power2.pow2 6)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 2)) * vstd.arithmetic.power2.pow2 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (12 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 13 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (13 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 14 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (14 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 15 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (15 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 16 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 17 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (17 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 18 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (18 * 8)))) + Vermilion.natClip (((Vermilion.ediv (Vermilion.Seq.index limbs 2) (vstd.arithmetic.power2.pow2 50)) % 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 7)) * 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (19 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 20 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (20 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 21 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (21 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 22 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (22 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 23 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (23 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 24 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 * 8)))) + Vermilion.natClip ((Vermilion.emod (Vermilion.ediv (Vermilion.Seq.index limbs 3) (vstd.arithmetic.power2.pow2 47)) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.natClip ((Vermilion.emod (Vermilion.Seq.index limbs 4) (vstd.arithmetic.power2.pow2 4)) * vstd.arithmetic.power2.pow2 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (25 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 26 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (26 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 27 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (27 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 28 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (28 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 29 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (29 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 30 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (30 * 8)))) + Vermilion.natClip (Vermilion.Seq.index bytes 31 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (31 * 8)))) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution limbs bytes + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution limbs bytes) + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution limbs bytes) + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution limbs bytes) + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution limbs bytes)) :
    layer_a.specs.core_specs.u8_32_as_nat bytes = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution limbs bytes + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution limbs bytes) + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution limbs bytes) + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution limbs bytes) + layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution limbs bytes) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat.ensures_24

end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_sum_equals_byte_nat

