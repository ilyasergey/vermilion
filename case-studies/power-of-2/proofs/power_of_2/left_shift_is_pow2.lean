import Vermilion.Obligations
import power_of_2.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace power_of_2.left_shift_is_pow2

-- vrml:begin power_of_2.left_shift_is_pow2.assert_1 08d1ec7470e4f35f
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_1`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:140:17-140:29`
- Rust/SST construct: requires not satisfied
- AssertId: `1`
- Statement hash: `08d1ec7470e4f35f`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 140
  startColumn := 17
  endLine := 140
  endColumn := 29
  assertId := "1"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "08d1ec7470e4f35f"
}
@[vrml_obligation] theorem assert_1
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : e = 0)
    (assume_5 : Vermilion.Bits.shl 32 bv 0 = (bv * 1)) :
    power_of_2.pow2 0 = 1 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_1

-- vrml:begin power_of_2.left_shift_is_pow2.assert_2 9762bd3d455c46a4
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_2`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:141:17-141:34`
- Rust/SST construct: requires not satisfied
- AssertId: `2`
- Statement hash: `9762bd3d455c46a4`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 141
  startColumn := 17
  endLine := 141
  endColumn := 34
  assertId := "2"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "9762bd3d455c46a4"
}
@[vrml_obligation] theorem assert_2
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : e = 0)
    (assume_5 : Vermilion.Bits.shl 32 bv 0 = (bv * 1))
    (assert_1 : power_of_2.pow2 0 = 1) :
    Vermilion.Bits.shl 32 bv 0 = (bv * 1) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_2

-- vrml:begin power_of_2.left_shift_is_pow2.assert_0 93c3d51ae2920614
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:138:16-138:57`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `93c3d51ae2920614`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 138
  startColumn := 16
  endLine := 138
  endColumn := 57
  assertId := "0"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "93c3d51ae2920614"
}
@[vrml_obligation] theorem assert_0
    (bv : Int)
    (e : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : power_of_2.pow2 0 = 1)
    (assume_3 : Vermilion.Bits.shl 32 bv 0 = (bv * 1)) :
    Vermilion.Bits.shl 32 bv 0 = Vermilion.natClip (bv * power_of_2.pow2 0) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_0

-- vrml:begin power_of_2.left_shift_is_pow2.call_requires_3 5fa1e2db15c7aa71
/--
Generated VC `power_of_2.left_shift_is_pow2.call_requires_3`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:144:9-144:38`
- Rust/SST construct: call lemma_pow2_increase
- AssertId: `3`
- Statement hash: `5fa1e2db15c7aa71`
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 144
  startColumn := 9
  endLine := 144
  endColumn := 38
  assertId := "3"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "call_requires"
  statementHash := "5fa1e2db15c7aa71"
}
@[vrml_obligation] theorem call_requires_3
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0))) :
    e > 0 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.call_requires_3

-- vrml:begin power_of_2.left_shift_is_pow2.call_requires_4 cec609f8c577dc25
/--
Generated VC `power_of_2.left_shift_is_pow2.call_requires_4`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:146:9-146:79`
- Rust/SST construct: call lemma_mul_upper_bound
- AssertId: `4`
- Statement hash: `cec609f8c577dc25`
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 146
  startColumn := 9
  endLine := 146
  endColumn := 79
  assertId := "4"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "call_requires"
  statementHash := "cec609f8c577dc25"
}
@[vrml_obligation] theorem call_requires_4
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1))) :
    power_of_2.pow2 (Vermilion.natClip (e - 1)) < power_of_2.pow2 e := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  exact call_lemma_pow2_increase_ensures_0
-- vrml:end power_of_2.left_shift_is_pow2.call_requires_4

-- vrml:begin power_of_2.left_shift_is_pow2.assert_anonymous_0 bafb9484084b4a60
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_anonymous_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:149:9-149:47`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `bafb9484084b4a60`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 149
  startColumn := 9
  endLine := 149
  endColumn := 47
  assertId := "anonymous_0"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "bafb9484084b4a60"
}
@[vrml_obligation] theorem assert_anonymous_0
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e)) :
    ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_anonymous_0

