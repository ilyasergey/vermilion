import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace imo_1988_6.is_perfect_square

-- vrml:begin imo_1988_6.is_perfect_square.assert_1 5b27b86a3b9c4d67
/--
Generated VC `imo_1988_6.is_perfect_square.assert_1`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:93:9-93:15`
- Rust/SST construct: requires not satisfied
- AssertId: `1`
- Statement hash: `5b27b86a3b9c4d67`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 93
  startColumn := 9
  endLine := 93
  endColumn := 15
  assertId := "1"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "5b27b86a3b9c4d67"
}
@[vrml_obligation] theorem assert_1
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : q < 0) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_1

-- vrml:begin imo_1988_6.is_perfect_square.assert_0 85f69647438d954c
/--
Generated VC `imo_1988_6.is_perfect_square.assert_0`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:93:16-93:79`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `85f69647438d954c`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 93
  startColumn := 16
  endLine := 93
  endColumn := 79
  assertId := "0"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "85f69647438d954c"
}
@[vrml_obligation] theorem assert_0
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (assume_0 : True) :
    (((a ≥ 0) ∧ (b ≥ 0)) ∧ (((a * a) + (b * b)) = (((a * b) + 1) * q))) → (q ≥ 0) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_0

-- vrml:begin imo_1988_6.is_perfect_square.assert_2 5c06cf8fb2d357ba
/--
Generated VC `imo_1988_6.is_perfect_square.assert_2`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:95:16-95:21`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `5c06cf8fb2d357ba`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 95
  startColumn := 16
  endLine := 95
  endColumn := 21
  assertId := "2"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "5c06cf8fb2d357ba"
}
@[vrml_obligation] theorem assert_2
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : q < 0)
    (assert_1 : True)
    (assume_5 : (((a ≥ 0) ∧ (b ≥ 0)) ∧ (((a * a) + (b * b)) = (((a * b) + 1) * q))) → (q ≥ 0)) :
    False := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_2

-- vrml:begin imo_1988_6.is_perfect_square.ensures_3 b45776b341f8fe1f
/--
Generated VC `imo_1988_6.is_perfect_square.ensures_3`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:89:9-89:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `b45776b341f8fe1f`
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 89
  startColumn := 9
  endLine := 89
  endColumn := 25
  assertId := "3"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "ensures"
  statementHash := "b45776b341f8fe1f"
}
@[vrml_obligation] theorem ensures_3
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : q < 0)
    (assert_1 : True)
    (assume_5 : (((a ≥ 0) ∧ (b ≥ 0)) ∧ (((a * a) + (b * b)) = (((a * b) + 1) * q))) → (q ≥ 0))
    (assert_2 : False) :
    (0 * 0) = q := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.ensures_3

-- vrml:begin imo_1988_6.is_perfect_square.ensures_4 34a72a7c7909c1d1
/--
Generated VC `imo_1988_6.is_perfect_square.ensures_4`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:89:9-89:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `34a72a7c7909c1d1`
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 89
  startColumn := 9
  endLine := 89
  endColumn := 25
  assertId := "4"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "ensures"
  statementHash := "34a72a7c7909c1d1"
}
@[vrml_obligation] theorem ensures_4
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : q = 0) :
    (0 * 0) = q := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.ensures_4

-- vrml:begin imo_1988_6.is_perfect_square.ensures_5 0ca7d5dc3d412df5
/--
Generated VC `imo_1988_6.is_perfect_square.ensures_5`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:89:9-89:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `0ca7d5dc3d412df5`
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 89
  startColumn := 9
  endLine := 89
  endColumn := 25
  assertId := "5"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "ensures"
  statementHash := "0ca7d5dc3d412df5"
}
@[vrml_obligation] theorem ensures_5
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : q = 1) :
    (1 * 1) = q := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.ensures_5

-- vrml:begin imo_1988_6.is_perfect_square.assert_7 28e9417ea6e4ee0c
/--
Generated VC `imo_1988_6.is_perfect_square.assert_7`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:104:17-104:49`
- Rust/SST construct: requires not satisfied
- AssertId: `7`
- Statement hash: `28e9417ea6e4ee0c`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 104
  startColumn := 17
  endLine := 104
  endColumn := 49
  assertId := "7"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "28e9417ea6e4ee0c"
}
@[vrml_obligation] theorem assert_7
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : q = 2) :
    ((a * a) + (b * b)) = (((a * b) + 1) * 2) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_7

