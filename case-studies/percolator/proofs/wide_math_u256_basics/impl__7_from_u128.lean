import Vermilion.Obligations
import wide_math_u256_basics.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_u256_basics.impl__7.from_u128

-- vrml:begin wide_math_u256_basics.impl__7.from_u128.ensures_1_0 956ec89fd813945b
/--
Generated VC `wide_math_u256_basics.impl__7.from_u128.ensures_1_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:31:13-31:36`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_0`
- Statement hash: `956ec89fd813945b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0⟩
-/
def ensures_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 31
  startColumn := 13
  endLine := 31
  endColumn := 36
  assertId := "1_0"
  functionName := "wide_math_u256_basics.impl__7.from_u128"
  kind := "ensures"
  statementHash := "956ec89fd813945b"
}
@[vrml_obligation] theorem ensures_1_0
    (v : Int)
    (tmp_ : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.inUnsignedRange 128 v)
    (call_new_ensures_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_) = 4)
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0))))
    (call_new_ensures_2 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = (v % 18446744073709551616))
    (call_new_ensures_3 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 v 64) % 18446744073709551616))
    (call_new_ensures_4 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = (0 % 18446744073709551616))
    (call_new_ensures_5 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 0 64) % 18446744073709551616)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = (v % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.from_u128.ensures_1_0

-- vrml:begin wide_math_u256_basics.impl__7.from_u128.ensures_1_1 73293df7cf53a76a
/--
Generated VC `wide_math_u256_basics.impl__7.from_u128.ensures_1_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:32:13-32:44`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_1`
- Statement hash: `73293df7cf53a76a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0⟩
-/
def ensures_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 32
  startColumn := 13
  endLine := 32
  endColumn := 44
  assertId := "1_1"
  functionName := "wide_math_u256_basics.impl__7.from_u128"
  kind := "ensures"
  statementHash := "73293df7cf53a76a"
}
@[vrml_obligation] theorem ensures_1_1
    (v : Int)
    (tmp_ : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.inUnsignedRange 128 v)
    (call_new_ensures_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_) = 4)
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0))))
    (call_new_ensures_2 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = (v % 18446744073709551616))
    (call_new_ensures_3 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 v 64) % 18446744073709551616))
    (call_new_ensures_4 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = (0 % 18446744073709551616))
    (call_new_ensures_5 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 0 64) % 18446744073709551616)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 v 64) % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.from_u128.ensures_1_1

-- vrml:begin wide_math_u256_basics.impl__7.from_u128.ensures_1_2 9a69e76fe33a5b71
/--
Generated VC `wide_math_u256_basics.impl__7.from_u128.ensures_1_2`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:33:13-33:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_2`
- Statement hash: `9a69e76fe33a5b71`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0⟩
-/
def ensures_1_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 33
  startColumn := 13
  endLine := 33
  endColumn := 29
  assertId := "1_2"
  functionName := "wide_math_u256_basics.impl__7.from_u128"
  kind := "ensures"
  statementHash := "9a69e76fe33a5b71"
}
@[vrml_obligation] theorem ensures_1_2
    (v : Int)
    (tmp_ : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.inUnsignedRange 128 v)
    (call_new_ensures_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_) = 4)
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0))))
    (call_new_ensures_2 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = (v % 18446744073709551616))
    (call_new_ensures_3 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 v 64) % 18446744073709551616))
    (call_new_ensures_4 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = (0 % 18446744073709551616))
    (call_new_ensures_5 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 0 64) % 18446744073709551616)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = 0 := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.from_u128.ensures_1_2

-- vrml:begin wide_math_u256_basics.impl__7.from_u128.ensures_1_3 fbcedfb9ec5e96a2
/--
Generated VC `wide_math_u256_basics.impl__7.from_u128.ensures_1_3`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:34:13-34:48`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_3`
- Statement hash: `fbcedfb9ec5e96a2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0⟩
-/
def ensures_1_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 34
  startColumn := 13
  endLine := 34
  endColumn := 48
  assertId := "1_3"
  functionName := "wide_math_u256_basics.impl__7.from_u128"
  kind := "ensures"
  statementHash := "fbcedfb9ec5e96a2"
}
@[vrml_obligation] theorem ensures_1_3
    (v : Int)
    (tmp_ : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.inUnsignedRange 128 v)
    (call_new_ensures_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_) = 4)
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0))))
    (call_new_ensures_2 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = (v % 18446744073709551616))
    (call_new_ensures_3 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 v 64) % 18446744073709551616))
    (call_new_ensures_4 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = (0 % 18446744073709551616))
    (call_new_ensures_5 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 0 64) % 18446744073709551616)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 0 64) % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.from_u128.ensures_1_3

end wide_math_u256_basics.impl__7.from_u128

