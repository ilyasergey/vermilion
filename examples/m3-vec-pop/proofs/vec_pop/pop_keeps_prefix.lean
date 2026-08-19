import Vermilion.Obligations
import vec_pop.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace vec_pop.pop_keeps_prefix

-- vrml:begin vec_pop.pop_keeps_prefix.ensures_1 b167fb3ed1f0a055
/--
Generated VC `vec_pop.pop_keeps_prefix.ensures_1`.

- Rust source: `examples/m3-vec-pop/vec_pop.rs:25:9-25:76`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `b167fb3ed1f0a055`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post k⟩ ⟨Vermilion.Seq.index v k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-pop/vec_pop.rs"
  startLine := 25
  startColumn := 9
  endLine := 25
  endColumn := 76
  assertId := "1"
  functionName := "vec_pop.pop_keeps_prefix"
  kind := "ensures"
  statementHash := "b167fb3ed1f0a055"
}
@[vrml_obligation] theorem ensures_1
    (v : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__ : (core.option.Option Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.Seq.len v > 0)
    (assume_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_pop_ensures_0 : Vermilion.inUnsignedRange 64 (core.option.Option.get_Some__0 tmp__))
    (call_pop_ensures_1 : (Vermilion.Seq.len v > 0) → ((tmp__ = core.option.Option.Some (Vermilion.Seq.index v (Vermilion.Seq.len v - 1))) ∧ (tmp__post = Vermilion.Seq.subrange v 0 (Vermilion.Seq.len v - 1))))
    (call_pop_ensures_2 : (Vermilion.Seq.len v = 0) → ((tmp__ = core.option.Option.None (V := Int)) ∧ (tmp__post = v))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < Vermilion.Seq.len tmp__post)) → (Vermilion.Seq.index tmp__post k = Vermilion.Seq.index v k))) := by
  -- Interactive discharge: the popped vector is the `[0, len v - 1)`
  -- subrange, whose elements are the originals pointwise.
  intro k hk
  obtain ⟨-, hpost⟩ := call_pop_ensures_1 requires_2
  subst hpost
  rw [Vermilion.Seq.len_subrange v 0 (Vermilion.Seq.len v - 1)
    (by omega) (by omega) (by omega)] at hk
  rw [Vermilion.Seq.index_subrange v 0 (Vermilion.Seq.len v - 1) k
    (by omega) (by omega) (by omega)]
  norm_num
-- vrml:end vec_pop.pop_keeps_prefix.ensures_1

end vec_pop.pop_keeps_prefix

