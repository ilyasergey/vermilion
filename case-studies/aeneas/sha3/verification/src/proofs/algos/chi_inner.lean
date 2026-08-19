import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.chi.inner

-- vrml:begin algos.chi.inner.invariant_entry_0_0 c29984f9d9a05e8d
/--
Generated VC `algos.chi.inner.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:523:21-523:27`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `c29984f9d9a05e8d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 523
  startColumn := 21
  endLine := 523
  endColumn := 27
  assertId := "0_0"
  functionName := "algos.chi.inner"
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
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.invariant_entry_0_0

-- vrml:begin algos.chi.inner.invariant_entry_0_1 b09a58358627b6ae
/--
Generated VC `algos.chi.inner.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:524:21-524:26`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `b09a58358627b6ae`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 524
  startColumn := 21
  endLine := 524
  endColumn := 26
  assertId := "0_1"
  functionName := "algos.chi.inner"
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
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.invariant_entry_0_1

-- vrml:begin algos.chi.inner.invariant_entry_0_2 0bd63f53c6be69fc
/--
Generated VC `algos.chi.inner.invariant_entry_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:525:21-526:70`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `0bd63f53c6be69fc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 525
  startColumn := 21
  endLine := 526
  endColumn := 70
  assertId := "0_2"
  functionName := "algos.chi.inner"
  kind := "invariant_entry"
  statementHash := "0bd63f53c6be69fc"
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
    algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.invariant_entry_0_2

-- vrml:begin algos.chi.inner.assert_0 fe70acdef7b9df94
/--
Generated VC `algos.chi.inner.assert_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:530:26-530:33`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `fe70acdef7b9df94`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 530
  startColumn := 26
  endLine := 530
  endColumn := 33
  assertId := "0"
  functionName := "algos.chi.inner"
  kind := "assert"
  statementHash := "fe70acdef7b9df94"
}
@[vrml_obligation] theorem assert_0
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
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
    (loop_0_iteration_10 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5) :
    Vermilion.inUnsignedRange 64 (x + 1) := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.assert_0

-- vrml:begin algos.chi.inner.assert_1 62b448066926f190
/--
Generated VC `algos.chi.inner.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:530:26-530:37`
- Rust/SST construct: possible division by zero
- AssertId: `1`
- Statement hash: `62b448066926f190`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 530
  startColumn := 26
  endLine := 530
  endColumn := 37
  assertId := "1"
  functionName := "algos.chi.inner"
  kind := "assert"
  statementHash := "62b448066926f190"
}
@[vrml_obligation] theorem assert_1
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
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
    (loop_0_iteration_10 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 1)) :
    5 ≠ 0 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.assert_1

-- vrml:begin algos.chi.inner.assert_2 a257964f11e05463
/--
Generated VC `algos.chi.inner.assert_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:531:26-531:33`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `2`
- Statement hash: `a257964f11e05463`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 531
  startColumn := 26
  endLine := 531
  endColumn := 33
  assertId := "2"
  functionName := "algos.chi.inner"
  kind := "assert"
  statementHash := "a257964f11e05463"
}
@[vrml_obligation] theorem assert_2
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
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
    (loop_0_iteration_10 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_1 : 5 ≠ 0) :
    Vermilion.inUnsignedRange 64 (x + 2) := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.assert_2

