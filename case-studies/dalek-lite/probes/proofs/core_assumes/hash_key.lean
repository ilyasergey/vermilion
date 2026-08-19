import Vermilion.Obligations
import core_assumes.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace core_assumes.hash_key

-- vrml:begin core_assumes.hash_key.ensures_1 46232dcaa0c98ad3
/--
Generated VC `core_assumes.hash_key.ensures_1`.

- Rust source: `case-studies/dalek-lite/probes/core_assumes.rs:73:9-73:67`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `46232dcaa0c98ad3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/core_assumes.rs"
  startLine := 73
  startColumn := 9
  endLine := 73
  endColumn := 67
  assertId := "1"
  functionName := "core_assumes.hash_key"
  kind := "ensures"
  statementHash := "46232dcaa0c98ad3"
}
@[vrml_obligation] theorem ensures_1
    (H : Type) [Inhabited H]
    (bytes : (Vermilion.Seq Int))
    (state : H)
    (tmp__post : H)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (call_hash_ensures_0 : tmp__post = core_assumes.spec_state_after_hash (H := H) (T := Int) 32 state bytes) :
    tmp__post = core_assumes.spec_state_after_hash (H := H) (T := Int) 32 state bytes := by
  vrml
-- vrml:end core_assumes.hash_key.ensures_1

end core_assumes.hash_key

