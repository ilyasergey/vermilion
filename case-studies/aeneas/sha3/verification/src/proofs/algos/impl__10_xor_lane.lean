import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__10.xor_lane

-- vrml:begin algos.impl__10.xor_lane.call_requires_1_0 ad138201a0724813
/--
Generated VC `algos.impl__10.xor_lane.call_requires_1_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:285:11-285:34`
- Rust/SST construct: call inner
- AssertId: `1_0`
- Statement hash: `ad138201a0724813`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 285
  startColumn := 11
  endLine := 285
  endColumn := 34
  assertId := "1_0"
  functionName := "algos.impl__10.xor_lane"
  kind := "call_requires"
  statementHash := "ad138201a0724813"
}
@[vrml_obligation] theorem call_requires_1_0
    (dst : Int)
    (src : (Vermilion.Seq Int))
    (buf : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 dst)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (requires_2 : Vermilion.Seq.len src ≤ 8)
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len buf = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (call_to_le_bytes_ensures_2 : buf = Vermilion.Vstd.Bytes.u64ToLeBytes dst)
    (assume_6 : Vermilion.Seq.len tmp__post = 8)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    0 = 0 := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.call_requires_1_0

-- vrml:begin algos.impl__10.xor_lane.call_requires_1_1 6a5f7e29626a82dc
/--
Generated VC `algos.impl__10.xor_lane.call_requires_1_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:285:11-285:34`
- Rust/SST construct: call inner
- AssertId: `1_1`
- Statement hash: `6a5f7e29626a82dc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 285
  startColumn := 11
  endLine := 285
  endColumn := 34
  assertId := "1_1"
  functionName := "algos.impl__10.xor_lane"
  kind := "call_requires"
  statementHash := "6a5f7e29626a82dc"
}
@[vrml_obligation] theorem call_requires_1_1
    (dst : Int)
    (src : (Vermilion.Seq Int))
    (buf : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 dst)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (requires_2 : Vermilion.Seq.len src ≤ 8)
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len buf = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (call_to_le_bytes_ensures_2 : buf = Vermilion.Vstd.Bytes.u64ToLeBytes dst)
    (assume_6 : Vermilion.Seq.len tmp__post = 8)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    Vermilion.Seq.len src ≤ 8 := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.call_requires_1_1

-- vrml:begin algos.impl__10.xor_lane.ensures_3 abe48829346e5866
/--
Generated VC `algos.impl__10.xor_lane.ensures_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:259:13-259:58`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `abe48829346e5866`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index src vrml_i0⟩ ⟨Vermilion.Seq.index buf vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 259
  startColumn := 13
  endLine := 259
  endColumn := 58
  assertId := "3"
  functionName := "algos.impl__10.xor_lane"
  kind := "ensures"
  statementHash := "abe48829346e5866"
}
@[vrml_obligation] theorem ensures_3
    (dst : Int)
    (src : (Vermilion.Seq Int))
    (buf : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 dst)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len src)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index src vrml_i0))))
    (requires_2 : Vermilion.Seq.len src ≤ 8)
    (call_to_le_bytes_ensures_0 : Vermilion.Seq.len buf = 8)
    (call_to_le_bytes_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len buf)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index buf vrml_i0))))
    (call_to_le_bytes_ensures_2 : buf = Vermilion.Vstd.Bytes.u64ToLeBytes dst)
    (assume_6 : Vermilion.Seq.len tmp__post = 8)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_inner_ensures_0 : tmp__post = algos.xor_lane_bytes_spec buf src 0)
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Bytes.u64FromLeBytes tmp__post)) :
    Vermilion.Vstd.Bytes.u64FromLeBytes tmp__post = algos.xor_lane_spec dst src := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__10.xor_lane.ensures_3

end algos.impl__10.xor_lane

