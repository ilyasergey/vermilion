import Vermilion.Obligations
import active_bitmap_get.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace active_bitmap_get.active_bitmap_is_empty

-- vrml:begin active_bitmap_get.active_bitmap_is_empty.invariant_entry_0_0 043e63b6a75013cb
/--
Generated VC `active_bitmap_get.active_bitmap_is_empty.invariant_entry_0_0`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:22:13-22:41`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `043e63b6a75013cb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 22
  startColumn := 13
  endLine := 22
  endColumn := 41
  assertId := "0_0"
  functionName := "active_bitmap_get.active_bitmap_is_empty"
  kind := "invariant_entry"
  statementHash := "043e63b6a75013cb"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (bitmap : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0)))) :
    0 ≤ active_bitmap_get.V16_ACTIVE_BITMAP_WORDS := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_is_empty.invariant_entry_0_0

-- vrml:begin active_bitmap_get.active_bitmap_is_empty.invariant_entry_0_1 4a060c3145f7ab67
/--
Generated VC `active_bitmap_get.active_bitmap_is_empty.invariant_entry_0_1`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:23:13-23:57`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `4a060c3145f7ab67`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap j⟩ ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 23
  startColumn := 13
  endLine := 23
  endColumn := 57
  assertId := "0_1"
  functionName := "active_bitmap_get.active_bitmap_is_empty"
  kind := "invariant_entry"
  statementHash := "4a060c3145f7ab67"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (bitmap : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0)))) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < 0)) → (Vermilion.Seq.index bitmap j = 0))) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_is_empty.invariant_entry_0_1

-- vrml:begin active_bitmap_get.active_bitmap_is_empty.assert_0 5e217910af2d9e93
/--
Generated VC `active_bitmap_get.active_bitmap_is_empty.assert_0`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:26:12-26:21`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `0`
- Statement hash: `5e217910af2d9e93`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩ ⟨Vermilion.Seq.index bitmap j⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 26
  startColumn := 12
  endLine := 26
  endColumn := 21
  assertId := "0"
  functionName := "active_bitmap_get.active_bitmap_is_empty"
  kind := "assert"
  statementHash := "5e217910af2d9e93"
}
@[vrml_obligation] theorem assert_0
    (bitmap : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len bitmap = 1)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_3 : i ≤ active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (loop_0_iteration_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index bitmap j = 0))))
    (loop_0_iteration_5 : i < active_bitmap_get.V16_ACTIVE_BITMAP_WORDS) :
    (0 ≤ i) ∧ (i < Vermilion.Seq.len bitmap) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_is_empty.assert_0

