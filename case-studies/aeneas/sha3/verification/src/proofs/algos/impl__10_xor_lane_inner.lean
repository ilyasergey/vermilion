import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__10.xor_lane.inner

-- vrml:begin algos.impl__10.xor_lane.inner.invariant_entry_0_0 250a3f0da43b73cb
/--
Generated VC `algos.impl__10.xor_lane.inner.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:236:21-236:36`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `250a3f0da43b73cb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 236
  startColumn := 21
  endLine := 236
  endColumn := 36
  assertId := "0_0"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "invariant_entry"
  statementHash := "250a3f0da43b73cb"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 i)
    (requires_1 : Vermilion.Seq.len buf = 8)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (requires_4 : i = 0)
    (requires_5 : Vermilion.Seq.len src ≤ 8) :
    i ≤ Vermilion.Seq.len src := by
  iterate 9 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.inner.invariant_entry_0_0

-- vrml:begin algos.impl__10.xor_lane.inner.invariant_entry_0_1 bca538f51f1dbb40
/--
Generated VC `algos.impl__10.xor_lane.inner.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:237:21-237:36`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `bca538f51f1dbb40`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 237
  startColumn := 21
  endLine := 237
  endColumn := 36
  assertId := "0_1"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "invariant_entry"
  statementHash := "bca538f51f1dbb40"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 i)
    (requires_1 : Vermilion.Seq.len buf = 8)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (requires_4 : i = 0)
    (requires_5 : Vermilion.Seq.len src ≤ 8) :
    Vermilion.Seq.len src ≤ 8 := by
  iterate 9 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.inner.invariant_entry_0_1

-- vrml:begin algos.impl__10.xor_lane.inner.invariant_entry_0_2 c0481b8dd4d53f98
/--
Generated VC `algos.impl__10.xor_lane.inner.invariant_entry_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:238:21-239:67`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `c0481b8dd4d53f98`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 238
  startColumn := 21
  endLine := 239
  endColumn := 67
  assertId := "0_2"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "invariant_entry"
  statementHash := "c0481b8dd4d53f98"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 i)
    (requires_1 : Vermilion.Seq.len buf = 8)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (requires_4 : i = 0)
    (requires_5 : Vermilion.Seq.len src ≤ 8) :
    algos.xor_lane_bytes_spec buf src i = algos.xor_lane_bytes_spec buf src 0 := by
  subst i
  rfl
-- vrml:end algos.impl__10.xor_lane.inner.invariant_entry_0_2

-- vrml:begin algos.impl__10.xor_lane.inner.assert_1 a95a94b47f6640e2
/--
Generated VC `algos.impl__10.xor_lane.inner.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:243:27-243:33`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `1`
- Statement hash: `a95a94b47f6640e2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf_2 vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 243
  startColumn := 27
  endLine := 243
  endColumn := 33
  assertId := "1"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "assert"
  statementHash := "a95a94b47f6640e2"
}
@[vrml_obligation] theorem assert_1
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (buf_2 : (Vermilion.Seq Int))
    (i_2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_1 : Vermilion.Seq.len buf = 8)
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len buf_2 = 8)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf_2 vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i_2)
    (loop_0_iteration_7 : i_2 ≤ Vermilion.Seq.len src)
    (loop_0_iteration_8 : Vermilion.Seq.len src ≤ 8)
    (loop_0_iteration_9 : algos.xor_lane_bytes_spec buf_2 src i_2 = algos.xor_lane_bytes_spec buf src 0)
    (loop_0_iteration_10 : i_2 < Vermilion.Seq.len src) :
    (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len src) := by
  iterate 9 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.inner.assert_1

-- vrml:begin algos.impl__10.xor_lane.inner.assert_2 2b7eb1422cee0e68
/--
Generated VC `algos.impl__10.xor_lane.inner.assert_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:243:17-243:23`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `2`
- Statement hash: `2b7eb1422cee0e68`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf_2 vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 243
  startColumn := 17
  endLine := 243
  endColumn := 23
  assertId := "2"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "assert"
  statementHash := "2b7eb1422cee0e68"
}
@[vrml_obligation] theorem assert_2
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (buf_2 : (Vermilion.Seq Int))
    (i_2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_1 : Vermilion.Seq.len buf = 8)
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len buf_2 = 8)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf_2 vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i_2)
    (loop_0_iteration_7 : i_2 ≤ Vermilion.Seq.len src)
    (loop_0_iteration_8 : Vermilion.Seq.len src ≤ 8)
    (loop_0_iteration_9 : algos.xor_lane_bytes_spec buf_2 src i_2 = algos.xor_lane_bytes_spec buf src 0)
    (loop_0_iteration_10 : i_2 < Vermilion.Seq.len src)
    (assert_1 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len src)) :
    (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len buf_2) := by
  iterate 9 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.inner.assert_2

