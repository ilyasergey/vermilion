import Vermilion.Obligations
import wide_math_u256_basics.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_u256_basics.impl__7.new

-- vrml:begin wide_math_u256_basics.impl__7.new.assert_0 b63eee6b69b2ae79
/--
Generated VC `wide_math_u256_basics.impl__7.new.assert_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:25:26-25:36`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `0`
- Statement hash: `b63eee6b69b2ae79`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 25
  startColumn := 26
  endLine := 25
  endColumn := 36
  assertId := "0"
  functionName := "wide_math_u256_basics.impl__7.new"
  kind := "assert"
  statementHash := "b63eee6b69b2ae79"
}
@[vrml_obligation] theorem assert_0
    (lo : Int)
    (hi : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 lo)
    (requires_1 : Vermilion.inUnsignedRange 128 hi) :
    (0 ≤ 64) ∧ (64 < 128) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.new.assert_0

-- vrml:begin wide_math_u256_basics.impl__7.new.assert_1 c09bfa5d76b43118
/--
Generated VC `wide_math_u256_basics.impl__7.new.assert_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:25:56-25:66`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `1`
- Statement hash: `c09bfa5d76b43118`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 25
  startColumn := 56
  endLine := 25
  endColumn := 66
  assertId := "1"
  functionName := "wide_math_u256_basics.impl__7.new"
  kind := "assert"
  statementHash := "c09bfa5d76b43118"
}
@[vrml_obligation] theorem assert_1
    (lo : Int)
    (hi : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 lo)
    (requires_1 : Vermilion.inUnsignedRange 128 hi)
    (assert_0 : (0 ≤ 64) ∧ (64 < 128)) :
    (0 ≤ 64) ∧ (64 < 128) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.new.assert_1

-- vrml:begin wide_math_u256_basics.impl__7.new.ensures_2_0 d978dbaba6617c5b
/--
Generated VC `wide_math_u256_basics.impl__7.new.ensures_2_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:20:13-20:37`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_0`
- Statement hash: `d978dbaba6617c5b`
-/
def ensures_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 20
  startColumn := 13
  endLine := 20
  endColumn := 37
  assertId := "2_0"
  functionName := "wide_math_u256_basics.impl__7.new"
  kind := "ensures"
  statementHash := "d978dbaba6617c5b"
}
@[vrml_obligation] theorem ensures_2_0
    (lo : Int)
    (hi : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 lo)
    (requires_1 : Vermilion.inUnsignedRange 128 hi)
    (assert_0 : (0 ≤ 64) ∧ (64 < 128))
    (assert_1 : (0 ≤ 64) ∧ (64 < 128)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 (wide_math_u256_basics.U256.U256 (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (lo % 18446744073709551616)) ((Vermilion.Bits.shr 128 lo 64) % 18446744073709551616)) (hi % 18446744073709551616)) ((Vermilion.Bits.shr 128 hi 64) % 18446744073709551616)))) 0 = (lo % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.new.ensures_2_0

-- vrml:begin wide_math_u256_basics.impl__7.new.ensures_2_1 b9c0c927fbaf4876
/--
Generated VC `wide_math_u256_basics.impl__7.new.ensures_2_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:21:13-21:45`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_1`
- Statement hash: `b9c0c927fbaf4876`
-/
def ensures_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 21
  startColumn := 13
  endLine := 21
  endColumn := 45
  assertId := "2_1"
  functionName := "wide_math_u256_basics.impl__7.new"
  kind := "ensures"
  statementHash := "b9c0c927fbaf4876"
}
@[vrml_obligation] theorem ensures_2_1
    (lo : Int)
    (hi : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 lo)
    (requires_1 : Vermilion.inUnsignedRange 128 hi)
    (assert_0 : (0 ≤ 64) ∧ (64 < 128))
    (assert_1 : (0 ≤ 64) ∧ (64 < 128)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 (wide_math_u256_basics.U256.U256 (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (lo % 18446744073709551616)) ((Vermilion.Bits.shr 128 lo 64) % 18446744073709551616)) (hi % 18446744073709551616)) ((Vermilion.Bits.shr 128 hi 64) % 18446744073709551616)))) 1 = ((Vermilion.Bits.shr 128 lo 64) % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.new.ensures_2_1

-- vrml:begin wide_math_u256_basics.impl__7.new.ensures_2_2 3d5296ccfd56722b
/--
Generated VC `wide_math_u256_basics.impl__7.new.ensures_2_2`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:22:13-22:37`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_2`
- Statement hash: `3d5296ccfd56722b`
-/
def ensures_2_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 22
  startColumn := 13
  endLine := 22
  endColumn := 37
  assertId := "2_2"
  functionName := "wide_math_u256_basics.impl__7.new"
  kind := "ensures"
  statementHash := "3d5296ccfd56722b"
}
@[vrml_obligation] theorem ensures_2_2
    (lo : Int)
    (hi : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 lo)
    (requires_1 : Vermilion.inUnsignedRange 128 hi)
    (assert_0 : (0 ≤ 64) ∧ (64 < 128))
    (assert_1 : (0 ≤ 64) ∧ (64 < 128)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 (wide_math_u256_basics.U256.U256 (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (lo % 18446744073709551616)) ((Vermilion.Bits.shr 128 lo 64) % 18446744073709551616)) (hi % 18446744073709551616)) ((Vermilion.Bits.shr 128 hi 64) % 18446744073709551616)))) 2 = (hi % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.new.ensures_2_2

-- vrml:begin wide_math_u256_basics.impl__7.new.ensures_2_3 26f3bbf4abcfbbca
/--
Generated VC `wide_math_u256_basics.impl__7.new.ensures_2_3`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:23:13-23:45`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_3`
- Statement hash: `26f3bbf4abcfbbca`
-/
def ensures_2_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 23
  startColumn := 13
  endLine := 23
  endColumn := 45
  assertId := "2_3"
  functionName := "wide_math_u256_basics.impl__7.new"
  kind := "ensures"
  statementHash := "26f3bbf4abcfbbca"
}
@[vrml_obligation] theorem ensures_2_3
    (lo : Int)
    (hi : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 lo)
    (requires_1 : Vermilion.inUnsignedRange 128 hi)
    (assert_0 : (0 ≤ 64) ∧ (64 < 128))
    (assert_1 : (0 ≤ 64) ∧ (64 < 128)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 (wide_math_u256_basics.U256.U256 (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) (lo % 18446744073709551616)) ((Vermilion.Bits.shr 128 lo 64) % 18446744073709551616)) (hi % 18446744073709551616)) ((Vermilion.Bits.shr 128 hi 64) % 18446744073709551616)))) 3 = ((Vermilion.Bits.shr 128 hi 64) % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.new.ensures_2_3

end wide_math_u256_basics.impl__7.new

