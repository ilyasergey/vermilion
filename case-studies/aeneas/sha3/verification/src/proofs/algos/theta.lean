import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.theta

-- vrml:begin algos.theta.invariant_entry_0_0 cd74b8ba70c72680
/--
Generated VC `algos.theta.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:356:13-356:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `cd74b8ba70c72680`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 356
  startColumn := 13
  endLine := 356
  endColumn := 19
  assertId := "0_0"
  functionName := "algos.theta"
  kind := "invariant_entry"
  statementHash := "cd74b8ba70c72680"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (call_default_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (call_default_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (call_default_ensures_2 : algos.impl__3.view tmp_ = algos.zero_state_spec 0) :
    0 ≤ 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.invariant_entry_0_0

-- vrml:begin algos.theta.invariant_entry_0_1 da399db33d867bb1
/--
Generated VC `algos.theta.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:357:13-358:61`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `da399db33d867bb1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 357
  startColumn := 13
  endLine := 358
  endColumn := 61
  assertId := "0_1"
  functionName := "algos.theta"
  kind := "invariant_entry"
  statementHash := "da399db33d867bb1"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (call_default_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (call_default_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (call_default_ensures_2 : algos.impl__3.view tmp_ = algos.zero_state_spec 0) :
    algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view tmp_) 0 = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0 := by
  rw [call_default_ensures_2]
-- vrml:end algos.theta.invariant_entry_0_1

-- vrml:begin algos.theta.call_requires_1_0 12bc33b939cd716e
/--
Generated VC `algos.theta.call_requires_1_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:401:11-401:34`
- Rust/SST construct: call inner
- AssertId: `1_0`
- Statement hash: `12bc33b939cd716e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 401
  startColumn := 11
  endLine := 401
  endColumn := 34
  assertId := "1_0"
  functionName := "algos.theta"
  kind := "call_requires"
  statementHash := "12bc33b939cd716e"
}
@[vrml_obligation] theorem call_requires_1_0
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_7 : x ≤ 5)
    (loop_0_iteration_8 : algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (loop_0_iteration_9 : x < 5)
    (assume_10 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    Vermilion.Seq.len (algos.impl__3.view a) = 25 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.call_requires_1_0

-- vrml:begin algos.theta.call_requires_1_1 b2f1daf8524411a7
/--
Generated VC `algos.theta.call_requires_1_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:401:11-401:34`
- Rust/SST construct: call inner
- AssertId: `1_1`
- Statement hash: `b2f1daf8524411a7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 401
  startColumn := 11
  endLine := 401
  endColumn := 34
  assertId := "1_1"
  functionName := "algos.theta"
  kind := "call_requires"
  statementHash := "b2f1daf8524411a7"
}
@[vrml_obligation] theorem call_requires_1_1
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_7 : x ≤ 5)
    (loop_0_iteration_8 : algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (loop_0_iteration_9 : x < 5)
    (assume_10 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    Vermilion.Seq.len (algos.impl__3.view res) = 25 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.call_requires_1_1

-- vrml:begin algos.theta.call_requires_1_2 7dbd330d84da17b4
/--
Generated VC `algos.theta.call_requires_1_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:401:11-401:34`
- Rust/SST construct: call inner
- AssertId: `1_2`
- Statement hash: `7dbd330d84da17b4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 401
  startColumn := 11
  endLine := 401
  endColumn := 34
  assertId := "1_2"
  functionName := "algos.theta"
  kind := "call_requires"
  statementHash := "7dbd330d84da17b4"
}
@[vrml_obligation] theorem call_requires_1_2
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_7 : x ≤ 5)
    (loop_0_iteration_8 : algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (loop_0_iteration_9 : x < 5)
    (assume_10 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    x < 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.call_requires_1_2

-- vrml:begin algos.theta.assert_2 dc66f55de91ef5e7
/--
Generated VC `algos.theta.assert_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:402:9-402:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `2`
- Statement hash: `dc66f55de91ef5e7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 402
  startColumn := 9
  endLine := 402
  endColumn := 15
  assertId := "2"
  functionName := "algos.theta"
  kind := "assert"
  statementHash := "dc66f55de91ef5e7"
}
@[vrml_obligation] theorem assert_2
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_7 : x ≤ 5)
    (loop_0_iteration_8 : algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (loop_0_iteration_9 : x < 5)
    (assume_10 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0) :
    Vermilion.inUnsignedRange 64 (x + 1) := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.assert_2

-- vrml:begin algos.theta.invariant_preserve_0_0 96d55f00c629c58c
/--
Generated VC `algos.theta.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:356:13-356:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `96d55f00c629c58c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 356
  startColumn := 13
  endLine := 356
  endColumn := 19
  assertId := "0_0"
  functionName := "algos.theta"
  kind := "invariant_preserve"
  statementHash := "96d55f00c629c58c"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_7 : x ≤ 5)
    (loop_0_iteration_8 : algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (loop_0_iteration_9 : x < 5)
    (assume_10 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 1)) :
    ((x + 1) % 18446744073709551616) ≤ 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.invariant_preserve_0_0

-- vrml:begin algos.theta.invariant_preserve_0_1 e8d9e9e0ec3c1932
/--
Generated VC `algos.theta.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:357:13-358:61`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `e8d9e9e0ec3c1932`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 357
  startColumn := 13
  endLine := 358
  endColumn := 61
  assertId := "0_1"
  functionName := "algos.theta"
  kind := "invariant_preserve"
  statementHash := "e8d9e9e0ec3c1932"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_7 : x ≤ 5)
    (loop_0_iteration_8 : algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (loop_0_iteration_9 : x < 5)
    (assume_10 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 1)) :
    algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view tmp__post) ((x + 1) % 18446744073709551616) = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0 := by
  have hx1_clip : (x + 1) % 18446744073709551616 = x + 1 := by
    apply Int.emod_eq_of_lt <;> simp_all [Vermilion.inUnsignedRange] <;> omega
  rw [algos.theta_loop_spec] at loop_0_iteration_8
  simpa [show 0 ≤ 5 - x by omega, loop_0_iteration_7,
    loop_0_iteration_9, hx1_clip, call_inner_ensures_0] using
    loop_0_iteration_8
-- vrml:end algos.theta.invariant_preserve_0_1

-- vrml:begin algos.theta.assert_0_decreases e908a8e92386942f
/--
Generated VC `algos.theta.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:359:19-359:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `e908a8e92386942f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 359
  startColumn := 19
  endLine := 359
  endColumn := 24
  assertId := "0_decreases"
  functionName := "algos.theta"
  kind := "assert"
  statementHash := "e908a8e92386942f"
}
@[vrml_obligation] theorem assert_0_decreases
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_7 : x ≤ 5)
    (loop_0_iteration_8 : algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (loop_0_iteration_9 : x < 5)
    (assume_10 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_11 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 1)) :
    ((0 ≤ (5 - ((x + 1) % 18446744073709551616))) ∧ ((5 - ((x + 1) % 18446744073709551616)) < (5 - x))) ∨ (((5 - ((x + 1) % 18446744073709551616)) = (5 - x)) ∧ False) := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.assert_0_decreases

-- vrml:begin algos.theta.ensures_3 f900130cae36380b
/--
Generated VC `algos.theta.ensures_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:310:9-310:61`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `f900130cae36380b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 310
  startColumn := 9
  endLine := 310
  endColumn := 61
  assertId := "3"
  functionName := "algos.theta"
  kind := "ensures"
  statementHash := "f900130cae36380b"
}
@[vrml_obligation] theorem ensures_3
    (a : algos.StateArray)
    (tmp_ : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (call_default_ensures_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_) = 25)
    (call_default_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp_) vrml_i0))))
    (call_default_ensures_2 : algos.impl__3.view tmp_ = algos.zero_state_spec 0)
    (loop_0_exit_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 x)
    (loop_0_exit_3 : x ≤ 5)
    (loop_0_exit_4 : algos.theta_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0)
    (loop_0_exit_5 : (¬ (x < 5))) :
    algos.impl__3.view res = algos.theta_loop_spec (algos.impl__3.view a) (algos.zero_state_spec 0) 0 := by
  rw [← loop_0_exit_4]
  rw [algos.theta_loop_spec]
  simp_all
-- vrml:end algos.theta.ensures_3

end algos.theta