-- vrml:begin algos.chi.inner.assert_3 2935b51a5a6aabe7
/--
Generated VC `algos.chi.inner.assert_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:531:26-531:37`
- Rust/SST construct: possible division by zero
- AssertId: `3`
- Statement hash: `2935b51a5a6aabe7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 531
  startColumn := 26
  endLine := 531
  endColumn := 37
  assertId := "3"
  functionName := "algos.chi.inner"
  kind := "assert"
  statementHash := "2935b51a5a6aabe7"
}
@[vrml_obligation] theorem assert_3
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
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
    (loop_0_iteration_10 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 2)) :
    5 ≠ 0 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.assert_3

-- vrml:begin algos.chi.inner.assert_8 73301cc56490cc7b
/--
Generated VC `algos.chi.inner.assert_8`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:533:17-533:23`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `8`
- Statement hash: `73301cc56490cc7b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 533
  startColumn := 17
  endLine := 533
  endColumn := 23
  assertId := "8"
  functionName := "algos.chi.inner"
  kind := "assert"
  statementHash := "73301cc56490cc7b"
}
@[vrml_obligation] theorem assert_8
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__4 : Int)
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
    (loop_0_iteration_10 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 2))
    (assert_3 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (call_index_2_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_index_2_ensures_1 : tmp__3 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (assume_22 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_24 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__4)
    (call_index_mut_ensures_1 : tmp__4 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_28 : tmp__post_2 = Vermilion.Bits.bxor 64 tmp_ (Vermilion.Bits.band 64 (Vermilion.Bits.bxor 64 tmp__2 18446744073709551615) tmp__3)) :
    Vermilion.inUnsignedRange 64 (y + 1) := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.assert_8

-- vrml:begin algos.chi.inner.invariant_preserve_0_0 4bcaaee74219d65b
/--
Generated VC `algos.chi.inner.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:523:21-523:27`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `4bcaaee74219d65b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 523
  startColumn := 21
  endLine := 523
  endColumn := 27
  assertId := "0_0"
  functionName := "algos.chi.inner"
  kind := "invariant_preserve"
  statementHash := "4bcaaee74219d65b"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__4 : Int)
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
    (loop_0_iteration_10 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 2))
    (assert_3 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (call_index_2_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_index_2_ensures_1 : tmp__3 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (assume_22 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_24 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__4)
    (call_index_mut_ensures_1 : tmp__4 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_28 : tmp__post_2 = Vermilion.Bits.bxor 64 tmp_ (Vermilion.Bits.band 64 (Vermilion.Bits.bxor 64 tmp__2 18446744073709551615) tmp__3))
    (assert_8 : Vermilion.inUnsignedRange 64 (y + 1)) :
    ((y + 1) % 18446744073709551616) ≤ 5 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.invariant_preserve_0_0

-- vrml:begin algos.chi.inner.invariant_preserve_0_1 7d786a34af03655a
/--
Generated VC `algos.chi.inner.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:524:21-524:26`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `7d786a34af03655a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 524
  startColumn := 21
  endLine := 524
  endColumn := 26
  assertId := "0_1"
  functionName := "algos.chi.inner"
  kind := "invariant_preserve"
  statementHash := "7d786a34af03655a"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__4 : Int)
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
    (loop_0_iteration_10 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 2))
    (assert_3 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (call_index_2_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_index_2_ensures_1 : tmp__3 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (assume_22 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_24 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__4)
    (call_index_mut_ensures_1 : tmp__4 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_28 : tmp__post_2 = Vermilion.Bits.bxor 64 tmp_ (Vermilion.Bits.band 64 (Vermilion.Bits.bxor 64 tmp__2 18446744073709551615) tmp__3))
    (assert_8 : Vermilion.inUnsignedRange 64 (y + 1)) :
    x < 5 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.invariant_preserve_0_1

-- vrml:begin algos.chi.inner.invariant_preserve_0_2 846b2f1dfb31b64b
/--
Generated VC `algos.chi.inner.invariant_preserve_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:525:21-526:70`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `846b2f1dfb31b64b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 525
  startColumn := 21
  endLine := 526
  endColumn := 70
  assertId := "0_2"
  functionName := "algos.chi.inner"
  kind := "invariant_preserve"
  statementHash := "846b2f1dfb31b64b"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__4 : Int)
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
    (loop_0_iteration_10 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 2))
    (assert_3 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (call_index_2_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_index_2_ensures_1 : tmp__3 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (assume_22 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_24 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__4)
    (call_index_mut_ensures_1 : tmp__4 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_28 : tmp__post_2 = Vermilion.Bits.bxor 64 tmp_ (Vermilion.Bits.band 64 (Vermilion.Bits.bxor 64 tmp__2 18446744073709551615) tmp__3))
    (assert_8 : Vermilion.inUnsignedRange 64 (y + 1)) :
    algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view tmp__post) x ((y + 1) % 18446744073709551616) = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 := by
  rw [← loop_0_iteration_10]
  conv_rhs =>
    rw [algos.chi_inner_spec]
    simp only [if_pos (by omega)]
  simp_all [Vermilion.inUnsignedRange]
  have hx1_clip : (x + 1) % 18446744073709551616 = x + 1 :=
    Int.emod_eq_of_lt (by omega) (by omega)
  have hx2_clip : (x + 2) % 18446744073709551616 = x + 2 :=
    Int.emod_eq_of_lt (by omega) (by omega)
  have hx1_mod_nonneg : 0 ≤ (x + 1) % 5 :=
    Int.emod_nonneg _ (by norm_num)
  have hx1_mod_lt : (x + 1) % 5 < 5 :=
    Int.emod_lt_of_pos _ (by norm_num)
  have hx1_mod_clip : ((x + 1) % 5) % 18446744073709551616 =
      (x + 1) % 5 :=
    Int.emod_eq_of_lt hx1_mod_nonneg (by omega)
  have hx2_mod_nonneg : 0 ≤ (x + 2) % 5 :=
    Int.emod_nonneg _ (by norm_num)
  have hx2_mod_lt : (x + 2) % 5 < 5 :=
    Int.emod_lt_of_pos _ (by norm_num)
  have hx2_mod_clip : ((x + 2) % 5) % 18446744073709551616 =
      (x + 2) % 5 :=
    Int.emod_eq_of_lt hx2_mod_nonneg (by omega)
  have hy1_clip : (y + 1) % 18446744073709551616 = y + 1 :=
    Int.emod_eq_of_lt (by omega) (by omega)
  simp only [hx1_clip, hx2_clip, hx1_mod_clip, hx2_mod_clip, hy1_clip]
-- vrml:end algos.chi.inner.invariant_preserve_0_2

-- vrml:begin algos.chi.inner.assert_0_decreases 6a11b136a10de8ae
/--
Generated VC `algos.chi.inner.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:527:27-527:32`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `6a11b136a10de8ae`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 527
  startColumn := 27
  endLine := 527
  endColumn := 32
  assertId := "0_decreases"
  functionName := "algos.chi.inner"
  kind := "assert"
  statementHash := "6a11b136a10de8ae"
}
@[vrml_obligation] theorem assert_0_decreases
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__4 : Int)
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
    (loop_0_iteration_10 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 2))
    (assert_3 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_1_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (call_index_2_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_index_2_ensures_1 : tmp__3 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + 2) % 18446744073709551616) % 5) % 18446744073709551616) y)))
    (assume_22 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_23 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_24 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__4)
    (call_index_mut_ensures_1 : tmp__4 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_28 : tmp__post_2 = Vermilion.Bits.bxor 64 tmp_ (Vermilion.Bits.band 64 (Vermilion.Bits.bxor 64 tmp__2 18446744073709551615) tmp__3))
    (assert_8 : Vermilion.inUnsignedRange 64 (y + 1)) :
    ((0 ≤ (5 - ((y + 1) % 18446744073709551616))) ∧ ((5 - ((y + 1) % 18446744073709551616)) < (5 - y))) ∨ (((5 - ((y + 1) % 18446744073709551616)) = (5 - y)) ∧ False) := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.inner.assert_0_decreases

-- vrml:begin algos.chi.inner.ensures_9 4dffcc28df67f282
/--
Generated VC `algos.chi.inner.ensures_9`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:516:17-516:74`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `9`
- Statement hash: `4dffcc28df67f282`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def ensures_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 516
  startColumn := 17
  endLine := 516
  endColumn := 74
  assertId := "9"
  functionName := "algos.chi.inner"
  kind := "ensures"
  statementHash := "4dffcc28df67f282"
}
@[vrml_obligation] theorem ensures_9
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
    (loop_0_exit_5 : algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_exit_6 : (¬ (y < 5))) :
    algos.impl__3.view res_2 = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 := by
  rw [← loop_0_exit_5]
  rw [algos.chi_inner_spec]
  simp_all
-- vrml:end algos.chi.inner.ensures_9

end algos.chi.inner

