import Vermilion.Obligations
import liquidation_fee_minmax.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace liquidation_fee_minmax.impl__1.clone

-- vrml:begin liquidation_fee_minmax.impl__1.clone.ensures_0 4780a96dc4b8ddc1
/--
Generated VC `liquidation_fee_minmax.impl__1.clone.ensures_0`.

- Rust source: `case-studies/percolator/liquidation_fee_minmax.rs:13:10-13:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `4780a96dc4b8ddc1`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/liquidation_fee_minmax.rs"
  startLine := 13
  startColumn := 10
  endLine := 13
  endColumn := 15
  assertId := "0"
  functionName := "liquidation_fee_minmax.impl__1.clone"
  kind := "ensures"
  statementHash := "4780a96dc4b8ddc1"
}
@[vrml_obligation] theorem ensures_0
    (self : liquidation_fee_minmax.V16Error) :
    self = self := by
  vrml [liquidation_fee_minmax.min_u128, liquidation_fee_minmax.max_u128]
-- vrml:end liquidation_fee_minmax.impl__1.clone.ensures_0

end liquidation_fee_minmax.impl__1.clone

