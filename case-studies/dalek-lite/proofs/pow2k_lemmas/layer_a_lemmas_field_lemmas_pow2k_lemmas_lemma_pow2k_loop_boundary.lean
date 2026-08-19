import Vermilion.Obligations
import pow2k_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_0 0a8d96a69540740e
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:236:9-236:15`
- Rust/SST construct: requires not satisfied
- AssertId: `0`
- Statement hash: `0a8d96a69540740e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 236
  startColumn := 9
  endLine := 236
  endColumn := 15
  assertId := "0"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "0a8d96a69540740e"
}
@[vrml_obligation] theorem assert_0
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_bv_3_0 f9cc1a09afee1240
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_bv_3_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:236:16-236:81`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_3_0`
- Statement hash: `f9cc1a09afee1240`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def assert_bv_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 236
  startColumn := 16
  endLine := 236
  endColumn := 81
  assertId := "bv_3_0"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "f9cc1a09afee1240"
}
@[vrml_obligation] theorem assert_bv_3_0
    (a : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len a = 5)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (loop_0_iteration_2 : True) :
    True := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_bv_3_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_1 7bedc6d731787f21
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:235:12-235:37`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `7bedc6d731787f21`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 235
  startColumn := 12
  endLine := 235
  endColumn := 37
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "7bedc6d731787f21"
}
@[vrml_obligation] theorem assert_1
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True)
    (assert_0 : True)
    (assume_5 : (((Vermilion.Bits.shl 64 1 54) % 340282366920938463463374607431768211456) * ((Vermilion.Bits.shl 64 1 54) % 340282366920938463463374607431768211456)) = Vermilion.Bits.shl 128 1 108) :
    (Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_2 771f8eadfbdb54c6
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:240:9-240:15`
- Rust/SST construct: requires not satisfied
- AssertId: `2`
- Statement hash: `771f8eadfbdb54c6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 240
  startColumn := 9
  endLine := 240
  endColumn := 15
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "771f8eadfbdb54c6"
}
@[vrml_obligation] theorem assert_2
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_2

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_bv_3_0 bfae7daeb21f67ff
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_bv_3_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:240:16-240:82`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_3_0`
- Statement hash: `bfae7daeb21f67ff`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def assert_bv_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 240
  startColumn := 16
  endLine := 240
  endColumn := 82
  assertId := "bv_3_0"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "bfae7daeb21f67ff"
}
@[vrml_obligation] theorem assert_bv_3_0
    (a : (Vermilion.Seq Int))
    (loop_1_iteration_0 : Vermilion.Seq.len a = 5)
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (loop_1_iteration_2 : True) :
    True := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_bv_3_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_3 10a18673149a87e2
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:239:12-239:44`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `10a18673149a87e2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 239
  startColumn := 12
  endLine := 239
  endColumn := 44
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "10a18673149a87e2"
}
@[vrml_obligation] theorem assert_3
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True)
    (assert_2 : True)
    (assume_6 : (Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)) :
    (Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_4 4b1c95884e3b6bcd
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:244:16-244:45`
- Rust/SST construct: assertion failed
- AssertId: `4`
- Statement hash: `4b1c95884e3b6bcd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 244
  startColumn := 16
  endLine := 244
  endColumn := 45
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "4b1c95884e3b6bcd"
}
@[vrml_obligation] theorem assert_4
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_4

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_5 8ed4e629e8274f1e
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:243:12-243:34`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `8ed4e629e8274f1e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 243
  startColumn := 12
  endLine := 243
  endColumn := 34
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "8ed4e629e8274f1e"
}
@[vrml_obligation] theorem assert_5
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True)
    (assert_4 : True)
    (assume_7 : (19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615) :
    (19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_6_0 432a4d738edf17a0
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_6_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:249:9-249:44`
- Rust/SST construct: call lemma_term_product_bounds
- AssertId: `6_0`
- Statement hash: `432a4d738edf17a0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def call_requires_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 249
  startColumn := 9
  endLine := 249
  endColumn := 44
  assertId := "6_0"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "call_requires"
  statementHash := "432a4d738edf17a0"
}
@[vrml_obligation] theorem call_requires_6_0
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True) :
    (19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_6_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_6_1 23515327ceb6324f
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_6_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:249:9-249:44`
- Rust/SST construct: call lemma_term_product_bounds
- AssertId: `6_1`
- Statement hash: `23515327ceb6324f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a i⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def call_requires_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 249
  startColumn := 9
  endLine := 249
  endColumn := 44
  assertId := "6_1"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "call_requires"
  statementHash := "23515327ceb6324f"
}
@[vrml_obligation] theorem call_requires_6_1
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_6_1

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_7 99ecccb711e8b239
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:247:12-247:46`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `99ecccb711e8b239`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 247
  startColumn := 12
  endLine := 247
  endColumn := 46
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "99ecccb711e8b239"
}
@[vrml_obligation] theorem assert_7
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True)
    (call_lemma_term_product_bounds_ensures_0 : layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_8_0 595462c261774e1e
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_8_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:254:9-254:38`
- Rust/SST construct: call lemma_c_i_0_bounded
- AssertId: `8_0`
- Statement hash: `595462c261774e1e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def call_requires_8_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 254
  startColumn := 9
  endLine := 254
  endColumn := 38
  assertId := "8_0"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "call_requires"
  statementHash := "595462c261774e1e"
}
@[vrml_obligation] theorem call_requires_8_0
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True) :
    (19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_8_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_8_1 7fd0088e3ca57b1d
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_8_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:254:9-254:38`
- Rust/SST construct: call lemma_c_i_0_bounded
- AssertId: `8_1`
- Statement hash: `7fd0088e3ca57b1d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a i⟩ ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def call_requires_8_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 254
  startColumn := 9
  endLine := 254
  endColumn := 38
  assertId := "8_1"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "call_requires"
  statementHash := "7fd0088e3ca57b1d"
}
@[vrml_obligation] theorem call_requires_8_1
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_8_1

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_9 719308263d94fd49
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:252:12-252:41`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `719308263d94fd49`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 252
  startColumn := 12
  endLine := 252
  endColumn := 41
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "719308263d94fd49"
}
@[vrml_obligation] theorem assert_9
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True)
    (call_lemma_c_i_0_bounded_ensures_0 : layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_10 66c655ea2a833cf2
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:259:16-259:76`
- Rust/SST construct: assertion failed
- AssertId: `10`
- Statement hash: `66c655ea2a833cf2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 259
  startColumn := 16
  endLine := 259
  endColumn := 76
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "66c655ea2a833cf2"
}
@[vrml_obligation] theorem assert_10
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_11 b45c87ad649f7242
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:258:12-258:66`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `b45c87ad649f7242`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 258
  startColumn := 12
  endLine := 258
  endColumn := 66
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "b45c87ad649f7242"
}
@[vrml_obligation] theorem assert_11
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True)
    (assert_10 : True)
    (assume_10 : ((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51) :
    ((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_11

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_12_0 e39dfb21fa98b8a9
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_12_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:264:9-264:42`
- Rust/SST construct: call lemma_c_i_shift_bounded
- AssertId: `12_0`
- Statement hash: `e39dfb21fa98b8a9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def call_requires_12_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 264
  startColumn := 9
  endLine := 264
  endColumn := 42
  assertId := "12_0"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "call_requires"
  statementHash := "e39dfb21fa98b8a9"
}
@[vrml_obligation] theorem call_requires_12_0
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True) :
    (19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_12_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_12_1 0249c2df774efa04
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_12_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:264:9-264:42`
- Rust/SST construct: call lemma_c_i_shift_bounded
- AssertId: `12_1`
- Statement hash: `0249c2df774efa04`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def call_requires_12_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 264
  startColumn := 9
  endLine := 264
  endColumn := 42
  assertId := "12_1"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "call_requires"
  statementHash := "0249c2df774efa04"
}
@[vrml_obligation] theorem call_requires_12_1
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True) :
    ((77 * (Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54)) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_12_1

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_12_2 e7fc269c74714f23
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_12_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:264:9-264:42`
- Rust/SST construct: call lemma_c_i_shift_bounded
- AssertId: `12_2`
- Statement hash: `e7fc269c74714f23`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def call_requires_12_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 264
  startColumn := 9
  endLine := 264
  endColumn := 42
  assertId := "12_2"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "call_requires"
  statementHash := "e7fc269c74714f23"
}
@[vrml_obligation] theorem call_requires_12_2
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_12_2

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_13 cbc4ff633ed679f6
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:263:12-263:32`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `cbc4ff633ed679f6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 263
  startColumn := 12
  endLine := 263
  endColumn := 32
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "cbc4ff633ed679f6"
}
@[vrml_obligation] theorem assert_13
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True)
    (call_lemma_c_i_shift_bounded_ensures_0 : layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_13

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_19 e72c04a76e7c4b7b
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_19`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:269:16-270:68`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `e72c04a76e7c4b7b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 269
  startColumn := 16
  endLine := 270
  endColumn := 68
  assertId := "19"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "e72c04a76e7c4b7b"
}
@[vrml_obligation] theorem assert_19
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True)
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val a) % 18446744073709551616) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val a) % 18446744073709551616) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val a) % 18446744073709551616) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val a) % 18446744073709551616) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val a) % 18446744073709551616) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51) :
    ((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_19

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_20 abdf7d7788a1a187
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_20`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:286:17-286:88`
- Rust/SST construct: call lemma_shr_51_le
- AssertId: `20`
- Statement hash: `abdf7d7788a1a187`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def call_requires_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 286
  startColumn := 17
  endLine := 286
  endColumn := 88
  assertId := "20"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "call_requires"
  statementHash := "abdf7d7788a1a187"
}
@[vrml_obligation] theorem call_requires_20
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True)
    (assume_13 : True) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val a ≤ (((5 * Vermilion.Bits.shl 128 1 108) + (18446744073709551615 % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_20

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_21 27f807614b9e98d3
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_21`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:285:20-285:88`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `27f807614b9e98d3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 285
  startColumn := 20
  endLine := 285
  endColumn := 88
  assertId := "21"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "27f807614b9e98d3"
}
@[vrml_obligation] theorem assert_21
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True)
    (assume_13 : True)
    (call_lemma_shr_51_le_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val a) 51 ≤ Vermilion.Bits.shr 128 (((5 * Vermilion.Bits.shl 128 1 108) + (18446744073709551615 % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456) 51) :
    Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val a) 51 ≤ Vermilion.Bits.shr 128 (((5 * Vermilion.Bits.shl 128 1 108) + (18446744073709551615 % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456) 51 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_21

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_22 5b3ed79e01f8a567
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:289:20-290:43`
- Rust/SST construct: assertion failed
- AssertId: `22`
- Statement hash: `5b3ed79e01f8a567`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 289
  startColumn := 20
  endLine := 290
  endColumn := 43
  assertId := "22"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "5b3ed79e01f8a567"
}
@[vrml_obligation] theorem assert_22
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True)
    (assume_13 : True → (Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val a) 51 ≤ Vermilion.Bits.shr 128 (((5 * Vermilion.Bits.shl 128 1 108) + (18446744073709551615 % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456) 51)) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_22

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_23 12e0108e300a4683
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_23`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:280:16-280:40`
- Rust/SST construct: Rust source assertion
- AssertId: `23`
- Statement hash: `12e0108e300a4683`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 280
  startColumn := 16
  endLine := 280
  endColumn := 40
  assertId := "23"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "12e0108e300a4683"
}
@[vrml_obligation] theorem assert_23
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True)
    (assume_13 : True → (Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val a) 51 ≤ Vermilion.Bits.shr 128 (((5 * Vermilion.Bits.shl 128 1 108) + (18446744073709551615 % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456) 51))
    (assert_22 : True)
    (assume_15 : Vermilion.Bits.shr 128 (((5 * Vermilion.Bits.shl 128 1 108) + (18446744073709551615 % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456) 51 < (724618875532318195 % 340282366920938463463374607431768211456)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_23

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_24 54c3acf66f8949d0
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_24`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:294:20-294:73`
- Rust/SST construct: assertion failed
- AssertId: `24`
- Statement hash: `54c3acf66f8949d0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 294
  startColumn := 20
  endLine := 294
  endColumn := 73
  assertId := "24"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "54c3acf66f8949d0"
}
@[vrml_obligation] theorem assert_24
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195))
    (assume_13 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_24

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_25 835cb4e19ffa1fa8
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_25`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:293:16-293:58`
- Rust/SST construct: Rust source assertion
- AssertId: `25`
- Statement hash: `835cb4e19ffa1fa8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 293
  startColumn := 16
  endLine := 293
  endColumn := 58
  assertId := "25"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "835cb4e19ffa1fa8"
}
@[vrml_obligation] theorem assert_25
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195))
    (assume_13 : True)
    (assert_24 : True)
    (assume_15 : (Vermilion.Bits.shl 64 1 51 + (19 * 724618875532318195)) ≤ 18446744073709551615) :
    (layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a + (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a * 19)) < 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_25

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_26 0e395fe19a2e6a2d
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_26`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:299:17-299:71`
- Rust/SST construct: call lemma_shr_51_le
- AssertId: `26`
- Statement hash: `0e395fe19a2e6a2d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def call_requires_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 299
  startColumn := 17
  endLine := 299
  endColumn := 71
  assertId := "26"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "call_requires"
  statementHash := "0e395fe19a2e6a2d"
}
@[vrml_obligation] theorem call_requires_26
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195))
    (assume_13 : True → ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a + (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a * 19)) < 18446744073709551615))
    (assume_14 : True)
    (assume_15 : True) :
    ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) % 340282366920938463463374607431768211456) ≤ (18446744073709551615 % 340282366920938463463374607431768211456) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.call_requires_26

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_27 e404e52187b4d6f9
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_27`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:298:20-298:71`
- Rust/SST construct: Rust source assertion
- AssertId: `27`
- Statement hash: `e404e52187b4d6f9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_27_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 298
  startColumn := 20
  endLine := 298
  endColumn := 71
  assertId := "27"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "e404e52187b4d6f9"
}
@[vrml_obligation] theorem assert_27
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195))
    (assume_13 : True → ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a + (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a * 19)) < 18446744073709551615))
    (assume_14 : True)
    (assume_15 : True)
    (call_lemma_shr_51_le_1_ensures_0 : Vermilion.Bits.shr 128 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) % 340282366920938463463374607431768211456) 51 ≤ Vermilion.Bits.shr 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51) :
    Vermilion.Bits.shr 128 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) % 340282366920938463463374607431768211456) 51 ≤ Vermilion.Bits.shr 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_27

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_28 ff5d233ee274a616
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_28`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:301:20-301:61`
- Rust/SST construct: assertion failed
- AssertId: `28`
- Statement hash: `ff5d233ee274a616`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_28_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 301
  startColumn := 20
  endLine := 301
  endColumn := 61
  assertId := "28"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "ff5d233ee274a616"
}
@[vrml_obligation] theorem assert_28
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195))
    (assume_13 : True → ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a + (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a * 19)) < 18446744073709551615))
    (assume_14 : True)
    (assume_15 : True → (Vermilion.Bits.shr 128 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) % 340282366920938463463374607431768211456) 51 ≤ Vermilion.Bits.shr 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51)) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_28

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_29 add6f1dfc49d07e3
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_29`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:302:20-302:62`
- Rust/SST construct: assertion failed
- AssertId: `29`
- Statement hash: `add6f1dfc49d07e3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_29_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 302
  startColumn := 20
  endLine := 302
  endColumn := 62
  assertId := "29"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "add6f1dfc49d07e3"
}
@[vrml_obligation] theorem assert_29
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195))
    (assume_13 : True → ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a + (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a * 19)) < 18446744073709551615))
    (assume_14 : True)
    (assume_15 : True → (Vermilion.Bits.shr 128 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) % 340282366920938463463374607431768211456) 51 ≤ Vermilion.Bits.shr 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assert_28 : True)
    (assume_17 : Vermilion.Bits.shr 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 < Vermilion.Bits.shl 64 1 13) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_29

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_30 588b9443cf72084b
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_30`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:297:16-297:62`
- Rust/SST construct: Rust source assertion
- AssertId: `30`
- Statement hash: `588b9443cf72084b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_30_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 297
  startColumn := 16
  endLine := 297
  endColumn := 62
  assertId := "30"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "588b9443cf72084b"
}
@[vrml_obligation] theorem assert_30
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195))
    (assume_13 : True → ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a + (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a * 19)) < 18446744073709551615))
    (assume_14 : True)
    (assume_15 : True → (Vermilion.Bits.shr 128 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) % 340282366920938463463374607431768211456) 51 ≤ Vermilion.Bits.shr 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assert_28 : True)
    (assume_17 : Vermilion.Bits.shr 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 < Vermilion.Bits.shl 64 1 13)
    (assert_29 : True)
    (assume_19 : (Vermilion.Bits.shl 64 1 51 + Vermilion.Bits.shl 64 1 13) < Vermilion.Bits.shl 64 1 52) :
    (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a + Vermilion.Bits.shr 64 (layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) 51) < Vermilion.Bits.shl 64 1 52 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_30

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_32 c47e342a225d974a
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_32`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:305:16-305:40`
- Rust/SST construct: Rust source assertion
- AssertId: `32`
- Statement hash: `c47e342a225d974a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_32_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 305
  startColumn := 16
  endLine := 305
  endColumn := 40
  assertId := "32"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "c47e342a225d974a"
}
@[vrml_obligation] theorem assert_32
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195))
    (assume_13 : True → ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a + (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a * 19)) < 18446744073709551615))
    (assume_14 : True → ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a + Vermilion.Bits.shr 64 (layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) 51) < Vermilion.Bits.shl 64 1 52))
    (assume_15 : True)
    (call_lemma_masked_lt_51_5_ensures_0 : Vermilion.Bits.band 64 ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) % 18446744073709551616) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val a < Vermilion.Bits.shl 64 1 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_32

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_33 d230cc4a59dc0b38
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_33`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:267:12-267:32`
- Rust/SST construct: Rust source assertion
- AssertId: `33`
- Statement hash: `d230cc4a59dc0b38`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_33_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 267
  startColumn := 12
  endLine := 267
  endColumn := 32
  assertId := "33"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "d230cc4a59dc0b38"
}
@[vrml_obligation] theorem assert_33
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True)
    (assume_11 : True → (((((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a < Vermilion.Bits.shl 64 1 51) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val a < Vermilion.Bits.shl 64 1 51)) ∧ (layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val a < Vermilion.Bits.shl 64 1 51)))
    (assume_12 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a < 724618875532318195))
    (assume_13 : True → ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val a + (layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val a * 19)) < 18446744073709551615))
    (assume_14 : True → ((layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val a + Vermilion.Bits.shr 64 (layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val a) 51) < Vermilion.Bits.shl 64 1 52))
    (assume_15 : True → (layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val a < Vermilion.Bits.shl 64 1 51)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries a := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_33

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_34 dba039bd0322f0d1
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_34`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:311:5-311:11`
- Rust/SST construct: requires not satisfied
- AssertId: `34`
- Statement hash: `dba039bd0322f0d1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_34_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 311
  startColumn := 5
  endLine := 311
  endColumn := 11
  assertId := "34"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "dba039bd0322f0d1"
}
@[vrml_obligation] theorem assert_34
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries a) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_34

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_bv_18_0 b8340c5576030eb6
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_bv_18_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:311:12-311:54`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_18_0`
- Statement hash: `b8340c5576030eb6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def assert_bv_18_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 311
  startColumn := 12
  endLine := 311
  endColumn := 54
  assertId := "bv_18_0"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "assert"
  statementHash := "b8340c5576030eb6"
}
@[vrml_obligation] theorem assert_bv_18_0
    (a : (Vermilion.Seq Int))
    (loop_2_iteration_0 : Vermilion.Seq.len a = 5)
    (loop_2_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (loop_2_iteration_2 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.assert_bv_18_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.ensures_35 c5ba35ebf46c89ba
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.ensures_35`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:228:9-228:36`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `35`
- Statement hash: `c5ba35ebf46c89ba`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index a i⟩
-/
def ensures_35_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 228
  startColumn := 9
  endLine := 228
  endColumn := 36
  assertId := "35"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary"
  kind := "ensures"
  statementHash := "c5ba35ebf46c89ba"
}
@[vrml_obligation] theorem ensures_35
    (a : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index a i < Vermilion.Bits.shl 64 1 54))))
    (assume_3 : True → ((Vermilion.Bits.shl 64 1 54 * Vermilion.Bits.shl 64 1 54) = Vermilion.Bits.shl 128 1 108))
    (assume_4 : True → ((Vermilion.Bits.shl 64 1 54 * ((19 * Vermilion.Bits.shl 64 1 54) % 18446744073709551616)) = (19 * Vermilion.Bits.shl 128 1 108)))
    (assume_5 : True → ((19 * Vermilion.Bits.shl 64 1 54) ≤ 18446744073709551615))
    (assume_6 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec a (Vermilion.Bits.shl 64 1 54))
    (assume_7 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a (Vermilion.Bits.shl 64 1 54))
    (assume_8 : True → (((77 * Vermilion.Bits.shl 128 1 108) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51))
    (assume_9 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a)
    (assume_10 : True → layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries a)
    (assert_34 : True)
    (assume_12 : (Vermilion.Bits.shl 64 1 51 < Vermilion.Bits.shl 64 1 52) ∧ (Vermilion.Bits.shl 64 1 52 < Vermilion.Bits.shl 64 1 54)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec a := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary.ensures_35

end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_pow2k_loop_boundary

