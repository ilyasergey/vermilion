import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__10.copy_to

-- vrml:begin algos.impl__10.copy_to.invariant_entry_0_0 8b3b1c5aa44f9274
/--
Generated VC `algos.impl__10.copy_to.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:370:17-370:24`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `8b3b1c5aa44f9274`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 370
  startColumn := 17
  endLine := 370
  endColumn := 24
  assertId := "0_0"
  functionName := "algos.impl__10.copy_to"
  kind := "invariant_entry"
  statementHash := "8b3b1c5aa44f9274"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0)))) :
    0 ≤ 25 := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.invariant_entry_0_0

-- vrml:begin algos.impl__10.copy_to.invariant_entry_0_1 4d0c850cbc2a27f7
/--
Generated VC `algos.impl__10.copy_to.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:371:17-371:46`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `4d0c850cbc2a27f7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 371
  startColumn := 17
  endLine := 371
  endColumn := 46
  assertId := "0_1"
  functionName := "algos.impl__10.copy_to"
  kind := "invariant_entry"
  statementHash := "4d0c850cbc2a27f7"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0)))) :
    Vermilion.Seq.len dst = Vermilion.Seq.len dst := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.invariant_entry_0_1

-- vrml:begin algos.impl__10.copy_to.invariant_entry_0_2 10352deb09161713
/--
Generated VC `algos.impl__10.copy_to.invariant_entry_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:372:17-373:74`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `10352deb09161713`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 372
  startColumn := 17
  endLine := 373
  endColumn := 74
  assertId := "0_2"
  functionName := "algos.impl__10.copy_to"
  kind := "invariant_entry"
  statementHash := "10352deb09161713"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0)))) :
    algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0 = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0 := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.invariant_entry_0_2

-- vrml:begin algos.impl__10.copy_to.assert_3 3d1797ed0a51dec5
/--
Generated VC `algos.impl__10.copy_to.assert_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:367:35-367:42`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `3`
- Statement hash: `3d1797ed0a51dec5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 367
  startColumn := 35
  endLine := 367
  endColumn := 42
  assertId := "3"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "3d1797ed0a51dec5"
}
@[vrml_obligation] theorem assert_3
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0) :
    (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_3

-- vrml:begin algos.impl__10.copy_to.assert_4 11379d162456fc5b
/--
Generated VC `algos.impl__10.copy_to.assert_4`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:367:33-367:42`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `4`
- Statement hash: `11379d162456fc5b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 367
  startColumn := 33
  endLine := 367
  endColumn := 42
  assertId := "4"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "11379d162456fc5b"
}
@[vrml_obligation] theorem assert_4
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1)) :
    (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_4

-- vrml:begin algos.impl__10.copy_to.assert_6 af9b0c7c403d841e
/--
Generated VC `algos.impl__10.copy_to.assert_6`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:380:17-380:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `6`
- Statement hash: `af9b0c7c403d841e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 380
  startColumn := 17
  endLine := 380
  endColumn := 20
  assertId := "6"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "af9b0c7c403d841e"
}
@[vrml_obligation] theorem assert_6
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    Vermilion.inUnsignedRange 64 (8 * i) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_6

-- vrml:begin algos.impl__10.copy_to.assert_7 2e975e05af12e420
/--
Generated VC `algos.impl__10.copy_to.assert_7`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:380:24-380:31`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `7`
- Statement hash: `2e975e05af12e420`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 380
  startColumn := 24
  endLine := 380
  endColumn := 31
  assertId := "7"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "2e975e05af12e420"
}
@[vrml_obligation] theorem assert_7
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i)) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_7

-- vrml:begin algos.impl__10.copy_to.assert_8 a4af153f72f6a3c0
/--
Generated VC `algos.impl__10.copy_to.assert_8`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:380:22-380:31`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `8`
- Statement hash: `a4af153f72f6a3c0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 380
  startColumn := 22
  endLine := 380
  endColumn := 31
  assertId := "8"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "a4af153f72f6a3c0"
}
@[vrml_obligation] theorem assert_8
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1)) :
    Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_8

