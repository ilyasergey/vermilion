import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

section

-- vrml:begin c140_bool_ite_evidence_wrong.bad_encode_bool.evidence_decidable_prop c44de06e7592bbb4
/--
Generated typeclass evidence obligation `c140_bool_ite_evidence_wrong.bad_encode_bool.evidence_decidable_prop`.

- Rust source: `tests/differential/c140_bool_ite_evidence_wrong.rs:6:13-6:36`
- Evidence origin: Rust `bool` represented as Lean `Prop` requires explicit decision evidence
- Target: `Decidable p`
- Consumers: c140_bool_ite_evidence_wrong.bad_encode_bool.ensures_0
- Statement hash: `c44de06e7592bbb4`
-/
def c140_bool_ite_evidence_wrong_bad_encode_bool_evidence_decidable_prop_meta : Vermilion.ObligationMeta := {
  rustFile := "tests/differential/c140_bool_ite_evidence_wrong.rs"
  startLine := 6
  startColumn := 13
  endLine := 6
  endColumn := 36
  assertId := "typeclass-evidence"
  functionName := "c140_bool_ite_evidence_wrong.bad_encode_bool"
  kind := "typeclass_evidence"
  statementHash := "c44de06e7592bbb4"
}
@[vrml_evidence] noncomputable local instance c140_bool_ite_evidence_wrong_bad_encode_bool_evidence_decidable_prop
    (p : Prop) :
    Decidable p := by
  exact Classical.propDecidable p
-- vrml:end c140_bool_ite_evidence_wrong.bad_encode_bool.evidence_decidable_prop

namespace c140_bool_ite_evidence_wrong.bad_encode_bool

-- vrml:begin c140_bool_ite_evidence_wrong.bad_encode_bool.ensures_0 aba40e62b1817a3f
/--
Generated VC `c140_bool_ite_evidence_wrong.bad_encode_bool.ensures_0`.

- Rust source: `tests/differential/c140_bool_ite_evidence_wrong.rs:6:13-6:36`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `aba40e62b1817a3f`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "tests/differential/c140_bool_ite_evidence_wrong.rs"
  startLine := 6
  startColumn := 13
  endLine := 6
  endColumn := 36
  assertId := "0"
  functionName := "c140_bool_ite_evidence_wrong.bad_encode_bool"
  kind := "ensures"
  statementHash := "aba40e62b1817a3f"
}
@[vrml_obligation] theorem ensures_0
    (value : Prop) :
    value → ((Vermilion.iteP value 1 0) = 2) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end c140_bool_ite_evidence_wrong.bad_encode_bool.ensures_0

end c140_bool_ite_evidence_wrong.bad_encode_bool

end
