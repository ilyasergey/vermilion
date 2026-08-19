import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace vec_set.set_two

-- vrml:begin vec_set.set_two.call_requires_0 eace59c2a91cad68
/--
Generated VC `vec_set.set_two.call_requires_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:28:5-28:16`
- Rust/SST construct: call set
- AssertId: `0`
- Statement hash: `eace59c2a91cad68`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 28
  startColumn := 5
  endLine := 28
  endColumn := 16
  assertId := "0"
  functionName := "vec_set.set_two"
  kind := "call_requires"
  statementHash := "eace59c2a91cad68"
}
@[vrml_obligation] theorem call_requires_0
    (v : (Vermilion.Seq Int))
    (x : Int)
    (y : Int)
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.inUnsignedRange 64 y)
    (requires_4 : Vermilion.Seq.len v ≥ 2)
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    0 < Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.set_two.call_requires_0

-- vrml:begin vec_set.set_two.call_requires_1 e38526d1707bad65
/--
Generated VC `vec_set.set_two.call_requires_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:29:5-29:16`
- Rust/SST construct: call set
- AssertId: `1`
- Statement hash: `e38526d1707bad65`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 29
  startColumn := 5
  endLine := 29
  endColumn := 16
  assertId := "1"
  functionName := "vec_set.set_two"
  kind := "call_requires"
  statementHash := "e38526d1707bad65"
}
@[vrml_obligation] theorem call_requires_1
    (v : (Vermilion.Seq Int))
    (x : Int)
    (y : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.inUnsignedRange 64 y)
    (requires_4 : Vermilion.Seq.len v ≥ 2)
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v 0 x)
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0)))) :
    1 < Vermilion.Seq.len tmp__post := by
  vrml
-- vrml:end vec_set.set_two.call_requires_1

-- vrml:begin vec_set.set_two.ensures_2_0 350bfc8620903d4f
/--
Generated VC `vec_set.set_two.ensures_2_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:25:9-25:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_0`
- Statement hash: `350bfc8620903d4f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def ensures_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 25
  startColumn := 9
  endLine := 25
  endColumn := 25
  assertId := "2_0"
  functionName := "vec_set.set_two"
  kind := "ensures"
  statementHash := "350bfc8620903d4f"
}
@[vrml_obligation] theorem ensures_2_0
    (v : (Vermilion.Seq Int))
    (x : Int)
    (y : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.inUnsignedRange 64 y)
    (requires_4 : Vermilion.Seq.len v ≥ 2)
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v 0 x)
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_set_1_ensures_0 : tmp__post_2 = Vermilion.Seq.update tmp__post 1 y) :
    Vermilion.Seq.index tmp__post_2 0 = x := by
  vrml
-- vrml:end vec_set.set_two.ensures_2_0

-- vrml:begin vec_set.set_two.ensures_2_1 cdff9cc70c44497f
/--
Generated VC `vec_set.set_two.ensures_2_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:26:9-26:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_1`
- Statement hash: `cdff9cc70c44497f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def ensures_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 26
  startColumn := 9
  endLine := 26
  endColumn := 25
  assertId := "2_1"
  functionName := "vec_set.set_two"
  kind := "ensures"
  statementHash := "cdff9cc70c44497f"
}
@[vrml_obligation] theorem ensures_2_1
    (v : (Vermilion.Seq Int))
    (x : Int)
    (y : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 x)
    (requires_3 : Vermilion.inUnsignedRange 64 y)
    (requires_4 : Vermilion.Seq.len v ≥ 2)
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v 0 x)
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_set_1_ensures_0 : tmp__post_2 = Vermilion.Seq.update tmp__post 1 y) :
    Vermilion.Seq.index tmp__post_2 1 = y := by
  -- update(1,y) sets slot 1 (index_update_same); length carried by len_update.
  subst call_set_ensures_0
  subst call_set_1_ensures_0
  rw [Vermilion.Seq.index_update_same (Vermilion.Seq.update v 0 x) 1 y (by decide)
      (by rw [Vermilion.Seq.len_update]; omega)]
-- vrml:end vec_set.set_two.ensures_2_1

end vec_set.set_two

