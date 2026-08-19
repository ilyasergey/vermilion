import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.chi

-- vrml:begin algos.chi.invariant_entry_0_0 b681e77a506e4f81
/--
Generated VC `algos.chi.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:504:13-504:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `b681e77a506e4f81`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 504
  startColumn := 13
  endLine := 504
  endColumn := 19
  assertId := "0_0"
  functionName := "algos.chi"
  kind := "invariant_entry"
  statementHash := "b681e77a506e4f81"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (a : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0)))) :
    0 ≤ 5 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.invariant_entry_0_0

-- vrml:begin algos.chi.invariant_entry_0_1 66ec047bf6f104b6
/--
Generated VC `algos.chi.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:505:13-505:74`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `66ec047bf6f104b6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 505
  startColumn := 13
  endLine := 505
  endColumn := 74
  assertId := "0_1"
  functionName := "algos.chi"
  kind := "invariant_entry"
  statementHash := "66ec047bf6f104b6"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (a : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0)))) :
    algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.invariant_entry_0_1

-- vrml:begin algos.chi.call_requires_0_0 385dfdafc67f0de5
/--
Generated VC `algos.chi.call_requires_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:535:11-535:33`
- Rust/SST construct: call inner
- AssertId: `0_0`
- Statement hash: `385dfdafc67f0de5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 535
  startColumn := 11
  endLine := 535
  endColumn := 33
  assertId := "0_0"
  functionName := "algos.chi"
  kind := "call_requires"
  statementHash := "385dfdafc67f0de5"
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
    (loop_0_iteration_6 : algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    Vermilion.Seq.len (algos.impl__3.view a) = 25 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.call_requires_0_0

-- vrml:begin algos.chi.call_requires_0_1 05e1abdb2516fba4
/--
Generated VC `algos.chi.call_requires_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:535:11-535:33`
- Rust/SST construct: call inner
- AssertId: `0_1`
- Statement hash: `05e1abdb2516fba4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 535
  startColumn := 11
  endLine := 535
  endColumn := 33
  assertId := "0_1"
  functionName := "algos.chi"
  kind := "call_requires"
  statementHash := "05e1abdb2516fba4"
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
    (loop_0_iteration_6 : algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    Vermilion.Seq.len (algos.impl__3.view res) = 25 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.call_requires_0_1

-- vrml:begin algos.chi.call_requires_0_2 044e54ec972be7a7
/--
Generated VC `algos.chi.call_requires_0_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:535:11-535:33`
- Rust/SST construct: call inner
- AssertId: `0_2`
- Statement hash: `044e54ec972be7a7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 535
  startColumn := 11
  endLine := 535
  endColumn := 33
  assertId := "0_2"
  functionName := "algos.chi"
  kind := "call_requires"
  statementHash := "044e54ec972be7a7"
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
    (loop_0_iteration_6 : algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    x < 5 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.call_requires_0_2

-- vrml:begin algos.chi.assert_1 bae56bd6f4aea7fa
/--
Generated VC `algos.chi.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:536:9-536:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `bae56bd6f4aea7fa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 536
  startColumn := 9
  endLine := 536
  endColumn := 15
  assertId := "1"
  functionName := "algos.chi"
  kind := "assert"
  statementHash := "bae56bd6f4aea7fa"
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
    (loop_0_iteration_6 : algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0) :
    Vermilion.inUnsignedRange 64 (x + 1) := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.assert_1

-- vrml:begin algos.chi.invariant_preserve_0_0 8ecd5ccb63136636
/--
Generated VC `algos.chi.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:504:13-504:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `8ecd5ccb63136636`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 504
  startColumn := 13
  endLine := 504
  endColumn := 19
  assertId := "0_0"
  functionName := "algos.chi"
  kind := "invariant_preserve"
  statementHash := "8ecd5ccb63136636"
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
    (loop_0_iteration_6 : algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (x + 1)) :
    ((x + 1) % 18446744073709551616) ≤ 5 := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.invariant_preserve_0_0

-- vrml:begin algos.chi.invariant_preserve_0_1 09bc812f998d41e9
/--
Generated VC `algos.chi.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:505:13-505:74`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `09bc812f998d41e9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 505
  startColumn := 13
  endLine := 505
  endColumn := 74
  assertId := "0_1"
  functionName := "algos.chi"
  kind := "invariant_preserve"
  statementHash := "09bc812f998d41e9"
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
    (loop_0_iteration_6 : algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (x + 1)) :
    algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view tmp__post) ((x + 1) % 18446744073709551616) = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 := by
  have hx1_clip : (x + 1) % 18446744073709551616 = x + 1 := by
    apply Int.emod_eq_of_lt <;> simp_all [Vermilion.inUnsignedRange] <;> omega
  rw [algos.chi_loop_spec] at loop_0_iteration_6
  simpa [show 0 ≤ 5 - x by omega, loop_0_iteration_5, loop_0_iteration_7,
    hx1_clip, call_inner_ensures_0] using loop_0_iteration_6
-- vrml:end algos.chi.invariant_preserve_0_1

-- vrml:begin algos.chi.assert_0_decreases c0512f774b66557d
/--
Generated VC `algos.chi.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:506:19-506:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `c0512f774b66557d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 506
  startColumn := 19
  endLine := 506
  endColumn := 24
  assertId := "0_decreases"
  functionName := "algos.chi"
  kind := "assert"
  statementHash := "c0512f774b66557d"
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
    (loop_0_iteration_6 : algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_iteration_7 : x < 5)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_inner_ensures_0 : algos.impl__3.view tmp__post = algos.chi_inner_spec (algos.impl__3.view a) (algos.impl__3.view res) x 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (x + 1)) :
    ((0 ≤ (5 - ((x + 1) % 18446744073709551616))) ∧ ((5 - ((x + 1) % 18446744073709551616)) < (5 - x))) ∨ (((5 - ((x + 1) % 18446744073709551616)) = (5 - x)) ∧ False) := by
  iterate 5 (try first | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.chi.assert_0_decreases

-- vrml:begin algos.chi.ensures_2 c9aef9a9ed55f7de
/--
Generated VC `algos.chi.ensures_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:496:9-496:44`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `c9aef9a9ed55f7de`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 res) vrml_i0⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 496
  startColumn := 9
  endLine := 496
  endColumn := 44
  assertId := "2"
  functionName := "algos.chi"
  kind := "ensures"
  statementHash := "c9aef9a9ed55f7de"
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
    (loop_0_exit_4 : algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view res) x = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0)
    (loop_0_exit_5 : (¬ (x < 5))) :
    algos.impl__3.view res = algos.chi_loop_spec (algos.impl__3.view a) (algos.impl__3.view a) 0 := by
  rw [← loop_0_exit_4]
  rw [algos.chi_loop_spec]
  simp_all
-- vrml:end algos.chi.ensures_2

end algos.chi