-- vrml:begin algos.impl__10.xor_lane.inner.assert_3 21247db8d7628a37
/--
Generated VC `algos.impl__10.xor_lane.inner.assert_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:244:17-244:23`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `3`
- Statement hash: `21247db8d7628a37`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf_2 vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 244
  startColumn := 17
  endLine := 244
  endColumn := 23
  assertId := "3"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "assert"
  statementHash := "21247db8d7628a37"
}
@[vrml_obligation] theorem assert_3
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (buf_2 : (Vermilion.Seq Int))
    (i_2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_1 : Vermilion.Seq.len buf = 8)
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len buf_2 = 8)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf_2 vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i_2)
    (loop_0_iteration_7 : i_2 ≤ Vermilion.Seq.len src)
    (loop_0_iteration_8 : Vermilion.Seq.len src ≤ 8)
    (loop_0_iteration_9 : algos.xor_lane_bytes_spec buf_2 src i_2 = algos.xor_lane_bytes_spec buf src 0)
    (loop_0_iteration_10 : i_2 < Vermilion.Seq.len src)
    (assert_1 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len src))
    (assert_2 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len buf_2)) :
    Vermilion.inUnsignedRange 64 (i_2 + 1) := by
  iterate 9 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.inner.assert_3

-- vrml:begin algos.impl__10.xor_lane.inner.invariant_preserve_0_0 c8480667c6075f27
/--
Generated VC `algos.impl__10.xor_lane.inner.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:236:21-236:36`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `c8480667c6075f27`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf_2 vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 236
  startColumn := 21
  endLine := 236
  endColumn := 36
  assertId := "0_0"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "invariant_preserve"
  statementHash := "c8480667c6075f27"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (buf_2 : (Vermilion.Seq Int))
    (i_2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_1 : Vermilion.Seq.len buf = 8)
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len buf_2 = 8)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf_2 vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i_2)
    (loop_0_iteration_7 : i_2 ≤ Vermilion.Seq.len src)
    (loop_0_iteration_8 : Vermilion.Seq.len src ≤ 8)
    (loop_0_iteration_9 : algos.xor_lane_bytes_spec buf_2 src i_2 = algos.xor_lane_bytes_spec buf src 0)
    (loop_0_iteration_10 : i_2 < Vermilion.Seq.len src)
    (assert_1 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len src))
    (assert_2 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len buf_2))
    (assert_3 : Vermilion.inUnsignedRange 64 (i_2 + 1)) :
    ((i_2 + 1) % 18446744073709551616) ≤ Vermilion.Seq.len src := by
  iterate 9 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.inner.invariant_preserve_0_0

-- vrml:begin algos.impl__10.xor_lane.inner.invariant_preserve_0_1 4c4599d64649cddc
/--
Generated VC `algos.impl__10.xor_lane.inner.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:237:21-237:36`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `4c4599d64649cddc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf_2 vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 237
  startColumn := 21
  endLine := 237
  endColumn := 36
  assertId := "0_1"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "invariant_preserve"
  statementHash := "4c4599d64649cddc"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (buf_2 : (Vermilion.Seq Int))
    (i_2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_1 : Vermilion.Seq.len buf = 8)
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len buf_2 = 8)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf_2 vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i_2)
    (loop_0_iteration_7 : i_2 ≤ Vermilion.Seq.len src)
    (loop_0_iteration_8 : Vermilion.Seq.len src ≤ 8)
    (loop_0_iteration_9 : algos.xor_lane_bytes_spec buf_2 src i_2 = algos.xor_lane_bytes_spec buf src 0)
    (loop_0_iteration_10 : i_2 < Vermilion.Seq.len src)
    (assert_1 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len src))
    (assert_2 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len buf_2))
    (assert_3 : Vermilion.inUnsignedRange 64 (i_2 + 1)) :
    Vermilion.Seq.len src ≤ 8 := by
  iterate 9 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.inner.invariant_preserve_0_1

-- vrml:begin algos.impl__10.xor_lane.inner.invariant_preserve_0_2 a907eda0e664409a
/--
Generated VC `algos.impl__10.xor_lane.inner.invariant_preserve_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:238:21-239:67`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `a907eda0e664409a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf_2 vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 238
  startColumn := 21
  endLine := 239
  endColumn := 67
  assertId := "0_2"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "invariant_preserve"
  statementHash := "a907eda0e664409a"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (buf_2 : (Vermilion.Seq Int))
    (i_2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_1 : Vermilion.Seq.len buf = 8)
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len buf_2 = 8)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf_2 vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i_2)
    (loop_0_iteration_7 : i_2 ≤ Vermilion.Seq.len src)
    (loop_0_iteration_8 : Vermilion.Seq.len src ≤ 8)
    (loop_0_iteration_9 : algos.xor_lane_bytes_spec buf_2 src i_2 = algos.xor_lane_bytes_spec buf src 0)
    (loop_0_iteration_10 : i_2 < Vermilion.Seq.len src)
    (assert_1 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len src))
    (assert_2 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len buf_2))
    (assert_3 : Vermilion.inUnsignedRange 64 (i_2 + 1)) :
    algos.xor_lane_bytes_spec (Vermilion.Seq.update buf_2 i_2 (Vermilion.Bits.bxor 8 (Vermilion.Seq.index buf_2 i_2) (Vermilion.Seq.index src i_2))) src ((i_2 + 1) % 18446744073709551616) = algos.xor_lane_bytes_spec buf src 0 := by
  have hmod : (i_2 + 1) % 18446744073709551616 = i_2 + 1 := by
    rw [Int.emod_eq_of_lt] <;> vrml
  have hstep :
      algos.xor_lane_bytes_spec buf_2 src i_2 =
        algos.xor_lane_bytes_spec
          (Vermilion.Seq.update buf_2 i_2
            (Vermilion.Bits.bxor 8 (Vermilion.Seq.index buf_2 i_2)
              (Vermilion.Seq.index src i_2))) src (i_2 + 1) := by
    rw [algos.xor_lane_bytes_spec]
    split <;> simp_all <;> omega
  rw [hmod]
  exact hstep.symm.trans loop_0_iteration_9