-- vrml:begin algos.impl__10.copy_to.call_requires_9 3097781684e68562
/--
Generated VC `algos.impl__10.copy_to.call_requires_9`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:380:13-380:32`
- Rust/SST construct: call index_mut
- AssertId: `9`
- Statement hash: `3097781684e68562`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 380
  startColumn := 13
  endLine := 380
  endColumn := 32
  assertId := "9"
  functionName := "algos.impl__10.copy_to"
  kind := "call_requires"
  statementHash := "3097781684e68562"
}
@[vrml_obligation] theorem call_requires_9
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0)))) :
    (((8 * i) % 18446744073709551616) ≤ ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) ≤ Vermilion.Seq.len dst_2) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.call_requires_9

-- vrml:begin algos.impl__10.copy_to.assert_10 a2b4bf309b6a2c2c
/--
Generated VC `algos.impl__10.copy_to.assert_10`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:380:50-380:59`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `10`
- Statement hash: `a2b4bf309b6a2c2c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 380
  startColumn := 50
  endLine := 380
  endColumn := 59
  assertId := "10"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "a2b4bf309b6a2c2c"
}
@[vrml_obligation] theorem assert_10
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_index_mut_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_mut_ensures_1 : (tmp_ = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_2) (Vermilion.Seq.subrange dst_2 ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) (Vermilion.Seq.len dst_2)))) :
    (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_10

-- vrml:begin algos.impl__10.copy_to.call_requires_13 8dd9ad924e7c13c5
/--
Generated VC `algos.impl__10.copy_to.call_requires_13`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:380:13-380:79`
- Rust/SST construct: call copy_from_slice
- AssertId: `13`
- Statement hash: `8dd9ad924e7c13c5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def call_requires_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 380
  startColumn := 13
  endLine := 380
  endColumn := 79
  assertId := "13"
  functionName := "algos.impl__10.copy_to"
  kind := "call_requires"
  statementHash := "8dd9ad924e7c13c5"
}
@[vrml_obligation] theorem call_requires_13
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_index_mut_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_mut_ensures_1 : (tmp_ = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_2) (Vermilion.Seq.subrange dst_2 ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) (Vermilion.Seq.len dst_2))))
    (assert_10 : (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len tmp__2 = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_to_le_bytes_ensures_2 : tmp__2 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_index_ensures_1 : tmp__3 = Vermilion.Seq.subrange tmp__2 0 (Vermilion.Seq.len tmp__2)) :
    Vermilion.Seq.len tmp_ = Vermilion.Seq.len tmp__3 := by
  have h_bytes_all := Vermilion.Seq.subrange_all
    (Vermilion.Vstd.Bytes.u64ToLeBytes (self.1.index i))
  vrml_norm
  have h_i_nonneg : 0 ≤ i := by simp_all [algos.impl__3.view]
  have h_i_lt : i < 25 := by simp_all [algos.impl__3.view]
  have h_start_mod : (8 * i) % 18446744073709551616 = 8 * i := by omega
  have h_i1_mod : (i + 1) % 18446744073709551616 = i + 1 := by omega
  have h_end_mod : (8 * (i + 1)) % 18446744073709551616 = 8 * (i + 1) := by omega
  simp only [h_start_mod, h_i1_mod, h_end_mod] at *
  have h_i_view : i < (algos.impl__3.view self).len := by
    simp only [algos.impl__3.view]
    omega
  have h_end_lt : 8 * (i + 1) < dst_2.len := by
    simpa [h_i_view] using branch_0
  have h_end_le : 8 * (i + 1) ≤ dst_2.len := h_end_lt.le
  have h_dst_len := Vermilion.Seq.len_subrange dst_2 (8 * i) (8 * (i + 1))
    (by omega) (by omega) h_end_le
  have h_bytes_len := Vermilion.Seq.len_subrange
    (Vermilion.Vstd.Bytes.u64ToLeBytes (self.1.index i)) 0 8
    (by omega) (by omega) (by simp_all [algos.impl__3.view])
  simp_all [algos.impl__3.view] <;> omega
-- vrml:end algos.impl__10.copy_to.call_requires_13

-- vrml:begin algos.impl__10.copy_to.assert_14 c44f265d15f43ab2
/--
Generated VC `algos.impl__10.copy_to.assert_14`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:383:17-385:87`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `c44f265d15f43ab2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 383
  startColumn := 17
  endLine := 385
  endColumn := 87
  assertId := "14"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "c44f265d15f43ab2"
}
@[vrml_obligation] theorem assert_14
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_index_mut_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_mut_ensures_1 : (tmp_ = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_2) (Vermilion.Seq.subrange dst_2 ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) (Vermilion.Seq.len dst_2))))
    (assert_10 : (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len tmp__2 = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_to_le_bytes_ensures_2 : tmp__2 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_index_ensures_1 : tmp__3 = Vermilion.Seq.subrange tmp__2 0 (Vermilion.Seq.len tmp__2))
    (call_copy_from_slice_ensures_0 : tmp__post_2 = tmp__3) :
    tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 (8 * i)) (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.impl__3.view self) i))) (Vermilion.Seq.subrange dst_2 (8 * (i + 1)) (Vermilion.Seq.len dst_2)) := by
  have h_bytes_all := Vermilion.Seq.subrange_all
    (Vermilion.Vstd.Bytes.u64ToLeBytes (self.1.index i))
  vrml_norm
  have h_i_nonneg : 0 ≤ i := by simp_all [algos.impl__3.view]
  have h_i_lt : i < 25 := by simp_all [algos.impl__3.view]
  have h_start_mod : (8 * i) % 18446744073709551616 = 8 * i := by omega
  have h_i1_mod : (i + 1) % 18446744073709551616 = i + 1 := by omega
  have h_end_mod : (8 * (i + 1)) % 18446744073709551616 = 8 * (i + 1) := by omega
  simp only [h_start_mod, h_i1_mod, h_end_mod] at *
  simp_all [algos.impl__3.view]
-- vrml:end algos.impl__10.copy_to.assert_14

-- vrml:begin algos.impl__10.copy_to.assert_15 6be513d80dcc0554
/--
Generated VC `algos.impl__10.copy_to.assert_15`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:388:17-389:82`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `6be513d80dcc0554`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 388
  startColumn := 17
  endLine := 389
  endColumn := 82
  assertId := "15"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "6be513d80dcc0554"
}
@[vrml_obligation] theorem assert_15
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_index_mut_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_mut_ensures_1 : (tmp_ = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_2) (Vermilion.Seq.subrange dst_2 ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) (Vermilion.Seq.len dst_2))))
    (assert_10 : (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len tmp__2 = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_to_le_bytes_ensures_2 : tmp__2 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_index_ensures_1 : tmp__3 = Vermilion.Seq.subrange tmp__2 0 (Vermilion.Seq.len tmp__2))
    (call_copy_from_slice_ensures_0 : tmp__post_2 = tmp__3)
    (assert_14 : tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 (8 * i)) (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.impl__3.view self) i))) (Vermilion.Seq.subrange dst_2 (8 * (i + 1)) (Vermilion.Seq.len dst_2)))
    (assume_26 : True) :
    algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) tmp__post (i + 1) := by
  vrml_norm
  rw [algos.impl__10.copy_to_spec_from]
  simp_all [algos.impl__3.view] <;> omega
