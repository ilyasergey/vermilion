import Vermilion.Obligations
import curve25519.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace curve25519.impl__1.index

-- vrml:begin curve25519.impl__1.index.assert_0 7d00eff477ed2f1e
/--
Generated VC `curve25519.impl__1.index.assert_0`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:36:10-36:26`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `0`
- Statement hash: `7d00eff477ed2f1e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 36
  startColumn := 10
  endLine := 36
  endColumn := 26
  assertId := "0"
  functionName := "curve25519.impl__1.index"
  kind := "assert"
  statementHash := "7d00eff477ed2f1e"
}
@[vrml_obligation] theorem assert_0
    (self : curve25519.Scalar52)
    (_index : Int)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 self) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 _index)
    (requires_3 : curve25519.impl__0.index_req self _index) :
    (0 ≤ _index) ∧ (_index < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 self)) := by
  vrml [curve25519.impl__0.index_req]
-- vrml:end curve25519.impl__1.index.assert_0

-- vrml:begin curve25519.impl__1.index.ensures_1 52eead1d23156211
/--
Generated VC `curve25519.impl__1.index.ensures_1`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:34:13-34:40`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `52eead1d23156211`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 self) vrml_i0⟩
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 34
  startColumn := 13
  endLine := 34
  endColumn := 40
  assertId := "1"
  functionName := "curve25519.impl__1.index"
  kind := "ensures"
  statementHash := "52eead1d23156211"
}
@[vrml_obligation] theorem ensures_1
    (self : curve25519.Scalar52)
    (_index : Int)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 self) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 _index)
    (requires_3 : curve25519.impl__0.index_req self _index)
    (assert_0 : (0 ≤ _index) ∧ (_index < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 self))) :
    Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 self) _index = Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 self) _index := by
  vrml [curve25519.impl__0.index_req]
-- vrml:end curve25519.impl__1.index.ensures_1

end curve25519.impl__1.index

