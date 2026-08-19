import Vermilion.Obligations
import negate_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_2 182b7665a6e3a6ea
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:73:5-73:34`
- Rust/SST construct: call lemma_neg_no_underflow
- AssertId: `2`
- Statement hash: `182b7665a6e3a6ea`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 73
  startColumn := 5
  endLine := 73
  endColumn := 34
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "call_requires"
  statementHash := "182b7665a6e3a6ea"
}
@[vrml_obligation] theorem call_requires_2
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_2

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_3 495e2ac08ae278c2
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:80:16-81:46`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `495e2ac08ae278c2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 80
  startColumn := 16
  endLine := 81
  endColumn := 46
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "assert"
  statementHash := "495e2ac08ae278c2"
}
@[vrml_obligation] theorem assert_3
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True) :
    layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = (((((16 * (vstd.arithmetic.power2.pow2 51 - 19)) + (vstd.arithmetic.power2.pow2 51 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) + (vstd.arithmetic.power2.pow2 102 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) + (vstd.arithmetic.power2.pow2 153 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) + (vstd.arithmetic.power2.pow2 204 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_8 07bec9349b110fe6
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:87:16-87:88`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `07bec9349b110fe6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 87
  startColumn := 16
  endLine := 87
  endColumn := 88
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "assert"
  statementHash := "07bec9349b110fe6"
}
@[vrml_obligation] theorem assert_8
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True)
    (assert_3 : layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = (((((16 * (vstd.arithmetic.power2.pow2 51 - 19)) + (vstd.arithmetic.power2.pow2 51 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) + (vstd.arithmetic.power2.pow2 102 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) + (vstd.arithmetic.power2.pow2 153 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) + (vstd.arithmetic.power2.pow2 204 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))))
    (assume_43 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204)) :
    layer_a.specs.field_specs_u64.p 0 = (((((vstd.arithmetic.power2.pow2 51 - 19) + (vstd.arithmetic.power2.pow2 51 * (vstd.arithmetic.power2.pow2 51 - 1))) + (vstd.arithmetic.power2.pow2 102 * (vstd.arithmetic.power2.pow2 51 - 1))) + (vstd.arithmetic.power2.pow2 153 * (vstd.arithmetic.power2.pow2 51 - 1))) + (vstd.arithmetic.power2.pow2 204 * (vstd.arithmetic.power2.pow2 51 - 1))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_8

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_9 a2061d1a76f5e3c9
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:78:12-78:39`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `a2061d1a76f5e3c9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 78
  startColumn := 12
  endLine := 78
  endColumn := 39
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "assert"
  statementHash := "a2061d1a76f5e3c9"
}
@[vrml_obligation] theorem assert_9
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True)
    (assert_3 : layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = (((((16 * (vstd.arithmetic.power2.pow2 51 - 19)) + (vstd.arithmetic.power2.pow2 51 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) + (vstd.arithmetic.power2.pow2 102 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) + (vstd.arithmetic.power2.pow2 153 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))) + (vstd.arithmetic.power2.pow2 204 * (16 * (vstd.arithmetic.power2.pow2 51 - 1)))))
    (assume_43 : True → (layer_a.specs.field_specs_u64.p 0 = (((((vstd.arithmetic.power2.pow2 51 - 19) + (vstd.arithmetic.power2.pow2 51 * (vstd.arithmetic.power2.pow2 51 - 1))) + (vstd.arithmetic.power2.pow2 102 * (vstd.arithmetic.power2.pow2 51 - 1))) + (vstd.arithmetic.power2.pow2 153 * (vstd.arithmetic.power2.pow2 51 - 1))) + (vstd.arithmetic.power2.pow2 204 * (vstd.arithmetic.power2.pow2 51 - 1))))) :
    layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_10 7af1d9ff72f5c6d9
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:110:9-110:41`
- Rust/SST construct: call lemma_u64_5_as_nat_sub
- AssertId: `10`
- Statement hash: `7af1d9ff72f5c6d9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) i⟩ ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 110
  startColumn := 9
  endLine := 110
  endColumn := 41
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "call_requires"
  statementHash := "7af1d9ff72f5c6d9"
}
@[vrml_obligation] theorem call_requires_10
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i ≤ Vermilion.Seq.index (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) i))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_10

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_11 0aca2d3c6c6f8dc2
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:101:12-109:47`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `0aca2d3c6c6f8dc2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 101
  startColumn := 12
  endLine := 109
  endColumn := 47
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "assert"
  statementHash := "0aca2d3c6c6f8dc2"
}
@[vrml_obligation] theorem assert_11
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True)
    (call_lemma_u64_5_as_nat_sub_ensures_0 : layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((Vermilion.Seq.index (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) 0 - Vermilion.Seq.index limbs 0) % 18446744073709551616)) ((Vermilion.Seq.index (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) 1 - Vermilion.Seq.index limbs 1) % 18446744073709551616)) ((Vermilion.Seq.index (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) 2 - Vermilion.Seq.index limbs 2) % 18446744073709551616)) ((Vermilion.Seq.index (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) 3 - Vermilion.Seq.index limbs 3) % 18446744073709551616)) ((Vermilion.Seq.index (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) 4 - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)) :
    layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_11

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_13 2ef1578a56c50049
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:115:12-115:92`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `2ef1578a56c50049`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 115
  startColumn := 12
  endLine := 115
  endColumn := 92
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "assert"
  statementHash := "2ef1578a56c50049"
}
@[vrml_obligation] theorem assert_13
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True)
    (call_lemma_mul_is_distributive_sub_ensures_0 : (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) = ((layer_a.specs.field_specs_u64.p 0 * 16) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))) :
    (((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_13

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_14_0 fa0c74f4c7b55c5a
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_14_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:122:17-122:83`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `14_0`
- Statement hash: `fa0c74f4c7b55c5a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def call_requires_14_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 122
  startColumn := 17
  endLine := 122
  endColumn := 83
  assertId := "14_0"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "call_requires"
  statementHash := "fa0c74f4c7b55c5a"
}
@[vrml_obligation] theorem call_requires_14_0
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True)
    (assume_45 : True)
    (assume_46 : True) :
    (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) ≤ ((Vermilion.natClip (16 * vstd.arithmetic.power2.pow2 51)) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_14_0

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_14_1 9ecb978f1a00cf44
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_14_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:122:17-122:83`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `14_1`
- Statement hash: `9ecb978f1a00cf44`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def call_requires_14_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 122
  startColumn := 17
  endLine := 122
  endColumn := 83
  assertId := "14_1"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "call_requires"
  statementHash := "9ecb978f1a00cf44"
}
@[vrml_obligation] theorem call_requires_14_1
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True)
    (assume_45 : True)
    (assume_46 : True) :
    51 ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_14_1

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_15 ae7c6b0829283d59
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:121:20-121:53`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `ae7c6b0829283d59`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 121
  startColumn := 20
  endLine := 121
  endColumn := 53
  assertId := "15"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "assert"
  statementHash := "ae7c6b0829283d59"
}
@[vrml_obligation] theorem assert_15
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True)
    (assume_45 : True)
    (assume_46 : True)
    (call_lemma_u64_shr_le_ensures_0 : Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51 ≤ Vermilion.Bits.shr 64 ((Vermilion.natClip (16 * vstd.arithmetic.power2.pow2 51)) % 18446744073709551616) 51) :
    Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51 ≤ Vermilion.Bits.shr 64 ((Vermilion.natClip (16 * vstd.arithmetic.power2.pow2 51)) % 18446744073709551616) 51 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_15

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_16 f44838489fa55183
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:125:20-125:63`
- Rust/SST construct: assertion failed
- AssertId: `16`
- Statement hash: `f44838489fa55183`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 125
  startColumn := 20
  endLine := 125
  endColumn := 63
  assertId := "16"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "assert"
  statementHash := "f44838489fa55183"
}
@[vrml_obligation] theorem assert_16
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True)
    (assume_45 : True)
    (assume_46 : True → (Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51 ≤ Vermilion.Bits.shr 64 ((Vermilion.natClip (16 * vstd.arithmetic.power2.pow2 51)) % 18446744073709551616) 51)) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_16

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_17 3c996bda0fc6195d
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:120:16-120:23`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `3c996bda0fc6195d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 120
  startColumn := 16
  endLine := 120
  endColumn := 23
  assertId := "17"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "assert"
  statementHash := "3c996bda0fc6195d"
}
@[vrml_obligation] theorem assert_17
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True)
    (assume_45 : True)
    (assume_46 : True → (Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51 ≤ Vermilion.Bits.shr 64 ((Vermilion.natClip (16 * vstd.arithmetic.power2.pow2 51)) % 18446744073709551616) 51))
    (assert_16 : True)
    (assume_48 : Vermilion.Bits.shr 64 ((Vermilion.natClip (16 * 2251799813685248)) % 18446744073709551616) 51 = 16) :
    Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51 ≤ 16 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_17

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_18 1eae127191c43bd5
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_18`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:127:9-127:63`
- Rust/SST construct: call lemma_mod_multiples_basic
- AssertId: `18`
- Statement hash: `1eae127191c43bd5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def call_requires_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 127
  startColumn := 9
  endLine := 127
  endColumn := 63
  assertId := "18"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "call_requires"
  statementHash := "1eae127191c43bd5"
}
@[vrml_obligation] theorem call_requires_18
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True)
    (assume_45 : True → (Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51 ≤ 16)) :
    layer_a.specs.field_specs_u64.p 0 > 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.call_requires_18

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_20 dfa4f2b404a6f586
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_20`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:119:12-119:46`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `dfa4f2b404a6f586`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 119
  startColumn := 12
  endLine := 119
  endColumn := 46
  assertId := "20"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "assert"
  statementHash := "dfa4f2b404a6f586"
}
@[vrml_obligation] theorem assert_20
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True)
    (assume_45 : True → (Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51 ≤ 16))
    (call_lemma_mod_multiples_basic_ensures_0 : (Vermilion.emod ((16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51) * layer_a.specs.field_specs_u64.p 0) (layer_a.specs.field_specs_u64.p 0)) = 0)
    (call_lemma_mul_is_commutative_ensures_0 : ((16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51) * layer_a.specs.field_specs_u64.p 0) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))) :
    (Vermilion.emod (Vermilion.natClip (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))) (layer_a.specs.field_specs_u64.p 0)) = 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.assert_20

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.ensures_21_0 891849b8542763c9
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.ensures_21_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:45:9-45:75`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `21_0`
- Statement hash: `891849b8542763c9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_negate limbs) i⟩ ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def ensures_21_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 45
  startColumn := 9
  endLine := 45
  endColumn := 75
  assertId := "21_0"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "ensures"
  statementHash := "891849b8542763c9"
}
@[vrml_obligation] theorem ensures_21_0
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True → ((Vermilion.emod (Vermilion.natClip (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))) (layer_a.specs.field_specs_u64.p 0)) = 0)) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_negate limbs) i < Vermilion.Bits.shl 64 1 52))) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.ensures_21_0

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.ensures_21_1 33c323c85f7cf48f
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.ensures_21_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:61:9-62:55`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `21_1`
- Statement hash: `33c323c85f7cf48f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def ensures_21_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 61
  startColumn := 9
  endLine := 62
  endColumn := 55
  assertId := "21_1"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "ensures"
  statementHash := "33c323c85f7cf48f"
}
@[vrml_obligation] theorem ensures_21_1
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True → ((Vermilion.emod (Vermilion.natClip (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))) (layer_a.specs.field_specs_u64.p 0)) = 0)) :
    layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_negate limbs) = ((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 ((36028797018963952 - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.ensures_21_1

-- vrml:begin layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.ensures_21_2 deb4b7ee7b245e21
/--
Generated VC `layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.ensures_21_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs:63:9-63:76`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `21_2`
- Statement hash: `deb4b7ee7b245e21`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩ ⟨Vermilion.Seq.index limbs i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i⟩
-/
def ensures_21_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs"
  startLine := 63
  startColumn := 9
  endLine := 63
  endColumn := 76
  assertId := "21_2"
  functionName := "layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate"
  kind := "ensures"
  statementHash := "deb4b7ee7b245e21"
}
@[vrml_obligation] theorem ensures_21_2
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index limbs i < Vermilion.Bits.shl 64 1 54))))
    (requires_3 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) = layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs) 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.pre_reduce_limbs limbs)) (layer_a.specs.field_specs_u64.p 0)))
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_neg_no_underflow_ensures_0 : layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive limbs)
    (assume_41 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) = Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0)))
    (assume_42 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (((16 * (vstd.arithmetic.power2.pow2 51 - 19)) - Vermilion.Seq.index limbs 0) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 1) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 2) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 3) % 18446744073709551616)) (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((16 * (vstd.arithmetic.power2.pow2 51 - 19)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) ((16 * (vstd.arithmetic.power2.pow2 51 - 1)) % 18446744073709551616)) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs)))
    (assume_43 : True → ((((Vermilion.natClip (16 * layer_a.specs.field_specs_u64.p 0) - layer_a.specs.field_specs_u64.u64_5_as_nat limbs) - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51)) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs) = (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))))
    (assume_44 : True → ((Vermilion.emod (Vermilion.natClip (layer_a.specs.field_specs_u64.p 0 * (16 - Vermilion.Bits.shr 64 (((16 * (vstd.arithmetic.power2.pow2 51 - 1)) - Vermilion.Seq.index limbs 4) % 18446744073709551616) 51))) (layer_a.specs.field_specs_u64.p 0)) = 0)) :
    (Vermilion.emod (Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_negate limbs) + layer_a.specs.field_specs_u64.u64_5_as_nat limbs)) (layer_a.specs.field_specs_u64.p 0)) = 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate.ensures_21_2

end layer_a.lemmas.field_lemmas.negate_lemmas.proof_negate

