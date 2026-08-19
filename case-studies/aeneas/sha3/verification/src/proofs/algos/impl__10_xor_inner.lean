import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__10.xor.inner

-- vrml:begin algos.impl__10.xor.inner.invariant_entry_0_0 40836084df0a8cea
/--
Generated VC `algos.impl__10.xor.inner.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:313:21-313:51`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `40836084df0a8cea`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 313
  startColumn := 21
  endLine := 313
  endColumn := 51
  assertId := "0_0"
  functionName := "algos.impl__10.xor.inner"
  kind := "invariant_entry"
  statementHash := "40836084df0a8cea"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 block_idx)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_4 : (8 * block_idx) ≤ Vermilion.Seq.len other)
    (requires_5 : Vermilion.Seq.len other < 200) :
    (8 * block_idx) ≤ Vermilion.Seq.len other := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.invariant_entry_0_0

-- vrml:begin algos.impl__10.xor.inner.invariant_entry_0_1 763ed02c8c12117d
/--
Generated VC `algos.impl__10.xor.inner.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:314:21-314:39`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `763ed02c8c12117d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 314
  startColumn := 21
  endLine := 314
  endColumn := 39
  assertId := "0_1"
  functionName := "algos.impl__10.xor.inner"
  kind := "invariant_entry"
  statementHash := "763ed02c8c12117d"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 block_idx)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_4 : (8 * block_idx) ≤ Vermilion.Seq.len other)
    (requires_5 : Vermilion.Seq.len other < 200) :
    Vermilion.Seq.len other < 200 := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.invariant_entry_0_1

-- vrml:begin algos.impl__10.xor.inner.invariant_entry_0_2 28a99d67e32d13a7
/--
Generated VC `algos.impl__10.xor.inner.invariant_entry_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:315:21-316:85`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `28a99d67e32d13a7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 315
  startColumn := 21
  endLine := 316
  endColumn := 85
  assertId := "0_2"
  functionName := "algos.impl__10.xor.inner"
  kind := "invariant_entry"
  statementHash := "28a99d67e32d13a7"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 block_idx)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_4 : (8 * block_idx) ≤ Vermilion.Seq.len other)
    (requires_5 : Vermilion.Seq.len other < 200) :
    algos.xor_spec_from (algos.impl__3.view this) other block_idx = algos.xor_spec_from (algos.impl__3.view this) other block_idx := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.invariant_entry_0_2

