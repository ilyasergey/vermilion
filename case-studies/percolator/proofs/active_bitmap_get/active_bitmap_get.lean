import Vermilion.Obligations
import active_bitmap_get.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace active_bitmap_get.active_bitmap_get

-- vrml:begin active_bitmap_get.active_bitmap_get.ensures_0_0 4ebe4b4b611f7ab2
/--
Generated VC `active_bitmap_get.active_bitmap_get.ensures_0_0`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:17:9-17:65`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_0`
- Statement hash: `4ebe4b4b611f7ab2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 17
  startColumn := 9
  endLine := 17
  endColumn := 65
  assertId := "0_0"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "ensures"
  statementHash := "4ebe4b4b611f7ab2"
}
@[vrml_obligation] theorem ensures_0_0
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 leg_slot_index)
    (branch_0 : leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) :
    (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → (¬ False) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_get.active_bitmap_get.ensures_0_0

-- vrml:begin active_bitmap_get.active_bitmap_get.ensures_0_1 63866004fe159c2b
/--
Generated VC `active_bitmap_get.active_bitmap_get.ensures_0_1`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:18:9-20:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_1`
- Statement hash: `63866004fe159c2b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 18
  startColumn := 9
  endLine := 20
  endColumn := 10
  assertId := "0_1"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "ensures"
  statementHash := "63866004fe159c2b"
}
@[vrml_obligation] theorem ensures_0_1
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 leg_slot_index)
    (branch_0 : leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) :
    (leg_slot_index < active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → (False ↔ (¬ (Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index bitmap (leg_slot_index / 64)) (leg_slot_index % 64)) 1 = 0))) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_get.active_bitmap_get.ensures_0_1

-- vrml:begin active_bitmap_get.active_bitmap_get.assert_1 1eb694810806a89d
/--
Generated VC `active_bitmap_get.active_bitmap_get.assert_1`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:25:16-25:35`
- Rust/SST construct: possible division by zero
- AssertId: `1`
- Statement hash: `1eb694810806a89d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 25
  startColumn := 16
  endLine := 25
  endColumn := 35
  assertId := "1"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "assert"
  statementHash := "1eb694810806a89d"
}
@[vrml_obligation] theorem assert_1
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 leg_slot_index)
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False) :
    64 ≠ 0 := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_get.active_bitmap_get.assert_1

-- vrml:begin active_bitmap_get.active_bitmap_get.assert_2 5fba249e31cb2001
/--
Generated VC `active_bitmap_get.active_bitmap_get.assert_2`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:26:15-26:34`
- Rust/SST construct: possible division by zero
- AssertId: `2`
- Statement hash: `5fba249e31cb2001`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 26
  startColumn := 15
  endLine := 26
  endColumn := 34
  assertId := "2"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "assert"
  statementHash := "5fba249e31cb2001"
}
@[vrml_obligation] theorem assert_2
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 leg_slot_index)
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0) :
    64 ≠ 0 := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_get.active_bitmap_get.assert_2

-- vrml:begin active_bitmap_get.active_bitmap_get.assert_3 426455ffeac83e1f
/--
Generated VC `active_bitmap_get.active_bitmap_get.assert_3`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:46:7-46:19`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `3`
- Statement hash: `426455ffeac83e1f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 46
  startColumn := 7
  endLine := 46
  endColumn := 19
  assertId := "3"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "assert"
  statementHash := "426455ffeac83e1f"
}
@[vrml_obligation] theorem assert_3
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 leg_slot_index)
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0) :
    (0 ≤ ((leg_slot_index / 64) % 18446744073709551616)) ∧ (((leg_slot_index / 64) % 18446744073709551616) < Vermilion.Seq.len bitmap) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.assert_3

