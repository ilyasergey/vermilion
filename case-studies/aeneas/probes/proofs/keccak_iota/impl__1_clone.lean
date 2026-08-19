import Vermilion.Obligations
import keccak_iota.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace keccak_iota.impl__1.clone

-- vrml:begin keccak_iota.impl__1.clone.ensures_0 b6cbbae0b10b02fe
/--
Generated VC `keccak_iota.impl__1.clone.ensures_0`.

- Rust source: `case-studies/aeneas/probes/keccak_iota.rs:18:10-18:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `b6cbbae0b10b02fe`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_iota.rs"
  startLine := 18
  startColumn := 10
  endLine := 18
  endColumn := 15
  assertId := "0"
  functionName := "keccak_iota.impl__1.clone"
  kind := "ensures"
  statementHash := "b6cbbae0b10b02fe"
}
@[vrml_obligation] theorem ensures_0
    (self : keccak_iota.StateArray)
    (requires_0 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 self) vrml_i0)))) :
    self = self := by
  vrml [keccak_iota.IOTA_RC]
-- vrml:end keccak_iota.impl__1.clone.ensures_0

end keccak_iota.impl__1.clone

