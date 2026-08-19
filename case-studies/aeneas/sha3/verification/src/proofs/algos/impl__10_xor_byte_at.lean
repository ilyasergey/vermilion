import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__10.xor_byte_at

-- vrml:begin algos.impl__10.xor_byte_at.assert_0 ad7f5b3e394c13f1
/--
Generated VC `algos.impl__10.xor_byte_at.assert_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:174:24-174:31`
- Rust/SST construct: possible division by zero
- AssertId: `0`
- Statement hash: `ad7f5b3e394c13f1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 174
  startColumn := 24
  endLine := 174
  endColumn := 31
  assertId := "0"
  functionName := "algos.impl__10.xor_byte_at"
  kind := "assert"
  statementHash := "ad7f5b3e394c13f1"
}
@[vrml_obligation] theorem assert_0
    (self : algos.StateArray)
    (byte : Int)
    (pos : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 8 byte)
    (requires_3 : Vermilion.inUnsignedRange 64 pos)
    (requires_4 : pos < 200) :
    8 ≠ 0 := by
  iterate 8 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_byte_at.assert_0

-- vrml:begin algos.impl__10.xor_byte_at.assert_1 985547fed78b03b6
/--
Generated VC `algos.impl__10.xor_byte_at.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:175:22-175:29`
- Rust/SST construct: possible division by zero
- AssertId: `1`
- Statement hash: `985547fed78b03b6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 175
  startColumn := 22
  endLine := 175
  endColumn := 29
  assertId := "1"
  functionName := "algos.impl__10.xor_byte_at"
  kind := "assert"
  statementHash := "985547fed78b03b6"
}
@[vrml_obligation] theorem assert_1
    (self : algos.StateArray)
    (byte : Int)
    (pos : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 8 byte)
    (requires_3 : Vermilion.inUnsignedRange 64 pos)
    (requires_4 : pos < 200)
    (assert_0 : 8 ≠ 0) :
    8 ≠ 0 := by
  iterate 8 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_byte_at.assert_1

-- vrml:begin algos.impl__10.xor_byte_at.assert_2 7c323b24ed11b674
/--
Generated VC `algos.impl__10.xor_byte_at.assert_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:176:23-176:39`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `2`
- Statement hash: `7c323b24ed11b674`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 176
  startColumn := 23
  endLine := 176
  endColumn := 39
  assertId := "2"
  functionName := "algos.impl__10.xor_byte_at"
  kind := "assert"
  statementHash := "7c323b24ed11b674"
}
@[vrml_obligation] theorem assert_2
    (self : algos.StateArray)
    (byte : Int)
    (pos : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 8 byte)
    (requires_3 : Vermilion.inUnsignedRange 64 pos)
    (requires_4 : pos < 200)
    (assert_0 : 8 ≠ 0)
    (assert_1 : 8 ≠ 0) :
    (0 ≤ ((pos / 8) % 18446744073709551616)) ∧ (((pos / 8) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)) := by
  iterate 8 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_byte_at.assert_2