-- vrml:begin algos.impl__10.xor.inner.assert_0 e13e1e0e22a0068a
/--
Generated VC `algos.impl__10.xor.inner.assert_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:310:19-310:32`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `e13e1e0e22a0068a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 310
  startColumn := 19
  endLine := 310
  endColumn := 32
  assertId := "0"
  functionName := "algos.impl__10.xor.inner"
  kind := "assert"
  statementHash := "e13e1e0e22a0068a"
}
@[vrml_obligation] theorem assert_0
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx) :
    Vermilion.inUnsignedRange 64 (8 * block_idx_2) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.assert_0

-- vrml:begin algos.impl__10.xor.inner.assert_1 dd07610aa7d7e595
/--
Generated VC `algos.impl__10.xor.inner.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:310:19-310:36`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `dd07610aa7d7e595`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 310
  startColumn := 19
  endLine := 310
  endColumn := 36
  assertId := "1"
  functionName := "algos.impl__10.xor.inner"
  kind := "assert"
  statementHash := "dd07610aa7d7e595"
}
@[vrml_obligation] theorem assert_1
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2)) :
    Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.assert_1

-- vrml:begin algos.impl__10.xor.inner.assert_3 3a96221a63c464c7
/--
Generated VC `algos.impl__10.xor.inner.assert_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:320:43-320:61`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `3`
- Statement hash: `3a96221a63c464c7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 320
  startColumn := 43
  endLine := 320
  endColumn := 61
  assertId := "3"
  functionName := "algos.impl__10.xor.inner"
  kind := "assert"
  statementHash := "3a96221a63c464c7"
}
@[vrml_obligation] theorem assert_3
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other) :
    (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.assert_3

-- vrml:begin algos.impl__10.xor.inner.assert_4 4bc07b50f593b815
/--
Generated VC `algos.impl__10.xor.inner.assert_4`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:320:70-320:83`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `4`
- Statement hash: `4bc07b50f593b815`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 320
  startColumn := 70
  endLine := 320
  endColumn := 83
  assertId := "4"
  functionName := "algos.impl__10.xor.inner"
  kind := "assert"
  statementHash := "4bc07b50f593b815"
}
@[vrml_obligation] theorem assert_4
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) :
    Vermilion.inUnsignedRange 64 (8 * block_idx_2) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.assert_4

-- vrml:begin algos.impl__10.xor.inner.assert_5 e3aa1bde054b58e8
/--
Generated VC `algos.impl__10.xor.inner.assert_5`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:320:87-320:101`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `5`
- Statement hash: `e3aa1bde054b58e8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 320
  startColumn := 87
  endLine := 320
  endColumn := 101
  assertId := "5"
  functionName := "algos.impl__10.xor.inner"
  kind := "assert"
  statementHash := "e3aa1bde054b58e8"
}
@[vrml_obligation] theorem assert_5
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * block_idx_2)) :
    Vermilion.inUnsignedRange 64 (block_idx_2 + 1) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.assert_5

-- vrml:begin algos.impl__10.xor.inner.assert_6 132c72ff806f0c39
/--
Generated VC `algos.impl__10.xor.inner.assert_6`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:320:85-320:101`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `6`
- Statement hash: `132c72ff806f0c39`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 320
  startColumn := 85
  endLine := 320
  endColumn := 101
  assertId := "6"
  functionName := "algos.impl__10.xor.inner"
  kind := "assert"
  statementHash := "132c72ff806f0c39"
}
@[vrml_obligation] theorem assert_6
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_5 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1)) :
    Vermilion.inUnsignedRange 64 (8 * ((block_idx_2 + 1) % 18446744073709551616)) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.assert_6

-- vrml:begin algos.impl__10.xor.inner.call_requires_7 d27c4abddcf3bb50
/--
Generated VC `algos.impl__10.xor.inner.call_requires_7`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:320:64-320:102`
- Rust/SST construct: call index
- AssertId: `7`
- Statement hash: `d27c4abddcf3bb50`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 320
  startColumn := 64
  endLine := 320
  endColumn := 102
  assertId := "7"
  functionName := "algos.impl__10.xor.inner"
  kind := "call_requires"
  statementHash := "d27c4abddcf3bb50"
}
@[vrml_obligation] theorem call_requires_7
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_5 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * ((block_idx_2 + 1) % 18446744073709551616))) :
    (((8 * block_idx_2) % 18446744073709551616) ≤ ((8 * ((block_idx_2 + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (((8 * ((block_idx_2 + 1) % 18446744073709551616)) % 18446744073709551616) ≤ Vermilion.Seq.len other) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.call_requires_7

-- vrml:begin algos.impl__10.xor.inner.call_requires_8 7ab63160ebd5e879
/--
Generated VC `algos.impl__10.xor.inner.call_requires_8`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:320:17-320:103`
- Rust/SST construct: call xor_lane
- AssertId: `8`
- Statement hash: `7ab63160ebd5e879`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def call_requires_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 320
  startColumn := 17
  endLine := 320
  endColumn := 103
  assertId := "8"
  functionName := "algos.impl__10.xor.inner"
  kind := "call_requires"
  statementHash := "7ab63160ebd5e879"
}
@[vrml_obligation] theorem call_requires_8
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__post : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_5 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * ((block_idx_2 + 1) % 18446744073709551616)))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.subrange other ((8 * block_idx_2) % 18446744073709551616) ((8 * ((block_idx_2 + 1) % 18446744073709551616)) % 18446744073709551616))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post) :
    Vermilion.Seq.len tmp_ ≤ 8 := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.call_requires_8