-- vrml:end algos.impl__10.xor_lane.inner.invariant_preserve_0_2

-- vrml:begin algos.impl__10.xor_lane.inner.assert_0_decreases e4c0d04e62c3a8b0
/--
Generated VC `algos.impl__10.xor_lane.inner.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:240:27-240:41`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `e4c0d04e62c3a8b0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf_2 vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 240
  startColumn := 27
  endLine := 240
  endColumn := 41
  assertId := "0_decreases"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "assert"
  statementHash := "e4c0d04e62c3a8b0"
}
@[vrml_obligation] theorem assert_0_decreases
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (buf_2 : (Vermilion.Seq Int))
    (i_2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_1 : Vermilion.Seq.len buf = 8)
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len buf_2 = 8)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf_2 vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 i_2)
    (loop_0_iteration_7 : i_2 ≤ Vermilion.Seq.len src)
    (loop_0_iteration_8 : Vermilion.Seq.len src ≤ 8)
    (loop_0_iteration_9 : algos.xor_lane_bytes_spec buf_2 src i_2 = algos.xor_lane_bytes_spec buf src 0)
    (loop_0_iteration_10 : i_2 < Vermilion.Seq.len src)
    (assert_1 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len src))
    (assert_2 : (0 ≤ i_2) ∧ (i_2 < Vermilion.Seq.len buf_2))
    (assert_3 : Vermilion.inUnsignedRange 64 (i_2 + 1)) :
    ((0 ≤ (Vermilion.Seq.len src - ((i_2 + 1) % 18446744073709551616))) ∧ ((Vermilion.Seq.len src - ((i_2 + 1) % 18446744073709551616)) < (Vermilion.Seq.len src - i_2))) ∨ (((Vermilion.Seq.len src - ((i_2 + 1) % 18446744073709551616)) = (Vermilion.Seq.len src - i_2)) ∧ False) := by
  iterate 9 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.inner.assert_0_decreases

-- vrml:begin algos.impl__10.xor_lane.inner.ensures_4 cf6d00e11fb5fdd4
/--
Generated VC `algos.impl__10.xor_lane.inner.ensures_4`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:230:17-230:71`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `cf6d00e11fb5fdd4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf_2 vrml_i0⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 230
  startColumn := 17
  endLine := 230
  endColumn := 71
  assertId := "4"
  functionName := "algos.impl__10.xor_lane.inner"
  kind := "ensures"
  statementHash := "cf6d00e11fb5fdd4"
}
@[vrml_obligation] theorem ensures_4
    (i : Int)
    (buf : (Vermilion.Seq Int))
    (src : (Vermilion.Seq Int))
    (buf_2 : (Vermilion.Seq Int))
    (i_2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 i)
    (requires_1 : Vermilion.Seq.len buf = 8)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (requires_4 : i = 0)
    (requires_5 : Vermilion.Seq.len src ≤ 8)
    (loop_0_exit_0 : Vermilion.Seq.len buf_2 = 8)
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf_2 vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i_2)
    (loop_0_exit_3 : i_2 ≤ Vermilion.Seq.len src)
    (loop_0_exit_4 : Vermilion.Seq.len src ≤ 8)
    (loop_0_exit_5 : algos.xor_lane_bytes_spec buf_2 src i_2 = algos.xor_lane_bytes_spec buf src 0)
    (loop_0_exit_6 : (¬ (i_2 < Vermilion.Seq.len src))) :
    buf_2 = algos.xor_lane_bytes_spec buf src 0 := by
  rw [algos.xor_lane_bytes_spec] at loop_0_exit_5
  split at loop_0_exit_5 <;> simp_all <;> omega
-- vrml:end algos.impl__10.xor_lane.inner.ensures_4

end algos.impl__10.xor_lane.inner

