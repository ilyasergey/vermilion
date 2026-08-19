import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.theta.inner

-- vrml:begin algos.theta.inner.invariant_entry_0_0 c29984f9d9a05e8d
/--
Generated VC `algos.theta.inner.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:376:21-376:27`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `c29984f9d9a05e8d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 376
  startColumn := 21
  endLine := 376
  endColumn := 27
  assertId := "0_0"
  functionName := "algos.theta.inner"
  kind := "invariant_entry"
  statementHash := "c29984f9d9a05e8d"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 x)
    (requires_5 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_6 : Vermilion.Seq.len (algos.impl__3.view res) = 25)
    (requires_7 : x < 5) :
    0 ≤ 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.invariant_entry_0_0

-- vrml:begin algos.theta.inner.invariant_entry_0_1 b09a58358627b6ae
/--
Generated VC `algos.theta.inner.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:377:21-377:26`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `b09a58358627b6ae`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 377
  startColumn := 21
  endLine := 377
  endColumn := 26
  assertId := "0_1"
  functionName := "algos.theta.inner"
  kind := "invariant_entry"
  statementHash := "b09a58358627b6ae"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 x)
    (requires_5 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_6 : Vermilion.Seq.len (algos.impl__3.view res) = 25)
    (requires_7 : x < 5) :
    x < 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.invariant_entry_0_1

-- vrml:begin algos.theta.inner.invariant_entry_0_2 f0853ed3848d954c
/--
Generated VC `algos.theta.inner.invariant_entry_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:378:21-379:72`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `f0853ed3848d954c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 378
  startColumn := 21
  endLine := 379
  endColumn := 72
  assertId := "0_2"
  functionName := "algos.theta.inner"
  kind := "invariant_entry"
  statementHash := "f0853ed3848d954c"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 x)
    (requires_5 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_6 : Vermilion.Seq.len (algos.impl__3.view res) = 25)
    (requires_7 : x < 5) :
    algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.invariant_entry_0_2

