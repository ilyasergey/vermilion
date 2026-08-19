import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.round

-- vrml:begin algos.round.call_requires_4 710f50347456d39b
/--
Generated VC `algos.round.call_requires_4`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:762:10-762:22`
- Rust/SST construct: call iota
- AssertId: `4`
- Statement hash: `710f50347456d39b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_3) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_4) vrml_i0⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 762
  startColumn := 10
  endLine := 762
  endColumn := 22
  assertId := "4"
  functionName := "algos.round"
  kind := "call_requires"
  statementHash := "710f50347456d39b"
}
@[vrml_obligation] theorem call_requires_4
    (a : algos.StateArray)
    (ir : Int)
    (a1 : algos.StateArray)
    (a1_2 : algos.StateArray)
    (a1_3 : algos.StateArray)
    (a1_4 : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 ir)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : ir < 24)
    (call_theta_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1) = 25)
    (call_theta_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1) vrml_i0))))
    (call_theta_ensures_2 : algos.impl__3.view a1 = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (call_rho_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_2) = 25)
    (call_rho_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_2) vrml_i0))))
    (call_rho_ensures_2 : algos.impl__3.view a1_2 = algos.rho_loop_spec (algos.impl__3.view a1) (algos.impl__3.view a1) 0 1 0)
    (call_pi_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_3) = 25)
    (call_pi_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_3))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_3) vrml_i0))))
    (call_pi_ensures_2 : algos.impl__3.view a1_3 = algos.pi_loop_spec (algos.impl__3.view a1_2) (algos.impl__3.view a1_2) 0)
    (call_chi_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_4) = 25)
    (call_chi_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_4))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_4) vrml_i0))))
    (call_chi_ensures_2 : algos.impl__3.view a1_4 = algos.chi_loop_spec (algos.impl__3.view a1_3) (algos.impl__3.view a1_3) 0) :
    ir < 24 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.round.call_requires_4

-- vrml:begin algos.round.ensures_5 0964db605b5ffda5
/--
Generated VC `algos.round.ensures_5`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:754:9-754:52`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `0964db605b5ffda5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_3) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_4) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 754
  startColumn := 9
  endLine := 754
  endColumn := 52
  assertId := "5"
  functionName := "algos.round"
  kind := "ensures"
  statementHash := "0964db605b5ffda5"
}
@[vrml_obligation] theorem ensures_5
    (a : algos.StateArray)
    (ir : Int)
    (a1 : algos.StateArray)
    (a1_2 : algos.StateArray)
    (a1_3 : algos.StateArray)
    (a1_4 : algos.StateArray)
    (tmp_ : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 ir)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : ir < 24)
    (call_theta_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1) = 25)
    (call_theta_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1) vrml_i0))))
    (call_theta_ensures_2 : algos.impl__3.view a1 = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (call_rho_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_2) = 25)
    (call_rho_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_2) vrml_i0))))
    (call_rho_ensures_2 : algos.impl__3.view a1_2 = algos.rho_loop_spec (algos.impl__3.view a1) (algos.impl__3.view a1) 0 1 0)
    (call_pi_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_3) = 25)
    (call_pi_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_3))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_3) vrml_i0))))
    (call_pi_ensures_2 : algos.impl__3.view a1_3 = algos.pi_loop_spec (algos.impl__3.view a1_2) (algos.impl__3.view a1_2) 0)
    (call_chi_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_4) = 25)
    (call_chi_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a1_4))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a1_4) vrml_i0))))
    (call_chi_ensures_2 : algos.impl__3.view a1_4 = algos.chi_loop_spec (algos.impl__3.view a1_3) (algos.impl__3.view a1_3) 0)
    (call_iota_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (call_iota_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (call_iota_ensures_2 : algos.impl__3.view tmp_ = Vermilion.Seq.update (algos.impl__3.view a1_4) 0 (Vermilion.Bits.bxor 64 (Vermilion.Seq.index (algos.impl__3.view a1_4) 0) (Vermilion.Seq.index algos.IOTA_RC ir))) :
    algos.impl__3.view tmp_ = algos.round_spec (algos.impl__3.view a) ir := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC, algos.round_spec]
-- vrml:end algos.round.ensures_5

end algos.round

