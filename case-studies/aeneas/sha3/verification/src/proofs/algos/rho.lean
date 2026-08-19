import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.rho

-- vrml:begin algos.rho.invariant_entry_0_0 5097c84a25be45cd
/--
Generated VC `algos.rho.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:303:13-303:18`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `5097c84a25be45cd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 303
  startColumn := 13
  endLine := 303
  endColumn := 18
  assertId := "0_0"
  functionName := "algos.rho"
  kind := "invariant_entry"
  statementHash := "5097c84a25be45cd"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (a : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0)))) :
    vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 1 0) < 5 := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.invariant_entry_0_0

-- vrml:begin algos.rho.invariant_entry_0_1 da100e493755bd02
/--
Generated VC `algos.rho.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:304:13-304:18`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `da100e493755bd02`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 304
  startColumn := 13
  endLine := 304
  endColumn := 18
  assertId := "0_1"
  functionName := "algos.rho"
  kind := "invariant_entry"
  statementHash := "da100e493755bd02"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (a : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0)))) :
    vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 1 0) < 5 := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.invariant_entry_0_1

-- vrml:begin algos.rho.invariant_entry_0_2 8d0f07d6ab73a300
/--
Generated VC `algos.rho.invariant_entry_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:305:13-305:20`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `8d0f07d6ab73a300`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 305
  startColumn := 13
  endLine := 305
  endColumn := 20
  assertId := "0_2"
  functionName := "algos.rho"
  kind := "invariant_entry"
  statementHash := "8d0f07d6ab73a300"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (a : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0)))) :
    0 ≤ 24 := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.invariant_entry_0_2

-- vrml:begin algos.rho.invariant_entry_0_3 34ccb737df60d638
/--
Generated VC `algos.rho.invariant_entry_0_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:306:13-307:50`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `34ccb737df60d638`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 306
  startColumn := 13
  endLine := 307
  endColumn := 50
  assertId := "0_3"
  functionName := "algos.rho"
  kind := "invariant_entry"
  statementHash := "34ccb737df60d638"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (a : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0)))) :
    algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 (vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 1 0)) (vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 1 0)) = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0 := by
  rfl
-- vrml:end algos.rho.invariant_entry_0_3

-- vrml:begin algos.rho.assert_1 da33423723b73af2
/--
Generated VC `algos.rho.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:311:43-311:57`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `1`
- Statement hash: `da33423723b73af2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 311
  startColumn := 43
  endLine := 311
  endColumn := 57
  assertId := "1"
  functionName := "algos.rho"
  kind := "assert"
  statementHash := "da33423723b73af2"
}
@[vrml_obligation] theorem assert_1
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y))) :
    (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS) := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.assert_1

-- vrml:begin algos.rho.assert_2 8672b273b5d67995
/--
Generated VC `algos.rho.assert_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:311:43-311:60`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `2`
- Statement hash: `8672b273b5d67995`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 311
  startColumn := 43
  endLine := 311
  endColumn := 60
  assertId := "2"
  functionName := "algos.rho"
  kind := "assert"
  statementHash := "8672b273b5d67995"
}
@[vrml_obligation] theorem assert_2
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS)) :
    (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)) := by
  rcases assert_1 with ⟨hx0, hx5⟩
  have hy0 : 0 ≤ y := by
    simpa [Vermilion.inUnsignedRange] using loop_0_iteration_5 |>.1
  interval_cases x <;> simp [algos.RHO_OFFSETS] <;> omega
-- vrml:end algos.rho.assert_2