-- vrml:begin algos.theta.inner.call_requires_0_0 50235e5fa8866776
/--
Generated VC `algos.theta.inner.call_requires_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:398:19-398:38`
- Rust/SST construct: call inner
- AssertId: `0_0`
- Statement hash: `50235e5fa8866776`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 398
  startColumn := 19
  endLine := 398
  endColumn := 38
  assertId := "0_0"
  functionName := "algos.theta.inner"
  kind := "call_requires"
  statementHash := "50235e5fa8866776"
}
@[vrml_obligation] theorem call_requires_0_0
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_8 : y ≤ 5)
    (loop_0_iteration_9 : x < 5)
    (loop_0_iteration_10 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assume_12 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    Vermilion.Seq.len (algos.impl__3.view a) = 25 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.call_requires_0_0

-- vrml:begin algos.theta.inner.call_requires_0_1 eb92be804d01c226
/--
Generated VC `algos.theta.inner.call_requires_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:398:19-398:38`
- Rust/SST construct: call inner
- AssertId: `0_1`
- Statement hash: `eb92be804d01c226`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 398
  startColumn := 19
  endLine := 398
  endColumn := 38
  assertId := "0_1"
  functionName := "algos.theta.inner"
  kind := "call_requires"
  statementHash := "eb92be804d01c226"
}
@[vrml_obligation] theorem call_requires_0_1
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_8 : y ≤ 5)
    (loop_0_iteration_9 : x < 5)
    (loop_0_iteration_10 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assume_12 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    Vermilion.Seq.len (algos.impl__3.view res_2) = 25 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.call_requires_0_1

-- vrml:begin algos.theta.inner.call_requires_0_2 5596ed1eb816a22c
/--
Generated VC `algos.theta.inner.call_requires_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:398:19-398:38`
- Rust/SST construct: call inner
- AssertId: `0_2`
- Statement hash: `5596ed1eb816a22c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 398
  startColumn := 19
  endLine := 398
  endColumn := 38
  assertId := "0_2"
  functionName := "algos.theta.inner"
  kind := "call_requires"
  statementHash := "5596ed1eb816a22c"
}
@[vrml_obligation] theorem call_requires_0_2
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_8 : y ≤ 5)
    (loop_0_iteration_9 : x < 5)
    (loop_0_iteration_10 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assume_12 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    x < 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.call_requires_0_2

-- vrml:begin algos.theta.inner.call_requires_0_3 ff3379e035d7ac5f
/--
Generated VC `algos.theta.inner.call_requires_0_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:398:19-398:38`
- Rust/SST construct: call inner
- AssertId: `0_3`
- Statement hash: `ff3379e035d7ac5f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 398
  startColumn := 19
  endLine := 398
  endColumn := 38
  assertId := "0_3"
  functionName := "algos.theta.inner"
  kind := "call_requires"
  statementHash := "ff3379e035d7ac5f"
}
@[vrml_obligation] theorem call_requires_0_3
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_8 : y ≤ 5)
    (loop_0_iteration_9 : x < 5)
    (loop_0_iteration_10 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assume_12 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    y < 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.call_requires_0_3

-- vrml:begin algos.theta.inner.assert_1 bc7b5d7d02d3e909
/--
Generated VC `algos.theta.inner.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:399:17-399:23`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `bc7b5d7d02d3e909`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 399
  startColumn := 17
  endLine := 399
  endColumn := 23
  assertId := "1"
  functionName := "algos.theta.inner"
  kind := "assert"
  statementHash := "bc7b5d7d02d3e909"
}
@[vrml_obligation] theorem assert_1
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_8 : y ≤ 5)
    (loop_0_iteration_9 : x < 5)
    (loop_0_iteration_10 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assume_12 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * y) + x) (Vermilion.Bits.bxor 64 (Vermilion.Seq.index (algos.impl__3.view a) ((5 * y) + x)) (algos.theta_d_spec (algos.impl__3.view a) x))) :
    Vermilion.inUnsignedRange 64 (y + 1) := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.assert_1

-- vrml:begin algos.theta.inner.invariant_preserve_0_0 9e4fd70c8f7aa414
/--
Generated VC `algos.theta.inner.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:376:21-376:27`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `9e4fd70c8f7aa414`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 376
  startColumn := 21
  endLine := 376
  endColumn := 27
  assertId := "0_0"
  functionName := "algos.theta.inner"
  kind := "invariant_preserve"
  statementHash := "9e4fd70c8f7aa414"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_8 : y ≤ 5)
    (loop_0_iteration_9 : x < 5)
    (loop_0_iteration_10 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assume_12 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * y) + x) (Vermilion.Bits.bxor 64 (Vermilion.Seq.index (algos.impl__3.view a) ((5 * y) + x)) (algos.theta_d_spec (algos.impl__3.view a) x)))
    (assert_1 : Vermilion.inUnsignedRange 64 (y + 1)) :
    ((y + 1) % 18446744073709551616) ≤ 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.invariant_preserve_0_0