-- vrml:begin algos.impl__10.xor.inner.assert_9 56fad7f88010a5db
/--
Generated VC `algos.impl__10.xor.inner.assert_9`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:321:17-321:32`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `9`
- Statement hash: `56fad7f88010a5db`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 321
  startColumn := 17
  endLine := 321
  endColumn := 32
  assertId := "9"
  functionName := "algos.impl__10.xor.inner"
  kind := "assert"
  statementHash := "56fad7f88010a5db"
}
@[vrml_obligation] theorem assert_9
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__post : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_5 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * ((block_idx_2 + 1) % 18446744073709551616)))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.subrange other ((8 * block_idx_2) % 18446744073709551616) ((8 * ((block_idx_2 + 1) % 18446744073709551616)) % 18446744073709551616))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post)
    (call_xor_lane_ensures_0 : tmp__post = algos.xor_lane_spec (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) block_idx_2) tmp_) :
    Vermilion.inUnsignedRange 64 (block_idx_2 + 1) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.assert_9

-- vrml:begin algos.impl__10.xor.inner.invariant_preserve_0_0 2e21884c2287a500
/--
Generated VC `algos.impl__10.xor.inner.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:313:21-313:51`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `2e21884c2287a500`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 313
  startColumn := 21
  endLine := 313
  endColumn := 51
  assertId := "0_0"
  functionName := "algos.impl__10.xor.inner"
  kind := "invariant_preserve"
  statementHash := "2e21884c2287a500"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__post : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_5 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * ((block_idx_2 + 1) % 18446744073709551616)))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.subrange other ((8 * block_idx_2) % 18446744073709551616) ((8 * ((block_idx_2 + 1) % 18446744073709551616)) % 18446744073709551616))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post)
    (call_xor_lane_ensures_0 : tmp__post = algos.xor_lane_spec (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) block_idx_2) tmp_)
    (assert_9 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1)) :
    (8 * ((block_idx_2 + 1) % 18446744073709551616)) ≤ Vermilion.Seq.len other := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.invariant_preserve_0_0

-- vrml:begin algos.impl__10.xor.inner.invariant_preserve_0_1 82869fee731f39d7
/--
Generated VC `algos.impl__10.xor.inner.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:314:21-314:39`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `82869fee731f39d7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 314
  startColumn := 21
  endLine := 314
  endColumn := 39
  assertId := "0_1"
  functionName := "algos.impl__10.xor.inner"
  kind := "invariant_preserve"
  statementHash := "82869fee731f39d7"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__post : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_5 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * ((block_idx_2 + 1) % 18446744073709551616)))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.subrange other ((8 * block_idx_2) % 18446744073709551616) ((8 * ((block_idx_2 + 1) % 18446744073709551616)) % 18446744073709551616))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post)
    (call_xor_lane_ensures_0 : tmp__post = algos.xor_lane_spec (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) block_idx_2) tmp_)
    (assert_9 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1)) :
    Vermilion.Seq.len other < 200 := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.invariant_preserve_0_1