-- vrml:begin algos.rho.assert_5 3f81996bfedcaafe
/--
Generated VC `algos.rho.assert_5`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:312:23-312:26`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `5`
- Statement hash: `3f81996bfedcaafe`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 312
  startColumn := 23
  endLine := 312
  endColumn := 26
  assertId := "5"
  functionName := "algos.rho"
  kind := "assert"
  statementHash := "3f81996bfedcaafe"
}
@[vrml_obligation] theorem assert_5
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)) :
    Vermilion.inUnsignedRange 64 (2 * x) := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.assert_5

-- vrml:begin algos.rho.assert_6 af734ddefab27dc4
/--
Generated VC `algos.rho.assert_6`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:312:29-312:32`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `6`
- Statement hash: `af734ddefab27dc4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 312
  startColumn := 29
  endLine := 312
  endColumn := 32
  assertId := "6"
  functionName := "algos.rho"
  kind := "assert"
  statementHash := "af734ddefab27dc4"
}
@[vrml_obligation] theorem assert_6
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x)) :
    Vermilion.inUnsignedRange 64 (3 * y) := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.assert_6

-- vrml:begin algos.rho.assert_7 cd0dd8ccd3225a06
/--
Generated VC `algos.rho.assert_7`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:312:22-312:33`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `7`
- Statement hash: `cd0dd8ccd3225a06`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 312
  startColumn := 22
  endLine := 312
  endColumn := 33
  assertId := "7"
  functionName := "algos.rho"
  kind := "assert"
  statementHash := "cd0dd8ccd3225a06"
}
@[vrml_obligation] theorem assert_7
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y)) :
    Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)) := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.assert_7

-- vrml:begin algos.rho.assert_8 f350f6f811b4e017
/--
Generated VC `algos.rho.assert_8`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:312:22-312:37`
- Rust/SST construct: possible division by zero
- AssertId: `8`
- Statement hash: `f350f6f811b4e017`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 312
  startColumn := 22
  endLine := 312
  endColumn := 37
  assertId := "8"
  functionName := "algos.rho"
  kind := "assert"
  statementHash := "f350f6f811b4e017"
}
@[vrml_obligation] theorem assert_8
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616))) :
    5 ≠ 0 := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.assert_8

-- vrml:begin algos.rho.assert_9 9232e2f31df5564b
/--
Generated VC `algos.rho.assert_9`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:313:9-313:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `9`
- Statement hash: `9232e2f31df5564b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 313
  startColumn := 9
  endLine := 313
  endColumn := 15
  assertId := "9"
  functionName := "algos.rho"
  kind := "assert"
  statementHash := "9232e2f31df5564b"
}
@[vrml_obligation] theorem assert_9
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0) :
    Vermilion.inUnsignedRange 32 (t + 1) := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.assert_9

