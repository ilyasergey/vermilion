import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:begin encode_bool_decidable.encode_bool.evidence_decidable_prop 21177b12581a80d5
/--
Generated typeclass evidence obligation `encode_bool_decidable.encode_bool.evidence_decidable_prop`.

- Rust source: `case-studies/percolator/encode_bool_decidable.rs:15:9-15:32`
- Evidence origin: Rust `bool` represented as Lean `Prop` requires explicit decision evidence
- Target: `Decidable p`
- Consumers: encode_bool_decidable.encode_bool.ensures_0_0, encode_bool_decidable.encode_bool.ensures_0_1
- Statement hash: `21177b12581a80d5`
-/
def encode_bool_decidable_encode_bool_evidence_decidable_prop_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/encode_bool_decidable.rs"
  startLine := 15
  startColumn := 9
  endLine := 15
  endColumn := 32
  assertId := "typeclass-evidence"
  functionName := "encode_bool_decidable.encode_bool"
  kind := "typeclass_evidence"
  statementHash := "21177b12581a80d5"
}
@[vrml_evidence] noncomputable instance encode_bool_decidable_encode_bool_evidence_decidable_prop
    (p : Prop) :
    Decidable p := by
  exact Classical.propDecidable p
-- vrml:end encode_bool_decidable.encode_bool.evidence_decidable_prop

