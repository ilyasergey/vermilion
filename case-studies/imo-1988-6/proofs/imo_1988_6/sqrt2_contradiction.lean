import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace imo_1988_6.sqrt2_contradiction

-- vrml:begin imo_1988_6.sqrt2_contradiction.assert_1 0143716a41c72b3e
/--
Generated VC `imo_1988_6.sqrt2_contradiction.assert_1`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:35:5-35:11`
- Rust/SST construct: requires not satisfied
- AssertId: `1`
- Statement hash: `0143716a41c72b3e`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 35
  startColumn := 5
  endLine := 35
  endColumn := 11
  assertId := "1"
  functionName := "imo_1988_6.sqrt2_contradiction"
  kind := "assert"
  statementHash := "0143716a41c72b3e"
}
@[vrml_obligation] theorem assert_1
    (a : Int)
    (requires_0 : (a * a) = 2) :
    True := by
  vrml
-- vrml:end imo_1988_6.sqrt2_contradiction.assert_1

-- vrml:begin imo_1988_6.sqrt2_contradiction.assert_0 1c966f727e6cc228
/--
Generated VC `imo_1988_6.sqrt2_contradiction.assert_0`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:35:12-35:32`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `1c966f727e6cc228`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 35
  startColumn := 12
  endLine := 35
  endColumn := 32
  assertId := "0"
  functionName := "imo_1988_6.sqrt2_contradiction"
  kind := "assert"
  statementHash := "1c966f727e6cc228"
}
@[vrml_obligation] theorem assert_0
    (a : Int)
    (assume_0 : True) :
    ((a * a) = 2) → False := by
  intro h
  have hlow : -2 < a := by nlinarith [sq_nonneg (a + 2)]
  have hhigh : a < 2 := by nlinarith [sq_nonneg (a - 2)]
  interval_cases a <;> norm_num at h
-- vrml:end imo_1988_6.sqrt2_contradiction.assert_0

-- vrml:begin imo_1988_6.sqrt2_contradiction.ensures_2 4691b03a9326afda
/--
Generated VC `imo_1988_6.sqrt2_contradiction.ensures_2`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:33:9-33:14`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `4691b03a9326afda`
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 33
  startColumn := 9
  endLine := 33
  endColumn := 14
  assertId := "2"
  functionName := "imo_1988_6.sqrt2_contradiction"
  kind := "ensures"
  statementHash := "4691b03a9326afda"
}
@[vrml_obligation] theorem ensures_2
    (a : Int)
    (requires_0 : (a * a) = 2)
    (assert_1 : True)
    (assume_2 : ((a * a) = 2) → False) :
    False := by
  vrml
-- vrml:end imo_1988_6.sqrt2_contradiction.ensures_2

end imo_1988_6.sqrt2_contradiction

