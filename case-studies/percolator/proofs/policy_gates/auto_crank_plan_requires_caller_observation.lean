import Vermilion.Obligations
import policy_gates.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace policy_gates.auto_crank_plan_requires_caller_observation

-- vrml:begin policy_gates.auto_crank_plan_requires_caller_observation.ensures_1 307b18896d6b0974
/--
Generated VC `policy_gates.auto_crank_plan_requires_caller_observation.ensures_1`.

- Rust source: `case-studies/percolator/policy_gates.rs:66:9-73:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `307b18896d6b0974`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/policy_gates.rs"
  startLine := 66
  startColumn := 9
  endLine := 73
  endColumn := 10
  assertId := "1"
  functionName := "policy_gates.auto_crank_plan_requires_caller_observation"
  kind := "ensures"
  statementHash := "307b18896d6b0974"
}
@[vrml_obligation] theorem ensures_1
    (plan : policy_gates.AutoCrankPlanV16)
    (tmp_ : Prop)
    (requires_0 : Vermilion.inUnsignedRange 64 (core.option.Option.get_Some__0 (policy_gates.AutoCrankPlanV16.get_RefreshAccount_asset_index plan)))
    (requires_1 : Vermilion.inUnsignedRange 64 (policy_gates.AutoCrankPlanV16.get_SettleBChunk_asset_index plan))
    (requires_2 : Vermilion.inUnsignedRange 64 (policy_gates.AutoCrankPlanV16.get_Liquidate_asset_index plan))
    (then_0_assume_4 : (policy_gates.AutoCrankPlanV16.is_RefreshAccount plan ∧ True) → (tmp_ ↔ core.option.Option.is_None (policy_gates.AutoCrankPlanV16.get_RefreshAccount_asset_index plan)))
    (else_0_assume_4 : (¬ (policy_gates.AutoCrankPlanV16.is_RefreshAccount plan ∧ True)) → (tmp_ ↔ False)) :
    tmp_ ↔ (((policy_gates.AutoCrankPlanV16.is_RefreshAccount plan ∧ True) → core.option.Option.is_None (policy_gates.AutoCrankPlanV16.get_RefreshAccount_asset_index plan)) ∧ ((¬ (policy_gates.AutoCrankPlanV16.is_RefreshAccount plan ∧ True)) → False)) := by
  vrml
-- vrml:end policy_gates.auto_crank_plan_requires_caller_observation.ensures_1

end policy_gates.auto_crank_plan_requires_caller_observation

