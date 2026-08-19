import Vermilion.Obligations
import keccak_rho.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace keccak_rho.rho

-- vrml:begin keccak_rho.rho.invariant_entry_0_0 e06bf5653f5506f1
/--
Generated VC `keccak_rho.rho.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:48:13-48:18`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `e06bf5653f5506f1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 48
  startColumn := 13
  endLine := 48
  endColumn := 18
  assertId := "0_0"
  functionName := "keccak_rho.rho"
  kind := "invariant_entry"
  statementHash := "e06bf5653f5506f1"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0)))) :
    vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 1 0) < 5 := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.invariant_entry_0_0

-- vrml:begin keccak_rho.rho.invariant_entry_0_1 d1222cd1b2c7fe36
/--
Generated VC `keccak_rho.rho.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:49:13-49:18`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `d1222cd1b2c7fe36`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 49
  startColumn := 13
  endLine := 49
  endColumn := 18
  assertId := "0_1"
  functionName := "keccak_rho.rho"
  kind := "invariant_entry"
  statementHash := "d1222cd1b2c7fe36"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0)))) :
    vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 1 0) < 5 := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.invariant_entry_0_1

-- vrml:begin keccak_rho.rho.invariant_entry_0_2 73eca938fb021954
/--
Generated VC `keccak_rho.rho.invariant_entry_0_2`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:50:13-50:20`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `73eca938fb021954`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 50
  startColumn := 13
  endLine := 50
  endColumn := 20
  assertId := "0_2"
  functionName := "keccak_rho.rho"
  kind := "invariant_entry"
  statementHash := "73eca938fb021954"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0)))) :
    0 ≤ 24 := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.invariant_entry_0_2

-- vrml:begin keccak_rho.rho.call_requires_0 7a7ea621ed601503
/--
Generated VC `keccak_rho.rho.call_requires_0`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:53:22-53:30`
- Rust/SST construct: call index
- AssertId: `0`
- Statement hash: `7a7ea621ed601503`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 53
  startColumn := 22
  endLine := 53
  endColumn := 30
  assertId := "0"
  functionName := "keccak_rho.rho"
  kind := "call_requires"
  statementHash := "7a7ea621ed601503"
}
@[vrml_obligation] theorem call_requires_0
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24) :
    index_req_at_0 a (vermilion.tuple_2.tuple_2 x y) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_rho.rho.call_requires_0

-- vrml:begin keccak_rho.rho.assert_1 fe6b16ded0cdab3f
/--
Generated VC `keccak_rho.rho.assert_1`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:53:43-53:57`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `1`
- Statement hash: `fe6b16ded0cdab3f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 53
  startColumn := 43
  endLine := 53
  endColumn := 57
  assertId := "1"
  functionName := "keccak_rho.rho"
  kind := "assert"
  statementHash := "fe6b16ded0cdab3f"
}
@[vrml_obligation] theorem assert_1
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_) :
    (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS) := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.assert_1

-- vrml:begin keccak_rho.rho.assert_2 5d068a18861edc8c
/--
Generated VC `keccak_rho.rho.assert_2`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:53:43-53:60`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `2`
- Statement hash: `5d068a18861edc8c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 53
  startColumn := 43
  endLine := 53
  endColumn := 60
  assertId := "2"
  functionName := "keccak_rho.rho"
  kind := "assert"
  statementHash := "5d068a18861edc8c"
}
@[vrml_obligation] theorem assert_2
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS)) :
    (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_rho.rho.assert_2

-- vrml:begin keccak_rho.rho.call_requires_4 1c0fabdd80760c38
/--
Generated VC `keccak_rho.rho.call_requires_4`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:53:9-53:19`
- Rust/SST construct: call index_mut
- AssertId: `4`
- Statement hash: `1c0fabdd80760c38`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 53
  startColumn := 9
  endLine := 53
  endColumn := 19
  assertId := "4"
  functionName := "keccak_rho.rho"
  kind := "call_requires"
  statementHash := "1c0fabdd80760c38"
}
@[vrml_obligation] theorem call_requires_4
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2) :
    index_req_at_0 res (vermilion.tuple_2.tuple_2 x y) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_rho.rho.call_requires_4

-- vrml:begin keccak_rho.rho.assert_5 1ac0a2134f8a7a24
/--
Generated VC `keccak_rho.rho.assert_5`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:54:23-54:26`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `5`
- Statement hash: `1ac0a2134f8a7a24`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 54
  startColumn := 23
  endLine := 54
  endColumn := 26
  assertId := "5"
  functionName := "keccak_rho.rho"
  kind := "assert"
  statementHash := "1ac0a2134f8a7a24"
}
@[vrml_obligation] theorem assert_5
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_19 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)) :
    Vermilion.inUnsignedRange 64 (2 * x) := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.assert_5

-- vrml:begin keccak_rho.rho.assert_6 78df21f91a2fa67e
/--
Generated VC `keccak_rho.rho.assert_6`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:54:29-54:32`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `6`
- Statement hash: `78df21f91a2fa67e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 54
  startColumn := 29
  endLine := 54
  endColumn := 32
  assertId := "6"
  functionName := "keccak_rho.rho"
  kind := "assert"
  statementHash := "78df21f91a2fa67e"
}
@[vrml_obligation] theorem assert_6
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_19 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x)) :
    Vermilion.inUnsignedRange 64 (3 * y) := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.assert_6

-- vrml:begin keccak_rho.rho.assert_7 0e4f09991d099ba4
/--
Generated VC `keccak_rho.rho.assert_7`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:54:22-54:33`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `7`
- Statement hash: `0e4f09991d099ba4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 54
  startColumn := 22
  endLine := 54
  endColumn := 33
  assertId := "7"
  functionName := "keccak_rho.rho"
  kind := "assert"
  statementHash := "0e4f09991d099ba4"
}
@[vrml_obligation] theorem assert_7
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_19 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y)) :
    Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)) := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.assert_7

-- vrml:begin keccak_rho.rho.assert_8 7dc4b3b3fade5645
/--
Generated VC `keccak_rho.rho.assert_8`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:54:22-54:37`
- Rust/SST construct: possible division by zero
- AssertId: `8`
- Statement hash: `7dc4b3b3fade5645`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 54
  startColumn := 22
  endLine := 54
  endColumn := 37
  assertId := "8"
  functionName := "keccak_rho.rho"
  kind := "assert"
  statementHash := "7dc4b3b3fade5645"
}
@[vrml_obligation] theorem assert_8
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_19 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616))) :
    5 ≠ 0 := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.assert_8

