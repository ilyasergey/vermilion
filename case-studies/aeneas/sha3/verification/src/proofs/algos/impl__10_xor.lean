import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__10.xor

-- vrml:begin algos.impl__10.xor.call_requires_0_0 cbaf418ec86068b0
/--
Generated VC `algos.impl__10.xor.call_requires_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:323:11-323:45`
- Rust/SST construct: call inner
- AssertId: `0_0`
- Statement hash: `cbaf418ec86068b0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 323
  startColumn := 11
  endLine := 323
  endColumn := 45
  assertId := "0_0"
  functionName := "algos.impl__10.xor"
  kind := "call_requires"
  statementHash := "cbaf418ec86068b0"
}
@[vrml_obligation] theorem call_requires_0_0
    (self : algos.StateArray)
    (other : (Vermilion.Seq Int))
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_3 : Vermilion.Seq.len other < 200)
    (assume_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_2) :
    (8 * 0) ≤ Vermilion.Seq.len other := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.call_requires_0_0

-- vrml:begin algos.impl__10.xor.call_requires_0_1 e9d5bbd386b23014
/--
Generated VC `algos.impl__10.xor.call_requires_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:323:11-323:45`
- Rust/SST construct: call inner
- AssertId: `0_1`
- Statement hash: `e9d5bbd386b23014`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 323
  startColumn := 11
  endLine := 323
  endColumn := 45
  assertId := "0_1"
  functionName := "algos.impl__10.xor"
  kind := "call_requires"
  statementHash := "e9d5bbd386b23014"
}
@[vrml_obligation] theorem call_requires_0_1
    (self : algos.StateArray)
    (other : (Vermilion.Seq Int))
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_3 : Vermilion.Seq.len other < 200)
    (assume_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_2) :
    Vermilion.Seq.len other < 200 := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.call_requires_0_1

-- vrml:begin algos.impl__10.xor.assert_1 64c7815009ebcaf6
/--
Generated VC `algos.impl__10.xor.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:324:12-324:25`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `64c7815009ebcaf6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 324
  startColumn := 12
  endLine := 324
  endColumn := 25
  assertId := "1"
  functionName := "algos.impl__10.xor"
  kind := "assert"
  statementHash := "64c7815009ebcaf6"
}
@[vrml_obligation] theorem assert_1
    (self : algos.StateArray)
    (other : (Vermilion.Seq Int))
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_3 : Vermilion.Seq.len other < 200)
    (assume_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_inner_ensures_0 : (8 * tmp__post_2) ≤ Vermilion.Seq.len other)
    (call_inner_ensures_1 : Vermilion.Seq.len other < (8 * (tmp__post_2 + 1)))
    (call_inner_ensures_2 : algos.xor_spec_from (algos.impl__3.view tmp__post) other tmp__post_2 = algos.xor_spec_from (algos.impl__3.view self) other 0) :
    Vermilion.inUnsignedRange 64 (8 * tmp__post_2) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.assert_1