-- vrml:end algos.impl__10.copy_to.assert_15

-- vrml:begin algos.impl__10.copy_to.assert_16 38172f1f6f8c4c59
/--
Generated VC `algos.impl__10.copy_to.assert_16`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:394:13-394:19`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `16`
- Statement hash: `38172f1f6f8c4c59`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 394
  startColumn := 13
  endLine := 394
  endColumn := 19
  assertId := "16"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "38172f1f6f8c4c59"
}
@[vrml_obligation] theorem assert_16
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_index_mut_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_mut_ensures_1 : (tmp_ = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_2) (Vermilion.Seq.subrange dst_2 ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) (Vermilion.Seq.len dst_2))))
    (assert_10 : (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len tmp__2 = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_to_le_bytes_ensures_2 : tmp__2 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_index_ensures_1 : tmp__3 = Vermilion.Seq.subrange tmp__2 0 (Vermilion.Seq.len tmp__2))
    (call_copy_from_slice_ensures_0 : tmp__post_2 = tmp__3)
    (assert_14 : tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 (8 * i)) (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.impl__3.view self) i))) (Vermilion.Seq.subrange dst_2 (8 * (i + 1)) (Vermilion.Seq.len dst_2)))
    (assume_26 : True → (algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) tmp__post (i + 1))) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_16

-- vrml:begin algos.impl__10.copy_to.invariant_preserve_0_0 2cbb67ea4c8f9238
/--
Generated VC `algos.impl__10.copy_to.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:370:17-370:24`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `2cbb67ea4c8f9238`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 370
  startColumn := 17
  endLine := 370
  endColumn := 24
  assertId := "0_0"
  functionName := "algos.impl__10.copy_to"
  kind := "invariant_preserve"
  statementHash := "2cbb67ea4c8f9238"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_index_mut_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_mut_ensures_1 : (tmp_ = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_2) (Vermilion.Seq.subrange dst_2 ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) (Vermilion.Seq.len dst_2))))
    (assert_10 : (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len tmp__2 = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_to_le_bytes_ensures_2 : tmp__2 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_index_ensures_1 : tmp__3 = Vermilion.Seq.subrange tmp__2 0 (Vermilion.Seq.len tmp__2))
    (call_copy_from_slice_ensures_0 : tmp__post_2 = tmp__3)
    (assert_14 : tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 (8 * i)) (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.impl__3.view self) i))) (Vermilion.Seq.subrange dst_2 (8 * (i + 1)) (Vermilion.Seq.len dst_2)))
    (assume_26 : True → (algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) tmp__post (i + 1)))
    (assert_16 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((i + 1) % 18446744073709551616) ≤ 25 := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.invariant_preserve_0_0

-- vrml:begin algos.impl__10.copy_to.invariant_preserve_0_1 5560ca9e6778a221
/--
Generated VC `algos.impl__10.copy_to.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:371:17-371:46`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `5560ca9e6778a221`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 371
  startColumn := 17
  endLine := 371
  endColumn := 46
  assertId := "0_1"
  functionName := "algos.impl__10.copy_to"
  kind := "invariant_preserve"
  statementHash := "5560ca9e6778a221"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_index_mut_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_mut_ensures_1 : (tmp_ = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_2) (Vermilion.Seq.subrange dst_2 ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) (Vermilion.Seq.len dst_2))))
    (assert_10 : (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len tmp__2 = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_to_le_bytes_ensures_2 : tmp__2 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_index_ensures_1 : tmp__3 = Vermilion.Seq.subrange tmp__2 0 (Vermilion.Seq.len tmp__2))
    (call_copy_from_slice_ensures_0 : tmp__post_2 = tmp__3)
    (assert_14 : tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 (8 * i)) (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.impl__3.view self) i))) (Vermilion.Seq.subrange dst_2 (8 * (i + 1)) (Vermilion.Seq.len dst_2)))
    (assume_26 : True → (algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) tmp__post (i + 1)))
    (assert_16 : Vermilion.inUnsignedRange 64 (i + 1)) :
    Vermilion.Seq.len tmp__post = Vermilion.Seq.len dst := by
  have h_bytes_all := Vermilion.Seq.subrange_all
    (Vermilion.Vstd.Bytes.u64ToLeBytes (self.1.index i))
  vrml_norm
  have h_i_nonneg : 0 ≤ i := by simp_all [algos.impl__3.view]
  have h_i_lt : i < 25 := by simp_all [algos.impl__3.view]
  have h_start_mod : (8 * i) % 18446744073709551616 = 8 * i := by omega
  have h_i1_mod : (i + 1) % 18446744073709551616 = i + 1 := by omega
  have h_end_mod : (8 * (i + 1)) % 18446744073709551616 = 8 * (i + 1) := by omega
  simp only [h_start_mod, h_i1_mod, h_end_mod] at *
  have h_i_view : i < (algos.impl__3.view self).len := by
    simp only [algos.impl__3.view]
    omega
  have h_end_lt : 8 * (i + 1) < dst_2.len := by
    simpa [h_i_view] using branch_0
  have h_end_le : 8 * (i + 1) ≤ dst_2.len := h_end_lt.le
  have h_prefix_len := Vermilion.Seq.len_subrange dst_2 0 (8 * i)
    (by omega) (by omega) (by omega)
  have h_suffix_len := Vermilion.Seq.len_subrange dst_2 (8 * (i + 1)) dst_2.len
    (by omega) h_end_le (by omega)
  simp_all [algos.impl__3.view] <;> omega
-- vrml:end algos.impl__10.copy_to.invariant_preserve_0_1

-- vrml:begin algos.impl__10.copy_to.invariant_preserve_0_2 0b69f151186ab787
/--
Generated VC `algos.impl__10.copy_to.invariant_preserve_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:372:17-373:74`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `0b69f151186ab787`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 372
  startColumn := 17
  endLine := 373
  endColumn := 74
  assertId := "0_2"
  functionName := "algos.impl__10.copy_to"
  kind := "invariant_preserve"
  statementHash := "0b69f151186ab787"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_index_mut_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_mut_ensures_1 : (tmp_ = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_2) (Vermilion.Seq.subrange dst_2 ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) (Vermilion.Seq.len dst_2))))
    (assert_10 : (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len tmp__2 = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_to_le_bytes_ensures_2 : tmp__2 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_index_ensures_1 : tmp__3 = Vermilion.Seq.subrange tmp__2 0 (Vermilion.Seq.len tmp__2))
    (call_copy_from_slice_ensures_0 : tmp__post_2 = tmp__3)
    (assert_14 : tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 (8 * i)) (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.impl__3.view self) i))) (Vermilion.Seq.subrange dst_2 (8 * (i + 1)) (Vermilion.Seq.len dst_2)))
    (assume_26 : True → (algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) tmp__post (i + 1)))
    (assert_16 : Vermilion.inUnsignedRange 64 (i + 1)) :
    algos.impl__10.copy_to_spec_from (algos.impl__3.view self) tmp__post ((i + 1) % 18446744073709551616) = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0 := by
  vrml_norm
  have step := assume_26 trivial
  have wrap : (i + 1) % 18446744073709551616 = i + 1 := by omega
  rw [wrap]
  exact step.symm.trans loop_0_iteration_7
-- vrml:end algos.impl__10.copy_to.invariant_preserve_0_2

-- vrml:begin algos.impl__10.copy_to.assert_0_decreases b55d455dcd3fb2ff
/--
Generated VC `algos.impl__10.copy_to.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:374:23-374:29`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `b55d455dcd3fb2ff`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 374
  startColumn := 23
  endLine := 374
  endColumn := 29
  assertId := "0_decreases"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "b55d455dcd3fb2ff"
}
@[vrml_obligation] theorem assert_0_decreases
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (loop_0_iteration_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_5 : i ≤ 25)
    (loop_0_iteration_6 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_iteration_7 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (assert_3 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (assert_4 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (branch_0 : (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False))
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (assert_6 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_7 : Vermilion.inUnsignedRange 64 (i + 1))
    (assert_8 : Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_index_mut_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_index_mut_ensures_1 : (tmp_ = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616)) ∧ (tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_2) (Vermilion.Seq.subrange dst_2 ((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) (Vermilion.Seq.len dst_2))))
    (assert_10 : (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len tmp__2 = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_to_le_bytes_ensures_2 : tmp__2 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i))
    (call_index_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (call_index_ensures_1 : tmp__3 = Vermilion.Seq.subrange tmp__2 0 (Vermilion.Seq.len tmp__2))
    (call_copy_from_slice_ensures_0 : tmp__post_2 = tmp__3)
    (assert_14 : tmp__post = Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 (8 * i)) (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.impl__3.view self) i))) (Vermilion.Seq.subrange dst_2 (8 * (i + 1)) (Vermilion.Seq.len dst_2)))
    (assume_26 : True → (algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) tmp__post (i + 1)))
    (assert_16 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (25 - ((i + 1) % 18446744073709551616))) ∧ ((25 - ((i + 1) % 18446744073709551616)) < (25 - i))) ∨ (((25 - ((i + 1) % 18446744073709551616)) = (25 - i)) ∧ False) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_0_decreases

-- vrml:begin algos.impl__10.copy_to.assert_20 8b438355998a3896
/--
Generated VC `algos.impl__10.copy_to.assert_20`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:396:30-396:33`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `20`
- Statement hash: `8b438355998a3896`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 396
  startColumn := 30
  endLine := 396
  endColumn := 33
  assertId := "20"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "8b438355998a3896"
}
@[vrml_obligation] theorem assert_20
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__4 : Prop)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_exit_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_2 : i ≤ 25)
    (loop_0_exit_3 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_exit_4 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (loop_0_exit_5 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (loop_0_exit_6 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (loop_0_exit_7 : (¬ (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False)))
    (assume_11 : Vermilion.Seq.len (algos.impl__3.view self) = 25)
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (algos.impl__3.view self)))
    (branch_1 : i < Vermilion.Seq.len (algos.impl__3.view self)) :
    Vermilion.inUnsignedRange 64 (8 * i) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_20

-- vrml:begin algos.impl__10.copy_to.assert_23 2f68210f90308efb
/--
Generated VC `algos.impl__10.copy_to.assert_23`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:397:39-397:42`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `23`
- Statement hash: `2f68210f90308efb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 397
  startColumn := 39
  endLine := 397
  endColumn := 42
  assertId := "23"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "2f68210f90308efb"
}
@[vrml_obligation] theorem assert_23
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__4 : Prop)
    (dst_3 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_exit_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_2 : i ≤ 25)
    (loop_0_exit_3 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_exit_4 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (loop_0_exit_5 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (loop_0_exit_6 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (loop_0_exit_7 : (¬ (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False)))
    (assume_11 : Vermilion.Seq.len (algos.impl__3.view self) = 25)
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (algos.impl__3.view self)))
    (then_1_assert_20 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (8 * i))
    (then_1_assume_17 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (then_1_assume_18 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → (tmp__4 ↔ (((8 * i) % 18446744073709551616) < Vermilion.Seq.len dst_2)))
    (else_1_assume_16 : (¬ (i < Vermilion.Seq.len (algos.impl__3.view self))) → (tmp__4 ↔ False))
    (branch_2 : tmp__4)
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2)) :
    Vermilion.inUnsignedRange 64 (8 * i) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_23