-- vrml:begin keccak_rho.rho.assert_9 1943f032529cfe7d
/--
Generated VC `keccak_rho.rho.assert_9`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:55:9-55:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `9`
- Statement hash: `1943f032529cfe7d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 55
  startColumn := 9
  endLine := 55
  endColumn := 15
  assertId := "9"
  functionName := "keccak_rho.rho"
  kind := "assert"
  statementHash := "1943f032529cfe7d"
}
@[vrml_obligation] theorem assert_9
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_19 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0) :
    Vermilion.inUnsignedRange 32 (t + 1) := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.assert_9

-- vrml:begin keccak_rho.rho.invariant_preserve_0_0 6b5cc6941763edf3
/--
Generated VC `keccak_rho.rho.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:48:13-48:18`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `6b5cc6941763edf3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 48
  startColumn := 13
  endLine := 48
  endColumn := 18
  assertId := "0_0"
  functionName := "keccak_rho.rho"
  kind := "invariant_preserve"
  statementHash := "6b5cc6941763edf3"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_19 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0)
    (assert_9 : Vermilion.inUnsignedRange 32 (t + 1)) :
    vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 y ((((((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616)) < 5 := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.invariant_preserve_0_0

-- vrml:begin keccak_rho.rho.invariant_preserve_0_1 ae4844a16d799750
/--
Generated VC `keccak_rho.rho.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:49:13-49:18`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `ae4844a16d799750`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 49
  startColumn := 13
  endLine := 49
  endColumn := 18
  assertId := "0_1"
  functionName := "keccak_rho.rho"
  kind := "invariant_preserve"
  statementHash := "ae4844a16d799750"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_19 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0)
    (assert_9 : Vermilion.inUnsignedRange 32 (t + 1)) :
    vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 y ((((((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)) % 18446744073709551616) % 5) % 18446744073709551616)) < 5 := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.invariant_preserve_0_1

-- vrml:begin keccak_rho.rho.invariant_preserve_0_2 9a353f852a769c2a
/--
Generated VC `keccak_rho.rho.invariant_preserve_0_2`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:50:13-50:20`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `9a353f852a769c2a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 50
  startColumn := 13
  endLine := 50
  endColumn := 20
  assertId := "0_2"
  functionName := "keccak_rho.rho"
  kind := "invariant_preserve"
  statementHash := "9a353f852a769c2a"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_19 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0)
    (assert_9 : Vermilion.inUnsignedRange 32 (t + 1)) :
    ((t + 1) % 4294967296) ≤ 24 := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.invariant_preserve_0_2

-- vrml:begin keccak_rho.rho.assert_0_decreases e1d8ab6a38479789
/--
Generated VC `keccak_rho.rho.assert_0_decreases`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:51:19-51:25`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `e1d8ab6a38479789`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 51
  startColumn := 19
  endLine := 51
  endColumn := 25
  assertId := "0_decreases"
  functionName := "keccak_rho.rho"
  kind := "assert"
  statementHash := "e1d8ab6a38479789"
}
@[vrml_obligation] theorem assert_0_decreases
    (a : keccak_rho.StateArray)
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (res : keccak_rho.StateArray)
    (x : Int)
    (y : Int)
    (t : Int)
    (tmp_ : Int)
    (tmp__post : keccak_rho.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 res))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 res) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 x)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 y)
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 32 t)
    (loop_0_iteration_7 : x < 5)
    (loop_0_iteration_8 : y < 5)
    (loop_0_iteration_9 : t ≤ 24)
    (loop_0_iteration_10 : t < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ x) ∧ (x < Vermilion.Seq.len keccak_rho.RHO_OFFSETS))
    (assert_2 : (0 ≤ y) ∧ (y < Vermilion.Seq.len (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x)))
    (assume_14 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y)))
    (assume_15 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_17 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_19 : tmp__post_2 = Vermilion.Vstd.Rotate.u64_rotate_left tmp_ (Vermilion.Seq.index (Vermilion.Seq.index keccak_rho.RHO_OFFSETS x) y))
    (assert_5 : Vermilion.inUnsignedRange 64 (2 * x))
    (assert_6 : Vermilion.inUnsignedRange 64 (3 * y))
    (assert_7 : Vermilion.inUnsignedRange 64 (((2 * x) % 18446744073709551616) + ((3 * y) % 18446744073709551616)))
    (assert_8 : 5 ≠ 0)
    (assert_9 : Vermilion.inUnsignedRange 32 (t + 1)) :
    ((0 ≤ (24 - ((t + 1) % 4294967296))) ∧ ((24 - ((t + 1) % 4294967296)) < (24 - t))) ∨ (((24 - ((t + 1) % 4294967296)) = (24 - t)) ∧ False) := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.rho.assert_0_decreases

end keccak_rho.rho

