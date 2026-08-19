import Vermilion.Obligations
import vec_pop_uninterp.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace vec_pop_uninterp.pop_test

-- vrml:begin vec_pop_uninterp.pop_test.call_requires_1 f3ae26d6f836b960
/--
Generated VC `vec_pop_uninterp.pop_test.call_requires_1`.

- Rust source: `case-studies/vec-pop-uninterp/vec_pop_uninterp.rs:16:13-16:29`
- Rust/SST construct: call unwrap
- AssertId: `1`
- Statement hash: `f3ae26d6f836b960`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index t vrml_i0⟩ ⟨Vermilion.Seq.index t i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-pop-uninterp/vec_pop_uninterp.rs"
  startLine := 16
  startColumn := 13
  endLine := 16
  endColumn := 29
  assertId := "1"
  functionName := "vec_pop_uninterp.pop_test"
  kind := "call_requires"
  statementHash := "f3ae26d6f836b960"
}
@[vrml_obligation] theorem call_requires_1
    (t : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp_ : (core.option.Option Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len t))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len t)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index t vrml_i0))))
    (requires_2 : Vermilion.Seq.len t > 0)
    (requires_3 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len t)) → vec_pop_uninterp.uninterp_fn (Vermilion.Seq.index t i))))
    (assume_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_pop_ensures_0 : Vermilion.inUnsignedRange 64 (core.option.Option.get_Some__0 tmp_))
    (call_pop_ensures_1 : (Vermilion.Seq.len t > 0) → ((tmp_ = core.option.Option.Some (Vermilion.Seq.index t (Vermilion.Seq.len t - 1))) ∧ (tmp__post = Vermilion.Seq.subrange t 0 (Vermilion.Seq.len t - 1))))
    (call_pop_ensures_2 : (Vermilion.Seq.len t = 0) → ((tmp_ = core.option.Option.None (V := Int)) ∧ (tmp__post = t))) :
    core.option.Option.is_Some tmp_ := by
  vrml
-- vrml:end vec_pop_uninterp.pop_test.call_requires_1

-- vrml:begin vec_pop_uninterp.pop_test.assert_2 b724cbb9714db562
/--
Generated VC `vec_pop_uninterp.pop_test.assert_2`.

- Rust source: `case-studies/vec-pop-uninterp/vec_pop_uninterp.rs:17:12-17:26`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `b724cbb9714db562`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index t vrml_i0⟩ ⟨Vermilion.Seq.index t i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-pop-uninterp/vec_pop_uninterp.rs"
  startLine := 17
  startColumn := 12
  endLine := 17
  endColumn := 26
  assertId := "2"
  functionName := "vec_pop_uninterp.pop_test"
  kind := "assert"
  statementHash := "b724cbb9714db562"
}
@[vrml_obligation] theorem assert_2
    (t : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp_ : (core.option.Option Int))
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len t))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len t)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index t vrml_i0))))
    (requires_2 : Vermilion.Seq.len t > 0)
    (requires_3 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len t)) → vec_pop_uninterp.uninterp_fn (Vermilion.Seq.index t i))))
    (assume_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_pop_ensures_0 : Vermilion.inUnsignedRange 64 (core.option.Option.get_Some__0 tmp_))
    (call_pop_ensures_1 : (Vermilion.Seq.len t > 0) → ((tmp_ = core.option.Option.Some (Vermilion.Seq.index t (Vermilion.Seq.len t - 1))) ∧ (tmp__post = Vermilion.Seq.subrange t 0 (Vermilion.Seq.len t - 1))))
    (call_pop_ensures_2 : (Vermilion.Seq.len t = 0) → ((tmp_ = core.option.Option.None (V := Int)) ∧ (tmp__post = t)))
    (call_unwrap_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_unwrap_ensures_1 : tmp__2 = core.option.Option.get_Some__0 tmp_) :
    vec_pop_uninterp.uninterp_fn tmp__2 := by
  vrml
-- vrml:end vec_pop_uninterp.pop_test.assert_2

-- vrml:begin vec_pop_uninterp.pop_test.assert_3 09f3595f5d61e393
/--
Generated VC `vec_pop_uninterp.pop_test.assert_3`.

- Rust source: `case-studies/vec-pop-uninterp/vec_pop_uninterp.rs:18:12-18:74`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `09f3595f5d61e393`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post i⟩ ⟨Vermilion.Seq.index t vrml_i0⟩ ⟨Vermilion.Seq.index t i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-pop-uninterp/vec_pop_uninterp.rs"
  startLine := 18
  startColumn := 12
  endLine := 18
  endColumn := 74
  assertId := "3"
  functionName := "vec_pop_uninterp.pop_test"
  kind := "assert"
  statementHash := "09f3595f5d61e393"
}
@[vrml_obligation] theorem assert_3
    (t : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp_ : (core.option.Option Int))
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len t))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len t)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index t vrml_i0))))
    (requires_2 : Vermilion.Seq.len t > 0)
    (requires_3 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len t)) → vec_pop_uninterp.uninterp_fn (Vermilion.Seq.index t i))))
    (assume_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_pop_ensures_0 : Vermilion.inUnsignedRange 64 (core.option.Option.get_Some__0 tmp_))
    (call_pop_ensures_1 : (Vermilion.Seq.len t > 0) → ((tmp_ = core.option.Option.Some (Vermilion.Seq.index t (Vermilion.Seq.len t - 1))) ∧ (tmp__post = Vermilion.Seq.subrange t 0 (Vermilion.Seq.len t - 1))))
    (call_pop_ensures_2 : (Vermilion.Seq.len t = 0) → ((tmp_ = core.option.Option.None (V := Int)) ∧ (tmp__post = t)))
    (call_unwrap_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_unwrap_ensures_1 : tmp__2 = core.option.Option.get_Some__0 tmp_)
    (assert_2 : vec_pop_uninterp.uninterp_fn tmp__2) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len tmp__post)) → vec_pop_uninterp.uninterp_fn (Vermilion.Seq.index tmp__post i))) := by
  -- After pop, tmp__post = subrange t 0 (len-1); its slot i is t[0+i] = t[i],
  -- which satisfies the uninterpreted predicate by requires_3.
  -- (Restored verbatim after the #18 ctor ascription changed the
  -- statement hash — `Option.None` gained its explicit value type.)
  obtain ⟨_, hpost⟩ := call_pop_ensures_1 requires_2
  subst hpost
  rintro i ⟨hi0, hilen⟩
  rw [Vermilion.Seq.len_subrange t 0 (Vermilion.Seq.len t - 1)
    (by omega) (by omega) (by omega)] at hilen
  rw [Vermilion.Seq.index_subrange t 0 (Vermilion.Seq.len t - 1) i
    (by omega) hi0 (by omega)]
  have := requires_3 (0 + i) ⟨by omega, by omega⟩
  simpa using this
-- vrml:end vec_pop_uninterp.pop_test.assert_3

end vec_pop_uninterp.pop_test

