import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.theta.c

-- vrml:begin algos.theta.c.ensures_5 2fb8e3adebe61399
/--
Generated VC `algos.theta.c.ensures_5`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:326:13-326:49`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `2fb8e3adebe61399`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 326
  startColumn := 13
  endLine := 326
  endColumn := 49
  assertId := "5"
  functionName := "algos.theta.c"
  kind := "ensures"
  statementHash := "2fb8e3adebe61399"
}
@[vrml_obligation] theorem ensures_5
    (a : algos.StateArray)
    (x : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (tmp__4 : Int)
    (tmp__5 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x 0)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x 0)))
    (call_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x 1)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x 1)))
    (call_index_2_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_index_2_ensures_1 : tmp__3 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x 2)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x 2)))
    (call_index_3_ensures_0 : Vermilion.inUnsignedRange 64 tmp__4)
    (call_index_3_ensures_1 : tmp__4 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x 3)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x 3)))
    (call_index_4_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_index_4_ensures_1 : tmp__5 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x 4)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x 4))) :
    Vermilion.Bits.bxor 64 (Vermilion.Bits.bxor 64 (Vermilion.Bits.bxor 64 (Vermilion.Bits.bxor 64 tmp_ tmp__2) tmp__3) tmp__4) tmp__5 = algos.theta_c_spec (algos.impl__3.view a) x := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.c.ensures_5

end algos.theta.c