-- vrml:begin power_of_2.left_shift_is_pow2.call_requires_5_0 f05f9e6053b48c6e
/--
Generated VC `power_of_2.left_shift_is_pow2.call_requires_5_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:149:9-149:47`
- Rust/SST construct: call left_shift_is_pow2
- AssertId: `5_0`
- Statement hash: `f05f9e6053b48c6e`
-/
def call_requires_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 149
  startColumn := 9
  endLine := 149
  endColumn := 47
  assertId := "5_0"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "call_requires"
  statementHash := "f05f9e6053b48c6e"
}
@[vrml_obligation] theorem call_requires_5_0
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False)) :
    ((e - 1) % 4294967296) ≤ 32 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.call_requires_5_0

-- vrml:begin power_of_2.left_shift_is_pow2.call_requires_5_1 773a03a60acaf505
/--
Generated VC `power_of_2.left_shift_is_pow2.call_requires_5_1`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:149:9-149:47`
- Rust/SST construct: call left_shift_is_pow2
- AssertId: `5_1`
- Statement hash: `773a03a60acaf505`
-/
def call_requires_5_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 149
  startColumn := 9
  endLine := 149
  endColumn := 47
  assertId := "5_1"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "call_requires"
  statementHash := "773a03a60acaf505"
}
@[vrml_obligation] theorem call_requires_5_1
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False)) :
    Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)) < 4294967296 := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  simp only [Vermilion.inUnsignedRange] at requires_0 requires_1
  have he : 0 < e := by omega
  have hmod : (e - 1) % 4294967296 = e - 1 := Int.emod_eq_of_lt (by omega) (by omega)
  rw [hmod] at *
  simp only [Vermilion.iteP_pos (show e - 1 ≥ 0 by omega)] at *
  have hprev : 0 ≤ bv * power_of_2.pow2 (e - 1) :=
    mul_nonneg requires_0.1 (power_of_2.pow2_nonneg _)
  have hcur : 0 ≤ bv * power_of_2.pow2 e :=
    mul_nonneg requires_0.1 (power_of_2.pow2_nonneg _)
  simp only [Vermilion.iteP_pos hprev, Vermilion.iteP_pos hcur] at *
  omega
-- vrml:end power_of_2.left_shift_is_pow2.call_requires_5_1

-- vrml:begin power_of_2.left_shift_is_pow2.assert_7 22ce94c810461a51
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_7`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:154:17-154:34`
- Rust/SST construct: requires not satisfied
- AssertId: `7`
- Statement hash: `22ce94c810461a51`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 154
  startColumn := 17
  endLine := 154
  endColumn := 34
  assertId := "7"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "22ce94c810461a51"
}
@[vrml_obligation] theorem assert_7
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296))) :
    bv = bv := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_7

-- vrml:begin power_of_2.left_shift_is_pow2.assert_6 1d9a8c14d49354ec
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_6`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:152:16-152:79`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `1d9a8c14d49354ec`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 152
  startColumn := 16
  endLine := 152
  endColumn := 79
  assertId := "6"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "1d9a8c14d49354ec"
}
@[vrml_obligation] theorem assert_6
    (bv : Int)
    (e : Int)
    (loop_1_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_1_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : bv = bv) :
    Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  -- The clip is an identity on a provably nonnegative product; use the
  -- prelude lemma directly instead of unfolding `natClip` to its `iteP`
  -- form (on Lean ≥ 4.33 that unfold desynchronizes the `iteP` guard from
  -- its `Decidable` instance and the `iteP_pos` rewrite stops matching).
  simp only [Vermilion.inUnsignedRange] at loop_1_iteration_0
  exact Vermilion.natClip_of_nonneg
    (mul_nonneg loop_1_iteration_0.1 (power_of_2.pow2_nonneg _))
-- vrml:end power_of_2.left_shift_is_pow2.assert_6

-- vrml:begin power_of_2.left_shift_is_pow2.assert_8 6c71099942754f58
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_8`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:158:16-158:58`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `6c71099942754f58`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 158
  startColumn := 16
  endLine := 158
  endColumn := 58
  assertId := "8"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "6c71099942754f58"
}
@[vrml_obligation] theorem assert_8
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True) :
    power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_8

-- vrml:begin power_of_2.left_shift_is_pow2.assert_10 c41e4b8f09eed796
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_10`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:164:17-164:22`
- Rust/SST construct: requires not satisfied
- AssertId: `10`
- Statement hash: `c41e4b8f09eed796`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 164
  startColumn := 17
  endLine := 164
  endColumn := 22
  assertId := "10"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "c41e4b8f09eed796"
}
@[vrml_obligation] theorem assert_10
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))) :
    e > 0 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_10

-- vrml:begin power_of_2.left_shift_is_pow2.assert_11 580287b7569180f3
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_11`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:165:17-165:59`
- Rust/SST construct: requires not satisfied
- AssertId: `11`
- Statement hash: `580287b7569180f3`
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 165
  startColumn := 17
  endLine := 165
  endColumn := 59
  assertId := "11"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "580287b7569180f3"
}
@[vrml_obligation] theorem assert_11
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0) :
    power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_11

-- vrml:begin power_of_2.left_shift_is_pow2.assert_12 c51841b18f33d3f7
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_12`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:166:17-166:77`
- Rust/SST construct: requires not satisfied
- AssertId: `12`
- Statement hash: `c51841b18f33d3f7`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 166
  startColumn := 17
  endLine := 166
  endColumn := 77
  assertId := "12"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "c51841b18f33d3f7"
}
@[vrml_obligation] theorem assert_12
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))) :
    Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  simp only [Vermilion.inUnsignedRange] at requires_0 requires_1
  have he : 0 < e := by omega
  have hmod : (e - 1) % 4294967296 = e - 1 := Int.emod_eq_of_lt (by omega) (by omega)
  simp only [Vermilion.iteP_pos (show e - 1 ≥ 0 by omega)] at *
  rw [hmod] at call_left_shift_is_pow2_ensures_0 ⊢
  have hprod : 0 ≤ bv * power_of_2.pow2 (e - 1) :=
    mul_nonneg requires_0.1 (power_of_2.pow2_nonneg _)
  rw [Vermilion.iteP_pos hprod] at call_left_shift_is_pow2_ensures_0
  exact call_left_shift_is_pow2_ensures_0
-- vrml:end power_of_2.left_shift_is_pow2.assert_12

-- vrml:begin power_of_2.left_shift_is_pow2.assert_13 1cff1ee0a6422a22
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_13`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:167:17-167:70`
- Rust/SST construct: requires not satisfied
- AssertId: `13`
- Statement hash: `1cff1ee0a6422a22`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 167
  startColumn := 17
  endLine := 167
  endColumn := 70
  assertId := "13"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "1cff1ee0a6422a22"
}
@[vrml_obligation] theorem assert_13
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1)))) :
    Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_13

-- vrml:begin power_of_2.left_shift_is_pow2.assert_9 7a7acf612700a39f
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_9`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:161:16-161:86`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `7a7acf612700a39f`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 161
  startColumn := 16
  endLine := 161
  endColumn := 86
  assertId := "9"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "7a7acf612700a39f"
}
@[vrml_obligation] theorem assert_9
    (bv : Int)
    (e : Int)
    (loop_2_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_2_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : e > 0)
    (assume_3 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_4 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_5 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296) :
    Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  simp only [Vermilion.inUnsignedRange] at loop_2_iteration_0 loop_2_iteration_1
  have hb : 0 ≤ bv := loop_2_iteration_0.1
  simp only [Vermilion.iteP_pos (show e - 1 ≥ 0 by omega)] at *
  have hp : 0 ≤ power_of_2.pow2 (e - 1) := power_of_2.pow2_nonneg _
  have hcur : 0 ≤ bv * power_of_2.pow2 e :=
    mul_nonneg hb (power_of_2.pow2_nonneg _)
  have htwop : 0 ≤ 2 * power_of_2.pow2 (e - 1) := mul_nonneg (by omega) hp
  have hbtwo : 0 ≤ bv * 2 := mul_nonneg hb (by omega)
  have houter : 0 ≤ (bv * 2) * power_of_2.pow2 (e - 1) := mul_nonneg hbtwo hp
  simp only [Vermilion.iteP_pos hcur, Vermilion.iteP_pos htwop,
    Vermilion.iteP_pos hbtwo, Vermilion.iteP_pos houter] at *
  nlinarith
-- vrml:end power_of_2.left_shift_is_pow2.assert_9

-- vrml:begin power_of_2.left_shift_is_pow2.assert_15 033ad59daf23a3a8
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_15`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:172:17-172:22`
- Rust/SST construct: requires not satisfied
- AssertId: `15`
- Statement hash: `033ad59daf23a3a8`
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 172
  startColumn := 17
  endLine := 172
  endColumn := 22
  assertId := "15"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "033ad59daf23a3a8"
}
@[vrml_obligation] theorem assert_15
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1)))) :
    e > 0 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_15

-- vrml:begin power_of_2.left_shift_is_pow2.assert_14 edf9acbcacd2dbec
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_14`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:169:16-169:94`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `edf9acbcacd2dbec`
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 169
  startColumn := 16
  endLine := 169
  endColumn := 94
  assertId := "14"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "edf9acbcacd2dbec"
}
@[vrml_obligation] theorem assert_14
    (bv : Int)
    (e : Int)
    (loop_3_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_3_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : e > 0) :
    Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_14

-- vrml:begin power_of_2.left_shift_is_pow2.call_requires_16_0 ae2c3da2f7a842c3
/--
Generated VC `power_of_2.left_shift_is_pow2.call_requires_16_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:174:9-174:33`
- Rust/SST construct: call left_shift_by_one
- AssertId: `16_0`
- Statement hash: `ae2c3da2f7a842c3`
-/
def call_requires_16_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 174
  startColumn := 9
  endLine := 174
  endColumn := 33
  assertId := "16_0"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "call_requires"
  statementHash := "ae2c3da2f7a842c3"
}
@[vrml_obligation] theorem call_requires_16_0
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296))) :
    e > 0 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.call_requires_16_0

-- vrml:begin power_of_2.left_shift_is_pow2.call_requires_16_1 5d2cbf76ce5eb677
/--
Generated VC `power_of_2.left_shift_is_pow2.call_requires_16_1`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:174:9-174:33`
- Rust/SST construct: call left_shift_by_one
- AssertId: `16_1`
- Statement hash: `5d2cbf76ce5eb677`
-/
def call_requires_16_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 174
  startColumn := 9
  endLine := 174
  endColumn := 33
  assertId := "16_1"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "call_requires"
  statementHash := "5d2cbf76ce5eb677"
}
@[vrml_obligation] theorem call_requires_16_1
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296))) :
    e ≤ 32 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.call_requires_16_1