-- vrml:begin algos.impl__10.xor.assert_3 b224ca76a552cfe9
/--
Generated VC `algos.impl__10.xor.assert_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:325:39-325:56`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `3`
- Statement hash: `b224ca76a552cfe9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 325
  startColumn := 39
  endLine := 325
  endColumn := 56
  assertId := "3"
  functionName := "algos.impl__10.xor"
  kind := "assert"
  statementHash := "b224ca76a552cfe9"
}
@[vrml_obligation] theorem assert_3
    (self : algos.StateArray)
    (other : (Vermilion.Seq Int))
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (self_2 : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_3 : Vermilion.Seq.len other < 200)
    (assume_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_inner_ensures_0 : (8 * tmp__post_2) ≤ Vermilion.Seq.len other)
    (call_inner_ensures_1 : Vermilion.Seq.len other < (8 * (tmp__post_2 + 1)))
    (call_inner_ensures_2 : algos.xor_spec_from (algos.impl__3.view tmp__post) other tmp__post_2 = algos.xor_spec_from (algos.impl__3.view self) other 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (8 * tmp__post_2))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len other))
    (branch_0 : ((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other) :
    (0 ≤ tmp__post_2) ∧ (tmp__post_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post)) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.assert_3

-- vrml:begin algos.impl__10.xor.assert_4 9096dc292b573133
/--
Generated VC `algos.impl__10.xor.assert_4`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:325:65-325:76`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `4`
- Statement hash: `9096dc292b573133`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 325
  startColumn := 65
  endLine := 325
  endColumn := 76
  assertId := "4"
  functionName := "algos.impl__10.xor"
  kind := "assert"
  statementHash := "9096dc292b573133"
}
@[vrml_obligation] theorem assert_4
    (self : algos.StateArray)
    (other : (Vermilion.Seq Int))
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (self_2 : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_3 : Vermilion.Seq.len other < 200)
    (assume_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_inner_ensures_0 : (8 * tmp__post_2) ≤ Vermilion.Seq.len other)
    (call_inner_ensures_1 : Vermilion.Seq.len other < (8 * (tmp__post_2 + 1)))
    (call_inner_ensures_2 : algos.xor_spec_from (algos.impl__3.view tmp__post) other tmp__post_2 = algos.xor_spec_from (algos.impl__3.view self) other 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (8 * tmp__post_2))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len other))
    (branch_0 : ((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other)
    (assert_3 : (0 ≤ tmp__post_2) ∧ (tmp__post_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) :
    Vermilion.inUnsignedRange 64 (8 * tmp__post_2) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.assert_4

-- vrml:begin algos.impl__10.xor.call_requires_5 14e74a4d2e7b2bfa
/--
Generated VC `algos.impl__10.xor.call_requires_5`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:325:59-325:79`
- Rust/SST construct: call index
- AssertId: `5`
- Statement hash: `14e74a4d2e7b2bfa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 325
  startColumn := 59
  endLine := 325
  endColumn := 79
  assertId := "5"
  functionName := "algos.impl__10.xor"
  kind := "call_requires"
  statementHash := "14e74a4d2e7b2bfa"
}
@[vrml_obligation] theorem call_requires_5
    (self : algos.StateArray)
    (other : (Vermilion.Seq Int))
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (self_2 : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_3 : Vermilion.Seq.len other < 200)
    (assume_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_inner_ensures_0 : (8 * tmp__post_2) ≤ Vermilion.Seq.len other)
    (call_inner_ensures_1 : Vermilion.Seq.len other < (8 * (tmp__post_2 + 1)))
    (call_inner_ensures_2 : algos.xor_spec_from (algos.impl__3.view tmp__post) other tmp__post_2 = algos.xor_spec_from (algos.impl__3.view self) other 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (8 * tmp__post_2))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len other))
    (branch_0 : ((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other)
    (assert_3 : (0 ≤ tmp__post_2) ∧ (tmp__post_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * tmp__post_2)) :
    ((8 * tmp__post_2) % 18446744073709551616) ≤ Vermilion.Seq.len other := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.call_requires_5

-- vrml:begin algos.impl__10.xor.call_requires_6 c7f2819b289259f7
/--
Generated VC `algos.impl__10.xor.call_requires_6`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:325:13-325:80`
- Rust/SST construct: call xor_lane
- AssertId: `6`
- Statement hash: `c7f2819b289259f7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def call_requires_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 325
  startColumn := 13
  endLine := 325
  endColumn := 80
  assertId := "6"
  functionName := "algos.impl__10.xor"
  kind := "call_requires"
  statementHash := "c7f2819b289259f7"
}
@[vrml_obligation] theorem call_requires_6
    (self : algos.StateArray)
    (other : (Vermilion.Seq Int))
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (self_2 : algos.StateArray)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__post_3 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_3 : Vermilion.Seq.len other < 200)
    (assume_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_inner_ensures_0 : (8 * tmp__post_2) ≤ Vermilion.Seq.len other)
    (call_inner_ensures_1 : Vermilion.Seq.len other < (8 * (tmp__post_2 + 1)))
    (call_inner_ensures_2 : algos.xor_spec_from (algos.impl__3.view tmp__post) other tmp__post_2 = algos.xor_spec_from (algos.impl__3.view self) other 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (8 * tmp__post_2))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len other))
    (branch_0 : ((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other)
    (assert_3 : (0 ≤ tmp__post_2) ∧ (tmp__post_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * tmp__post_2))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.subrange other ((8 * tmp__post_2) % 18446744073709551616) (Vermilion.Seq.len other))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_3) :
    Vermilion.Seq.len tmp_ ≤ 8 := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.call_requires_6