-- vrml:begin algos.impl__10.copy_to.assert_24 01215beb8c626389
/--
Generated VC `algos.impl__10.copy_to.assert_24`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:397:27-397:42`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `24`
- Statement hash: `01215beb8c626389`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩
-/
def assert_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 397
  startColumn := 27
  endLine := 397
  endColumn := 42
  assertId := "24"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "01215beb8c626389"
}
@[vrml_obligation] theorem assert_24
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__4 : Prop)
    (dst_3 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_exit_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_2 : i ≤ 25)
    (loop_0_exit_3 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_exit_4 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (loop_0_exit_5 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (loop_0_exit_6 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (loop_0_exit_7 : (¬ (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False)))
    (assume_11 : Vermilion.Seq.len (algos.impl__3.view self) = 25)
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (algos.impl__3.view self)))
    (then_1_assert_20 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (8 * i))
    (then_1_assume_17 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (then_1_assume_18 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → (tmp__4 ↔ (((8 * i) % 18446744073709551616) < Vermilion.Seq.len dst_2)))
    (else_1_assume_16 : (¬ (i < Vermilion.Seq.len (algos.impl__3.view self))) → (tmp__4 ↔ False))
    (branch_2 : tmp__4)
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (assert_23 : Vermilion.inUnsignedRange 64 (8 * i)) :
    Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2 - ((8 * i) % 18446744073709551616)) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_24

-- vrml:begin algos.impl__10.copy_to.assert_25 14e197f92af5bce3
/--
Generated VC `algos.impl__10.copy_to.assert_25`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:398:17-398:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `25`
- Statement hash: `14e197f92af5bce3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩
-/
def assert_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 398
  startColumn := 17
  endLine := 398
  endColumn := 20
  assertId := "25"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "14e197f92af5bce3"
}
@[vrml_obligation] theorem assert_25
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__4 : Prop)
    (dst_3 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_exit_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_2 : i ≤ 25)
    (loop_0_exit_3 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_exit_4 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (loop_0_exit_5 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (loop_0_exit_6 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (loop_0_exit_7 : (¬ (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False)))
    (assume_11 : Vermilion.Seq.len (algos.impl__3.view self) = 25)
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (algos.impl__3.view self)))
    (then_1_assert_20 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (8 * i))
    (then_1_assume_17 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (then_1_assume_18 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → (tmp__4 ↔ (((8 * i) % 18446744073709551616) < Vermilion.Seq.len dst_2)))
    (else_1_assume_16 : (¬ (i < Vermilion.Seq.len (algos.impl__3.view self))) → (tmp__4 ↔ False))
    (branch_2 : tmp__4)
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (assert_23 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2 - ((8 * i) % 18446744073709551616)))
    (assume_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_3 vrml_i0)))) :
    Vermilion.inUnsignedRange 64 (8 * i) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_25

