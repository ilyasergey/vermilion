import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace vec_set.set_at

-- vrml:begin vec_set.set_at.call_requires_0 ed16e5056d6b2c42
/--
Generated VC `vec_set.set_at.call_requires_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:17:5-17:16`
- Rust/SST construct: call set
- AssertId: `0`
- Statement hash: `ed16e5056d6b2c42`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 17
  startColumn := 5
  endLine := 17
  endColumn := 16
  assertId := "0"
  functionName := "vec_set.set_at"
  kind := "call_requires"
  statementHash := "ed16e5056d6b2c42"
}
@[vrml_obligation] theorem call_requires_0
    (v : (Vermilion.Seq Int))
    (i : Int)
    (x : Int)
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 i)
    (requires_3 : Vermilion.inUnsignedRange 64 x)
    (requires_4 : i < Vermilion.Seq.len v)
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    i < Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.set_at.call_requires_0

-- vrml:begin vec_set.set_at.ensures_1_0 45a189d5a756ece3
/--
Generated VC `vec_set.set_at.ensures_1_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:14:9-14:39`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_0`
- Statement hash: `45a189d5a756ece3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def ensures_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 14
  startColumn := 9
  endLine := 14
  endColumn := 39
  assertId := "1_0"
  functionName := "vec_set.set_at"
  kind := "ensures"
  statementHash := "45a189d5a756ece3"
}
@[vrml_obligation] theorem ensures_1_0
    (v : (Vermilion.Seq Int))
    (i : Int)
    (x : Int)
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 i)
    (requires_3 : Vermilion.inUnsignedRange 64 x)
    (requires_4 : i < Vermilion.Seq.len v)
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v i x) :
    Vermilion.Seq.len tmp__post = Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.set_at.ensures_1_0

-- vrml:begin vec_set.set_at.ensures_1_1 b9a53e60a491675c
/--
Generated VC `vec_set.set_at.ensures_1_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:15:9-15:32`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_1`
- Statement hash: `b9a53e60a491675c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def ensures_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 15
  startColumn := 9
  endLine := 15
  endColumn := 32
  assertId := "1_1"
  functionName := "vec_set.set_at"
  kind := "ensures"
  statementHash := "b9a53e60a491675c"
}
@[vrml_obligation] theorem ensures_1_1
    (v : (Vermilion.Seq Int))
    (i : Int)
    (x : Int)
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 i)
    (requires_3 : Vermilion.inUnsignedRange 64 x)
    (requires_4 : i < Vermilion.Seq.len v)
    (assume_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_6 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v i x) :
    Vermilion.Seq.index tmp__post i = x := by
  vrml
-- vrml:end vec_set.set_at.ensures_1_1

end vec_set.set_at