-- vrml:begin algos.impl__10.xor.inner.invariant_preserve_0_2 2b03bd48c1d49c2a
/--
Generated VC `algos.impl__10.xor.inner.invariant_preserve_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:315:21-316:85`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `2b03bd48c1d49c2a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 315
  startColumn := 21
  endLine := 316
  endColumn := 85
  assertId := "0_2"
  functionName := "algos.impl__10.xor.inner"
  kind := "invariant_preserve"
  statementHash := "2b03bd48c1d49c2a"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__post : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_5 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * ((block_idx_2 + 1) % 18446744073709551616)))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.subrange other ((8 * block_idx_2) % 18446744073709551616) ((8 * ((block_idx_2 + 1) % 18446744073709551616)) % 18446744073709551616))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post)
    (call_xor_lane_ensures_0 : tmp__post = algos.xor_lane_spec (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) block_idx_2) tmp_)
    (assert_9 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1)) :
    algos.xor_spec_from (algos.impl__3.view (algos.StateArray.StateArray (Vermilion.Seq.update (algos.StateArray.get_StateArray__0 this_2) block_idx_2 tmp__post))) other ((block_idx_2 + 1) % 18446744073709551616) = algos.xor_spec_from (algos.impl__3.view this) other block_idx := by
  have hidx_clip : block_idx_2 % 18446744073709551616 = block_idx_2 := by
    apply Int.emod_eq_of_lt <;>
      simp_all [Vermilion.inUnsignedRange] <;> omega
  have hnext_clip :
      (block_idx_2 + 1) % 18446744073709551616 = block_idx_2 + 1 := by
    apply Int.emod_eq_of_lt <;>
      simp_all [Vermilion.inUnsignedRange] <;> omega
  have hstart_clip :
      (8 * block_idx_2) % 18446744073709551616 = 8 * block_idx_2 := by
    apply Int.emod_eq_of_lt <;>
      simp_all [Vermilion.inUnsignedRange] <;> omega
  have hsum_clip :
      (((8 * block_idx_2) % 18446744073709551616) + 8) %
          18446744073709551616 = 8 * block_idx_2 + 8 := by
    rw [hstart_clip]
    apply Int.emod_eq_of_lt <;>
      simp_all [Vermilion.inUnsignedRange] <;> omega
  have hend_clip :
      (8 * ((block_idx_2 + 1) % 18446744073709551616)) %
          18446744073709551616 = 8 * (block_idx_2 + 1) := by
    rw [hnext_clip]
    apply Int.emod_eq_of_lt <;>
      simp_all [Vermilion.inUnsignedRange] <;> omega
  have hmulnext_clip :
      (8 * (block_idx_2 + 1)) % 18446744073709551616 =
          8 * (block_idx_2 + 1) := by
    apply Int.emod_eq_of_lt <;>
      simp_all [Vermilion.inUnsignedRange] <;> omega
  have hmeasure : 0 ≤ Vermilion.Seq.len other - 8 * block_idx_2 := by omega
  have hfull : 8 * block_idx_2 + 8 ≤ Vermilion.Seq.len other := by
    simpa [hsum_clip] using branch_0
  have hstep := loop_0_iteration_9
  rw [algos.xor_spec_from] at hstep
  simp only [hmeasure, hfull] at hstep
  simpa [algos.impl__3.view, hnext_clip, hstart_clip, hend_clip,
    hmulnext_clip, call_index_ensures_1, call_xor_lane_ensures_0] using hstep
-- vrml:end algos.impl__10.xor.inner.invariant_preserve_0_2

-- vrml:begin algos.impl__10.xor.inner.assert_0_decreases 9b537d8797125ae9
/--
Generated VC `algos.impl__10.xor.inner.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:317:27-317:56`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `9b537d8797125ae9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 317
  startColumn := 27
  endLine := 317
  endColumn := 56
  assertId := "0_decreases"
  functionName := "algos.impl__10.xor.inner"
  kind := "assert"
  statementHash := "9b537d8797125ae9"
}
@[vrml_obligation] theorem assert_0_decreases
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (tmp_ : (Vermilion.Seq Int))
    (tmp__post : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 block_idx)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_iteration_7 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_iteration_8 : Vermilion.Seq.len other < 200)
    (loop_0_iteration_9 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (assert_0 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_1 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (branch_0 : ((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other)
    (assert_3 : (0 ≤ block_idx_2) ∧ (block_idx_2 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2)))
    (assert_4 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (assert_5 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * ((block_idx_2 + 1) % 18446744073709551616)))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.subrange other ((8 * block_idx_2) % 18446744073709551616) ((8 * ((block_idx_2 + 1) % 18446744073709551616)) % 18446744073709551616))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post)
    (call_xor_lane_ensures_0 : tmp__post = algos.xor_lane_spec (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) block_idx_2) tmp_)
    (assert_9 : Vermilion.inUnsignedRange 64 (block_idx_2 + 1)) :
    ((0 ≤ (Vermilion.Seq.len other - (8 * ((block_idx_2 + 1) % 18446744073709551616)))) ∧ ((Vermilion.Seq.len other - (8 * ((block_idx_2 + 1) % 18446744073709551616))) < (Vermilion.Seq.len other - (8 * block_idx_2)))) ∨ (((Vermilion.Seq.len other - (8 * ((block_idx_2 + 1) % 18446744073709551616))) = (Vermilion.Seq.len other - (8 * block_idx_2))) ∧ False) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.assert_0_decreases

