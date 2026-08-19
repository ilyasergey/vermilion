import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.pi.inner

-- vrml:begin algos.pi.inner.invariant_entry_0_0 c29984f9d9a05e8d
/--
Generated VC `algos.pi.inner.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:410:21-410:27`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `c29984f9d9a05e8d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 410
  startColumn := 21
  endLine := 410
  endColumn := 27
  assertId := "0_0"
  functionName := "algos.pi.inner"
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
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.invariant_entry_0_0

-- vrml:begin algos.pi.inner.invariant_entry_0_1 b09a58358627b6ae
/--
Generated VC `algos.pi.inner.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:411:21-411:26`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `b09a58358627b6ae`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 411
  startColumn := 21
  endLine := 411
  endColumn := 26
  assertId := "0_1"
  functionName := "algos.pi.inner"
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
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.invariant_entry_0_1

-- vrml:begin algos.pi.inner.invariant_entry_0_2 089ecc4603a6731a
/--
Generated VC `algos.pi.inner.invariant_entry_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:412:21-413:69`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `089ecc4603a6731a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 412
  startColumn := 21
  endLine := 413
  endColumn := 69
  assertId := "0_2"
  functionName := "algos.pi.inner"
  kind := "invariant_entry"
  statementHash := "089ecc4603a6731a"
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
    algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.invariant_entry_0_2

-- vrml:begin algos.pi.inner.assert_0 4e231ae0df7abbb0
/--
Generated VC `algos.pi.inner.assert_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:417:31-417:34`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `4e231ae0df7abbb0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 417
  startColumn := 31
  endLine := 417
  endColumn := 34
  assertId := "0"
  functionName := "algos.pi.inner"
  kind := "assert"
  statementHash := "4e231ae0df7abbb0"
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
    (loop_0_iteration_10 : algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5) :
    Vermilion.inUnsignedRange 64 (3 * y) := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.assert_0

-- vrml:begin algos.pi.inner.assert_1 f0e8a55e2ac8ac23
/--
Generated VC `algos.pi.inner.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:417:26-417:35`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `f0e8a55e2ac8ac23`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 417
  startColumn := 26
  endLine := 417
  endColumn := 35
  assertId := "1"
  functionName := "algos.pi.inner"
  kind := "assert"
  statementHash := "f0e8a55e2ac8ac23"
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
    (loop_0_iteration_10 : algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (3 * y)) :
    Vermilion.inUnsignedRange 64 (x + ((3 * y) % 18446744073709551616)) := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.assert_1

-- vrml:begin algos.pi.inner.assert_2 5f105a2138862bae
/--
Generated VC `algos.pi.inner.assert_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:417:26-417:39`
- Rust/SST construct: possible division by zero
- AssertId: `2`
- Statement hash: `5f105a2138862bae`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 417
  startColumn := 26
  endLine := 417
  endColumn := 39
  assertId := "2"
  functionName := "algos.pi.inner"
  kind := "assert"
  statementHash := "5f105a2138862bae"
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
    (loop_0_iteration_10 : algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_1 : Vermilion.inUnsignedRange 64 (x + ((3 * y) % 18446744073709551616))) :
    5 ≠ 0 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.assert_2

-- vrml:begin algos.pi.inner.assert_5 a8635d3bbfddace1
/--
Generated VC `algos.pi.inner.assert_5`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:420:17-420:23`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `5`
- Statement hash: `a8635d3bbfddace1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 420
  startColumn := 17
  endLine := 420
  endColumn := 23
  assertId := "5"
  functionName := "algos.pi.inner"
  kind := "assert"
  statementHash := "a8635d3bbfddace1"
}
@[vrml_obligation] theorem assert_5
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
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
    (loop_0_iteration_10 : algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_1 : Vermilion.inUnsignedRange 64 (x + ((3 * y) % 18446744073709551616)))
    (assert_2 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = tmp_) :
    Vermilion.inUnsignedRange 64 (y + 1) := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.assert_5

-- vrml:begin algos.pi.inner.invariant_preserve_0_0 ce57adfa12810ef8
/--
Generated VC `algos.pi.inner.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:410:21-410:27`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `ce57adfa12810ef8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 410
  startColumn := 21
  endLine := 410
  endColumn := 27
  assertId := "0_0"
  functionName := "algos.pi.inner"
  kind := "invariant_preserve"
  statementHash := "ce57adfa12810ef8"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
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
    (loop_0_iteration_10 : algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_1 : Vermilion.inUnsignedRange 64 (x + ((3 * y) % 18446744073709551616)))
    (assert_2 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = tmp_)
    (assert_5 : Vermilion.inUnsignedRange 64 (y + 1)) :
    ((y + 1) % 18446744073709551616) ≤ 5 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.invariant_preserve_0_0