-- vrml:begin power_of_2.left_shift_is_pow2.call_requires_17_0 98004a850c8bdf96
/--
Generated VC `power_of_2.left_shift_is_pow2.call_requires_17_0`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:176:9-176:41`
- Rust/SST construct: call left_shift_by_one_is_mul2
- AssertId: `17_0`
- Statement hash: `98004a850c8bdf96`
-/
def call_requires_17_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 176
  startColumn := 9
  endLine := 176
  endColumn := 41
  assertId := "17_0"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "call_requires"
  statementHash := "98004a850c8bdf96"
}
@[vrml_obligation] theorem call_requires_17_0
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1) :
    e > 0 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.call_requires_17_0

-- vrml:begin power_of_2.left_shift_is_pow2.call_requires_17_1 83f1612f5059c850
/--
Generated VC `power_of_2.left_shift_is_pow2.call_requires_17_1`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:176:9-176:41`
- Rust/SST construct: call left_shift_by_one_is_mul2
- AssertId: `17_1`
- Statement hash: `83f1612f5059c850`
-/
def call_requires_17_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 176
  startColumn := 9
  endLine := 176
  endColumn := 41
  assertId := "17_1"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "call_requires"
  statementHash := "83f1612f5059c850"
}
@[vrml_obligation] theorem call_requires_17_1
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1) :
    e ≤ 32 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.call_requires_17_1

