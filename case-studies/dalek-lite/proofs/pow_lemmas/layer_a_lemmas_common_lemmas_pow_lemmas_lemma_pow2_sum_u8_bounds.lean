import Vermilion.Obligations
import pow_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_1 ee7ed883c73502bc
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `ee7ed883c73502bc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "ee7ed883c73502bc"
}
@[vrml_obligation] theorem assert_1
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : k = 0)
    (assume_7 : True)
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
    vstd.arithmetic.power2.pow2 0 = 1 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_3 ab1b88b34dd510ba
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `ab1b88b34dd510ba`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "ab1b88b34dd510ba"
}
@[vrml_obligation] theorem assert_3
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : k = 0)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 0 = 1))
    (assume_8 : True)
    (call_lemma_mul_basics_3_ensures_0 : (Vermilion.Seq.index coefs offset * 1) = Vermilion.Seq.index coefs offset) :
    (Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0) = Vermilion.Seq.index coefs offset := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_4 22cc8655d6596ccc
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `22cc8655d6596ccc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "4"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "22cc8655d6596ccc"
}
@[vrml_obligation] theorem assert_4
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : k = 0)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 0 = 1))
    (assume_8 : True → ((Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0) = Vermilion.Seq.index coefs offset)) :
    Vermilion.Seq.index coefs (Vermilion.natClip (offset + 0)) < vstd.arithmetic.power2.pow2 step := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_4

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_5 55540259ccf8838c
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `55540259ccf8838c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "55540259ccf8838c"
}
@[vrml_obligation] theorem assert_5
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : k = 0)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 0 = 1))
    (assume_8 : True → ((Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0) = Vermilion.Seq.index coefs offset))
    (assert_4 : Vermilion.Seq.index coefs (Vermilion.natClip (offset + 0)) < vstd.arithmetic.power2.pow2 step)
    (assume_10 : True) :
    layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step 0 = Vermilion.natClip (Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_5

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_7 d30531edf3ff3037
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `d30531edf3ff3037`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "7"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "d30531edf3ff3037"
}
@[vrml_obligation] theorem assert_7
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : k = 0)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 0 = 1))
    (assume_8 : True → ((Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0) = Vermilion.Seq.index coefs offset))
    (assert_4 : Vermilion.Seq.index coefs (Vermilion.natClip (offset + 0)) < vstd.arithmetic.power2.pow2 step)
    (assume_10 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step 0 = Vermilion.natClip (Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0)))
    (assume_11 : True)
    (call_lemma_mul_basics_3_1_ensures_0 : (step * 1) = step) :
    Vermilion.natClip (1 * step) = step := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_7

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_8 a8a1197507f84670
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `a8a1197507f84670`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "8"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "a8a1197507f84670"
}
@[vrml_obligation] theorem assert_8
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : k = 0)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 0 = 1))
    (assume_8 : True → ((Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0) = Vermilion.Seq.index coefs offset))
    (assert_4 : Vermilion.Seq.index coefs (Vermilion.natClip (offset + 0)) < vstd.arithmetic.power2.pow2 step)
    (assume_10 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step 0 = Vermilion.natClip (Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0)))
    (assume_11 : True → (Vermilion.natClip (1 * step) = step)) :
    Vermilion.natClip (Vermilion.natClip (0 + 1) * step) = step := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_8

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_9 027f06b7ed918a1d
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `027f06b7ed918a1d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "9"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "027f06b7ed918a1d"
}
@[vrml_obligation] theorem assert_9
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : k = 0)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 0 = 1))
    (assume_8 : True → ((Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0) = Vermilion.Seq.index coefs offset))
    (assert_4 : Vermilion.Seq.index coefs (Vermilion.natClip (offset + 0)) < vstd.arithmetic.power2.pow2 step)
    (assume_10 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step 0 = Vermilion.natClip (Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0)))
    (assume_11 : True → (Vermilion.natClip (1 * step) = step))
    (assert_8 : Vermilion.natClip (Vermilion.natClip (0 + 1) * step) = step) :
    layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k + 1) * step)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_9

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_10 a099a6c42d426416
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `a099a6c42d426416`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "a099a6c42d426416"
}
@[vrml_obligation] theorem assert_10
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True) :
    layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_10

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_anonymous_0 f0f420a1666047d1
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_anonymous_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `f0f420a1666047d1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "anonymous_0"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "f0f420a1666047d1"
}
@[vrml_obligation] theorem assert_anonymous_0
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (assume_8 : True) :
    ((0 ≤ Vermilion.natClip (k - 1)) ∧ (Vermilion.natClip (k - 1) < k)) ∨ ((Vermilion.natClip (k - 1) = k) ∧ False) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_anonymous_0

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.call_requires_11_0 054d871ff8ef3fa4
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.call_requires_11_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: call lemma_pow2_sum_u8_bounds
- AssertId: `11_0`
- Statement hash: `054d871ff8ef3fa4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def call_requires_11_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "11_0"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "call_requires"
  statementHash := "054d871ff8ef3fa4"
}
@[vrml_obligation] theorem call_requires_11_0
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (assume_8 : True)
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (k - 1)) ∧ (Vermilion.natClip (k - 1) < k)) ∨ ((Vermilion.natClip (k - 1) = k) ∧ False)) :
    Vermilion.natClip (offset + Vermilion.natClip (k - 1)) ≤ vstd.slice.len_returns_clause_autospec coefs := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.call_requires_11_0

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.call_requires_11_1 458647938d3146be
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.call_requires_11_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: call lemma_pow2_sum_u8_bounds
- AssertId: `11_1`
- Statement hash: `458647938d3146be`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩ ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def call_requires_11_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "11_1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "call_requires"
  statementHash := "458647938d3146be"
}
@[vrml_obligation] theorem call_requires_11_1
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (assume_8 : True)
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (k - 1)) ∧ (Vermilion.natClip (k - 1) < k)) ∨ ((Vermilion.natClip (k - 1) = k) ∧ False)) :
    (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ Vermilion.natClip (k - 1))) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.call_requires_11_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_12 c8ac0c531b01d3d5
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `c8ac0c531b01d3d5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "12"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "c8ac0c531b01d3d5"
}
@[vrml_obligation] theorem assert_12
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (assume_8 : True)
    (assert_anonymous_0 : ((0 ≤ Vermilion.natClip (k - 1)) ∧ (Vermilion.natClip (k - 1) < k)) ∨ ((Vermilion.natClip (k - 1) = k) ∧ False))
    (call_lemma_pow2_sum_u8_bounds_ensures_0 : layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (k - 1) + 1) * step))) :
    layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_12

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_14 19b1d8a868402b91
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `19b1d8a868402b91`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "14"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "19b1d8a868402b91"
}
@[vrml_obligation] theorem assert_14
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (assume_8 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))
    (assume_9 : True)
    (assume_10 : True)
    (call_lemma_mul_is_distributive_add_other_way_ensures_0 : ((k + 1) * step) = ((k * step) + (1 * step))) :
    Vermilion.natClip (Vermilion.natClip (k + 1) * step) = Vermilion.natClip (Vermilion.natClip (k * step) + step) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_14

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.call_requires_15 d614e8183ccaeeec
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.call_requires_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: call lemma_pow2_mul_bound_general
- AssertId: `15`
- Statement hash: `d614e8183ccaeeec`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def call_requires_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "15"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "call_requires"
  statementHash := "d614e8183ccaeeec"
}
@[vrml_obligation] theorem call_requires_15
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (assume_8 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))
    (assume_9 : True)
    (assume_10 : True → (Vermilion.natClip (Vermilion.natClip (k + 1) * step) = Vermilion.natClip (Vermilion.natClip (k * step) + step)))
    (assume_11 : True) :
    Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) < vstd.arithmetic.power2.pow2 step := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.call_requires_15

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_16 f562078e903f3488
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `f562078e903f3488`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "16"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "f562078e903f3488"
}
@[vrml_obligation] theorem assert_16
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (assume_8 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))
    (assume_9 : True)
    (assume_10 : True → (Vermilion.natClip (Vermilion.natClip (k + 1) * step) = Vermilion.natClip (Vermilion.natClip (k * step) + step)))
    (assume_11 : True)
    (call_lemma_pow2_mul_bound_general_ensures_0 : Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step)) * Vermilion.Seq.index coefs (Vermilion.natClip (offset + k))) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * step) + step)) - vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))
    (call_lemma_pow2_mul_bound_general_ensures_1 : Vermilion.natClip (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * step) + step)) - vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))
    (call_lemma_pow2_mul_bound_general_ensures_2 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * step) + step)) - vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * step) + step))) :
    (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * step) + step)) - vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_16

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_17 fd2d24be77e3ddf9
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `fd2d24be77e3ddf9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "17"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "fd2d24be77e3ddf9"
}
@[vrml_obligation] theorem assert_17
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (assume_8 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))
    (assume_9 : True)
    (assume_10 : True → (Vermilion.natClip (Vermilion.natClip (k + 1) * step) = Vermilion.natClip (Vermilion.natClip (k * step) + step)))
    (assume_11 : True → ((Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k * step) + step)) - vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))) :
    (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k + 1) * step)) - vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_17

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_18 fb1946261c7d9ac2
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_18`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `fb1946261c7d9ac2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "18"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "assert"
  statementHash := "fb1946261c7d9ac2"
}
@[vrml_obligation] theorem assert_18
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (branch_0 : (¬ (k = 0)))
    (assume_7 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (assume_8 : True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))
    (assume_9 : True → ((Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k + 1) * step)) - vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))) :
    layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k + 1) * step)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.assert_18

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.ensures_19 de966ac935ba37ee
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.ensures_19`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1011:1-1011:66`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `19`
- Statement hash: `de966ac935ba37ee`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index coefs vrml_i0⟩ ⟨Vermilion.Seq.index coefs (Vermilion.natClip (offset + i))⟩
-/
def ensures_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1011
  startColumn := 1
  endLine := 1011
  endColumn := 66
  assertId := "19"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds"
  kind := "ensures"
  statementHash := "de966ac935ba37ee"
}
@[vrml_obligation] theorem ensures_19
    (coefs : (Vermilion.Seq Int))
    (offset : Int)
    (step : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len coefs)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index coefs vrml_i0))))
    (requires_1 : 0 ≤ offset)
    (requires_2 : 0 ≤ step)
    (requires_3 : 0 ≤ k)
    (requires_4 : Vermilion.natClip (offset + k) ≤ vstd.slice.len_returns_clause_autospec coefs)
    (requires_5 : (∀ (i : Int), ((0 ≤ i) → (((0 ≤ i) ∧ (i ≤ k)) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + i)) < vstd.arithmetic.power2.pow2 step)))))
    (then_0_assume_7 : (k = 0) → (True → (vstd.arithmetic.power2.pow2 0 = 1)))
    (then_0_assume_8 : (k = 0) → (True → ((Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0) = Vermilion.Seq.index coefs offset)))
    (then_0_assert_4 : (k = 0) → (Vermilion.Seq.index coefs (Vermilion.natClip (offset + 0)) < vstd.arithmetic.power2.pow2 step))
    (then_0_assume_10 : (k = 0) → (True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step 0 = Vermilion.natClip (Vermilion.Seq.index coefs offset * vstd.arithmetic.power2.pow2 0))))
    (then_0_assume_11 : (k = 0) → (True → (Vermilion.natClip (1 * step) = step)))
    (then_0_assert_8 : (k = 0) → (Vermilion.natClip (Vermilion.natClip (0 + 1) * step) = step))
    (then_0_assert_9 : (k = 0) → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k + 1) * step))))
    (else_0_assume_7 : (¬ (k = 0)) → (True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k = (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) + (Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step)))))))
    (else_0_assume_8 : (¬ (k = 0)) → (True → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step (Vermilion.natClip (k - 1)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step)))))
    (else_0_assume_9 : (¬ (k = 0)) → (True → ((Vermilion.Seq.index coefs (Vermilion.natClip (offset + k)) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k + 1) * step)) - vstd.arithmetic.power2.pow2 (Vermilion.natClip (k * step))))))
    (else_0_assert_18 : (¬ (k = 0)) → (layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k + 1) * step)))) :
    layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8 coefs offset step k < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (k + 1) * step)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds.ensures_19

end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_sum_u8_bounds

