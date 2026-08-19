import Vermilion.Obligations
import result_gates.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:begin result_gates.trade_preflight_risk_gate.evidence_decidable_prop 3cf731fd1ccf813d
/--
Generated typeclass evidence obligation `result_gates.trade_preflight_risk_gate.evidence_decidable_prop`.

- Rust source: `case-studies/percolator/result_gates.rs:36:9-41:10`
- Evidence origin: Rust `bool` represented as Lean `Prop` requires explicit decision evidence
- Target: `Decidable p`
- Consumers: result_gates.trade_preflight_risk_gate.ensures_0, result_gates.trade_preflight_risk_gate.ensures_1
- Statement hash: `3cf731fd1ccf813d`
-/
def result_gates_trade_preflight_risk_gate_evidence_decidable_prop_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/result_gates.rs"
  startLine := 36
  startColumn := 9
  endLine := 41
  endColumn := 10
  assertId := "typeclass-evidence"
  functionName := "result_gates.trade_preflight_risk_gate"
  kind := "typeclass_evidence"
  statementHash := "3cf731fd1ccf813d"
}
@[vrml_evidence] noncomputable instance result_gates_trade_preflight_risk_gate_evidence_decidable_prop
    (p : Prop) :
    Decidable p := by
  exact Classical.propDecidable p
-- vrml:end result_gates.trade_preflight_risk_gate.evidence_decidable_prop