-- vrml:begin power_of_2.left_shift_is_pow2.call_requires_17_2 442bb5335a0a2c8a
/--
Generated VC `power_of_2.left_shift_is_pow2.call_requires_17_2`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:176:9-176:41`
- Rust/SST construct: call left_shift_by_one_is_mul2
- AssertId: `17_2`
- Statement hash: `442bb5335a0a2c8a`
-/
def call_requires_17_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 176
  startColumn := 9
  endLine := 176
  endColumn := 41
  assertId := "17_2"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "call_requires"
  statementHash := "442bb5335a0a2c8a"
}
@[vrml_obligation] theorem call_requires_17_2
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1) :
    Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.call_requires_17_2

-- vrml:begin power_of_2.left_shift_is_pow2.assert_19 dcd1a00db231677c
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_19`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:181:17-181:77`
- Rust/SST construct: requires not satisfied
- AssertId: `19`
- Statement hash: `dcd1a00db231677c`
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 181
  startColumn := 17
  endLine := 181
  endColumn := 77
  assertId := "19"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "dcd1a00db231677c"
}
@[vrml_obligation] theorem assert_19
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1)
    (call_left_shift_by_one_is_mul2_ensures_0 : Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296)) :
    Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  exact assert_12
-- vrml:end power_of_2.left_shift_is_pow2.assert_19

-- vrml:begin power_of_2.left_shift_is_pow2.assert_20 39d1e4cdb07acc34
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_20`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:182:17-182:70`
- Rust/SST construct: requires not satisfied
- AssertId: `20`
- Statement hash: `39d1e4cdb07acc34`
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 182
  startColumn := 17
  endLine := 182
  endColumn := 70
  assertId := "20"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "39d1e4cdb07acc34"
}
@[vrml_obligation] theorem assert_20
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1)
    (call_left_shift_by_one_is_mul2_ensures_0 : Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296))
    (assert_19 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1)))) :
    Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_20

-- vrml:begin power_of_2.left_shift_is_pow2.assert_21 f014b2b307c118f6
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_21`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:183:17-183:59`
- Rust/SST construct: requires not satisfied
- AssertId: `21`
- Statement hash: `f014b2b307c118f6`
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 183
  startColumn := 17
  endLine := 183
  endColumn := 59
  assertId := "21"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "f014b2b307c118f6"
}
@[vrml_obligation] theorem assert_21
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1)
    (call_left_shift_by_one_is_mul2_ensures_0 : Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296))
    (assert_19 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_20 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296) :
    power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_21

-- vrml:begin power_of_2.left_shift_is_pow2.assert_18 c093945b7e10ae5f
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_18`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:179:16-179:52`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `c093945b7e10ae5f`
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 179
  startColumn := 16
  endLine := 179
  endColumn := 52
  assertId := "18"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "c093945b7e10ae5f"
}
@[vrml_obligation] theorem assert_18
    (bv : Int)
    (e : Int)
    (loop_4_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_4_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_4 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))) :
    Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648 := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  simp only [Vermilion.inUnsignedRange] at loop_4_iteration_0 loop_4_iteration_1
  have hb : 0 ≤ bv := loop_4_iteration_0.1
  by_cases he : 0 < e
  · simp only [Vermilion.iteP_pos (show e - 1 ≥ 0 by omega)] at *
    have hp : 0 ≤ power_of_2.pow2 (e - 1) := power_of_2.pow2_nonneg _
    have hcur : 0 ≤ bv * power_of_2.pow2 e :=
      mul_nonneg hb (power_of_2.pow2_nonneg _)
    have htwop : 0 ≤ 2 * power_of_2.pow2 (e - 1) := mul_nonneg (by omega) hp
    simp only [Vermilion.iteP_pos hcur, Vermilion.iteP_pos htwop] at assume_3 assume_4
    rw [assume_2]
    nlinarith
  · have he0 : e = 0 := by omega
    subst e
    have hpow0 : power_of_2.pow2 0 = 1 := by
      rw [power_of_2.pow2]
      norm_num
    norm_num [Vermilion.iteP, hpow0] at assume_4
-- vrml:end power_of_2.left_shift_is_pow2.assert_18

-- vrml:begin power_of_2.left_shift_is_pow2.assert_23 e998766dd3c70e85
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_23`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:191:17-191:53`
- Rust/SST construct: requires not satisfied
- AssertId: `23`
- Statement hash: `e998766dd3c70e85`
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 191
  startColumn := 17
  endLine := 191
  endColumn := 53
  assertId := "23"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "e998766dd3c70e85"
}
@[vrml_obligation] theorem assert_23
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1)
    (call_left_shift_by_one_is_mul2_ensures_0 : Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296))
    (assert_19 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_20 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assert_21 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_24 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648) :
    Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_23

-- vrml:begin power_of_2.left_shift_is_pow2.assert_22 6f683f2eefc6ed5a
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_22`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:189:16-189:60`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `6f683f2eefc6ed5a`
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 189
  startColumn := 16
  endLine := 189
  endColumn := 60
  assertId := "22"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "6f683f2eefc6ed5a"
}
@[vrml_obligation] theorem assert_22
    (bv : Int)
    (e : Int)
    (loop_5_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_5_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648) :
    (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) < 4294967296 := by
  iterate 1 (try first | rw [power_of_2.pow2])
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_22

-- vrml:begin power_of_2.left_shift_is_pow2.assert_28 9fca99fab1969b9b
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_28`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:197:17-197:22`
- Rust/SST construct: requires not satisfied
- AssertId: `28`
- Statement hash: `9fca99fab1969b9b`
-/
def assert_28_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 197
  startColumn := 17
  endLine := 197
  endColumn := 22
  assertId := "28"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "9fca99fab1969b9b"
}
@[vrml_obligation] theorem assert_28
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1)
    (call_left_shift_by_one_is_mul2_ensures_0 : Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296))
    (assert_19 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_20 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assert_21 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_24 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648)
    (assert_23 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648)
    (assume_26 : (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) < 4294967296) :
    e > 0 := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_28

-- vrml:begin power_of_2.left_shift_is_pow2.assert_29 dbc9d9d37b71510d
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_29`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:198:17-198:77`
- Rust/SST construct: requires not satisfied
- AssertId: `29`
- Statement hash: `dbc9d9d37b71510d`
-/
def assert_29_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 198
  startColumn := 17
  endLine := 198
  endColumn := 77
  assertId := "29"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "dbc9d9d37b71510d"
}
@[vrml_obligation] theorem assert_29
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1)
    (call_left_shift_by_one_is_mul2_ensures_0 : Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296))
    (assert_19 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_20 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assert_21 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_24 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648)
    (assert_23 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648)
    (assume_26 : (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) < 4294967296)
    (assert_28 : e > 0) :
    Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  exact assert_19
-- vrml:end power_of_2.left_shift_is_pow2.assert_29

-- vrml:begin power_of_2.left_shift_is_pow2.assert_30 3168f77531377c6b
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_30`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:199:17-199:72`
- Rust/SST construct: requires not satisfied
- AssertId: `30`
- Statement hash: `3168f77531377c6b`
-/
def assert_30_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 199
  startColumn := 17
  endLine := 199
  endColumn := 72
  assertId := "30"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "3168f77531377c6b"
}
@[vrml_obligation] theorem assert_30
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1)
    (call_left_shift_by_one_is_mul2_ensures_0 : Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296))
    (assert_19 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_20 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assert_21 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_24 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648)
    (assert_23 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648)
    (assume_26 : (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) < 4294967296)
    (assert_28 : e > 0)
    (assert_29 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1)))) :
    Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_30

-- vrml:begin power_of_2.left_shift_is_pow2.assert_31 99cc9242fb7550a0
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_31`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:200:17-200:59`
- Rust/SST construct: requires not satisfied
- AssertId: `31`
- Statement hash: `99cc9242fb7550a0`
-/
def assert_31_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 200
  startColumn := 17
  endLine := 200
  endColumn := 59
  assertId := "31"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "99cc9242fb7550a0"
}
@[vrml_obligation] theorem assert_31
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (branch_0 : (¬ (e = 0)))
    (call_lemma_pow2_increase_ensures_0 : power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1)))
    (call_lemma_mul_upper_bound_ensures_0 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e))
    (assert_anonymous_0 : ((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False))
    (call_left_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296)))
    (assert_7 : bv = bv)
    (assume_10 : Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_11 : True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (assert_10 : e > 0)
    (assert_11 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_12 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_13 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assume_16 : Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_15 : e > 0)
    (assume_18 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (call_left_shift_by_one_ensures_0 : Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1)
    (call_left_shift_by_one_is_mul2_ensures_0 : Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296))
    (assert_19 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_20 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (assert_21 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_24 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648)
    (assert_23 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648)
    (assume_26 : (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) < 4294967296)
    (assert_28 : e > 0)
    (assert_29 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_30 : Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296))) :
    power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_31

-- vrml:begin power_of_2.left_shift_is_pow2.assert_24 801e5c621e0e16cf
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_24`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:202:20-202:77`
- Rust/SST construct: Rust source assertion
- AssertId: `24`
- Statement hash: `801e5c621e0e16cf`
-/
def assert_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 202
  startColumn := 20
  endLine := 202
  endColumn := 77
  assertId := "24"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "801e5c621e0e16cf"
}
@[vrml_obligation] theorem assert_24
    (bv : Int)
    (e : Int)
    (loop_6_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_6_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : e > 0)
    (assume_3 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_4 : Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (assume_5 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))) :
    Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_24

-- vrml:begin power_of_2.left_shift_is_pow2.assert_25 cc97db25749c301b
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_25`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:203:20-203:99`
- Rust/SST construct: Rust source assertion
- AssertId: `25`
- Statement hash: `cc97db25749c301b`
-/
def assert_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 203
  startColumn := 20
  endLine := 203
  endColumn := 99
  assertId := "25"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "cc97db25749c301b"
}
@[vrml_obligation] theorem assert_25
    (bv : Int)
    (e : Int)
    (loop_6_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_6_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : e > 0)
    (assume_3 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_4 : Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (assume_5 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_24 : Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296))) :
    Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  simp only [Vermilion.inUnsignedRange] at loop_6_iteration_0 loop_6_iteration_1
  have hb : 0 ≤ bv := loop_6_iteration_0.1
  simp only [Vermilion.iteP_pos (show e - 1 ≥ 0 by omega)] at *
  have hp : 0 ≤ power_of_2.pow2 (e - 1) := power_of_2.pow2_nonneg _
  have hsh : 0 ≤ Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) := by
    exact Int.natCast_nonneg _
  have h2sh : 0 ≤ 2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) :=
    mul_nonneg (by omega) hsh
  have htwop : 0 ≤ 2 * power_of_2.pow2 (e - 1) := mul_nonneg (by omega) hp
  have hbtwo : 0 ≤ bv * 2 := mul_nonneg hb (by omega)
  have houter : 0 ≤ (bv * 2) * power_of_2.pow2 (e - 1) := mul_nonneg hbtwo hp
  simp only [Vermilion.iteP_pos h2sh, Vermilion.iteP_pos htwop,
    Vermilion.iteP_pos hbtwo, Vermilion.iteP_pos houter] at *
  nlinarith
-- vrml:end power_of_2.left_shift_is_pow2.assert_25

-- vrml:begin power_of_2.left_shift_is_pow2.assert_26 f9dbcdfcaa1108f0
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_26`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:204:20-204:90`
- Rust/SST construct: Rust source assertion
- AssertId: `26`
- Statement hash: `f9dbcdfcaa1108f0`
-/
def assert_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 204
  startColumn := 20
  endLine := 204
  endColumn := 90
  assertId := "26"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "f9dbcdfcaa1108f0"
}
@[vrml_obligation] theorem assert_26
    (bv : Int)
    (e : Int)
    (loop_6_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_6_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : e > 0)
    (assume_3 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_4 : Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (assume_5 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_24 : Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (assert_25 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1)))) :
    Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))) = Vermilion.natClip (bv * power_of_2.pow2 e) := by
  -- DL8 clip-form port: restore the iteP shapes this proof
  -- was written against (natClip/sclip are their named forms).
  simp only [Vermilion.natClip, Vermilion.sclip] at *
  simp only [Vermilion.inUnsignedRange] at loop_6_iteration_0 loop_6_iteration_1
  have hb : 0 ≤ bv := loop_6_iteration_0.1
  simp only [Vermilion.iteP_pos (show e - 1 ≥ 0 by omega)] at *
  have hp : 0 ≤ power_of_2.pow2 (e - 1) := power_of_2.pow2_nonneg _
  have hcur : 0 ≤ bv * power_of_2.pow2 e :=
    mul_nonneg hb (power_of_2.pow2_nonneg _)
  have htwop : 0 ≤ 2 * power_of_2.pow2 (e - 1) := mul_nonneg (by omega) hp
  have hbtwo : 0 ≤ bv * 2 := mul_nonneg hb (by omega)
  have houter : 0 ≤ (bv * 2) * power_of_2.pow2 (e - 1) := mul_nonneg hbtwo hp
  simp only [Vermilion.iteP_pos htwop, Vermilion.iteP_pos hbtwo,
    Vermilion.iteP_pos houter, Vermilion.iteP_pos hcur] at *
  nlinarith
-- vrml:end power_of_2.left_shift_is_pow2.assert_26

-- vrml:begin power_of_2.left_shift_is_pow2.assert_27 2038f6f7bdc83ff9
/--
Generated VC `power_of_2.left_shift_is_pow2.assert_27`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:195:16-195:64`
- Rust/SST construct: Rust source assertion
- AssertId: `27`
- Statement hash: `2038f6f7bdc83ff9`
-/
def assert_27_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 195
  startColumn := 16
  endLine := 195
  endColumn := 64
  assertId := "27"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "assert"
  statementHash := "2038f6f7bdc83ff9"
}
@[vrml_obligation] theorem assert_27
    (bv : Int)
    (e : Int)
    (loop_6_iteration_0 : Vermilion.inUnsignedRange 32 bv)
    (loop_6_iteration_1 : Vermilion.inUnsignedRange 32 e)
    (assume_2 : e > 0)
    (assume_3 : Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assume_4 : Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (assume_5 : power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_24 : Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)))
    (assert_25 : Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (assert_26 : Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1))) = Vermilion.natClip (bv * power_of_2.pow2 e)) :
    Vermilion.Bits.shl 32 bv e = Vermilion.natClip (bv * power_of_2.pow2 e) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.assert_27