-- vrml:begin algos.impl__10.xor.inner.ensures_10_0 f5638a2df0a71b5a
/--
Generated VC `algos.impl__10.xor.inner.ensures_10_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:304:17-304:54`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_0`
- Statement hash: `f5638a2df0a71b5a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def ensures_10_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 304
  startColumn := 17
  endLine := 304
  endColumn := 54
  assertId := "10_0"
  functionName := "algos.impl__10.xor.inner"
  kind := "ensures"
  statementHash := "f5638a2df0a71b5a"
}
@[vrml_obligation] theorem ensures_10_0
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 block_idx)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_4 : (8 * block_idx) ≤ Vermilion.Seq.len other)
    (requires_5 : Vermilion.Seq.len other < 200)
    (loop_0_exit_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_exit_3 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_exit_4 : Vermilion.Seq.len other < 200)
    (loop_0_exit_5 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (loop_0_exit_6 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (loop_0_exit_7 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (loop_0_exit_8 : (¬ (((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other))) :
    (8 * block_idx_2) ≤ Vermilion.Seq.len other := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.ensures_10_0

-- vrml:begin algos.impl__10.xor.inner.ensures_10_1 3f515dea9dd19122
/--
Generated VC `algos.impl__10.xor.inner.ensures_10_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:305:17-305:59`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_1`
- Statement hash: `3f515dea9dd19122`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def ensures_10_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 305
  startColumn := 17
  endLine := 305
  endColumn := 59
  assertId := "10_1"
  functionName := "algos.impl__10.xor.inner"
  kind := "ensures"
  statementHash := "3f515dea9dd19122"
}
@[vrml_obligation] theorem ensures_10_1
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 block_idx)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_4 : (8 * block_idx) ≤ Vermilion.Seq.len other)
    (requires_5 : Vermilion.Seq.len other < 200)
    (loop_0_exit_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_exit_3 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_exit_4 : Vermilion.Seq.len other < 200)
    (loop_0_exit_5 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (loop_0_exit_6 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (loop_0_exit_7 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (loop_0_exit_8 : (¬ (((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other))) :
    Vermilion.Seq.len other < (8 * (block_idx_2 + 1)) := by
  iterate 10 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor.inner.ensures_10_1

-- vrml:begin algos.impl__10.xor.inner.ensures_10_2 b8c4ddf27978ebb6
/--
Generated VC `algos.impl__10.xor.inner.ensures_10_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:306:17-307:81`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_2`
- Statement hash: `b8c4ddf27978ebb6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0⟩ ⟨Vermilion.Seq.index other vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0⟩
-/
def ensures_10_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 306
  startColumn := 17
  endLine := 307
  endColumn := 81
  assertId := "10_2"
  functionName := "algos.impl__10.xor.inner"
  kind := "ensures"
  statementHash := "b8c4ddf27978ebb6"
}
@[vrml_obligation] theorem ensures_10_2
    (this : algos.StateArray)
    (block_idx : Int)
    (other : (Vermilion.Seq Int))
    (this_2 : algos.StateArray)
    (block_idx_2 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 block_idx)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len other)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index other vrml_i0))))
    (requires_4 : (8 * block_idx) ≤ Vermilion.Seq.len other)
    (requires_5 : Vermilion.Seq.len other < 200)
    (loop_0_exit_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2) = 25)
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 this_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 this_2) vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 block_idx_2)
    (loop_0_exit_3 : (8 * block_idx_2) ≤ Vermilion.Seq.len other)
    (loop_0_exit_4 : Vermilion.Seq.len other < 200)
    (loop_0_exit_5 : algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx)
    (loop_0_exit_6 : Vermilion.inUnsignedRange 64 (8 * block_idx_2))
    (loop_0_exit_7 : Vermilion.inUnsignedRange 64 (((8 * block_idx_2) % 18446744073709551616) + 8))
    (loop_0_exit_8 : (¬ (((((8 * block_idx_2) % 18446744073709551616) + 8) % 18446744073709551616) ≤ Vermilion.Seq.len other))) :
    algos.xor_spec_from (algos.impl__3.view this_2) other block_idx_2 = algos.xor_spec_from (algos.impl__3.view this) other block_idx := by
  exact loop_0_exit_5
-- vrml:end algos.impl__10.xor.inner.ensures_10_2

end algos.impl__10.xor.inner

