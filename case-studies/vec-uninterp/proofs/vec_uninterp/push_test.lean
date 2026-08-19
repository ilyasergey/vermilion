import Vermilion.Obligations
import vec_uninterp.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace vec_uninterp.push_test

-- vrml:begin vec_uninterp.push_test.assert_1 5d886efde4d3a1db
/--
Generated VC `vec_uninterp.push_test.assert_1`.

- Rust source: `case-studies/vec-uninterp/vec_uninterp.rs:17:12-17:74`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `5d886efde4d3a1db`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post i⟩ ⟨Vermilion.Seq.index t vrml_i0⟩ ⟨Vermilion.Seq.index t i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/vec-uninterp/vec_uninterp.rs"
  startLine := 17
  startColumn := 12
  endLine := 17
  endColumn := 74
  assertId := "1"
  functionName := "vec_uninterp.push_test"
  kind := "assert"
  statementHash := "5d886efde4d3a1db"
}
@[vrml_obligation] theorem assert_1
    (t : (Vermilion.Seq Int))
    (y : Int)
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len t))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len t)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index t vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 y)
    (requires_3 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len t)) → vec_uninterp.uninterp_fn (Vermilion.Seq.index t i))))
    (requires_4 : vec_uninterp.uninterp_fn y)
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push t y) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len tmp__post)) → vec_uninterp.uninterp_fn (Vermilion.Seq.index tmp__post i))) := by
  -- push t y = t ++ [y]: indices below len t read back t[i] (the predicate
  -- holds by requires_3); index len t reads back y (holds by requires_4).
  -- `uninterp_fn` is opaque — used purely by congruence, never unfolded.
  subst call_push_ensures_0
  rintro i ⟨h0, hlt⟩
  rw [Vermilion.Seq.len_push] at hlt
  by_cases hlen : i < Vermilion.Seq.len t
  · rw [Vermilion.Seq.index_push_prefix t y i h0 hlen]
    exact requires_3 i ⟨h0, hlen⟩
  · rw [Vermilion.Seq.index_push_at t y i (by omega)]
    exact requires_4
-- vrml:end vec_uninterp.push_test.assert_1

end vec_uninterp.push_test