-- vrml:begin power_of_2.left_shift_is_pow2.ensures_32 daa3821cccb08f7d
/--
Generated VC `power_of_2.left_shift_is_pow2.ensures_32`.

- Rust source: `case-studies/power-of-2/power_of_2.rs:130:9-130:57`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `32`
- Statement hash: `daa3821cccb08f7d`
-/
def ensures_32_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/power-of-2/power_of_2.rs"
  startLine := 130
  startColumn := 9
  endLine := 130
  endColumn := 57
  assertId := "32"
  functionName := "power_of_2.left_shift_is_pow2"
  kind := "ensures"
  statementHash := "daa3821cccb08f7d"
}
@[vrml_obligation] theorem ensures_32
    (bv : Int)
    (e : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 bv)
    (requires_1 : Vermilion.inUnsignedRange 32 e)
    (requires_2 : e ≤ 32)
    (requires_3 : Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296)
    (then_0_assume_5 : (e = 0) → (Vermilion.Bits.shl 32 bv 0 = (bv * 1)))
    (then_0_assert_1 : (e = 0) → (power_of_2.pow2 0 = 1))
    (then_0_assert_2 : (e = 0) → (Vermilion.Bits.shl 32 bv 0 = (bv * 1)))
    (then_0_assume_8 : (e = 0) → (Vermilion.Bits.shl 32 bv 0 = Vermilion.natClip (bv * power_of_2.pow2 0)))
    (else_0_call_lemma_pow2_increase_ensures_0 : (¬ (e = 0)) → (power_of_2.pow2 e > power_of_2.pow2 (Vermilion.natClip (e - 1))))
    (else_0_call_lemma_mul_upper_bound_ensures_0 : (¬ (e = 0)) → (Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) ≤ Vermilion.natClip (bv * power_of_2.pow2 e)))
    (else_0_assert_anonymous_0 : (¬ (e = 0)) → (((0 ≤ ((e - 1) % 4294967296)) ∧ (((e - 1) % 4294967296) < e)) ∨ ((((e - 1) % 4294967296) = e) ∧ False)))
    (else_0_call_left_shift_is_pow2_ensures_0 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = Vermilion.natClip (bv * power_of_2.pow2 ((e - 1) % 4294967296))))
    (else_0_assert_7 : (¬ (e = 0)) → (bv = bv))
    (else_0_assume_10 : (¬ (e = 0)) → (Vermilion.natClip (bv * power_of_2.pow2 (Vermilion.natClip (e - 1))) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (else_0_assume_11 : (¬ (e = 0)) → (True → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))))
    (else_0_assert_10 : (¬ (e = 0)) → (e > 0))
    (else_0_assert_11 : (¬ (e = 0)) → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (else_0_assert_12 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (else_0_assert_13 : (¬ (e = 0)) → (Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296))
    (else_0_assume_16 : (¬ (e = 0)) → (Vermilion.natClip (bv * power_of_2.pow2 e) = Vermilion.natClip (Vermilion.natClip (bv * 2) * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (else_0_assert_15 : (¬ (e = 0)) → (e > 0))
    (else_0_assume_18 : (¬ (e = 0)) → (Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296))))
    (else_0_call_left_shift_by_one_ensures_0 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv e = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) 1))
    (else_0_call_left_shift_by_one_is_mul2_ensures_0 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv e = ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) % 4294967296)))
    (else_0_assert_19 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (else_0_assert_20 : (¬ (e = 0)) → (Vermilion.natClip (bv * power_of_2.pow2 e) < 4294967296))
    (else_0_assert_21 : (¬ (e = 0)) → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (else_0_assume_24 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648))
    (else_0_assert_23 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) < 2147483648))
    (else_0_assume_26 : (¬ (e = 0)) → ((2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296)) < 4294967296))
    (else_0_assert_28 : (¬ (e = 0)) → (e > 0))
    (else_0_assert_29 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296) = (bv * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (else_0_assert_30 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv e = Vermilion.natClip (2 * Vermilion.Bits.shl 32 bv ((e - 1) % 4294967296))))
    (else_0_assert_31 : (¬ (e = 0)) → (power_of_2.pow2 e = Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1)))))
    (else_0_assume_31 : (¬ (e = 0)) → (Vermilion.Bits.shl 32 bv e = Vermilion.natClip (bv * power_of_2.pow2 e))) :
    Vermilion.Bits.shl 32 bv e = Vermilion.natClip (bv * power_of_2.pow2 e) := by
  iterate 1 (try first | (rw [power_of_2.pow2]; try norm_num))
  vrml
-- vrml:end power_of_2.left_shift_is_pow2.ensures_32

end power_of_2.left_shift_is_pow2

