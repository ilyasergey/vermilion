import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

section

-- vrml:begin c139_bool_ite_evidence_ok.encode_bool.evidence_decidable_prop f7fdd78a5720775d
/--
Generated typeclass evidence obligation `c139_bool_ite_evidence_ok.encode_bool.evidence_decidable_prop`.

- Rust source: `tests/differential/c139_bool_ite_evidence_ok.rs:6:13-6:36`
- Evidence origin: Rust `bool` represented as Lean `Prop` requires explicit decision evidence
- Target: `Decidable p`
- Consumers: c139_bool_ite_evidence_ok.encode_bool.ensures_0_0, c139_bool_ite_evidence_ok.encode_bool.ensures_0_1
- Statement hash: `f7fdd78a5720775d`
-/
def c139_bool_ite_evidence_ok_encode_bool_evidence_decidable_prop_meta : Vermilion.ObligationMeta := {
  rustFile := "tests/differential/c139_bool_ite_evidence_ok.rs"
  startLine := 6
  startColumn := 13
  endLine := 6
  endColumn := 36
  assertId := "typeclass-evidence"
  functionName := "c139_bool_ite_evidence_ok.encode_bool"
  kind := "typeclass_evidence"
  statementHash := "f7fdd78a5720775d"
}
@[vrml_evidence] noncomputable local instance c139_bool_ite_evidence_ok_encode_bool_evidence_decidable_prop
    (p : Prop) :
    Decidable p := by
  exact Classical.propDecidable p
-- vrml:end c139_bool_ite_evidence_ok.encode_bool.evidence_decidable_prop

namespace c139_bool_ite_evidence_ok.encode_bool

-- vrml:begin c139_bool_ite_evidence_ok.encode_bool.ensures_0_0 abae8e62b18aa844
/--
Generated VC `c139_bool_ite_evidence_ok.encode_bool.ensures_0_0`.

- Rust source: `tests/differential/c139_bool_ite_evidence_ok.rs:6:13-6:36`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_0`
- Statement hash: `abae8e62b18aa844`
-/
def ensures_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "tests/differential/c139_bool_ite_evidence_ok.rs"
  startLine := 6
  startColumn := 13
  endLine := 6
  endColumn := 36
  assertId := "0_0"
  functionName := "c139_bool_ite_evidence_ok.encode_bool"
  kind := "ensures"
  statementHash := "abae8e62b18aa844"
}
@[vrml_obligation] theorem ensures_0_0
    (value : Prop) :
    value → ((Vermilion.iteP value 1 0) = 1) := by
  vrml
-- vrml:end c139_bool_ite_evidence_ok.encode_bool.ensures_0_0

-- vrml:begin c139_bool_ite_evidence_ok.encode_bool.ensures_0_1 79e274596ebc3fe0
/--
Generated VC `c139_bool_ite_evidence_ok.encode_bool.ensures_0_1`.

- Rust source: `tests/differential/c139_bool_ite_evidence_ok.rs:7:13-7:37`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_1`
- Statement hash: `79e274596ebc3fe0`
-/
def ensures_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "tests/differential/c139_bool_ite_evidence_ok.rs"
  startLine := 7
  startColumn := 13
  endLine := 7
  endColumn := 37
  assertId := "0_1"
  functionName := "c139_bool_ite_evidence_ok.encode_bool"
  kind := "ensures"
  statementHash := "79e274596ebc3fe0"
}
@[vrml_obligation] theorem ensures_0_1
    (value : Prop) :
    (¬ value) → ((Vermilion.iteP value 1 0) = 0) := by
  vrml
-- vrml:end c139_bool_ite_evidence_ok.encode_bool.ensures_0_1

end c139_bool_ite_evidence_ok.encode_bool

end
