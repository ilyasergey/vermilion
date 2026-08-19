import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.theta.d

-- vrml:begin algos.theta.d.assert_0 f481d33bfe80d242
/--
Generated VC `algos.theta.d.assert_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:347:18-347:25`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `f481d33bfe80d242`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 347
  startColumn := 18
  endLine := 347
  endColumn := 25
  assertId := "0"
  functionName := "algos.theta.d"
  kind := "assert"
  statementHash := "f481d33bfe80d242"
}
@[vrml_obligation] theorem assert_0
    (a : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5) :
    Vermilion.inUnsignedRange 64 (x + 4) := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.d.assert_0

-- vrml:begin algos.theta.d.assert_1 7f6723e771f45292
/--
Generated VC `algos.theta.d.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:347:18-347:29`
- Rust/SST construct: possible division by zero
- AssertId: `1`
- Statement hash: `7f6723e771f45292`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 347
  startColumn := 18
  endLine := 347
  endColumn := 29
  assertId := "1"
  functionName := "algos.theta.d"
  kind := "assert"
  statementHash := "7f6723e771f45292"
}
@[vrml_obligation] theorem assert_1
    (a : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 4)) :
    5 ≠ 0 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.d.assert_1

-- vrml:begin algos.theta.d.assert_2 2d594cc3efb3cc62
/--
Generated VC `algos.theta.d.assert_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:348:18-348:25`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `2`
- Statement hash: `2d594cc3efb3cc62`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 348
  startColumn := 18
  endLine := 348
  endColumn := 25
  assertId := "2"
  functionName := "algos.theta.d"
  kind := "assert"
  statementHash := "2d594cc3efb3cc62"
}
@[vrml_obligation] theorem assert_2
    (a : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 4))
    (assert_1 : 5 ≠ 0) :
    Vermilion.inUnsignedRange 64 (x + 1) := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.d.assert_2

-- vrml:begin algos.theta.d.assert_3 b6bbb8b4bb860d2c
/--
Generated VC `algos.theta.d.assert_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:348:18-348:29`
- Rust/SST construct: possible division by zero
- AssertId: `3`
- Statement hash: `b6bbb8b4bb860d2c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 348
  startColumn := 18
  endLine := 348
  endColumn := 29
  assertId := "3"
  functionName := "algos.theta.d"
  kind := "assert"
  statementHash := "b6bbb8b4bb860d2c"
}
@[vrml_obligation] theorem assert_3
    (a : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 4))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 1)) :
    5 ≠ 0 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.d.assert_3

-- vrml:begin algos.theta.d.call_requires_4_0 7fab0966b12e07c8
/--
Generated VC `algos.theta.d.call_requires_4_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:349:9-349:16`
- Rust/SST construct: call c
- AssertId: `4_0`
- Statement hash: `7fab0966b12e07c8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def call_requires_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 349
  startColumn := 9
  endLine := 349
  endColumn := 16
  assertId := "4_0"
  functionName := "algos.theta.d"
  kind := "call_requires"
  statementHash := "7fab0966b12e07c8"
}
@[vrml_obligation] theorem call_requires_4_0
    (a : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 4))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_3 : 5 ≠ 0) :
    Vermilion.Seq.len (algos.impl__3.view a) = 25 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.d.call_requires_4_0

-- vrml:begin algos.theta.d.call_requires_4_1 de61d9e10c10bb45
/--
Generated VC `algos.theta.d.call_requires_4_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:349:9-349:16`
- Rust/SST construct: call c
- AssertId: `4_1`
- Statement hash: `de61d9e10c10bb45`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def call_requires_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 349
  startColumn := 9
  endLine := 349
  endColumn := 16
  assertId := "4_1"
  functionName := "algos.theta.d"
  kind := "call_requires"
  statementHash := "de61d9e10c10bb45"
}
@[vrml_obligation] theorem call_requires_4_1
    (a : algos.StateArray)
    (x : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 4))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_3 : 5 ≠ 0) :
    ((((x + 4) % 18446744073709551616) % 5) % 18446744073709551616) < 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.d.call_requires_4_1

