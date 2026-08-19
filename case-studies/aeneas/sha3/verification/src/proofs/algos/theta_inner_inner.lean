import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.theta.inner.inner

-- vrml:begin algos.theta.inner.inner.call_requires_1_0 61fc5f0844053bde
/--
Generated VC `algos.theta.inner.inner.call_requires_1_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:397:45-397:52`
- Rust/SST construct: call d
- AssertId: `1_0`
- Statement hash: `61fc5f0844053bde`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 397
  startColumn := 45
  endLine := 397
  endColumn := 52
  assertId := "1_0"
  functionName := "algos.theta.inner.inner"
  kind := "call_requires"
  statementHash := "61fc5f0844053bde"
}
@[vrml_obligation] theorem call_requires_1_0
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (y : Int)
    (tmp_ : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 x)
    (requires_5 : Vermilion.inUnsignedRange 64 y)
    (requires_6 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_7 : Vermilion.Seq.len (algos.impl__3.view res) = 25)
    (requires_8 : x < 5)
    (requires_9 : y < 5)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y))) :
    Vermilion.Seq.len (algos.impl__3.view a) = 25 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.inner.call_requires_1_0

-- vrml:begin algos.theta.inner.inner.call_requires_1_1 edb383e6a1ffcc84
/--
Generated VC `algos.theta.inner.inner.call_requires_1_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:397:45-397:52`
- Rust/SST construct: call d
- AssertId: `1_1`
- Statement hash: `edb383e6a1ffcc84`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 397
  startColumn := 45
  endLine := 397
  endColumn := 52
  assertId := "1_1"
  functionName := "algos.theta.inner.inner"
  kind := "call_requires"
  statementHash := "edb383e6a1ffcc84"
}
@[vrml_obligation] theorem call_requires_1_1
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (y : Int)
    (tmp_ : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 x)
    (requires_5 : Vermilion.inUnsignedRange 64 y)
    (requires_6 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_7 : Vermilion.Seq.len (algos.impl__3.view res) = 25)
    (requires_8 : x < 5)
    (requires_9 : y < 5)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y))) :
    x < 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.inner.call_requires_1_1

-- vrml:begin algos.theta.inner.inner.ensures_3 2a2a7d6b3151ffcd
/--
Generated VC `algos.theta.inner.inner.ensures_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:391:25-394:26`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `2a2a7d6b3151ffcd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 391
  startColumn := 25
  endLine := 394
  endColumn := 26
  assertId := "3"
  functionName := "algos.theta.inner.inner"
  kind := "ensures"
  statementHash := "2a2a7d6b3151ffcd"
}
@[vrml_obligation] theorem ensures_3
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (y : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__3 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 x)
    (requires_5 : Vermilion.inUnsignedRange 64 y)
    (requires_6 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_7 : Vermilion.Seq.len (algos.impl__3.view res) = 25)
    (requires_8 : x < 5)
    (requires_9 : y < 5)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_d_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_d_ensures_1 : tmp__2 = algos.theta_d_spec (algos.impl__3.view a) x)
    (assume_14 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_15 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_16 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_index_mut_ensures_1 : tmp__3 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_20 : tmp__post_2 = Vermilion.Bits.bxor 64 tmp_ tmp__2) :
    algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * y) + x) (Vermilion.Bits.bxor 64 (Vermilion.Seq.index (algos.impl__3.view a) ((5 * y) + x)) (algos.theta_d_spec (algos.impl__3.view a) x)) := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.inner.ensures_3

end algos.theta.inner.inner