-- vrml:begin algos.impl__10.xor_byte_at.assert_4 c8a13ba924c64597
/--
Generated VC `algos.impl__10.xor_byte_at.assert_4`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:250:9-250:20`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `4`
- Statement hash: `c8a13ba924c64597`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index buf vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 250
  startColumn := 9
  endLine := 250
  endColumn := 20
  assertId := "4"
  functionName := "algos.impl__10.xor_byte_at"
  kind := "assert"
  statementHash := "c8a13ba924c64597"
}
@[vrml_obligation] theorem assert_4
    (self : algos.StateArray)
    (byte : Int)
    (pos : Int)
    (buf : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 8 byte)
    (requires_3 : Vermilion.inUnsignedRange 64 pos)
    (requires_4 : pos < 200)
    (assert_0 : 8 ≠ 0)
    (assert_1 : 8 ≠ 0)
    (assert_2 : (0 ≤ ((pos / 8) % 18446744073709551616)) ∧ (((pos / 8) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len buf = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (call_to_le_bytes_ensures_2 : buf = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) ((pos / 8) % 18446744073709551616))) :
    (0 ≤ ((pos % 8) % 18446744073709551616)) ∧ (((pos % 8) % 18446744073709551616) < Vermilion.Seq.len buf) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_byte_at.assert_4

-- vrml:begin algos.impl__10.xor_byte_at.assert_6 53e89fe5afef440a
/--
Generated VC `algos.impl__10.xor_byte_at.assert_6`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:251:9-251:25`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `6`
- Statement hash: `53e89fe5afef440a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index buf vrml_i0⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 251
  startColumn := 9
  endLine := 251
  endColumn := 25
  assertId := "6"
  functionName := "algos.impl__10.xor_byte_at"
  kind := "assert"
  statementHash := "53e89fe5afef440a"
}
@[vrml_obligation] theorem assert_6
    (self : algos.StateArray)
    (byte : Int)
    (pos : Int)
    (buf : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 8 byte)
    (requires_3 : Vermilion.inUnsignedRange 64 pos)
    (requires_4 : pos < 200)
    (assert_0 : 8 ≠ 0)
    (assert_1 : 8 ≠ 0)
    (assert_2 : (0 ≤ ((pos / 8) % 18446744073709551616)) ∧ (((pos / 8) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len buf = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (call_to_le_bytes_ensures_2 : buf = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) ((pos / 8) % 18446744073709551616)))
    (assert_4 : (0 ≤ ((pos % 8) % 18446744073709551616)) ∧ (((pos % 8) % 18446744073709551616) < Vermilion.Seq.len buf))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Bytes.u64FromLeBytes (Vermilion.Seq.update buf ((pos % 8) % 18446744073709551616) (Vermilion.Bits.bxor 8 (Vermilion.Seq.index buf ((pos % 8) % 18446744073709551616)) byte)))) :
    (0 ≤ ((pos / 8) % 18446744073709551616)) ∧ (((pos / 8) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)) := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_byte_at.assert_6

-- vrml:begin algos.impl__10.xor_byte_at.ensures_7 cd5b1a9a057f30ee
/--
Generated VC `algos.impl__10.xor_byte_at.ensures_7`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:244:13-244:75`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7`
- Statement hash: `cd5b1a9a057f30ee`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index buf vrml_i0⟩
-/
def ensures_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 244
  startColumn := 13
  endLine := 244
  endColumn := 75
  assertId := "7"
  functionName := "algos.impl__10.xor_byte_at"
  kind := "ensures"
  statementHash := "cd5b1a9a057f30ee"
}
@[vrml_obligation] theorem ensures_7
    (self : algos.StateArray)
    (byte : Int)
    (pos : Int)
    (buf : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 8 byte)
    (requires_3 : Vermilion.inUnsignedRange 64 pos)
    (requires_4 : pos < 200)
    (assert_0 : 8 ≠ 0)
    (assert_1 : 8 ≠ 0)
    (assert_2 : (0 ≤ ((pos / 8) % 18446744073709551616)) ∧ (((pos / 8) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len buf = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (call_to_le_bytes_ensures_2 : buf = Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) ((pos / 8) % 18446744073709551616)))
    (assert_4 : (0 ≤ ((pos % 8) % 18446744073709551616)) ∧ (((pos % 8) % 18446744073709551616) < Vermilion.Seq.len buf))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Bytes.u64FromLeBytes (Vermilion.Seq.update buf ((pos % 8) % 18446744073709551616) (Vermilion.Bits.bxor 8 (Vermilion.Seq.index buf ((pos % 8) % 18446744073709551616)) byte))))
    (assert_6 : (0 ≤ ((pos / 8) % 18446744073709551616)) ∧ (((pos / 8) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) :
    algos.impl__3.view (algos.StateArray.StateArray (Vermilion.Seq.update (algos.StateArray.get_StateArray__0 self) ((pos / 8) % 18446744073709551616) (Vermilion.Vstd.Bytes.u64FromLeBytes (Vermilion.Seq.update buf ((pos % 8) % 18446744073709551616) (Vermilion.Bits.bxor 8 (Vermilion.Seq.index buf ((pos % 8) % 18446744073709551616)) byte))))) = algos.xor_byte_at_spec (algos.impl__3.view self) byte pos := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_byte_at.ensures_7

end algos.impl__10.xor_byte_at

