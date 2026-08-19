import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.pi

-- vrml:begin algos.pi.invariant_entry_0_0 b681e77a506e4f81
/--
Generated VC `algos.pi.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:391:13-391:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `b681e77a506e4f81`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 391
  startColumn := 13
  endLine := 391
  endColumn := 19
  assertId := "0_0"
  functionName := "algos.pi"
  kind := "invariant_entry"
  statementHash := "b681e77a506e4f81"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (a : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0)))) :
    0 ≤ 5 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.invariant_entry_0_0

-- vrml:begin algos.pi.invariant_entry_0_1 2ea640261fefcac0
/--
Generated VC `algos.pi.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:392:13-392:72`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `2ea640261fefcac0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 392
  startColumn := 13
  endLine := 392
  endColumn := 72
  assertId := "0_1"
  functionName := "algos.pi"
  kind := "invariant_entry"
  statementHash := "2ea640261fefcac0"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (a : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0)))) :
    algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.invariant_entry_0_1

-- vrml:begin algos.pi.call_requires_0_0 1290419ff8e9cf45
/--
Generated VC `algos.pi.call_requires_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:422:11-422:33`
- Rust/SST construct: call inner
- AssertId: `0_0`
- Statement hash: `1290419ff8e9cf45`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 422
  startColumn := 11
  endLine := 422
  endColumn := 33
  assertId := "0_0"
  functionName := "algos.pi"
  kind := "call_requires"
  statementHash := "1290419ff8e9cf45"
}
@[vrml_obligation] theorem call_requires_0_0
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : x ≤ 5)
    (loop_0_iteration_6 : algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    Vermilion.Seq.len (algos.impl__3.view a) = 25 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.call_requires_0_0

-- vrml:begin algos.pi.call_requires_0_1 89a26edaefb06104
/--
Generated VC `algos.pi.call_requires_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:422:11-422:33`
- Rust/SST construct: call inner
- AssertId: `0_1`
- Statement hash: `89a26edaefb06104`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 422
  startColumn := 11
  endLine := 422
  endColumn := 33
  assertId := "0_1"
  functionName := "algos.pi"
  kind := "call_requires"
  statementHash := "89a26edaefb06104"
}
@[vrml_obligation] theorem call_requires_0_1
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : x ≤ 5)
    (loop_0_iteration_6 : algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    Vermilion.Seq.len (algos.impl__3.view res) = 25 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.call_requires_0_1

-- vrml:begin algos.pi.call_requires_0_2 0d02c16cdc783b87
/--
Generated VC `algos.pi.call_requires_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:422:11-422:33`
- Rust/SST construct: call inner
- AssertId: `0_2`
- Statement hash: `0d02c16cdc783b87`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 422
  startColumn := 11
  endLine := 422
  endColumn := 33
  assertId := "0_2"
  functionName := "algos.pi"
  kind := "call_requires"
  statementHash := "0d02c16cdc783b87"
}
@[vrml_obligation] theorem call_requires_0_2
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : x ≤ 5)
    (loop_0_iteration_6 : algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    x < 5 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.call_requires_0_2

-- vrml:begin algos.pi.assert_1 e3df2b6c1d17a9ad
/--
Generated VC `algos.pi.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:423:9-423:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `e3df2b6c1d17a9ad`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 423
  startColumn := 9
  endLine := 423
  endColumn := 15
  assertId := "1"
  functionName := "algos.pi"
  kind := "assert"
  statementHash := "e3df2b6c1d17a9ad"
}
@[vrml_obligation] theorem assert_1
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : x ≤ 5)
    (loop_0_iteration_6 : algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0) :
    Vermilion.inUnsignedRange 64 (x + 1) := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.assert_1

-- vrml:begin algos.pi.invariant_preserve_0_0 c61e7543d8f8fd21
/--
Generated VC `algos.pi.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:391:13-391:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `c61e7543d8f8fd21`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 391
  startColumn := 13
  endLine := 391
  endColumn := 19
  assertId := "0_0"
  functionName := "algos.pi"
  kind := "invariant_preserve"
  statementHash := "c61e7543d8f8fd21"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : x ≤ 5)
    (loop_0_iteration_6 : algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (x + 1)) :
    ((x + 1) % 18446744073709551616) ≤ 5 := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.invariant_preserve_0_0

-- vrml:begin algos.pi.invariant_preserve_0_1 a1cca2edebfa9e68
/--
Generated VC `algos.pi.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:392:13-392:72`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `a1cca2edebfa9e68`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 392
  startColumn := 13
  endLine := 392
  endColumn := 72
  assertId := "0_1"
  functionName := "algos.pi"
  kind := "invariant_preserve"
  statementHash := "a1cca2edebfa9e68"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : x ≤ 5)
    (loop_0_iteration_6 : algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (x + 1)) :
    algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view tmp__post) ((x + 1) % 18446744073709551616) = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 := by
  have hx1_clip : (x + 1) % 18446744073709551616 = x + 1 := by
    apply Int.emod_eq_of_lt <;> simp_all [Vermilion.inUnsignedRange] <;> omega
  rw [algos.pi_loop_spec] at loop_0_iteration_6
  simpa [show 0 ≤ 5 - x by omega, loop_0_iteration_5, loop_0_iteration_7,
    hx1_clip, call_inner_ensures_0] using loop_0_iteration_6
-- vrml:end algos.pi.invariant_preserve_0_1

-- vrml:begin algos.pi.assert_0_decreases 383b826d7f1cc65a
/--
Generated VC `algos.pi.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:393:19-393:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `383b826d7f1cc65a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 393
  startColumn := 19
  endLine := 393
  endColumn := 24
  assertId := "0_decreases"
  functionName := "algos.pi"
  kind := "assert"
  statementHash := "383b826d7f1cc65a"
}
@[vrml_obligation] theorem assert_0_decreases
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : x ≤ 5)
    (loop_0_iteration_6 : algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.pi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (x + 1)) :
    ((0 ≤ (5 - ((x + 1) % 18446744073709551616))) ∧ ((5 - ((x + 1) % 18446744073709551616)) < (5 - x))) ∨ (((5 - ((x + 1) % 18446744073709551616)) = (5 - x)) ∧ False) := by
  iterate 3 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.pi.assert_0_decreases

-- vrml:begin algos.pi.ensures_2 f587c51c0a860d85
/--
Generated VC `algos.pi.ensures_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:383:9-383:43`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `f587c51c0a860d85`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 383
  startColumn := 9
  endLine := 383
  endColumn := 43
  assertId := "2"
  functionName := "algos.pi"
  kind := "ensures"
  statementHash := "f587c51c0a860d85"
}
@[vrml_obligation] theorem ensures_2
    (a : algos.StateArray)
    (res : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_exit_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res) = 25)
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 x)
    (loop_0_exit_3 : x ≤ 5)
    (loop_0_exit_4 : algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_exit_5 : (¬ (x < 5))) :
    algos.impl__3.view res = algos.pi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 := by
  rw [← loop_0_exit_4]
  rw [algos.pi_loop_spec]
  simp_all
-- vrml:end algos.pi.ensures_2

end algos.pi