-- vrml:begin algos.impl__10.copy_to.call_requires_26 7ca888161726d117
/--
Generated VC `algos.impl__10.copy_to.call_requires_26`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:398:13-398:23`
- Rust/SST construct: call index_mut
- AssertId: `26`
- Statement hash: `7ca888161726d117`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩
-/
def call_requires_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 398
  startColumn := 13
  endLine := 398
  endColumn := 23
  assertId := "26"
  functionName := "algos.impl__10.copy_to"
  kind := "call_requires"
  statementHash := "7ca888161726d117"
}
@[vrml_obligation] theorem call_requires_26
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__4 : Prop)
    (dst_3 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (tmp__post_4 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_exit_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_2 : i ≤ 25)
    (loop_0_exit_3 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_exit_4 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (loop_0_exit_5 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (loop_0_exit_6 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (loop_0_exit_7 : (¬ (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False)))
    (assume_11 : Vermilion.Seq.len (algos.impl__3.view self) = 25)
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (algos.impl__3.view self)))
    (then_1_assert_20 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (8 * i))
    (then_1_assume_17 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (then_1_assume_18 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → (tmp__4 ↔ (((8 * i) % 18446744073709551616) < Vermilion.Seq.len dst_2)))
    (else_1_assume_16 : (¬ (i < Vermilion.Seq.len (algos.impl__3.view self))) → (tmp__4 ↔ False))
    (branch_2 : tmp__4)
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (assert_23 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2 - ((8 * i) % 18446744073709551616)))
    (assume_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (assert_25 : Vermilion.inUnsignedRange 64 (8 * i))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_4 vrml_i0)))) :
    ((8 * i) % 18446744073709551616) ≤ Vermilion.Seq.len dst_2 := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.call_requires_26

-- vrml:begin algos.impl__10.copy_to.assert_27 fcc08417be184799
/--
Generated VC `algos.impl__10.copy_to.assert_27`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:398:41-398:50`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `27`
- Statement hash: `fcc08417be184799`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩
-/
def assert_27_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 398
  startColumn := 41
  endLine := 398
  endColumn := 50
  assertId := "27"
  functionName := "algos.impl__10.copy_to"
  kind := "assert"
  statementHash := "fcc08417be184799"
}
@[vrml_obligation] theorem assert_27
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__4 : Prop)
    (dst_3 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (tmp__post_4 : (Vermilion.Seq Int))
    (tmp__5 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_exit_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_2 : i ≤ 25)
    (loop_0_exit_3 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_exit_4 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (loop_0_exit_5 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (loop_0_exit_6 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (loop_0_exit_7 : (¬ (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False)))
    (assume_11 : Vermilion.Seq.len (algos.impl__3.view self) = 25)
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (algos.impl__3.view self)))
    (then_1_assert_20 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (8 * i))
    (then_1_assume_17 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (then_1_assume_18 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → (tmp__4 ↔ (((8 * i) % 18446744073709551616) < Vermilion.Seq.len dst_2)))
    (else_1_assume_16 : (¬ (i < Vermilion.Seq.len (algos.impl__3.view self))) → (tmp__4 ↔ False))
    (branch_2 : tmp__4)
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (assert_23 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2 - ((8 * i) % 18446744073709551616)))
    (assume_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (assert_25 : Vermilion.inUnsignedRange 64 (8 * i))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_4 vrml_i0))))
    (call_index_mut_1_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (call_index_mut_1_ensures_1 : (tmp__5 = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) (Vermilion.Seq.len dst_2)) ∧ (tmp__post_3 = Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_4)) :
    (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.copy_to.assert_27

-- vrml:begin algos.impl__10.copy_to.call_requires_30 14c5de21b5f648ea
/--
Generated VC `algos.impl__10.copy_to.call_requires_30`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:398:13-398:77`
- Rust/SST construct: call copy_from_slice
- AssertId: `30`
- Statement hash: `14c5de21b5f648ea`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩
-/
def call_requires_30_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 398
  startColumn := 13
  endLine := 398
  endColumn := 77
  assertId := "30"
  functionName := "algos.impl__10.copy_to"
  kind := "call_requires"
  statementHash := "14c5de21b5f648ea"
}
@[vrml_obligation] theorem call_requires_30
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__4 : Prop)
    (dst_3 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (tmp__post_4 : (Vermilion.Seq Int))
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__7 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_exit_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_2 : i ≤ 25)
    (loop_0_exit_3 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_exit_4 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (loop_0_exit_5 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (loop_0_exit_6 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (loop_0_exit_7 : (¬ (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False)))
    (assume_11 : Vermilion.Seq.len (algos.impl__3.view self) = 25)
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (algos.impl__3.view self)))
    (then_1_assert_20 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (8 * i))
    (then_1_assume_17 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (then_1_assume_18 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → (tmp__4 ↔ (((8 * i) % 18446744073709551616) < Vermilion.Seq.len dst_2)))
    (else_1_assume_16 : (¬ (i < Vermilion.Seq.len (algos.impl__3.view self))) → (tmp__4 ↔ False))
    (branch_2 : tmp__4)
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (assert_23 : Vermilion.inUnsignedRange 64 (8 * i))
    (assert_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2 - ((8 * i) % 18446744073709551616)))
    (assume_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (assert_25 : Vermilion.inUnsignedRange 64 (8 * i))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_4 vrml_i0))))
    (call_index_mut_1_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (call_index_mut_1_ensures_1 : (tmp__5 = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) (Vermilion.Seq.len dst_2)) ∧ (tmp__post_3 = Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_4))
    (assert_27 : (0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_1_ensures_0 : Vermilion.Seq.len tmp__6 = 8)
    (call_to_le_bytes_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (call_to_le_bytes_1_ensures_2 : tmp__6 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i))
    (call_index_1_ensures_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (call_index_1_ensures_1 : tmp__7 = Vermilion.Seq.subrange tmp__6 0 ((Vermilion.Seq.len dst_2 - ((8 * i) % 18446744073709551616)) % 18446744073709551616)) :
    Vermilion.Seq.len tmp__5 = Vermilion.Seq.len tmp__7 := by
  vrml_norm
  have h_i_nonneg : 0 ≤ i := by simp_all [algos.impl__3.view]
  have h_i_lt : i < 25 := by simp_all [algos.impl__3.view]
  have h_start_mod : (8 * i) % 18446744073709551616 = 8 * i := by omega
  have h_i1_mod : (i + 1) % 18446744073709551616 = i + 1 := by omega
  have h_end_mod : (8 * (i + 1)) % 18446744073709551616 = 8 * (i + 1) := by omega
  simp only [h_start_mod, h_i1_mod, h_end_mod] at *
  have h_i_view : i < (algos.impl__3.view self).len := by
    simp only [algos.impl__3.view]
    omega
  have h_start_lt : 8 * i < dst_2.len :=
    (then_1_assume_18 h_i_view).mp branch_2
  have h_remaining_nonneg : 0 ≤ dst_2.len - 8 * i := by omega
  have h_remaining_le : dst_2.len - 8 * i ≤ 8 := by
    have h_no_full : ¬ (8 * (i + 1) < dst_2.len) := by
      simpa [h_i_view] using loop_0_exit_7
    omega
  have h_remaining_mod :
      (dst_2.len - 8 * i) % 18446744073709551616 = dst_2.len - 8 * i := by omega
  simp only [h_remaining_mod] at *
  have h_dst_len := Vermilion.Seq.len_subrange dst_2 (8 * i) dst_2.len
    (by omega) (by omega) (by omega)
  have h_bytes_len := Vermilion.Seq.len_subrange
    (Vermilion.Vstd.Bytes.u64ToLeBytes (self.1.index i)) 0 (dst_2.len - 8 * i)
    (by omega) h_remaining_nonneg (by simp_all [algos.impl__3.view])
  simp_all [algos.impl__3.view] <;> omega
-- vrml:end algos.impl__10.copy_to.call_requires_30

-- vrml:begin algos.impl__10.copy_to.ensures_31 732bf1d00933309e
/--
Generated VC `algos.impl__10.copy_to.ensures_31`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:363:13-363:78`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `31`
- Statement hash: `732bf1d00933309e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index dst vrml_i0⟩ ⟨Vermilion.Seq.index dst_2 vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.impl__3.view self) vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__5 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__6 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__7 vrml_i0⟩ ⟨Vermilion.Seq.index dst_3 vrml_i0⟩
-/
def ensures_31_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 363
  startColumn := 13
  endLine := 363
  endColumn := 78
  assertId := "31"
  functionName := "algos.impl__10.copy_to"
  kind := "ensures"
  statementHash := "732bf1d00933309e"
}
@[vrml_obligation] theorem ensures_31
    (self : algos.StateArray)
    (dst : (Vermilion.Seq Int))
    (dst_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__4 : Prop)
    (dst_3 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (tmp__post_4 : (Vermilion.Seq Int))
    (tmp__5 : (Vermilion.Seq Int))
    (tmp__6 : (Vermilion.Seq Int))
    (tmp__7 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst vrml_i0))))
    (loop_0_exit_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_2)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_2 vrml_i0))))
    (loop_0_exit_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_2 : i ≤ 25)
    (loop_0_exit_3 : Vermilion.Seq.len dst_2 = Vermilion.Seq.len dst)
    (loop_0_exit_4 : algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst_2 i = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0)
    (loop_0_exit_5 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (i + 1))
    (loop_0_exit_6 : (True ∧ (i < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (8 * ((i + 1) % 18446744073709551616)))
    (loop_0_exit_7 : (¬ (Vermilion.iteP (i < Vermilion.Seq.len (algos.impl__3.view self)) (((8 * ((i + 1) % 18446744073709551616)) % 18446744073709551616) < Vermilion.Seq.len dst_2) False)))
    (assume_11 : Vermilion.Seq.len (algos.impl__3.view self) = 25)
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.impl__3.view self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.impl__3.view self) vrml_i0))))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len (algos.impl__3.view self)))
    (then_1_assert_20 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (8 * i))
    (then_1_assume_17 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (then_1_assume_18 : (i < Vermilion.Seq.len (algos.impl__3.view self)) → (tmp__4 ↔ (((8 * i) % 18446744073709551616) < Vermilion.Seq.len dst_2)))
    (else_1_assume_16 : (¬ (i < Vermilion.Seq.len (algos.impl__3.view self))) → (tmp__4 ↔ False))
    (then_2_assume_20 : tmp__4 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2))
    (then_2_assert_23 : tmp__4 → Vermilion.inUnsignedRange 64 (8 * i))
    (then_2_assert_24 : tmp__4 → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len dst_2 - ((8 * i) % 18446744073709551616)))
    (then_2_assume_23 : tmp__4 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (then_2_assert_25 : tmp__4 → Vermilion.inUnsignedRange 64 (8 * i))
    (then_2_assume_25 : tmp__4 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post_4 vrml_i0))))
    (then_2_call_index_mut_1_ensures_0 : tmp__4 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__5)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__5 vrml_i0))))
    (then_2_call_index_mut_1_ensures_1 : tmp__4 → ((tmp__5 = Vermilion.Seq.subrange dst_2 ((8 * i) % 18446744073709551616) (Vermilion.Seq.len dst_2)) ∧ (tmp__post_3 = Vermilion.Seq.add (Vermilion.Seq.subrange dst_2 0 ((8 * i) % 18446744073709551616)) tmp__post_4)))
    (then_2_assert_27 : tmp__4 → ((0 ≤ i) ∧ (i < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))))
    (then_2_call_to_le_bytes_1_ensures_0 : tmp__4 → (Vermilion.Seq.len tmp__6 = 8))
    (then_2_call_to_le_bytes_1_ensures_1 : tmp__4 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__6)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__6 vrml_i0))))
    (then_2_call_to_le_bytes_1_ensures_2 : tmp__4 → (tmp__6 = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) i)))
    (then_2_call_index_1_ensures_0 : tmp__4 → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__7)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__7 vrml_i0))))
    (then_2_call_index_1_ensures_1 : tmp__4 → (tmp__7 = Vermilion.Seq.subrange tmp__6 0 ((Vermilion.Seq.len dst_2 - ((8 * i) % 18446744073709551616)) % 18446744073709551616)))
    (then_2_call_copy_from_slice_1_ensures_0 : tmp__4 → (tmp__post_4 = tmp__7))
    (then_2_assume_35 : tmp__4 → (dst_3 = tmp__post_3))
    (else_2_assume_20 : (¬ tmp__4) → (dst_3 = dst_2))
    (assume_36 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len dst_3)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index dst_3 vrml_i0)))) :
    dst_3 = algos.impl__10.copy_to_spec_from (algos.impl__3.view self) dst 0 := by
  vrml_norm
  have h_i_nonneg : 0 ≤ i := by simp_all [algos.impl__3.view]
  have h_i_le : i ≤ 25 := loop_0_exit_2
  rw [← loop_0_exit_4]
  rw [algos.impl__10.copy_to_spec_from]
  by_cases h_i_lt : i < 25
  · have h_i_view : i < (algos.impl__3.view self).len := by
      simp only [algos.impl__3.view]
      omega
    have h_start_mod : (8 * i) % 18446744073709551616 = 8 * i := by omega
    have h_i1_mod : (i + 1) % 18446744073709551616 = i + 1 := by omega
    have h_end_mod : (8 * (i + 1)) % 18446744073709551616 = 8 * (i + 1) := by omega
    have h_no_full : ¬ (8 * (i + 1) < dst_2.len) := by
      simpa [h_i_view, h_i1_mod, h_end_mod] using loop_0_exit_7
    have h_tmp : tmp__4 ↔ 8 * i < dst_2.len := by
      simpa [h_start_mod] using then_1_assume_18 h_i_view
    by_cases h_partial : 8 * i < dst_2.len
    · have h_tmp_true : tmp__4 := h_tmp.mpr h_partial
      have h_dst_bound : dst_2.len < 18446744073709551616 := by
        simpa using then_1_assume_17 h_i_view
      have h_remaining_mod :
          (dst_2.len - 8 * i) % 18446744073709551616 = dst_2.len - 8 * i := by omega
      simp only [h_start_mod, h_i1_mod, h_end_mod, h_remaining_mod] at *
      simp [h_i_lt, h_i_le, h_no_full, h_partial]
      simp_all [algos.impl__3.view]
    · have h_tmp_false : ¬ tmp__4 := fun h => h_partial (h_tmp.mp h)
      simp [h_i_lt, h_i_le, h_no_full, h_partial]
      exact else_2_assume_20 h_tmp_false
  · have h_not_view : ¬ (i < (algos.impl__3.view self).len) := by
      simp only [algos.impl__3.view]
      omega
    have h_tmp_false : ¬ tmp__4 := by
      intro h
      exact (else_1_assume_16 h_not_view).mp h
    simp [h_i_lt, h_i_le]
    exact else_2_assume_20 h_tmp_false
-- vrml:end algos.impl__10.copy_to.ensures_31

end algos.impl__10.copy_to

