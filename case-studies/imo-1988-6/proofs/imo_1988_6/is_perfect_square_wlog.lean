import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace imo_1988_6.is_perfect_square_wlog

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_0 04a56da7adf2a1be
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_0`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:50:16-50:26`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `04a56da7adf2a1be`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 50
  startColumn := 16
  endLine := 50
  endColumn := 26
  assertId := "0"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "04a56da7adf2a1be"
}
@[vrml_obligation] theorem assert_0
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : a = 0) :
    (a * a) = 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_0

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_1 d941987a9b6ff6d1
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_1`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:51:16-51:26`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `d941987a9b6ff6d1`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 51
  startColumn := 16
  endLine := 51
  endColumn := 26
  assertId := "1"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "d941987a9b6ff6d1"
}
@[vrml_obligation] theorem assert_1
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : a = 0)
    (assert_0 : (a * a) = 0) :
    (a * b) = 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_1

-- vrml:begin imo_1988_6.is_perfect_square_wlog.ensures_2 88d6ef9d439538b5
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.ensures_2`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:46:9-46:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `88d6ef9d439538b5`
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 46
  startColumn := 9
  endLine := 46
  endColumn := 25
  assertId := "2"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "ensures"
  statementHash := "88d6ef9d439538b5"
}
@[vrml_obligation] theorem ensures_2
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : a = 0)
    (assert_0 : (a * a) = 0)
    (assert_1 : (a * b) = 0) :
    (b * b) = q := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.ensures_2

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_4 a882ea3305a54d74
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_4`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:55:13-55:19`
- Rust/SST construct: requires not satisfied
- AssertId: `4`
- Statement hash: `a882ea3305a54d74`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 55
  startColumn := 13
  endLine := 55
  endColumn := 19
  assertId := "4"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "a882ea3305a54d74"
}
@[vrml_obligation] theorem assert_4
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_4

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_3 6e3daa18a905c0e6
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_3`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:55:20-55:54`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `6e3daa18a905c0e6`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 55
  startColumn := 20
  endLine := 55
  endColumn := 54
  assertId := "3"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "6e3daa18a905c0e6"
}
@[vrml_obligation] theorem assert_3
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (assume_0 : True) :
    (((a * b) + 1) * q) = (((a * b) * q) + q) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_3

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_6 bacf861c72b1d1bf
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_6`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:56:13-56:19`
- Rust/SST construct: requires not satisfied
- AssertId: `6`
- Statement hash: `bacf861c72b1d1bf`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 56
  startColumn := 13
  endLine := 56
  endColumn := 19
  assertId := "6"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "bacf861c72b1d1bf"
}
@[vrml_obligation] theorem assert_6
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True)
    (assert_4 : True)
    (assume_8 : (((a * b) + 1) * q) = (((a * b) * q) + q)) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_6

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_5 9da55152b42ab222
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_5`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:56:20-56:46`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `9da55152b42ab222`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 56
  startColumn := 20
  endLine := 56
  endColumn := 46
  assertId := "5"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "9da55152b42ab222"
}
@[vrml_obligation] theorem assert_5
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (assume_0 : True) :
    ((a * b) * q) = ((q * a) * b) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_5

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_7 90df98f6bcb7758b
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_7`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:54:16-54:54`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `90df98f6bcb7758b`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 54
  startColumn := 16
  endLine := 54
  endColumn := 54
  assertId := "7"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "90df98f6bcb7758b"
}
@[vrml_obligation] theorem assert_7
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True)
    (assert_4 : True)
    (assume_8 : (((a * b) + 1) * q) = (((a * b) * q) + q))
    (assert_6 : True)
    (assume_10 : ((a * b) * q) = ((q * a) * b)) :
    (((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_7

-- vrml:begin imo_1988_6.is_perfect_square_wlog.call_requires_8 e00aa2e0302d059f
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.call_requires_8`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:58:9-58:40`
- Rust/SST construct: call vieta_jump
- AssertId: `8`
- Statement hash: `e00aa2e0302d059f`
-/
def call_requires_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 58
  startColumn := 9
  endLine := 58
  endColumn := 40
  assertId := "8"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "call_requires"
  statementHash := "e00aa2e0302d059f"
}
@[vrml_obligation] theorem call_requires_8
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0)) :
    (((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.call_requires_8

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_9 cf0450c24f3db8b4
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_9`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:60:16-60:57`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `cf0450c24f3db8b4`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 60
  startColumn := 16
  endLine := 60
  endColumn := 57
  assertId := "9"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "cf0450c24f3db8b4"
}
@[vrml_obligation] theorem assert_9
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q))) :
    (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_9

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_11 563c2fc1dc3784c4
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_11`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:62:13-62:19`
- Rust/SST construct: requires not satisfied
- AssertId: `11`
- Statement hash: `563c2fc1dc3784c4`
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 62
  startColumn := 13
  endLine := 62
  endColumn := 19
  assertId := "11"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "563c2fc1dc3784c4"
}
@[vrml_obligation] theorem assert_11
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_11

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_10 f5011a88f1ed89e6
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_10`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:62:20-62:56`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `f5011a88f1ed89e6`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 62
  startColumn := 20
  endLine := 62
  endColumn := 56
  assertId := "10"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "f5011a88f1ed89e6"
}
@[vrml_obligation] theorem assert_10
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (assume_0 : True) :
    (((a * ((q * a) - b)) + 1) * q) = (((a * ((q * a) - b)) * q) + q) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_10

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_13 8c627bf0a5ae7c1b
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_13`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:63:13-63:19`
- Rust/SST construct: requires not satisfied
- AssertId: `13`
- Statement hash: `8c627bf0a5ae7c1b`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 63
  startColumn := 13
  endLine := 63
  endColumn := 19
  assertId := "13"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "8c627bf0a5ae7c1b"
}
@[vrml_obligation] theorem assert_13
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True)
    (assert_11 : True)
    (assume_11 : (((a * ((q * a) - b)) + 1) * q) = (((a * ((q * a) - b)) * q) + q)) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_13

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_12 9655afe6b919aaf8
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_12`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:63:20-63:48`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `9655afe6b919aaf8`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 63
  startColumn := 20
  endLine := 63
  endColumn := 48
  assertId := "12"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "9655afe6b919aaf8"
}
@[vrml_obligation] theorem assert_12
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (assume_0 : True) :
    ((a * ((q * a) - b)) * q) = ((q * a) * ((q * a) - b)) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_12

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_14 7f800ec23cff4745
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_14`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:61:16-61:51`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `7f800ec23cff4745`
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 61
  startColumn := 16
  endLine := 61
  endColumn := 51
  assertId := "14"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "7f800ec23cff4745"
}
@[vrml_obligation] theorem assert_14
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True)
    (assert_11 : True)
    (assume_11 : (((a * ((q * a) - b)) + 1) * q) = (((a * ((q * a) - b)) * q) + q))
    (assert_13 : True)
    (assume_13 : ((a * ((q * a) - b)) * q) = ((q * a) * ((q * a) - b))) :
    ((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_14

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_15 201552d32a9e6d98
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_15`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:66:20-66:25`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `201552d32a9e6d98`
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 66
  startColumn := 20
  endLine := 66
  endColumn := 25
  assertId := "15"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "201552d32a9e6d98"
}
@[vrml_obligation] theorem assert_15
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True) :
    a > 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_15

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_16 1cefaf589fd026a5
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_16`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:67:20-67:39`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `1cefaf589fd026a5`
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 67
  startColumn := 20
  endLine := 67
  endColumn := 39
  assertId := "16"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "1cefaf589fd026a5"
}
@[vrml_obligation] theorem assert_16
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True)
    (assert_15 : a > 0) :
    (((q * a) - b) * b) = ((a * a) - q) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_16

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_18 efebed862700ab74
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_18`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:69:17-69:23`
- Rust/SST construct: requires not satisfied
- AssertId: `18`
- Statement hash: `efebed862700ab74`
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 69
  startColumn := 17
  endLine := 69
  endColumn := 23
  assertId := "18"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "efebed862700ab74"
}
@[vrml_obligation] theorem assert_18
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True)
    (assert_15 : a > 0)
    (assert_16 : (((q * a) - b) * b) = ((a * a) - q))
    (assume_13 : True) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_18

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_17 e13c6d56ddaae73b
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_17`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:69:24-69:79`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `e13c6d56ddaae73b`
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 69
  startColumn := 24
  endLine := 69
  endColumn := 79
  assertId := "17"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "e13c6d56ddaae73b"
}
@[vrml_obligation] theorem assert_17
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (assume_0 : True) :
    ((((a ≥ 0) ∧ (b ≥ 0)) ∧ (((q * a) - b) > a)) ∧ (b > a)) → ((((q * a) - b) * b) ≥ (a * a)) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_17

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_19 fbf500396c8b26c2
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_19`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:68:20-68:27`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `fbf500396c8b26c2`
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 68
  startColumn := 20
  endLine := 68
  endColumn := 27
  assertId := "19"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "fbf500396c8b26c2"
}
@[vrml_obligation] theorem assert_19
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True)
    (assert_15 : a > 0)
    (assert_16 : (((q * a) - b) * b) = ((a * a) - q))
    (assume_13 : True)
    (assert_18 : True)
    (assume_15 : ((((a ≥ 0) ∧ (b ≥ 0)) ∧ (((q * a) - b) > a)) ∧ (b > a)) → ((((q * a) - b) * b) ≥ (a * a))) :
    ((q * a) - b) ≤ a := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_19

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_20 45e6398263ddd1a9
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_20`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:65:16-65:22`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `45e6398263ddd1a9`
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 65
  startColumn := 16
  endLine := 65
  endColumn := 22
  assertId := "20"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "45e6398263ddd1a9"
}
@[vrml_obligation] theorem assert_20
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True)
    (assert_15 : a > 0)
    (assert_16 : (((q * a) - b) * b) = ((a * a) - q))
    (assume_13 : True → (((q * a) - b) ≤ a)) :
    ((q * a) - b) < b := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_20

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_22 ca99c89d66c35b63
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_22`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:74:13-74:19`
- Rust/SST construct: requires not satisfied
- AssertId: `22`
- Statement hash: `ca99c89d66c35b63`
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 74
  startColumn := 13
  endLine := 74
  endColumn := 19
  assertId := "22"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "ca99c89d66c35b63"
}
@[vrml_obligation] theorem assert_22
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True → (((q * a) - b) < b))
    (assume_11 : True) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_22

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_21 cd58700f07e41c67
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_21`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:74:20-74:93`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `cd58700f07e41c67`
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 74
  startColumn := 20
  endLine := 74
  endColumn := 93
  assertId := "21"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "cd58700f07e41c67"
}
@[vrml_obligation] theorem assert_21
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (assume_0 : True) :
    (((((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)) ∧ (a ≥ 1)) ∧ (q > 2)) → (((a * ((q * a) - b)) + 1) > 0) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_21

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_24 cac5ddc2d98fbddb
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_24`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:76:13-76:19`
- Rust/SST construct: requires not satisfied
- AssertId: `24`
- Statement hash: `cac5ddc2d98fbddb`
-/
def assert_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 76
  startColumn := 13
  endLine := 76
  endColumn := 19
  assertId := "24"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "cac5ddc2d98fbddb"
}
@[vrml_obligation] theorem assert_24
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True → (((q * a) - b) < b))
    (assume_11 : True)
    (assert_22 : True)
    (assume_13 : (((((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)) ∧ (a ≥ 1)) ∧ (q > 2)) → (((a * ((q * a) - b)) + 1) > 0)) :
    True := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_24

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_23 864e7549c8daa20c
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_23`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:76:20-76:55`
- Rust/SST construct: Rust source assertion
- AssertId: `23`
- Statement hash: `864e7549c8daa20c`
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 76
  startColumn := 20
  endLine := 76
  endColumn := 55
  assertId := "23"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "864e7549c8daa20c"
}
@[vrml_obligation] theorem assert_23
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (assume_0 : True) :
    ((((a * ((q * a) - b)) + 1) > 0) ∧ (a > 0)) → (((q * a) - b) ≥ 0) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_23

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_25 c4c12b6f36e3a493
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_25`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:73:16-73:23`
- Rust/SST construct: Rust source assertion
- AssertId: `25`
- Statement hash: `c4c12b6f36e3a493`
-/
def assert_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 73
  startColumn := 16
  endLine := 73
  endColumn := 23
  assertId := "25"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "c4c12b6f36e3a493"
}
@[vrml_obligation] theorem assert_25
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True → (((q * a) - b) < b))
    (assume_11 : True)
    (assert_22 : True)
    (assume_13 : (((((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)) ∧ (a ≥ 1)) ∧ (q > 2)) → (((a * ((q * a) - b)) + 1) > 0))
    (assert_24 : True)
    (assume_15 : ((((a * ((q * a) - b)) + 1) > 0) ∧ (a > 0)) → (((q * a) - b) ≥ 0)) :
    ((q * a) - b) ≥ 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_25

-- vrml:begin imo_1988_6.is_perfect_square_wlog.assert_anonymous_0 8c28cf95ab78abf6
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.assert_anonymous_0`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:78:16-78:43`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `8c28cf95ab78abf6`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 78
  startColumn := 16
  endLine := 78
  endColumn := 43
  assertId := "anonymous_0"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "assert"
  statementHash := "8c28cf95ab78abf6"
}
@[vrml_obligation] theorem assert_anonymous_0
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True → (((q * a) - b) < b))
    (assume_11 : True → (((q * a) - b) ≥ 0)) :
    ((0 ≤ (a + ((q * a) - b))) ∧ ((a + ((q * a) - b)) < (a + b))) ∨ (((a + ((q * a) - b)) = (a + b)) ∧ (((0 ≤ 1) ∧ (1 < 0)) ∨ ((1 = 0) ∧ False))) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.assert_anonymous_0

-- vrml:begin imo_1988_6.is_perfect_square_wlog.call_requires_26_0 85008520fb50b06d
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.call_requires_26_0`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:78:16-78:43`
- Rust/SST construct: call is_perfect_square
- AssertId: `26_0`
- Statement hash: `85008520fb50b06d`
-/
def call_requires_26_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 78
  startColumn := 16
  endLine := 78
  endColumn := 43
  assertId := "26_0"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "call_requires"
  statementHash := "85008520fb50b06d"
}
@[vrml_obligation] theorem call_requires_26_0
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True → (((q * a) - b) < b))
    (assume_11 : True → (((q * a) - b) ≥ 0))
    (assert_anonymous_0 : ((0 ≤ (a + ((q * a) - b))) ∧ ((a + ((q * a) - b)) < (a + b))) ∨ (((a + ((q * a) - b)) = (a + b)) ∧ (((0 ≤ 1) ∧ (1 < 0)) ∨ ((1 = 0) ∧ False)))) :
    a ≥ 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.call_requires_26_0

-- vrml:begin imo_1988_6.is_perfect_square_wlog.call_requires_26_1 c8cd757fc48aed6d
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.call_requires_26_1`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:78:16-78:43`
- Rust/SST construct: call is_perfect_square
- AssertId: `26_1`
- Statement hash: `c8cd757fc48aed6d`
-/
def call_requires_26_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 78
  startColumn := 16
  endLine := 78
  endColumn := 43
  assertId := "26_1"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "call_requires"
  statementHash := "c8cd757fc48aed6d"
}
@[vrml_obligation] theorem call_requires_26_1
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True → (((q * a) - b) < b))
    (assume_11 : True → (((q * a) - b) ≥ 0))
    (assert_anonymous_0 : ((0 ≤ (a + ((q * a) - b))) ∧ ((a + ((q * a) - b)) < (a + b))) ∨ (((a + ((q * a) - b)) = (a + b)) ∧ (((0 ≤ 1) ∧ (1 < 0)) ∨ ((1 = 0) ∧ False)))) :
    ((q * a) - b) ≥ 0 := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.call_requires_26_1

-- vrml:begin imo_1988_6.is_perfect_square_wlog.call_requires_26_2 be981cbc00297fe7
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.call_requires_26_2`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:78:16-78:43`
- Rust/SST construct: call is_perfect_square
- AssertId: `26_2`
- Statement hash: `be981cbc00297fe7`
-/
def call_requires_26_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 78
  startColumn := 16
  endLine := 78
  endColumn := 43
  assertId := "26_2"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "call_requires"
  statementHash := "be981cbc00297fe7"
}
@[vrml_obligation] theorem call_requires_26_2
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True → (((q * a) - b) < b))
    (assume_11 : True → (((q * a) - b) ≥ 0))
    (assert_anonymous_0 : ((0 ≤ (a + ((q * a) - b))) ∧ ((a + ((q * a) - b)) < (a + b))) ∨ (((a + ((q * a) - b)) = (a + b)) ∧ (((0 ≤ 1) ∧ (1 < 0)) ∨ ((1 = 0) ∧ False)))) :
    ((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q) := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.call_requires_26_2

-- vrml:begin imo_1988_6.is_perfect_square_wlog.ensures_27 85a05e141f494823
/--
Generated VC `imo_1988_6.is_perfect_square_wlog.ensures_27`.

- Rust source: `case-studies/imo-1988-6/imo_1988_6.rs:46:9-46:25`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `27`
- Statement hash: `85a05e141f494823`
-/
def ensures_27_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/imo-1988-6/imo_1988_6.rs"
  startLine := 46
  startColumn := 9
  endLine := 46
  endColumn := 25
  assertId := "27"
  functionName := "imo_1988_6.is_perfect_square_wlog"
  kind := "ensures"
  statementHash := "85a05e141f494823"
}
@[vrml_obligation] theorem ensures_27
    (a : Int)
    (b : Int)
    (q : Int)
    (sqrt : Int)
    (tmp_ : Int)
    (requires_0 : a ≥ 0)
    (requires_1 : b ≥ 0)
    (requires_2 : ((a * a) + (b * b)) = (((a * b) + 1) * q))
    (requires_3 : q > 2)
    (requires_4 : a < b)
    (branch_0 : (¬ (a = 0)))
    (assume_6 : True → ((((b * b) - ((q * a) * b)) + ((a * a) - q)) = 0))
    (call_vieta_jump_ensures_0 : ((((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0) ∧ ((((q * a) - b) * b) = ((a * a) - q)))
    (assert_9 : (((((q * a) - b) * ((q * a) - b)) - ((q * a) * ((q * a) - b))) + ((a * a) - q)) = 0)
    (assume_9 : True → (((a * a) + (((q * a) - b) * ((q * a) - b))) = (((a * ((q * a) - b)) + 1) * q)))
    (assume_10 : True → (((q * a) - b) < b))
    (assume_11 : True → (((q * a) - b) ≥ 0))
    (assert_anonymous_0 : ((0 ≤ (a + ((q * a) - b))) ∧ ((a + ((q * a) - b)) < (a + b))) ∨ (((a + ((q * a) - b)) = (a + b)) ∧ (((0 ≤ 1) ∧ (1 < 0)) ∨ ((1 = 0) ∧ False))))
    (call_is_perfect_square_ensures_0 : (tmp_ * tmp_) = q) :
    (tmp_ * tmp_) = q := by
  vrml
-- vrml:end imo_1988_6.is_perfect_square_wlog.ensures_27

end imo_1988_6.is_perfect_square_wlog

