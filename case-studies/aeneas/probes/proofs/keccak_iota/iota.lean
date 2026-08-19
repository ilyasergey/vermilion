import Vermilion.Obligations
import keccak_iota.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace keccak_iota.iota

-- vrml:begin keccak_iota.iota.call_requires_0 41d7447e190a919e
/--
Generated VC `keccak_iota.iota.call_requires_0`.

- Rust source: `case-studies/aeneas/probes/keccak_iota.rs:57:18-57:26`
- Rust/SST construct: call index
- AssertId: `0`
- Statement hash: `41d7447e190a919e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_iota.rs"
  startLine := 57
  startColumn := 18
  endLine := 57
  endColumn := 26
  assertId := "0"
  functionName := "keccak_iota.iota"
  kind := "call_requires"
  statementHash := "41d7447e190a919e"
}
@[vrml_obligation] theorem call_requires_0
    (ir : Int)
    (a : keccak_iota.StateArray)
    (index_req_at_0 : (keccak_iota.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.inUnsignedRange 64 ir)
    (requires_1 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a) = 25)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_3 : ir < 24) :
    index_req_at_0 a (vermilion.tuple_2.tuple_2 0 0) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_iota.iota.call_requires_0

-- vrml:begin keccak_iota.iota.assert_1 d9684e368babeab8
/--
Generated VC `keccak_iota.iota.assert_1`.

- Rust source: `case-studies/aeneas/probes/keccak_iota.rs:57:29-57:40`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `1`
- Statement hash: `d9684e368babeab8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_iota.rs"
  startLine := 57
  startColumn := 29
  endLine := 57
  endColumn := 40
  assertId := "1"
  functionName := "keccak_iota.iota"
  kind := "assert"
  statementHash := "d9684e368babeab8"
}
@[vrml_obligation] theorem assert_1
    (ir : Int)
    (a : keccak_iota.StateArray)
    (index_req_at_0 : (keccak_iota.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (tmp_ : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 ir)
    (requires_1 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a) = 25)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_3 : ir < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_) :
    (0 ≤ ir) ∧ (ir < Vermilion.Seq.len keccak_iota.IOTA_RC) := by
  vrml [keccak_iota.IOTA_RC]
-- vrml:end keccak_iota.iota.assert_1

-- vrml:begin keccak_iota.iota.call_requires_2 f67ec8acc8e288bc
/--
Generated VC `keccak_iota.iota.call_requires_2`.

- Rust source: `case-studies/aeneas/probes/keccak_iota.rs:57:5-57:15`
- Rust/SST construct: call index_mut
- AssertId: `2`
- Statement hash: `f67ec8acc8e288bc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_iota.rs"
  startLine := 57
  startColumn := 5
  endLine := 57
  endColumn := 15
  assertId := "2"
  functionName := "keccak_iota.iota"
  kind := "call_requires"
  statementHash := "f67ec8acc8e288bc"
}
@[vrml_obligation] theorem call_requires_2
    (ir : Int)
    (a : keccak_iota.StateArray)
    (index_req_at_0 : (keccak_iota.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (tmp_ : Int)
    (tmp__post : keccak_iota.StateArray)
    (tmp__post_2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 ir)
    (requires_1 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a) = 25)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_3 : ir < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ ir) ∧ (ir < Vermilion.Seq.len keccak_iota.IOTA_RC))
    (assume_6 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 tmp__post_2) :
    index_req_at_0 a (vermilion.tuple_2.tuple_2 0 0) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_iota.iota.call_requires_2

-- vrml:begin keccak_iota.iota.ensures_3_0 d321e3eb5331e0b9
/--
Generated VC `keccak_iota.iota.ensures_3_0`.

- Rust source: `case-studies/aeneas/probes/keccak_iota.rs:53:9-53:48`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_0`
- Statement hash: `d321e3eb5331e0b9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def ensures_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_iota.rs"
  startLine := 53
  startColumn := 9
  endLine := 53
  endColumn := 48
  assertId := "3_0"
  functionName := "keccak_iota.iota"
  kind := "ensures"
  statementHash := "d321e3eb5331e0b9"
}
@[vrml_obligation] theorem ensures_3_0
    (ir : Int)
    (a : keccak_iota.StateArray)
    (index_req_at_0 : (keccak_iota.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (tmp_ : Int)
    (tmp__post : keccak_iota.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 ir)
    (requires_1 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a) = 25)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_3 : ir < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ ir) ∧ (ir < Vermilion.Seq.len keccak_iota.IOTA_RC))
    (assume_6 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_10 : tmp__post_2 = Vermilion.Bits.bxor 64 tmp_ (Vermilion.Seq.index keccak_iota.IOTA_RC ir)) :
    Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 tmp__post) 0 = Vermilion.Bits.bxor 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) 0) (Vermilion.Seq.index keccak_iota.IOTA_RC ir) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_iota.iota.ensures_3_0

-- vrml:begin keccak_iota.iota.ensures_3_1 e776b26dfc692474
/--
Generated VC `keccak_iota.iota.ensures_3_1`.

- Rust source: `case-studies/aeneas/probes/keccak_iota.rs:54:9-54:58`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_1`
- Statement hash: `e776b26dfc692474`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 tmp__post) k⟩ ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) k⟩ ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def ensures_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_iota.rs"
  startLine := 54
  startColumn := 9
  endLine := 54
  endColumn := 58
  assertId := "3_1"
  functionName := "keccak_iota.iota"
  kind := "ensures"
  statementHash := "e776b26dfc692474"
}
@[vrml_obligation] theorem ensures_3_1
    (ir : Int)
    (a : keccak_iota.StateArray)
    (index_req_at_0 : (keccak_iota.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (tmp_ : Int)
    (tmp__post : keccak_iota.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 ir)
    (requires_1 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a) = 25)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_3 : ir < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (assert_1 : (0 ≤ ir) ∧ (ir < Vermilion.Seq.len keccak_iota.IOTA_RC))
    (assume_6 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (assume_10 : tmp__post_2 = Vermilion.Bits.bxor 64 tmp_ (Vermilion.Seq.index keccak_iota.IOTA_RC ir)) :
    (∀ (k : Int), (((1 ≤ k) ∧ (k < 25)) → (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 tmp__post) k = Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 a) k))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_iota.iota.ensures_3_1

end keccak_iota.iota

