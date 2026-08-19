import Vermilion.Obligations
import bit_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

-- vrml:user:begin
private theorem ofInt_toNat8 (x : BitVec 8) : BitVec.ofInt 8 (x.toNat : Int) = x := by
  simp [BitVec.ofInt_natCast]

private theorem shl16_one (p : Int) (h0 : 0 ≤ p) (h : p < 16) :
    Vermilion.Bits.shl 16 1 p = 2 ^ p.toNat := by
  have hp : p.toNat < 16 := by omega
  simp only [Vermilion.Bits.shl]
  rw [show BitVec.ofInt 16 1 = 1#16 from by decide]
  rw [BitVec.toNat_shiftLeft]
  simp only [BitVec.toNat_ofNat, Nat.shiftLeft_eq]
  rw [Nat.mod_eq_of_lt (show 1 < 2 ^ 16 by norm_num), one_mul,
    Nat.mod_eq_of_lt (Nat.pow_lt_pow_right (a := 2) (by norm_num) hp)]
  push_cast
  rfl
-- vrml:user:end

namespace layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_0 d66a4e37900c06c4
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:172:13-172:31`
- Rust/SST construct: requires not satisfied
- AssertId: `0`
- Statement hash: `d66a4e37900c06c4`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 172
  startColumn := 13
  endLine := 172
  endColumn := 31
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean"
  kind := "assert"
  statementHash := "d66a4e37900c06c4"
}
@[vrml_obligation] theorem assert_0
    (mask : Int)
    (bound_shift : Int)
    (j : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 mask)
    (requires_1 : Vermilion.inUnsignedRange 8 bound_shift)
    (requires_2 : Vermilion.inUnsignedRange 8 j)
    (requires_3 : bound_shift ≤ 8)
    (requires_4 : j < 8)
    (requires_5 : j ≥ bound_shift)
    (requires_6 : (mask % 65536) < Vermilion.Bits.shl 16 1 (bound_shift % 65536)) :
    bound_shift ≤ 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_0

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_1 43eb76d62249ddf0
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:173:13-173:20`
- Rust/SST construct: requires not satisfied
- AssertId: `1`
- Statement hash: `43eb76d62249ddf0`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 173
  startColumn := 13
  endLine := 173
  endColumn := 20
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean"
  kind := "assert"
  statementHash := "43eb76d62249ddf0"
}
@[vrml_obligation] theorem assert_1
    (mask : Int)
    (bound_shift : Int)
    (j : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 mask)
    (requires_1 : Vermilion.inUnsignedRange 8 bound_shift)
    (requires_2 : Vermilion.inUnsignedRange 8 j)
    (requires_3 : bound_shift ≤ 8)
    (requires_4 : j < 8)
    (requires_5 : j ≥ bound_shift)
    (requires_6 : (mask % 65536) < Vermilion.Bits.shl 16 1 (bound_shift % 65536))
    (assert_0 : bound_shift ≤ 8) :
    j < 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_2 f5045407ebce6132
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:174:13-174:29`
- Rust/SST construct: requires not satisfied
- AssertId: `2`
- Statement hash: `f5045407ebce6132`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 174
  startColumn := 13
  endLine := 174
  endColumn := 29
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean"
  kind := "assert"
  statementHash := "f5045407ebce6132"
}
@[vrml_obligation] theorem assert_2
    (mask : Int)
    (bound_shift : Int)
    (j : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 mask)
    (requires_1 : Vermilion.inUnsignedRange 8 bound_shift)
    (requires_2 : Vermilion.inUnsignedRange 8 j)
    (requires_3 : bound_shift ≤ 8)
    (requires_4 : j < 8)
    (requires_5 : j ≥ bound_shift)
    (requires_6 : (mask % 65536) < Vermilion.Bits.shl 16 1 (bound_shift % 65536))
    (assert_0 : bound_shift ≤ 8)
    (assert_1 : j < 8) :
    j ≥ bound_shift := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_2

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_3 8084c800dda25941
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:175:13-175:59`
- Rust/SST construct: requires not satisfied
- AssertId: `3`
- Statement hash: `8084c800dda25941`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 175
  startColumn := 13
  endLine := 175
  endColumn := 59
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean"
  kind := "assert"
  statementHash := "8084c800dda25941"
}
@[vrml_obligation] theorem assert_3
    (mask : Int)
    (bound_shift : Int)
    (j : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 mask)
    (requires_1 : Vermilion.inUnsignedRange 8 bound_shift)
    (requires_2 : Vermilion.inUnsignedRange 8 j)
    (requires_3 : bound_shift ≤ 8)
    (requires_4 : j < 8)
    (requires_5 : j ≥ bound_shift)
    (requires_6 : (mask % 65536) < Vermilion.Bits.shl 16 1 (bound_shift % 65536))
    (assert_0 : bound_shift ≤ 8)
    (assert_1 : j < 8)
    (assert_2 : j ≥ bound_shift) :
    (mask % 65536) < Vermilion.Bits.shl 16 1 (bound_shift % 65536) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_bv_5_0 264f0e33633c107e
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_bv_5_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:170:12-170:38`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_5_0`
- Statement hash: `264f0e33633c107e`
-/
def assert_bv_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 170
  startColumn := 12
  endLine := 170
  endColumn := 38
  assertId := "bv_5_0"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean"
  kind := "assert"
  statementHash := "264f0e33633c107e"
}
@[vrml_obligation] theorem assert_bv_5_0
    (mask : Int)
    (bound_shift : Int)
    (j : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 8 mask)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 8 bound_shift)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 8 j)
    (loop_0_iteration_3 : bound_shift ≤ 8)
    (loop_0_iteration_4 : j < 8)
    (loop_0_iteration_5 : j ≥ bound_shift)
    (loop_0_iteration_6 : (mask % 65536) < Vermilion.Bits.shl 16 1 (bound_shift % 65536)) :
    Vermilion.Bits.band 8 mask (Vermilion.Bits.shl 8 1 j) = 0 := by
  obtain ⟨hm0, hm1⟩ := loop_0_iteration_0
  obtain ⟨hb0, hb1⟩ := loop_0_iteration_1
  obtain ⟨hj0, hj1⟩ := loop_0_iteration_2
  have hm1' : mask < 256 := by norm_num at hm1; exact hm1
  rw [show bound_shift % 65536 = bound_shift from by omega,
    shl16_one bound_shift hb0 (by omega),
    show mask % 65536 = mask from by omega] at loop_0_iteration_6
  simp only [Vermilion.Bits.band, Vermilion.Bits.shl, ofInt_toNat8]
  rw [show BitVec.ofInt 8 1 = 1#8 from by decide]
  have hM : ((BitVec.ofInt 8 mask).toNat : Int) = mask :=
    Vermilion.Bits.toNat_ofInt_of_range 8 mask hm0 hm1
  have hMn : (BitVec.ofInt 8 mask).toNat < 2 ^ j.toNat := by
    have hle : (2 : Int) ^ bound_shift.toNat ≤ 2 ^ j.toNat := by
      apply pow_le_pow_right₀ (by norm_num); omega
    have h : mask < (2 : Int) ^ j.toNat := lt_of_lt_of_le loop_0_iteration_6 hle
    rw [← hM] at h
    exact_mod_cast h
  have hz : (BitVec.ofInt 8 mask &&& 1#8 <<< j.toNat) = 0#8 := by
    apply BitVec.eq_of_toNat_eq
    rw [BitVec.toNat_and, BitVec.toNat_shiftLeft]
    simp only [BitVec.toNat_ofNat, Nat.shiftLeft_eq]
    rw [Nat.mod_eq_of_lt (show 1 < 2 ^ 8 by norm_num), one_mul,
      Nat.mod_eq_of_lt (Nat.pow_lt_pow_right (a := 2) (by norm_num) (show j.toNat < 8 by omega)),
      Nat.zero_mod]
    apply Nat.eq_of_testBit_eq
    intro i
    simp only [Nat.testBit_and, Nat.zero_testBit, Nat.testBit_two_pow]
    by_cases hij : j.toNat = i
    · subst hij
      rw [Nat.testBit_lt_two_pow hMn]
      simp
    · simp [hij]
  rw [hz]
  rfl
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.assert_bv_5_0

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.ensures_4 ef11dcf98743f95a
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.ensures_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:168:9-168:33`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `ef11dcf98743f95a`
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 168
  startColumn := 9
  endLine := 168
  endColumn := 33
  assertId := "4"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean"
  kind := "ensures"
  statementHash := "ef11dcf98743f95a"
}
@[vrml_obligation] theorem ensures_4
    (mask : Int)
    (bound_shift : Int)
    (j : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 mask)
    (requires_1 : Vermilion.inUnsignedRange 8 bound_shift)
    (requires_2 : Vermilion.inUnsignedRange 8 j)
    (requires_3 : bound_shift ≤ 8)
    (requires_4 : j < 8)
    (requires_5 : j ≥ bound_shift)
    (requires_6 : (mask % 65536) < Vermilion.Bits.shl 16 1 (bound_shift % 65536))
    (assert_0 : bound_shift ≤ 8)
    (assert_1 : j < 8)
    (assert_2 : j ≥ bound_shift)
    (assert_3 : (mask % 65536) < Vermilion.Bits.shl 16 1 (bound_shift % 65536))
    (assume_11 : Vermilion.Bits.band 8 mask (Vermilion.Bits.shl 8 1 j) = 0) :
    Vermilion.Bits.band 8 mask (Vermilion.Bits.shl 8 1 j) = 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean.ensures_4

end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_mask_bound_implies_bit_clean

