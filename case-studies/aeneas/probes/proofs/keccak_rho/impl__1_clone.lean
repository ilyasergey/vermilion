import Vermilion.Obligations
import keccak_rho.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace keccak_rho.impl__1.clone

-- vrml:begin keccak_rho.impl__1.clone.ensures_0 ef2c1bb0fa283a00
/--
Generated VC `keccak_rho.impl__1.clone.ensures_0`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:17:10-17:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `ef2c1bb0fa283a00`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 17
  startColumn := 10
  endLine := 17
  endColumn := 15
  assertId := "0"
  functionName := "keccak_rho.impl__1.clone"
  kind := "ensures"
  statementHash := "ef2c1bb0fa283a00"
}
@[vrml_obligation] theorem ensures_0
    (self : keccak_rho.StateArray)
    (requires_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 self) vrml_i0)))) :
    self = self := by
  vrml [keccak_rho.RHO_OFFSETS]
-- vrml:end keccak_rho.impl__1.clone.ensures_0

end keccak_rho.impl__1.clone

