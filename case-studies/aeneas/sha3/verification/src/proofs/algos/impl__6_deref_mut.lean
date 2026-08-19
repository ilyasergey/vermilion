import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__6.deref_mut

-- vrml:begin algos.impl__6.deref_mut.ensures_0_0 de6e6925399889fb
/--
Generated VC `algos.impl__6.deref_mut.ensures_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:72:13-72:31`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_0`
- Statement hash: `de6e6925399889fb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def ensures_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 72
  startColumn := 13
  endLine := 72
  endColumn := 31
  assertId := "0_0"
  functionName := "algos.impl__6.deref_mut"
  kind := "ensures"
  statementHash := "de6e6925399889fb"
}
@[vrml_obligation] theorem ensures_0_0
    (self : algos.StateArray)
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (assume_2 : Vermilion.Seq.len tmp__post = 25)
    (assume_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    algos.StateArray.get_StateArray__0 self = algos.impl__3.view self := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__6.deref_mut.ensures_0_0

-- vrml:begin algos.impl__6.deref_mut.ensures_0_1 c7b65eac870bbfff
/--
Generated VC `algos.impl__6.deref_mut.ensures_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:73:13-73:40`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_1`
- Statement hash: `c7b65eac870bbfff`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def ensures_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 73
  startColumn := 13
  endLine := 73
  endColumn := 40
  assertId := "0_1"
  functionName := "algos.impl__6.deref_mut"
  kind := "ensures"
  statementHash := "c7b65eac870bbfff"
}
@[vrml_obligation] theorem ensures_0_1
    (self : algos.StateArray)
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (assume_2 : Vermilion.Seq.len tmp__post = 25)
    (assume_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    algos.impl__3.view (algos.StateArray.StateArray tmp__post) = tmp__post := by
  iterate 11 (try first | (rw [algos.xor_lane_bytes_spec]; try norm_num) | (rw [algos.xor_spec_from]; try norm_num) | (rw [algos.impl__10.copy_to_spec_from]; try norm_num) | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num) | (rw [algos.keccak_p_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.xor_byte_at_spec, algos.xor_lane_spec, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.impl__6.deref_mut.ensures_0_1

end algos.impl__6.deref_mut

