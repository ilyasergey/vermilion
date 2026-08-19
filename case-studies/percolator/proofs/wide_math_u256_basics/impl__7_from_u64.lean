import Vermilion.Obligations
import wide_math_u256_basics.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_u256_basics.impl__7.from_u64

-- vrml:begin wide_math_u256_basics.impl__7.from_u64.ensures_0_0 c9ec7b969ee6e5d8
/--
Generated VC `wide_math_u256_basics.impl__7.from_u64.ensures_0_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:42:13-42:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_0`
- Statement hash: `c9ec7b969ee6e5d8`
-/
def ensures_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 42
  startColumn := 13
  endLine := 42
  endColumn := 29
  assertId := "0_0"
  functionName := "wide_math_u256_basics.impl__7.from_u64"
  kind := "ensures"
  statementHash := "c9ec7b969ee6e5d8"
}
@[vrml_obligation] theorem ensures_0_0
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 (wide_math_u256_basics.U256.U256 (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) v) 0) 0) 0))) 0 = v := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.from_u64.ensures_0_0

-- vrml:begin wide_math_u256_basics.impl__7.from_u64.ensures_0_1 2fa3246b40a0c38d
/--
Generated VC `wide_math_u256_basics.impl__7.from_u64.ensures_0_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:43:13-43:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_1`
- Statement hash: `2fa3246b40a0c38d`
-/
def ensures_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 43
  startColumn := 13
  endLine := 43
  endColumn := 29
  assertId := "0_1"
  functionName := "wide_math_u256_basics.impl__7.from_u64"
  kind := "ensures"
  statementHash := "2fa3246b40a0c38d"
}
@[vrml_obligation] theorem ensures_0_1
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 (wide_math_u256_basics.U256.U256 (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) v) 0) 0) 0))) 1 = 0 := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.from_u64.ensures_0_1

-- vrml:begin wide_math_u256_basics.impl__7.from_u64.ensures_0_2 c5bddb42414783e4
/--
Generated VC `wide_math_u256_basics.impl__7.from_u64.ensures_0_2`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:44:13-44:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_2`
- Statement hash: `c5bddb42414783e4`
-/
def ensures_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 44
  startColumn := 13
  endLine := 44
  endColumn := 29
  assertId := "0_2"
  functionName := "wide_math_u256_basics.impl__7.from_u64"
  kind := "ensures"
  statementHash := "c5bddb42414783e4"
}
@[vrml_obligation] theorem ensures_0_2
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 (wide_math_u256_basics.U256.U256 (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) v) 0) 0) 0))) 2 = 0 := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.from_u64.ensures_0_2

-- vrml:begin wide_math_u256_basics.impl__7.from_u64.ensures_0_3 2cc9bc0155929fe7
/--
Generated VC `wide_math_u256_basics.impl__7.from_u64.ensures_0_3`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:45:13-45:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_3`
- Statement hash: `2cc9bc0155929fe7`
-/
def ensures_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 45
  startColumn := 13
  endLine := 45
  endColumn := 29
  assertId := "0_3"
  functionName := "wide_math_u256_basics.impl__7.from_u64"
  kind := "ensures"
  statementHash := "2cc9bc0155929fe7"
}
@[vrml_obligation] theorem ensures_0_3
    (v : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 (wide_math_u256_basics.U256.U256 (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) v) 0) 0) 0))) 3 = 0 := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.from_u64.ensures_0_3

end wide_math_u256_basics.impl__7.from_u64