-- vrml:begin algos.theta.inner.invariant_preserve_0_1 db9e9c00d7b0b4bf
/--
Generated VC `algos.theta.inner.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:377:21-377:26`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `db9e9c00d7b0b4bf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 377
  startColumn := 21
  endLine := 377
  endColumn := 26
  assertId := "0_1"
  functionName := "algos.theta.inner"
  kind := "invariant_preserve"
  statementHash := "db9e9c00d7b0b4bf"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_8 : y ≤ 5)
    (loop_0_iteration_9 : x < 5)
    (loop_0_iteration_10 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assume_12 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * y) + x) (Vermilion.Bits.bxor 64 (Vermilion.Seq.index (algos.impl__3.view a) ((5 * y) + x)) (algos.theta_d_spec (algos.impl__3.view a) x)))
    (assert_1 : Vermilion.inUnsignedRange 64 (y + 1)) :
    x < 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.invariant_preserve_0_1

-- vrml:begin algos.theta.inner.invariant_preserve_0_2 ebe332ddec3862c0
/--
Generated VC `algos.theta.inner.invariant_preserve_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:378:21-379:72`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `ebe332ddec3862c0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 378
  startColumn := 21
  endLine := 379
  endColumn := 72
  assertId := "0_2"
  functionName := "algos.theta.inner"
  kind := "invariant_preserve"
  statementHash := "ebe332ddec3862c0"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_8 : y ≤ 5)
    (loop_0_iteration_9 : x < 5)
    (loop_0_iteration_10 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assume_12 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * y) + x) (Vermilion.Bits.bxor 64 (Vermilion.Seq.index (algos.impl__3.view a) ((5 * y) + x)) (algos.theta_d_spec (algos.impl__3.view a) x)))
    (assert_1 : Vermilion.inUnsignedRange 64 (y + 1)) :
    algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view tmp__post) x ((y + 1) % 18446744073709551616) = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 := by
  rw [← loop_0_iteration_10]
  conv_rhs =>
    rw [algos.theta_inner_spec]
    simp only [if_pos (by omega)]
  simp_all [Vermilion.inUnsignedRange]
  have hy1_clip : (y + 1) % 18446744073709551616 = y + 1 :=
    Int.emod_eq_of_lt (by omega) (by omega)
  simp only [hy1_clip]
-- vrml:end algos.theta.inner.invariant_preserve_0_2

-- vrml:begin algos.theta.inner.assert_0_decreases 65e4ca979ae437b1
/--
Generated VC `algos.theta.inner.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:380:27-380:32`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `65e4ca979ae437b1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 380
  startColumn := 27
  endLine := 380
  endColumn := 32
  assertId := "0_decreases"
  functionName := "algos.theta.inner"
  kind := "assert"
  statementHash := "65e4ca979ae437b1"
}
@[vrml_obligation] theorem assert_0_decreases
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_iteration_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_8 : y ≤ 5)
    (loop_0_iteration_9 : x < 5)
    (loop_0_iteration_10 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assume_12 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_13 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * y) + x) (Vermilion.Bits.bxor 64 (Vermilion.Seq.index (algos.impl__3.view a) ((5 * y) + x)) (algos.theta_d_spec (algos.impl__3.view a) x)))
    (assert_1 : Vermilion.inUnsignedRange 64 (y + 1)) :
    ((0 ≤ (5 - ((y + 1) % 18446744073709551616))) ∧ ((5 - ((y + 1) % 18446744073709551616)) < (5 - y))) ∨ (((5 - ((y + 1) % 18446744073709551616)) = (5 - y)) ∧ False) := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.inner.assert_0_decreases

-- vrml:begin algos.theta.inner.ensures_2 c247f411f59455ec
/--
Generated VC `algos.theta.inner.ensures_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:369:17-369:76`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `c247f411f59455ec`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 369
  startColumn := 17
  endLine := 369
  endColumn := 76
  assertId := "2"
  functionName := "algos.theta.inner"
  kind := "ensures"
  statementHash := "c247f411f59455ec"
}
@[vrml_obligation] theorem ensures_2
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 x)
    (requires_5 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_6 : Vermilion.Seq.len (algos.impl__3.view res) = 25)
    (requires_7 : x < 5)
    (loop_0_exit_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2) = 25)
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 y)
    (loop_0_exit_3 : y ≤ 5)
    (loop_0_exit_4 : x < 5)
    (loop_0_exit_5 : algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_exit_6 : (¬ (y < 5))) :
    algos.impl__3.view res_2 = algos.theta_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 := by
  rw [← loop_0_exit_5]
  rw [algos.theta_inner_spec]
  simp_all
-- vrml:end algos.theta.inner.ensures_2

end algos.theta.inner