-- vrml:begin algos.theta.d.call_requires_5_0 2e775c71f857b96b
/--
Generated VC `algos.theta.d.call_requires_5_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:349:19-349:26`
- Rust/SST construct: call c
- AssertId: `5_0`
- Statement hash: `2e775c71f857b96b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def call_requires_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 349
  startColumn := 19
  endLine := 349
  endColumn := 26
  assertId := "5_0"
  functionName := "algos.theta.d"
  kind := "call_requires"
  statementHash := "2e775c71f857b96b"
}
@[vrml_obligation] theorem call_requires_5_0
    (a : algos.StateArray)
    (x : Int)
    (tmp_ : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 4))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_3 : 5 ≠ 0)
    (call_c_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_c_ensures_1 : tmp_ = algos.theta_c_spec (algos.impl__3.view a) ((((x + 4) % 18446744073709551616) % 5) % 18446744073709551616)) :
    Vermilion.Seq.len (algos.impl__3.view a) = 25 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.d.call_requires_5_0

-- vrml:begin algos.theta.d.call_requires_5_1 fecaa9ecbf5a859d
/--
Generated VC `algos.theta.d.call_requires_5_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:349:19-349:26`
- Rust/SST construct: call c
- AssertId: `5_1`
- Statement hash: `fecaa9ecbf5a859d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def call_requires_5_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 349
  startColumn := 19
  endLine := 349
  endColumn := 26
  assertId := "5_1"
  functionName := "algos.theta.d"
  kind := "call_requires"
  statementHash := "fecaa9ecbf5a859d"
}
@[vrml_obligation] theorem call_requires_5_1
    (a : algos.StateArray)
    (x : Int)
    (tmp_ : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 4))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_3 : 5 ≠ 0)
    (call_c_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_c_ensures_1 : tmp_ = algos.theta_c_spec (algos.impl__3.view a) ((((x + 4) % 18446744073709551616) % 5) % 18446744073709551616)) :
    ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616) < 5 := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.d.call_requires_5_1

-- vrml:begin algos.theta.d.ensures_7 6a2c653402949f51
/--
Generated VC `algos.theta.d.ensures_7`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:344:13-344:49`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7`
- Statement hash: `6a2c653402949f51`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def ensures_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 344
  startColumn := 13
  endLine := 344
  endColumn := 49
  assertId := "7"
  functionName := "algos.theta.d"
  kind := "ensures"
  statementHash := "6a2c653402949f51"
}
@[vrml_obligation] theorem ensures_7
    (a : algos.StateArray)
    (x : Int)
    (tmp_ : Int)
    (tmp__2 : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.Seq.len (algos.impl__3.view a) = 25)
    (requires_4 : x < 5)
    (assert_0 : Vermilion.inUnsignedRange 64 (x + 4))
    (assert_1 : 5 ≠ 0)
    (assert_2 : Vermilion.inUnsignedRange 64 (x + 1))
    (assert_3 : 5 ≠ 0)
    (call_c_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_c_ensures_1 : tmp_ = algos.theta_c_spec (algos.impl__3.view a) ((((x + 4) % 18446744073709551616) % 5) % 18446744073709551616))
    (call_c_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_c_1_ensures_1 : tmp__2 = algos.theta_c_spec (algos.impl__3.view a) ((((x + 1) % 18446744073709551616) % 5) % 18446744073709551616))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Vstd.Rotate.u64_rotate_left tmp__2 1)) :
    Vermilion.Bits.bxor 64 tmp_ (Vermilion.Vstd.Rotate.u64_rotate_left tmp__2 1) = algos.theta_d_spec (algos.impl__3.view a) x := by
  iterate 7 (try first | (rw [algos.theta_inner_spec]; try norm_num) | (rw [algos.theta_loop_spec]; try norm_num) | (rw [algos.rho_loop_spec]; try norm_num) | (rw [algos.pi_inner_spec]; try norm_num) | (rw [algos.pi_loop_spec]; try norm_num) | (rw [algos.chi_inner_spec]; try norm_num) | (rw [algos.chi_loop_spec]; try norm_num))
  vrml [algos.impl__3.view, algos.zero_state_spec, algos.impl__8.index_req, algos.theta_c_spec, algos.theta_d_spec, algos.RHO_OFFSETS, algos.IOTA_RC]
-- vrml:end algos.theta.d.ensures_7

end algos.theta.d