-- vrml:begin imo_1988_6.is_perfect_square.assert_6 fee06e971fbeb816
/--
Generated VC `imo_1988_6.is_perfect_square.assert_6`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:102:16-102:38`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `fee06e971fbeb816`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 102
  startColumn := 16
  endLine := 102
  endColumn := 38
  assertId := "6"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "fee06e971fbeb816"
}
@[vrml_obligation] theorem assert_6
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (assume_0 : ((a * a) + (b * b)) = (((a * b) + 1) * 2)) :
    ((a - b) * (a - b)) = 2 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_6

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_8 afd6c4ca3b80a255
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_8`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:106:9-106:35`
- Rust/SST construct: call sqrt2_contradiction
- AssertId: `8`
- Statement hash: `afd6c4ca3b80a255`
-/
def call_requires_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 106
  startColumn := 9
  endLine := 106
  endColumn := 35
  assertId := "8"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "afd6c4ca3b80a255"
}
@[vrml_obligation] theorem call_requires_8
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : q = 2)
    (assert_7 : ((a * a) + (b * b)) = (((a * b) + 1) * 2))
    (assume_8 : ((a - b) * (a - b)) = 2) :
    ((a - b) * (a - b)) = 2 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_8

-- vrml:begin imo_1988_6.is_perfect_square.ensures_9 6b48a2f292f4d130
/--
Generated VC `imo_1988_6.is_perfect_square.ensures_9`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:89:9-89:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `9`
- Statement hash: `6b48a2f292f4d130`
-/
def ensures_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 89
  startColumn := 9
  endLine := 89
  endColumn := 25
  assertId := "9"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "ensures"
  statementHash := "6b48a2f292f4d130"
}
@[vrml_obligation] theorem ensures_9
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : q = 2)
    (assert_7 : ((a * a) + (b * b)) = (((a * b) + 1) * 2))
    (assume_8 : ((a - b) * (a - b)) = 2)
    (call_sqrt2_contradiction_ensures_0 : False) :
    (0 * 0) = q := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.ensures_9

-- vrml:begin imo_1988_6.is_perfect_square.assert_10 c73f2718d51d5322
/--
Generated VC `imo_1988_6.is_perfect_square.assert_10`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:109:16-109:21`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `c73f2718d51d5322`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 109
  startColumn := 16
  endLine := 109
  endColumn := 21
  assertId := "10"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "c73f2718d51d5322"
}
@[vrml_obligation] theorem assert_10
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2))) :
    q > 2 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_10

-- vrml:begin imo_1988_6.is_perfect_square.assert_12 2bc9c17a4c7c3822
/--
Generated VC `imo_1988_6.is_perfect_square.assert_12`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:111:13-111:19`
- Rust/SST construct: requires not satisfied
- AssertId: `12`
- Statement hash: `2bc9c17a4c7c3822`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 111
  startColumn := 13
  endLine := 111
  endColumn := 19
  assertId := "12"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "2bc9c17a4c7c3822"
}
@[vrml_obligation] theorem assert_12
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : a = b) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_12

-- vrml:begin imo_1988_6.is_perfect_square.assert_11 4174688101189131
/--
Generated VC `imo_1988_6.is_perfect_square.assert_11`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:111:20-111:46`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `4174688101189131`
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 111
  startColumn := 20
  endLine := 111
  endColumn := 46
  assertId := "11"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "4174688101189131"
}
@[vrml_obligation] theorem assert_11
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (assume_0 : True) :
    ((2 * a) * a) = ((a * a) + (a * a)) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_11