-- vrml:begin active_bitmap_get.active_bitmap_is_empty.ensures_1 523b68c7f54ee4ac
/--
Generated VC `active_bitmap_get.active_bitmap_is_empty.ensures_1`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:17:9-17:35`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `523b68c7f54ee4ac`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩ ⟨Vermilion.Seq.index bitmap j⟩
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 17
  startColumn := 9
  endLine := 17
  endColumn := 35
  assertId := "1"
  functionName := "active_bitmap_get.active_bitmap_is_empty"
  kind := "ensures"
  statementHash := "523b68c7f54ee4ac"
}
@[vrml_obligation] theorem ensures_1
    (bitmap : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len bitmap = 1)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_3 : i ≤ active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (loop_0_iteration_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index bitmap j = 0))))
    (loop_0_iteration_5 : i < active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (assert_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len bitmap))
    (branch_0 : Vermilion.Seq.index bitmap i ≠ 0) :
    False ↔ (Vermilion.Seq.index bitmap 0 = 0) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_is_empty.ensures_1

-- vrml:begin active_bitmap_get.active_bitmap_is_empty.assert_2 405a752d66976aa2
/--
Generated VC `active_bitmap_get.active_bitmap_is_empty.assert_2`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:29:9-29:15`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `2`
- Statement hash: `405a752d66976aa2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩ ⟨Vermilion.Seq.index bitmap j⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 29
  startColumn := 9
  endLine := 29
  endColumn := 15
  assertId := "2"
  functionName := "active_bitmap_get.active_bitmap_is_empty"
  kind := "assert"
  statementHash := "405a752d66976aa2"
}
@[vrml_obligation] theorem assert_2
    (bitmap : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len bitmap = 1)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_3 : i ≤ active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (loop_0_iteration_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index bitmap j = 0))))
    (loop_0_iteration_5 : i < active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (assert_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len bitmap))
    (then_0_assume_8 : (Vermilion.Seq.index bitmap i ≠ 0) → False)
    (then_0_assume_9 : (Vermilion.Seq.index bitmap i ≠ 0) → False) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_is_empty.assert_2

-- vrml:begin active_bitmap_get.active_bitmap_is_empty.invariant_preserve_0_0 87892546a5c1e712
/--
Generated VC `active_bitmap_get.active_bitmap_is_empty.invariant_preserve_0_0`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:22:13-22:41`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `87892546a5c1e712`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩ ⟨Vermilion.Seq.index bitmap j⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 22
  startColumn := 13
  endLine := 22
  endColumn := 41
  assertId := "0_0"
  functionName := "active_bitmap_get.active_bitmap_is_empty"
  kind := "invariant_preserve"
  statementHash := "87892546a5c1e712"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (bitmap : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len bitmap = 1)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_3 : i ≤ active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (loop_0_iteration_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index bitmap j = 0))))
    (loop_0_iteration_5 : i < active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (assert_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len bitmap))
    (then_0_assume_8 : (Vermilion.Seq.index bitmap i ≠ 0) → False)
    (then_0_assume_9 : (Vermilion.Seq.index bitmap i ≠ 0) → False)
    (assert_2 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((i + 1) % 18446744073709551616) ≤ active_bitmap_get.V16_ACTIVE_BITMAP_WORDS := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_is_empty.invariant_preserve_0_0

-- vrml:begin active_bitmap_get.active_bitmap_is_empty.invariant_preserve_0_1 518ebce3c898bf9c
/--
Generated VC `active_bitmap_get.active_bitmap_is_empty.invariant_preserve_0_1`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:23:13-23:57`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `518ebce3c898bf9c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap j⟩ ⟨Vermilion.Seq.index bitmap vrml_i0⟩ ⟨Vermilion.Seq.index bitmap j⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 23
  startColumn := 13
  endLine := 23
  endColumn := 57
  assertId := "0_1"
  functionName := "active_bitmap_get.active_bitmap_is_empty"
  kind := "invariant_preserve"
  statementHash := "518ebce3c898bf9c"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (bitmap : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len bitmap = 1)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_3 : i ≤ active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (loop_0_iteration_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index bitmap j = 0))))
    (loop_0_iteration_5 : i < active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (assert_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len bitmap))
    (then_0_assume_8 : (Vermilion.Seq.index bitmap i ≠ 0) → False)
    (then_0_assume_9 : (Vermilion.Seq.index bitmap i ≠ 0) → False)
    (assert_2 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (∀ (j : Int), (((0 ≤ j) ∧ (j < ((i + 1) % 18446744073709551616))) → (Vermilion.Seq.index bitmap j = 0))) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_is_empty.invariant_preserve_0_1

-- vrml:begin active_bitmap_get.active_bitmap_is_empty.assert_0_decreases 228fcd842b0bc203
/--
Generated VC `active_bitmap_get.active_bitmap_is_empty.assert_0_decreases`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:24:19-24:46`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `228fcd842b0bc203`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩ ⟨Vermilion.Seq.index bitmap j⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 24
  startColumn := 19
  endLine := 24
  endColumn := 46
  assertId := "0_decreases"
  functionName := "active_bitmap_get.active_bitmap_is_empty"
  kind := "assert"
  statementHash := "228fcd842b0bc203"
}
@[vrml_obligation] theorem assert_0_decreases
    (bitmap : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len bitmap = 1)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_3 : i ≤ active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (loop_0_iteration_4 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index bitmap j = 0))))
    (loop_0_iteration_5 : i < active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (assert_0 : (0 ≤ i) ∧ (i < Vermilion.Seq.len bitmap))
    (then_0_assume_8 : (Vermilion.Seq.index bitmap i ≠ 0) → False)
    (then_0_assume_9 : (Vermilion.Seq.index bitmap i ≠ 0) → False)
    (assert_2 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (active_bitmap_get.V16_ACTIVE_BITMAP_WORDS - ((i + 1) % 18446744073709551616))) ∧ ((active_bitmap_get.V16_ACTIVE_BITMAP_WORDS - ((i + 1) % 18446744073709551616)) < (active_bitmap_get.V16_ACTIVE_BITMAP_WORDS - i))) ∨ (((active_bitmap_get.V16_ACTIVE_BITMAP_WORDS - ((i + 1) % 18446744073709551616)) = (active_bitmap_get.V16_ACTIVE_BITMAP_WORDS - i)) ∧ False) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_is_empty.assert_0_decreases

-- vrml:begin active_bitmap_get.active_bitmap_is_empty.ensures_3 420881f0f692eefe
/--
Generated VC `active_bitmap_get.active_bitmap_is_empty.ensures_3`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:17:9-17:35`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `420881f0f692eefe`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩ ⟨Vermilion.Seq.index bitmap j⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 17
  startColumn := 9
  endLine := 17
  endColumn := 35
  assertId := "3"
  functionName := "active_bitmap_get.active_bitmap_is_empty"
  kind := "ensures"
  statementHash := "420881f0f692eefe"
}
@[vrml_obligation] theorem ensures_3
    (bitmap : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : i ≤ active_bitmap_get.V16_ACTIVE_BITMAP_WORDS)
    (loop_0_exit_2 : (∀ (j : Int), (((0 ≤ j) ∧ (j < i)) → (Vermilion.Seq.index bitmap j = 0))))
    (loop_0_exit_3 : (¬ (i < active_bitmap_get.V16_ACTIVE_BITMAP_WORDS))) :
    True ↔ (Vermilion.Seq.index bitmap 0 = 0) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_is_empty.ensures_3

end active_bitmap_get.active_bitmap_is_empty