-- vrml:begin algos.pi.inner.invariant_preserve_0_1 da3640bff7778e03
/--
Generated VC `algos.pi.inner.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:411:21-411:26`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `da3640bff7778e03`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 411
  startColumn := 21
  endLine := 411
  endColumn := 26
  assertId := "0_1"
  functionName := "algos.pi.inner"
  kind := "invariant_preserve"
  statementHash := "da3640bff7778e03"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
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
    (loop_0_iteration_10 : algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_1 : Vermilion.inUnsignedRange 64 (x + ((3 * y) % 18446744073709551616)))
    (assert_2 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = tmp_)
    (assert_5 : Vermilion.inUnsignedRange 64 (y + 1)) :
    x < 5 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.invariant_preserve_0_1

-- vrml:begin algos.pi.inner.invariant_preserve_0_2 e0853383bb9a2256
/--
Generated VC `algos.pi.inner.invariant_preserve_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:412:21-413:69`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `e0853383bb9a2256`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 412
  startColumn := 21
  endLine := 413
  endColumn := 69
  assertId := "0_2"
  functionName := "algos.pi.inner"
  kind := "invariant_preserve"
  statementHash := "e0853383bb9a2256"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
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
    (loop_0_iteration_10 : algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_1 : Vermilion.inUnsignedRange 64 (x + ((3 * y) % 18446744073709551616)))
    (assert_2 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = tmp_)
    (assert_5 : Vermilion.inUnsignedRange 64 (y + 1)) :
    algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view tmp__post) x ((y + 1) % 18446744073709551616) = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 := by
  rw [← loop_0_iteration_10]
  conv_rhs =>
    rw [algos.pi_inner_spec]
    simp only [if_pos (by omega)]
  simp_all [Vermilion.inUnsignedRange]
  have hxy_clip : (x + 3 * y) % 18446744073709551616 = x + 3 * y :=
    Int.emod_eq_of_lt (by omega) (by omega)
  have hmod_nonneg : 0 ≤ (x + 3 * y) % 5 :=
    Int.emod_nonneg _ (by norm_num)
  have hmod_lt : (x + 3 * y) % 5 < 5 :=
    Int.emod_lt_of_pos _ (by norm_num)
  have hmod_clip : ((x + 3 * y) % 5) % 18446744073709551616 =
      (x + 3 * y) % 5 :=
    Int.emod_eq_of_lt hmod_nonneg (by omega)
  have hy1_clip : (y + 1) % 18446744073709551616 = y + 1 :=
    Int.emod_eq_of_lt (by omega) (by omega)
  simp only [hxy_clip, hmod_clip, hy1_clip]
-- vrml:end algos.pi.inner.invariant_preserve_0_2

-- vrml:begin algos.pi.inner.assert_0_decreases 25b548b9ade569a5
/--
Generated VC `algos.pi.inner.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:414:27-414:32`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `25b548b9ade569a5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 414
  startColumn := 27
  endLine := 414
  endColumn := 32
  assertId := "0_decreases"
  functionName := "algos.pi.inner"
  kind := "assert"
  statementHash := "25b548b9ade569a5"
}
@[vrml_obligation] theorem assert_0_decreases
    (res : algos.StateArray)
    (a : algos.StateArray)
    (x : Int)
    (res_2 : algos.StateArray)
    (y : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
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
    (loop_0_iteration_10 : algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_iteration_11 : y < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_1 : Vermilion.inUnsignedRange 64 (x + ((3 * y) % 18446744073709551616)))
    (assert_2 : 5 ≠ 0)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 ((((x + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616) x)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res_2) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = tmp_)
    (assert_5 : Vermilion.inUnsignedRange 64 (y + 1)) :
    ((0 ≤ (5 - ((y + 1) % 18446744073709551616))) ∧ ((5 - ((y + 1) % 18446744073709551616)) < (5 - y))) ∨ (((5 - ((y + 1) % 18446744073709551616)) = (5 - y)) ∧ False) := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.inner.assert_0_decreases

-- vrml:begin algos.pi.inner.ensures_6 dc7645b2b4f933eb
/--
Generated VC `algos.pi.inner.ensures_6`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:403:17-403:73`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6`
- Statement hash: `dc7645b2b4f933eb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res_2) vrml_i0⟩
-/
def ensures_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 403
  startColumn := 17
  endLine := 403
  endColumn := 73
  assertId := "6"
  functionName := "algos.pi.inner"
  kind := "ensures"
  statementHash := "dc7645b2b4f933eb"
}
@[vrml_obligation] theorem ensures_6
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
    (loop_0_exit_5 : algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res_2) x y = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (loop_0_exit_6 : (¬ (y < 5))) :
    algos.impl__3.view res_2 = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0 := by
  rw [← loop_0_exit_5]
  rw [algos.pi_inner_spec]
  simp_all
-- vrml:end algos.pi.inner.ensures_6

end algos.pi.inner