-- vrml:begin active_bitmap_get.active_bitmap_get.assert_4 b7b530b6fe48f46e
/--
Generated VC `active_bitmap_get.active_bitmap_get.assert_4`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:46:6-46:27`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `4`
- Statement hash: `b7b530b6fe48f46e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 46
  startColumn := 6
  endLine := 46
  endColumn := 27
  assertId := "4"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "assert"
  statementHash := "b7b530b6fe48f46e"
}
@[vrml_obligation] theorem assert_4
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 leg_slot_index)
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0)
    (assert_3 : (0 ≤ ((leg_slot_index / 64) % 18446744073709551616)) ∧ (((leg_slot_index / 64) % 18446744073709551616) < Vermilion.Seq.len bitmap)) :
    (0 ≤ ((leg_slot_index % 64) % 18446744073709551616)) ∧ (((leg_slot_index % 64) % 18446744073709551616) < 64) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.assert_4

-- vrml:begin active_bitmap_get.active_bitmap_get.ensures_5_0 388f3314a2fd6051
/--
Generated VC `active_bitmap_get.active_bitmap_get.ensures_5_0`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:36:9-36:65`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_0`
- Statement hash: `388f3314a2fd6051`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 36
  startColumn := 9
  endLine := 36
  endColumn := 65
  assertId := "5_0"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "ensures"
  statementHash := "388f3314a2fd6051"
}
@[vrml_obligation] theorem ensures_5_0
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 leg_slot_index)
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0)
    (assert_3 : (0 ≤ ((leg_slot_index / 64) % 18446744073709551616)) ∧ (((leg_slot_index / 64) % 18446744073709551616) < Vermilion.Seq.len bitmap))
    (assert_4 : (0 ≤ ((leg_slot_index % 64) % 18446744073709551616)) ∧ (((leg_slot_index % 64) % 18446744073709551616) < 64)) :
    (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → (¬ (Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index bitmap ((leg_slot_index / 64) % 18446744073709551616)) ((leg_slot_index % 64) % 18446744073709551616)) 1 ≠ 0)) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.ensures_5_0

-- vrml:begin active_bitmap_get.active_bitmap_get.ensures_5_1 4a48eae5554cb4f6
/--
Generated VC `active_bitmap_get.active_bitmap_get.ensures_5_1`.

- Rust source: `case-studies/percolator/active_bitmap_get.rs:37:9-39:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_1`
- Statement hash: `4a48eae5554cb4f6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bitmap vrml_i0⟩
-/
def ensures_5_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_get.rs"
  startLine := 37
  startColumn := 9
  endLine := 39
  endColumn := 10
  assertId := "5_1"
  functionName := "active_bitmap_get.active_bitmap_get"
  kind := "ensures"
  statementHash := "4a48eae5554cb4f6"
}
@[vrml_obligation] theorem ensures_5_1
    (bitmap : (Vermilion.Seq Int))
    (leg_slot_index : Int)
    (requires_0 : Vermilion.Seq.len bitmap = 1)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bitmap)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index bitmap vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 leg_slot_index)
    (then_0_assume_4 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (then_0_assume_5 : (leg_slot_index ≥ active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → False)
    (assert_1 : 64 ≠ 0)
    (assert_2 : 64 ≠ 0)
    (assert_3 : (0 ≤ ((leg_slot_index / 64) % 18446744073709551616)) ∧ (((leg_slot_index / 64) % 18446744073709551616) < Vermilion.Seq.len bitmap))
    (assert_4 : (0 ≤ ((leg_slot_index % 64) % 18446744073709551616)) ∧ (((leg_slot_index % 64) % 18446744073709551616) < 64)) :
    (leg_slot_index < active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N) → ((Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index bitmap ((leg_slot_index / 64) % 18446744073709551616)) ((leg_slot_index % 64) % 18446744073709551616)) 1 ≠ 0) ↔ (¬ (Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 (Vermilion.Seq.index bitmap (leg_slot_index / 64)) (leg_slot_index % 64)) 1 = 0))) := by
  vrml [active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N, active_bitmap_get.V16_ACTIVE_BITMAP_WORDS]
-- vrml:end active_bitmap_get.active_bitmap_get.ensures_5_1

end active_bitmap_get.active_bitmap_get

