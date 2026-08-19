import Vermilion.Obligations
import vec_pop.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace vec_pop.pop_one

-- vrml:begin vec_pop.pop_one.call_requires_1 3c4c54d731c7fccc
/--
Generated VC `vec_pop.pop_one.call_requires_1`.

- Rust source: `examples/m3-vec-pop/vec_pop.rs:17:5-17:21`
- Rust/SST construct: call unwrap
- AssertId: `1`
- Statement hash: `3c4c54d731c7fccc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-pop/vec_pop.rs"
  startLine := 17
  startColumn := 5
  endLine := 17
  endColumn := 21
  assertId := "1"
  functionName := "vec_pop.pop_one"
  kind := "call_requires"
  statementHash := "3c4c54d731c7fccc"
}
@[vrml_obligation] theorem call_requires_1
    (v : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp_ : (core.option.Option Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.Seq.len v > 0)
    (assume_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_pop_ensures_0 : Vermilion.inUnsignedRange 64 (core.option.Option.get_Some__0 tmp_))
    (call_pop_ensures_1 : (Vermilion.Seq.len v > 0) → ((tmp_ = core.option.Option.Some (Vermilion.Seq.index v (Vermilion.Seq.len v - 1))) ∧ (tmp__post = Vermilion.Seq.subrange v 0 (Vermilion.Seq.len v - 1))))
    (call_pop_ensures_2 : (Vermilion.Seq.len v = 0) → ((tmp_ = core.option.Option.None (V := Int)) ∧ (tmp__post = v))) :
    core.option.Option.is_Some tmp_ := by
  vrml
-- vrml:end vec_pop.pop_one.call_requires_1

-- vrml:begin vec_pop.pop_one.ensures_2_0 b3c0d4e797ea9258
/--
Generated VC `vec_pop.pop_one.ensures_2_0`.

- Rust source: `examples/m3-vec-pop/vec_pop.rs:14:9-14:43`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_0`
- Statement hash: `b3c0d4e797ea9258`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def ensures_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-pop/vec_pop.rs"
  startLine := 14
  startColumn := 9
  endLine := 14
  endColumn := 43
  assertId := "2_0"
  functionName := "vec_pop.pop_one"
  kind := "ensures"
  statementHash := "b3c0d4e797ea9258"
}
@[vrml_obligation] theorem ensures_2_0
    (v : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp_ : (core.option.Option Int))
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.Seq.len v > 0)
    (assume_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_pop_ensures_0 : Vermilion.inUnsignedRange 64 (core.option.Option.get_Some__0 tmp_))
    (call_pop_ensures_1 : (Vermilion.Seq.len v > 0) → ((tmp_ = core.option.Option.Some (Vermilion.Seq.index v (Vermilion.Seq.len v - 1))) ∧ (tmp__post = Vermilion.Seq.subrange v 0 (Vermilion.Seq.len v - 1))))
    (call_pop_ensures_2 : (Vermilion.Seq.len v = 0) → ((tmp_ = core.option.Option.None (V := Int)) ∧ (tmp__post = v)))
    (call_unwrap_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_unwrap_ensures_1 : tmp__2 = core.option.Option.get_Some__0 tmp_) :
    Vermilion.Seq.len tmp__post = (Vermilion.Seq.len v - 1) := by
  vrml
-- vrml:end vec_pop.pop_one.ensures_2_0

-- vrml:begin vec_pop.pop_one.ensures_2_1 d8a718f8113dc629
/--
Generated VC `vec_pop.pop_one.ensures_2_1`.

- Rust source: `examples/m3-vec-pop/vec_pop.rs:15:9-15:38`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_1`
- Statement hash: `d8a718f8113dc629`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def ensures_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-pop/vec_pop.rs"
  startLine := 15
  startColumn := 9
  endLine := 15
  endColumn := 38
  assertId := "2_1"
  functionName := "vec_pop.pop_one"
  kind := "ensures"
  statementHash := "d8a718f8113dc629"
}
@[vrml_obligation] theorem ensures_2_1
    (v : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp_ : (core.option.Option Int))
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.Seq.len v > 0)
    (assume_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_pop_ensures_0 : Vermilion.inUnsignedRange 64 (core.option.Option.get_Some__0 tmp_))
    (call_pop_ensures_1 : (Vermilion.Seq.len v > 0) → ((tmp_ = core.option.Option.Some (Vermilion.Seq.index v (Vermilion.Seq.len v - 1))) ∧ (tmp__post = Vermilion.Seq.subrange v 0 (Vermilion.Seq.len v - 1))))
    (call_pop_ensures_2 : (Vermilion.Seq.len v = 0) → ((tmp_ = core.option.Option.None (V := Int)) ∧ (tmp__post = v)))
    (call_unwrap_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_unwrap_ensures_1 : tmp__2 = core.option.Option.get_Some__0 tmp_) :
    tmp__2 = Vermilion.Seq.index v (Vermilion.Seq.len v - 1) := by
  vrml
-- vrml:end vec_pop.pop_one.ensures_2_1

end vec_pop.pop_one