-- vrml:begin imo_1988_6.is_perfect_square.assert_14 1a160e8676e09785
/--
Generated VC `imo_1988_6.is_perfect_square.assert_14`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:112:13-112:19`
- Rust/SST construct: requires not satisfied
- AssertId: `14`
- Statement hash: `1a160e8676e09785`
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 112
  startColumn := 13
  endLine := 112
  endColumn := 19
  assertId := "14"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "1a160e8676e09785"
}
@[vrml_obligation] theorem assert_14
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : a = b)
    (assert_12 : True)
    (assume_10 : ((2 * a) * a) = ((a * a) + (a * a))) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_14

-- vrml:begin imo_1988_6.is_perfect_square.assert_13 c817f0e3994d7ba6
/--
Generated VC `imo_1988_6.is_perfect_square.assert_13`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:112:20-112:64`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `c817f0e3994d7ba6`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 112
  startColumn := 20
  endLine := 112
  endColumn := 64
  assertId := "13"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "c817f0e3994d7ba6"
}
@[vrml_obligation] theorem assert_13
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (assume_0 : True) :
    (q > 2) → ((((a * a) + 1) * q) ≥ (((a * a) + 1) * 2)) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_13

-- vrml:begin imo_1988_6.is_perfect_square.assert_15 6be0d9615447e322
/--
Generated VC `imo_1988_6.is_perfect_square.assert_15`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:113:20-113:25`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `6be0d9615447e322`
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 113
  startColumn := 20
  endLine := 113
  endColumn := 25
  assertId := "15"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "6be0d9615447e322"
}
@[vrml_obligation] theorem assert_15
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : a = b)
    (assert_12 : True)
    (assume_10 : ((2 * a) * a) = ((a * a) + (a * a)))
    (assert_14 : True)
    (assume_12 : (q > 2) → ((((a * a) + 1) * q) ≥ (((a * a) + 1) * 2))) :
    False := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_15

-- vrml:begin imo_1988_6.is_perfect_square.ensures_16 721e311b7a8f4623
/--
Generated VC `imo_1988_6.is_perfect_square.ensures_16`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:89:9-89:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `16`
- Statement hash: `721e311b7a8f4623`
-/
def ensures_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 89
  startColumn := 9
  endLine := 89
  endColumn := 25
  assertId := "16"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "ensures"
  statementHash := "721e311b7a8f4623"
}
@[vrml_obligation] theorem ensures_16
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : a = b)
    (assert_12 : True)
    (assume_10 : ((2 * a) * a) = ((a * a) + (a * a)))
    (assert_14 : True)
    (assume_12 : (q > 2) → ((((a * a) + 1) * q) ≥ (((a * a) + 1) * 2)))
    (assert_15 : False) :
    (0 * 0) = q := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.ensures_16

-- vrml:begin imo_1988_6.is_perfect_square.assert_anonymous_0 3e4e9deb2beca8ed
/--
Generated VC `imo_1988_6.is_perfect_square.assert_anonymous_0`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:116:20-116:51`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `3e4e9deb2beca8ed`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 116
  startColumn := 20
  endLine := 116
  endColumn := 51
  assertId := "anonymous_0"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "3e4e9deb2beca8ed"
}
@[vrml_obligation] theorem assert_anonymous_0
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : a < b) :
    ((0 ≤ (a + b)) ∧ ((a + b) < (a + b))) ∨ (((a + b) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False))) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_anonymous_0

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_17_0 0b17cf962c44c008
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_17_0`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:116:20-116:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `17_0`
- Statement hash: `0b17cf962c44c008`
-/
def call_requires_17_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 116
  startColumn := 20
  endLine := 116
  endColumn := 51
  assertId := "17_0"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "0b17cf962c44c008"
}
@[vrml_obligation] theorem call_requires_17_0
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : a < b)
    (assert_anonymous_0 : ((0 ≤ (a + b)) ∧ ((a + b) < (a + b))) ∨ (((a + b) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    a ≥ 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_17_0

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_17_1 c82e2a71fb47dd51
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_17_1`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:116:20-116:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `17_1`
- Statement hash: `c82e2a71fb47dd51`
-/
def call_requires_17_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 116
  startColumn := 20
  endLine := 116
  endColumn := 51
  assertId := "17_1"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "c82e2a71fb47dd51"
}
@[vrml_obligation] theorem call_requires_17_1
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : a < b)
    (assert_anonymous_0 : ((0 ≤ (a + b)) ∧ ((a + b) < (a + b))) ∨ (((a + b) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    b ≥ 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_17_1

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_17_2 aa0851eb4159be31
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_17_2`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:116:20-116:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `17_2`
- Statement hash: `aa0851eb4159be31`
-/
def call_requires_17_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 116
  startColumn := 20
  endLine := 116
  endColumn := 51
  assertId := "17_2"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "aa0851eb4159be31"
}
@[vrml_obligation] theorem call_requires_17_2
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : a < b)
    (assert_anonymous_0 : ((0 ≤ (a + b)) ∧ ((a + b) < (a + b))) ∨ (((a + b) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    ((a * a) + (b * b)) = (((a * b) + 1) * q) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_17_2

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_17_3 3a20588c4c346794
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_17_3`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:116:20-116:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `17_3`
- Statement hash: `3a20588c4c346794`
-/
def call_requires_17_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 116
  startColumn := 20
  endLine := 116
  endColumn := 51
  assertId := "17_3"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "3a20588c4c346794"
}
@[vrml_obligation] theorem call_requires_17_3
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : a < b)
    (assert_anonymous_0 : ((0 ≤ (a + b)) ∧ ((a + b) < (a + b))) ∨ (((a + b) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    q > 2 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_17_3

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_17_4 dfe1a71dececdbea
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_17_4`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:116:20-116:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `17_4`
- Statement hash: `dfe1a71dececdbea`
-/
def call_requires_17_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 116
  startColumn := 20
  endLine := 116
  endColumn := 51
  assertId := "17_4"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "dfe1a71dececdbea"
}
@[vrml_obligation] theorem call_requires_17_4
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : a < b)
    (assert_anonymous_0 : ((0 ≤ (a + b)) ∧ ((a + b) < (a + b))) ∨ (((a + b) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    a < b := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_17_4

-- vrml:begin imo_1988_6.is_perfect_square.ensures_18 7c222db5cb0a7736
/--
Generated VC `imo_1988_6.is_perfect_square.ensures_18`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:89:9-89:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `18`
- Statement hash: `7c222db5cb0a7736`
-/
def ensures_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 89
  startColumn := 9
  endLine := 89
  endColumn := 25
  assertId := "18"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "ensures"
  statementHash := "7c222db5cb0a7736"
}
@[vrml_obligation] theorem ensures_18
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (tmp_ : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : a < b)
    (assert_anonymous_0 : ((0 ≤ (a + b)) ∧ ((a + b) < (a + b))) ∨ (((a + b) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False))))
    (call_is_perfect_square_wlog_ensures_0 : (tmp_ * tmp_) = q) :
    (tmp_ * tmp_) = q := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.ensures_18

-- vrml:begin imo_1988_6.is_perfect_square.assert_19 80a28567fd7640d9
/--
Generated VC `imo_1988_6.is_perfect_square.assert_19`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:118:20-118:25`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `80a28567fd7640d9`
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 118
  startColumn := 20
  endLine := 118
  endColumn := 25
  assertId := "19"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "80a28567fd7640d9"
}
@[vrml_obligation] theorem assert_19
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : (¬ (a < b))) :
    a > b := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_19

-- vrml:begin imo_1988_6.is_perfect_square.assert_anonymous_1 7a0396c8788b835a
/--
Generated VC `imo_1988_6.is_perfect_square.assert_anonymous_1`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:119:20-119:51`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_1`
- Statement hash: `7a0396c8788b835a`
-/
def assert_anonymous_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 119
  startColumn := 20
  endLine := 119
  endColumn := 51
  assertId := "anonymous_1"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "assert"
  statementHash := "7a0396c8788b835a"
}
@[vrml_obligation] theorem assert_anonymous_1
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : (¬ (a < b)))
    (assert_19 : a > b) :
    ((0 ≤ (b + a)) ∧ ((b + a) < (a + b))) ∨ (((b + a) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False))) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.assert_anonymous_1

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_20_0 9305cccb0fd384dd
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_20_0`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:119:20-119:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `20_0`
- Statement hash: `9305cccb0fd384dd`
-/
def call_requires_20_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 119
  startColumn := 20
  endLine := 119
  endColumn := 51
  assertId := "20_0"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "9305cccb0fd384dd"
}
@[vrml_obligation] theorem call_requires_20_0
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : (¬ (a < b)))
    (assert_19 : a > b)
    (assert_anonymous_1 : ((0 ≤ (b + a)) ∧ ((b + a) < (a + b))) ∨ (((b + a) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    b ≥ 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_20_0

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_20_1 5275b36400e25da4
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_20_1`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:119:20-119:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `20_1`
- Statement hash: `5275b36400e25da4`
-/
def call_requires_20_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 119
  startColumn := 20
  endLine := 119
  endColumn := 51
  assertId := "20_1"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "5275b36400e25da4"
}
@[vrml_obligation] theorem call_requires_20_1
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : (¬ (a < b)))
    (assert_19 : a > b)
    (assert_anonymous_1 : ((0 ≤ (b + a)) ∧ ((b + a) < (a + b))) ∨ (((b + a) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    a ≥ 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_20_1

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_20_2 87cc3d661195e6fd
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_20_2`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:119:20-119:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `20_2`
- Statement hash: `87cc3d661195e6fd`
-/
def call_requires_20_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 119
  startColumn := 20
  endLine := 119
  endColumn := 51
  assertId := "20_2"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "87cc3d661195e6fd"
}
@[vrml_obligation] theorem call_requires_20_2
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : (¬ (a < b)))
    (assert_19 : a > b)
    (assert_anonymous_1 : ((0 ≤ (b + a)) ∧ ((b + a) < (a + b))) ∨ (((b + a) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    ((b * b) + (a * a)) = (((b * a) + 1) * q) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_20_2

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_20_3 712e988b1d5c3f40
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_20_3`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:119:20-119:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `20_3`
- Statement hash: `712e988b1d5c3f40`
-/
def call_requires_20_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 119
  startColumn := 20
  endLine := 119
  endColumn := 51
  assertId := "20_3"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "712e988b1d5c3f40"
}
@[vrml_obligation] theorem call_requires_20_3
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : (¬ (a < b)))
    (assert_19 : a > b)
    (assert_anonymous_1 : ((0 ≤ (b + a)) ∧ ((b + a) < (a + b))) ∨ (((b + a) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    q > 2 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_20_3

-- vrml:begin imo_1988_6.is_perfect_square.call_requires_20_4 596c7c792f7348d6
/--
Generated VC `imo_1988_6.is_perfect_square.call_requires_20_4`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:119:20-119:51`
- Rust/SST construct: call is_perfect_square_wlog
- AssertId: `20_4`
- Statement hash: `596c7c792f7348d6`
-/
def call_requires_20_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 119
  startColumn := 20
  endLine := 119
  endColumn := 51
  assertId := "20_4"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "call_requires"
  statementHash := "596c7c792f7348d6"
}
@[vrml_obligation] theorem call_requires_20_4
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : (¬ (a < b)))
    (assert_19 : a > b)
    (assert_anonymous_1 : ((0 ≤ (b + a)) ∧ ((b + a) < (a + b))) ∨ (((b + a) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False)))) :
    b < a := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.call_requires_20_4

-- vrml:begin imo_1988_6.is_perfect_square.ensures_21 328649ce7fdf552d
/--
Generated VC `imo_1988_6.is_perfect_square.ensures_21`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:89:9-89:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `21`
- Statement hash: `328649ce7fdf552d`
-/
def ensures_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 89
  startColumn := 9
  endLine := 89
  endColumn := 25
  assertId := "21"
  functionName := "imo_1988_6.is_perfect_square"
  kind := "ensures"
  statementHash := "328649ce7fdf552d"
}
@[vrml_obligation] theorem ensures_21
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt_6 : Int)
    (sqrt_5 : Int)
    (sqrt_4 : Int)
    (sqrt_3 : Int)
    (sqrt_2 : Int)
    (sqrt : Int)
    (tmp__2 : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (branch_0 : (¬ (q < 0)))
    (branch_1 : (¬ (q = 0)))
    (branch_2 : (¬ (q = 1)))
    (branch_3 : (¬ (q = 2)))
    (assert_10 : q > 2)
    (branch_4 : (¬ (a = b)))
    (branch_5 : (¬ (a < b)))
    (assert_19 : a > b)
    (assert_anonymous_1 : ((0 ≤ (b + a)) ∧ ((b + a) < (a + b))) ∨ (((b + a) = (a + b)) ∧ (((0 ≤ 0) ∧ (0 < 1)) ∨ ((0 = 1) ∧ False))))
    (call_is_perfect_square_wlog_1_ensures_0 : (tmp__2 * tmp__2) = q) :
    (tmp__2 * tmp__2) = q := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square.ensures_21

end imo_1988_6.is_perfect_square

