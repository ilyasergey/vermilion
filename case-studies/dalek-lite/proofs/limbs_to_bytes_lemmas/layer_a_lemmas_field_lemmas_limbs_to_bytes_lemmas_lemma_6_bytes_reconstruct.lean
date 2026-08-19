import Vermilion.Obligations
import limbs_to_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_1 682cc7705389ae47
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:592:5-592:49`
- Rust/SST construct: call lemma_fundamental_div_mod
- AssertId: `1`
- Statement hash: `682cc7705389ae47`
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 592
  startColumn := 5
  endLine := 592
  endColumn := 49
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "682cc7705389ae47"
}
@[vrml_obligation] theorem call_requires_1
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616) :
    (¬ (256 = 0)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_2 194c9e68967d6b18
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:595:12-595:51`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `194c9e68967d6b18`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 595
  startColumn := 12
  endLine := 595
  endColumn := 51
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "assert"
  statementHash := "194c9e68967d6b18"
}
@[vrml_obligation] theorem assert_2
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256))) :
    value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_4 8026c20fc36361ab
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:599:5-599:49`
- Rust/SST construct: call lemma_fundamental_div_mod
- AssertId: `4`
- Statement hash: `8026c20fc36361ab`
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 599
  startColumn := 5
  endLine := 599
  endColumn := 49
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "8026c20fc36361ab"
}
@[vrml_obligation] theorem call_requires_4
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0) :
    (¬ (256 = 0)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_4

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_6_0 2b2a998f9b8340ba
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_6_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:603:5-603:50`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `6_0`
- Statement hash: `2b2a998f9b8340ba`
-/
def call_requires_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 603
  startColumn := 5
  endLine := 603
  endColumn := 50
  assertId := "6_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "2b2a998f9b8340ba"
}
@[vrml_obligation] theorem call_requires_6_0
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8)) :
    0 ≤ value := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_6_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_6_1 ed85365f0482e31d
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_6_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:603:5-603:50`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `6_1`
- Statement hash: `ed85365f0482e31d`
-/
def call_requires_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 603
  startColumn := 5
  endLine := 603
  endColumn := 50
  assertId := "6_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "ed85365f0482e31d"
}
@[vrml_obligation] theorem call_requires_6_1
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8)) :
    0 < 256 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_6_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_6_2 ed85365f0482e31d
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_6_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:603:5-603:50`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `6_2`
- Statement hash: `ed85365f0482e31d`
-/
def call_requires_6_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 603
  startColumn := 5
  endLine := 603
  endColumn := 50
  assertId := "6_2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "ed85365f0482e31d"
}
@[vrml_obligation] theorem call_requires_6_2
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8)) :
    0 < 256 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_6_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_7 e63ea02902d7a61f
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:606:5-606:49`
- Rust/SST construct: call lemma_fundamental_div_mod
- AssertId: `7`
- Statement hash: `e63ea02902d7a61f`
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 606
  startColumn := 5
  endLine := 606
  endColumn := 49
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "e63ea02902d7a61f"
}
@[vrml_obligation] theorem call_requires_7
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256))) :
    (¬ (256 = 0)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_7

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_8 9f533eeff67c3a83
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:607:12-607:52`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `9f533eeff67c3a83`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 607
  startColumn := 12
  endLine := 607
  endColumn := 52
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "assert"
  statementHash := "9f533eeff67c3a83"
}
@[vrml_obligation] theorem assert_8
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256))) :
    byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_8

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_10_0 fe210fdaef3514a3
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_10_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:611:5-611:62`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `10_0`
- Statement hash: `fe210fdaef3514a3`
-/
def call_requires_10_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 611
  startColumn := 5
  endLine := 611
  endColumn := 62
  assertId := "10_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "fe210fdaef3514a3"
}
@[vrml_obligation] theorem call_requires_10_0
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8)) :
    0 ≤ value := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_10_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_10_1 83c619bcf2998dcc
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_10_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:611:5-611:62`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `10_1`
- Statement hash: `83c619bcf2998dcc`
-/
def call_requires_10_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 611
  startColumn := 5
  endLine := 611
  endColumn := 62
  assertId := "10_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "83c619bcf2998dcc"
}
@[vrml_obligation] theorem call_requires_10_1
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8)) :
    0 < vstd.arithmetic.power2.pow2 16 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_10_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_10_2 97825d232f6e1998
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_10_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:611:5-611:62`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `10_2`
- Statement hash: `97825d232f6e1998`
-/
def call_requires_10_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 611
  startColumn := 5
  endLine := 611
  endColumn := 62
  assertId := "10_2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "97825d232f6e1998"
}
@[vrml_obligation] theorem call_requires_10_2
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8)) :
    0 < 256 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_10_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_11 48c041b29a528d33
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:614:5-614:49`
- Rust/SST construct: call lemma_fundamental_div_mod
- AssertId: `11`
- Statement hash: `48c041b29a528d33`
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 614
  startColumn := 5
  endLine := 614
  endColumn := 49
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "48c041b29a528d33"
}
@[vrml_obligation] theorem call_requires_11
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256))) :
    (¬ (256 = 0)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_11

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_13_0 93fea0c823eeed49
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_13_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:618:5-618:62`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `13_0`
- Statement hash: `93fea0c823eeed49`
-/
def call_requires_13_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 618
  startColumn := 5
  endLine := 618
  endColumn := 62
  assertId := "13_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "93fea0c823eeed49"
}
@[vrml_obligation] theorem call_requires_13_0
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8)) :
    0 ≤ value := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_13_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_13_1 54afd7217f646777
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_13_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:618:5-618:62`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `13_1`
- Statement hash: `54afd7217f646777`
-/
def call_requires_13_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 618
  startColumn := 5
  endLine := 618
  endColumn := 62
  assertId := "13_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "54afd7217f646777"
}
@[vrml_obligation] theorem call_requires_13_1
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8)) :
    0 < vstd.arithmetic.power2.pow2 24 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_13_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_13_2 6d7dbb041329b26e
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_13_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:618:5-618:62`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `13_2`
- Statement hash: `6d7dbb041329b26e`
-/
def call_requires_13_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 618
  startColumn := 5
  endLine := 618
  endColumn := 62
  assertId := "13_2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "6d7dbb041329b26e"
}
@[vrml_obligation] theorem call_requires_13_2
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8)) :
    0 < 256 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_13_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_14 03e0807abd934f25
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:619:12-620:38`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `03e0807abd934f25`
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 619
  startColumn := 12
  endLine := 620
  endColumn := 38
  assertId := "14"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "assert"
  statementHash := "03e0807abd934f25"
}
@[vrml_obligation] theorem assert_14
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256))) :
    value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_14

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_15 eb2eb7909c7e0f12
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:623:5-623:49`
- Rust/SST construct: call lemma_fundamental_div_mod
- AssertId: `15`
- Statement hash: `eb2eb7909c7e0f12`
-/
def call_requires_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 623
  startColumn := 5
  endLine := 623
  endColumn := 49
  assertId := "15"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "eb2eb7909c7e0f12"
}
@[vrml_obligation] theorem call_requires_15
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32))) :
    (¬ (256 = 0)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_15

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_17_0 5648afb56eff3c45
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_17_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:627:5-627:62`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `17_0`
- Statement hash: `5648afb56eff3c45`
-/
def call_requires_17_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 627
  startColumn := 5
  endLine := 627
  endColumn := 62
  assertId := "17_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "5648afb56eff3c45"
}
@[vrml_obligation] theorem call_requires_17_0
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8)) :
    0 ≤ value := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_17_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_17_1 bb8d36d5172741e8
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_17_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:627:5-627:62`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `17_1`
- Statement hash: `bb8d36d5172741e8`
-/
def call_requires_17_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 627
  startColumn := 5
  endLine := 627
  endColumn := 62
  assertId := "17_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "bb8d36d5172741e8"
}
@[vrml_obligation] theorem call_requires_17_1
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8)) :
    0 < vstd.arithmetic.power2.pow2 32 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_17_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_17_2 6eb5a8053c76856a
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_17_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:627:5-627:62`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `17_2`
- Statement hash: `6eb5a8053c76856a`
-/
def call_requires_17_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 627
  startColumn := 5
  endLine := 627
  endColumn := 62
  assertId := "17_2"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "6eb5a8053c76856a"
}
@[vrml_obligation] theorem call_requires_17_2
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8)) :
    0 < 256 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_17_2

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_18 038c22106f2db806
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_18`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:628:12-629:64`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `038c22106f2db806`
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 628
  startColumn := 12
  endLine := 629
  endColumn := 64
  assertId := "18"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "assert"
  statementHash := "038c22106f2db806"
}
@[vrml_obligation] theorem assert_18
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_3_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 32 * 256) = 0)))
    (call_lemma_div_denominator_3_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 32 * 256))) :
    value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip ((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 40)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_18

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_19_0 d4338d9d434fa876
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_19_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:632:5-632:35`
- Rust/SST construct: call lemma_div_bound
- AssertId: `19_0`
- Statement hash: `d4338d9d434fa876`
-/
def call_requires_19_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 632
  startColumn := 5
  endLine := 632
  endColumn := 35
  assertId := "19_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "d4338d9d434fa876"
}
@[vrml_obligation] theorem call_requires_19_0
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_3_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 32 * 256) = 0)))
    (call_lemma_div_denominator_3_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 32 * 256)))
    (assert_18 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip ((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 40))) :
    40 ≤ 48 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_19_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_19_1 8277ce386bbf091a
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_19_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:632:5-632:35`
- Rust/SST construct: call lemma_div_bound
- AssertId: `19_1`
- Statement hash: `8277ce386bbf091a`
-/
def call_requires_19_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 632
  startColumn := 5
  endLine := 632
  endColumn := 35
  assertId := "19_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "8277ce386bbf091a"
}
@[vrml_obligation] theorem call_requires_19_1
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_3_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 32 * 256) = 0)))
    (call_lemma_div_denominator_3_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 32 * 256)))
    (assert_18 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip ((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 40))) :
    value < vstd.arithmetic.power2.pow2 48 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_19_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_20 0bcaa6e0134fced2
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_20`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:633:12-633:27`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `0bcaa6e0134fced2`
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 633
  startColumn := 12
  endLine := 633
  endColumn := 27
  assertId := "20"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "assert"
  statementHash := "0bcaa6e0134fced2"
}
@[vrml_obligation] theorem assert_20
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_3_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 32 * 256) = 0)))
    (call_lemma_div_denominator_3_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 32 * 256)))
    (assert_18 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip ((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 40)))
    (call_lemma_div_bound_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (48 - 40))) :
    (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) < vstd.arithmetic.power2.pow2 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_20

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_21 184d24c54578783f
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_21`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:635:5-635:39`
- Rust/SST construct: call lemma_mod_bound
- AssertId: `21`
- Statement hash: `184d24c54578783f`
-/
def call_requires_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 635
  startColumn := 5
  endLine := 635
  endColumn := 39
  assertId := "21"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "184d24c54578783f"
}
@[vrml_obligation] theorem call_requires_21
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_3_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 32 * 256) = 0)))
    (call_lemma_div_denominator_3_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 32 * 256)))
    (assert_18 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip ((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 40)))
    (call_lemma_div_bound_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (48 - 40)))
    (assert_20 : (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) < vstd.arithmetic.power2.pow2 8) :
    0 < 256 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.call_requires_21

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_22 e3a35f0020dce4ac
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:638:12-639:71`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `e3a35f0020dce4ac`
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 638
  startColumn := 12
  endLine := 639
  endColumn := 71
  assertId := "22"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "assert"
  statementHash := "e3a35f0020dce4ac"
}
@[vrml_obligation] theorem assert_22
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_3_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 32 * 256) = 0)))
    (call_lemma_div_denominator_3_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 32 * 256)))
    (assert_18 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip ((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 40)))
    (call_lemma_div_bound_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (48 - 40)))
    (assert_20 : (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) < vstd.arithmetic.power2.pow2 8)
    (call_lemma_mod_bound_ensures_0 : (0 ≤ ((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) % 256)) ∧ (((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) % 256) < 256)) :
    value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.assert_22

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.ensures_23 cb55c03e26995c07
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.ensures_23`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:583:9-584:84`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `23`
- Statement hash: `cb55c03e26995c07`
-/
def ensures_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 583
  startColumn := 9
  endLine := 584
  endColumn := 84
  assertId := "23"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct"
  kind := "ensures"
  statementHash := "cb55c03e26995c07"
}
@[vrml_obligation] theorem ensures_23
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (byte5 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : Vermilion.inUnsignedRange 8 byte5)
    (requires_7 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_8 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_9 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_10 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_11 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_12 : byte5 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) % 256))
    (requires_13 : value < vstd.arithmetic.power2.pow2 48)
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
    (call_lemma_fundamental_div_mod_ensures_0 : value = ((256 * (value / 256)) + (value % 256)))
    (assert_2 : value = Vermilion.natClip (byte0 + Vermilion.natClip ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) * vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (call_lemma_fundamental_div_mod_1_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) = ((256 * ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256)) + ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 8 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_ensures_0 : (¬ ((256 * 256) = 0)))
    (call_lemma_div_denominator_ensures_1 : ((value / 256) / 256) = (Vermilion.ediv value (256 * 256)))
    (call_lemma_fundamental_div_mod_2_ensures_0 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) = ((256 * (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256)) + (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) % 256)))
    (assert_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (16 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 16 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_1_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 16 * 256) = 0)))
    (call_lemma_div_denominator_1_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16 * 256)))
    (call_lemma_fundamental_div_mod_3_ensures_0 : (((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) = ((256 * ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256)) + ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (24 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 24 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_2_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 24 * 256) = 0)))
    (call_lemma_div_denominator_2_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24 * 256)))
    (assert_14 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 32)))
    (call_lemma_fundamental_div_mod_4_ensures_0 : ((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) = ((256 * (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256)) + (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) % 256)))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (32 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 32 * vstd.arithmetic.power2.pow2 8))
    (call_lemma_div_denominator_3_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 32 * 256) = 0)))
    (call_lemma_div_denominator_3_ensures_1 : ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) / 256) = (Vermilion.ediv value (vstd.arithmetic.power2.pow2 32 * 256)))
    (assert_18 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip ((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) * vstd.arithmetic.power2.pow2 40)))
    (call_lemma_div_bound_ensures_0 : (Vermilion.ediv value (vstd.arithmetic.power2.pow2 40)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (48 - 40)))
    (assert_20 : (((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) < vstd.arithmetic.power2.pow2 8)
    (call_lemma_mod_bound_ensures_0 : (0 ≤ ((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) % 256)) ∧ (((((((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) / 256) / 256) / 256) / 256) % 256) < 256))
    (assert_22 : value = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40))) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) + Vermilion.natClip (byte5 * vstd.arithmetic.power2.pow2 40)) = value := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct.ensures_23

end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_6_bytes_reconstruct

