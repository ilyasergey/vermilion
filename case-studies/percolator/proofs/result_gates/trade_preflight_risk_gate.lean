import Vermilion.Obligations
import result_gates.Specs
import result_gates.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace result_gates.trade_preflight_risk_gate

-- vrml:begin result_gates.trade_preflight_risk_gate.ensures_0 999d7f4dda6b49ec
/--
Generated VC `result_gates.trade_preflight_risk_gate.ensures_0`.

- Rust source: `case-studies/percolator/result_gates.rs:36:9-41:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `999d7f4dda6b49ec`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/result_gates.rs"
  startLine := 36
  startColumn := 9
  endLine := 41
  endColumn := 10
  assertId := "0"
  functionName := "result_gates.trade_preflight_risk_gate"
  kind := "ensures"
  statementHash := "999d7f4dda6b49ec"
}
@[vrml_obligation] theorem ensures_0
    (risk_increasing : Prop)
    (asset_loss_stale : Prop)
    (target_effective_lag : Prop)
    (touches_pending_domain_barrier : Prop)
    (branch_0 : touches_pending_domain_barrier ∨ (risk_increasing ∧ (asset_loss_stale ∨ target_effective_lag))) :
    core.result.Result.Err (T := vermilion.tuple_0) result_gates.V16Error.LockActive = (Vermilion.iteP (touches_pending_domain_barrier ∨ (risk_increasing ∧ (asset_loss_stale ∨ target_effective_lag))) (core.result.Result.Err (T := vermilion.tuple_0) result_gates.V16Error.LockActive) (core.result.Result.Ok (E := result_gates.V16Error) vermilion.tuple_0.tuple_0)) := by
  vrml
-- vrml:end result_gates.trade_preflight_risk_gate.ensures_0

-- vrml:begin result_gates.trade_preflight_risk_gate.ensures_1 c8ce795b96d789d5
/--
Generated VC `result_gates.trade_preflight_risk_gate.ensures_1`.

- Rust source: `case-studies/percolator/result_gates.rs:36:9-41:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `c8ce795b96d789d5`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/result_gates.rs"
  startLine := 36
  startColumn := 9
  endLine := 41
  endColumn := 10
  assertId := "1"
  functionName := "result_gates.trade_preflight_risk_gate"
  kind := "ensures"
  statementHash := "c8ce795b96d789d5"
}
@[vrml_obligation] theorem ensures_1
    (risk_increasing : Prop)
    (asset_loss_stale : Prop)
    (target_effective_lag : Prop)
    (touches_pending_domain_barrier : Prop)
    (then_0_assume_1 : (touches_pending_domain_barrier ∨ (risk_increasing ∧ (asset_loss_stale ∨ target_effective_lag))) → False)
    (then_0_assume_2 : (touches_pending_domain_barrier ∨ (risk_increasing ∧ (asset_loss_stale ∨ target_effective_lag))) → False) :
    core.result.Result.Ok (E := result_gates.V16Error) vermilion.tuple_0.tuple_0 = (Vermilion.iteP (touches_pending_domain_barrier ∨ (risk_increasing ∧ (asset_loss_stale ∨ target_effective_lag))) (core.result.Result.Err (T := vermilion.tuple_0) result_gates.V16Error.LockActive) (core.result.Result.Ok (E := result_gates.V16Error) vermilion.tuple_0.tuple_0)) := by
  vrml
-- vrml:end result_gates.trade_preflight_risk_gate.ensures_1

end result_gates.trade_preflight_risk_gate