-- vrml:begin algos.impl__10.xor.ensures_7 6f1e9518d95faff6
/--
Generated VC `algos.impl__10.xor.ensures_7`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:293:13-293:65`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7`
- Statement hash: `6f1e9518d95faff6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self_2) vrml_i0⟩
-/
def ensures_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 293
  startColumn := 13
  endLine := 293
  endColumn := 65
  assertId := "7"
  functionName := "algos.impl__10.xor"
  kind := "ensures"
  statementHash := "6f1e9518d95faff6"
}
@[vrml_obligation] theorem ensures_7
    (self : algos.StateArray)
    (other : (Vermilion.Seq Int))
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (self_2 : algos.StateArray)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__post_3 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_3 : Vermilion.Seq.len other < 200)
    (assume_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_inner_ensures_0 : (8 * tmp__post_2) ≤ Vermilion.Seq.len other)
    (call_inner_ensures_1 : Vermilion.Seq.len other < (8 * (tmp__post_2 + 1)))
    (call_inner_ensures_2 : algos.xor_spec_from (algos.impl__3.view tmp__post) other tmp__post_2 = algos.xor_spec_from (algos.impl__3.view self) other 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (8 * tmp__post_2))
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len other))
    (then_0_assert_3 : (((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other) → ((0 ≤ tmp__post_2) ∧ (tmp__post_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))))
    (then_0_assert_4 : (((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other) → Vermilion.inUnsignedRange 64 (8 * tmp__post_2))
    (then_0_call_index_ensures_0 : (((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (then_0_call_index_ensures_1 : (((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other) → (tmp_ = Vermilion.Seq.subrange other ((8 * tmp__post_2) % 18446744073709551616) (Vermilion.Seq.len other)))
    (then_0_assume_17 : (((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other) → Vermilion.inUnsignedRange 64 tmp__post_3)
    (then_0_call_xor_lane_ensures_0 : (((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other) → (tmp__post_3 = algos.xor_lane_spec (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) tmp__post_2) tmp_))
    (then_0_assume_19 : (((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other) → (self_2 = algos.StateArray.StateArray (Vermilion.Seq.update (algos.StateArray.get_StateArray__0 tmp__post) tmp__post_2 tmp__post_3)))
    (else_0_assume_13 : (¬ (((8 * tmp__post_2) % 18446744073709551616) < Vermilion.Seq.len other)) → (self_2 = tmp__post))
    (assume_20 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self_2) = 25)
    (assume_21 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self_2) vrml_i0)))) :
    algos.impl__3.view self_2 = algos.xor_spec_from (algos.impl__3.view self) other 0 := by
  have hclip : (8 * tmp__post_2) % 18446744073709551616 = 8 * tmp__post_2 := by
    apply Int.emod_eq_of_lt <;>
      simp_all [Vermilion.inUnsignedRange] <;> omega
  rw [← call_inner_ensures_2]
  rw [algos.xor_spec_from]
  have hmeasure : 0 ≤ Vermilion.Seq.len other - 8 * tmp__post_2 := by omega
  have hnotfull : ¬(8 * tmp__post_2 + 8 ≤ Vermilion.Seq.len other) := by
    omega
  simp only [hmeasure, hnotfull]
  by_cases hpartial : 8 * tmp__post_2 < Vermilion.Seq.len other
  · simp only [hpartial]
    have hbranch :
        (8 * tmp__post_2) % 18446744073709551616 < Vermilion.Seq.len other := by
      simpa [hclip] using hpartial
    have htmp := then_0_call_index_ensures_1 hbranch
    have hlane := then_0_call_xor_lane_ensures_0 hbranch
    have hself := then_0_assume_19 hbranch
    simpa [algos.impl__3.view, hclip, htmp, hlane] using congrArg algos.impl__3.view hself
  · simp only [hpartial]
    have hbranch :
        ¬((8 * tmp__post_2) % 18446744073709551616 < Vermilion.Seq.len other) := by
      simpa [hclip] using hpartial
    exact congrArg algos.impl__3.view (else_0_assume_13 hbranch)
-- vrml:end algos.impl__10.xor.ensures_7

end algos.impl__10.xor