-- vrml:begin algos.rho.invariant_preserve_0_0 75bf30dccab440e1
/--
Generated VC `algos.rho.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:303:13-303:18`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `75bf30dccab440e1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 303
  startColumn := 13
  endLine := 303
  endColumn := 18
  assertId := "0_0"
  functionName := "algos.rho"
  kind := "invariant_preserve"
  statementHash := "75bf30dccab440e1"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0)
    (assert_9 : Vermilion.inUnsignedRange 32 (t + 1)) :
    vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 y ((((((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616)) < 5 := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.invariant_preserve_0_0

-- vrml:begin algos.rho.invariant_preserve_0_1 feadf3844d6b3bc6
/--
Generated VC `algos.rho.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:304:13-304:18`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `feadf3844d6b3bc6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 304
  startColumn := 13
  endLine := 304
  endColumn := 18
  assertId := "0_1"
  functionName := "algos.rho"
  kind := "invariant_preserve"
  statementHash := "feadf3844d6b3bc6"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0)
    (assert_9 : Vermilion.inUnsignedRange 32 (t + 1)) :
    vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 y ((((((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616)) < 5 := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.invariant_preserve_0_1

-- vrml:begin algos.rho.invariant_preserve_0_2 1e2e211792e3cfd8
/--
Generated VC `algos.rho.invariant_preserve_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:305:13-305:20`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `1e2e211792e3cfd8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 305
  startColumn := 13
  endLine := 305
  endColumn := 20
  assertId := "0_2"
  functionName := "algos.rho"
  kind := "invariant_preserve"
  statementHash := "1e2e211792e3cfd8"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0)
    (assert_9 : Vermilion.inUnsignedRange 32 (t + 1)) :
    ((t + 1) % 4294967296) ≤ 24 := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.invariant_preserve_0_2

-- vrml:begin algos.rho.invariant_preserve_0_3 7aec54ef7961e794
/--
Generated VC `algos.rho.invariant_preserve_0_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:306:13-307:50`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `7aec54ef7961e794`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 306
  startColumn := 13
  endLine := 307
  endColumn := 50
  assertId := "0_3"
  functionName := "algos.rho"
  kind := "invariant_preserve"
  statementHash := "7aec54ef7961e794"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0)
    (assert_9 : Vermilion.inUnsignedRange 32 (t + 1)) :
    algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view tmp__post) ((t + 1) % 4294967296) (vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 y ((((((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616))) (vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 y ((((((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616))) = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0 := by
  rw [← loop_0_iteration_10]
  conv_rhs =>
    rw [algos.rho_loop_spec]
    simp only [if_pos (by omega)]
  simp_all [Vermilion.inUnsignedRange]
  have ht_clip : (t + 1) % 4294967296 = t + 1 :=
    Int.emod_eq_of_lt (by omega) (by omega)
  have hxy_clip : (2 * x + 3 * y) % 18446744073709551616 = 2 * x + 3 * y :=
    Int.emod_eq_of_lt (by omega) (by omega)
  have hmod_nonneg : 0 ≤ (2 * x + 3 * y) % 5 :=
    Int.emod_nonneg _ (by norm_num)
  have hmod_lt : (2 * x + 3 * y) % 5 < 5 :=
    Int.emod_lt_of_pos _ (by norm_num)
  have hmod_clip : ((2 * x + 3 * y) % 5) % 18446744073709551616 =
      (2 * x + 3 * y) % 5 :=
    Int.emod_eq_of_lt hmod_nonneg (by omega)
  simp only [ht_clip, hxy_clip, hmod_clip]
-- vrml:end algos.rho.invariant_preserve_0_3

-- vrml:begin algos.rho.assert_0_decreases 12d5b6446fe412eb
/--
Generated VC `algos.rho.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:308:19-308:25`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `12d5b6446fe412eb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 308
  startColumn := 19
  endLine := 308
  endColumn := 25
  assertId := "0_decreases"
  functionName := "algos.rho"
  kind := "assert"
  statementHash := "12d5b6446fe412eb"
}
@[vrml_obligation] theorem assert_0_decreases
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_iteration_11 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len algos.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index algos.RHO_OFFSETS x)))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y)))
    (assume_17 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_18 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_19 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view res) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 x y)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 x y)) tmp__post_2)
    (assume_23 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0)
    (assert_9 : Vermilion.inUnsignedRange 32 (t + 1)) :
    ((0 ≤ (24 - ((t + 1) % 4294967296))) ∧ ((24 - ((t + 1) % 4294967296)) < (24 - t))) ∨ (((24 - ((t + 1) % 4294967296)) = (24 - t)) ∧ False) := by
  iterate 1 (try first | (rw [algos.rho_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.rho.assert_0_decreases

-- vrml:begin algos.rho.ensures_10 73dee15e92974e40
/--
Generated VC `algos.rho.ensures_10`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:294:9-294:50`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10`
- Statement hash: `73dee15e92974e40`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩
-/
def ensures_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 294
  startColumn := 9
  endLine := 294
  endColumn := 50
  assertId := "10"
  functionName := "algos.rho"
  kind := "ensures"
  statementHash := "73dee15e92974e40"
}
@[vrml_obligation] theorem ensures_10
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_exit_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 x)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 y)
    (loop_0_exit_4 : Vermilion.inUnsignedRange 32 t)
    (loop_0_exit_5 : x < 5)
    (loop_0_exit_6 : y < 5)
    (loop_0_exit_7 : t ≤ 24)
    (loop_0_exit_8 : algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) t x y = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0)
    (loop_0_exit_9 : (¬ (t < 24))) :
    algos.impl__3.view res = algos.rho_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 1 0 := by
  rw [← loop_0_exit_8]
  rw [algos.rho_loop_spec]
  simp_all
-- vrml:end algos.rho.ensures_10

end algos.rho

