import Vermilion.Obligations
import wide_math_u256_basics.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_u256_basics.impl__7.bitand

-- vrml:begin wide_math_u256_basics.impl__7.bitand.ensures_5_0 24c4700d5d02efe4
/--
Generated VC `wide_math_u256_basics.impl__7.bitand.ensures_5_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:94:13-97:21`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_0`
- Statement hash: `24c4700d5d02efe4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) vrml_i0⟩ ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0⟩
-/
def ensures_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 94
  startColumn := 13
  endLine := 97
  endColumn := 21
  assertId := "5_0"
  functionName := "wide_math_u256_basics.impl__7.bitand"
  kind := "ensures"
  statementHash := "24c4700d5d02efe4"
}
@[vrml_obligation] theorem ensures_5_0
    (self : wide_math_u256_basics.U256)
    (rhs : wide_math_u256_basics.U256)
    (tmp_ : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 rhs) = 4)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)))
    (assume_5 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64)))
    (assume_6 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)))
    (assume_7 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64)))
    (call_new_ensures_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_) = 4)
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0))))
    (call_new_ensures_2 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616))
    (call_new_ensures_3 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616))
    (call_new_ensures_4 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616))
    (call_new_ensures_5 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.bitand.ensures_5_0

-- vrml:begin wide_math_u256_basics.impl__7.bitand.ensures_5_1 2cdff0a8350c5919
/--
Generated VC `wide_math_u256_basics.impl__7.bitand.ensures_5_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:98:13-101:28`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_1`
- Statement hash: `2cdff0a8350c5919`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) vrml_i0⟩ ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0⟩
-/
def ensures_5_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 98
  startColumn := 13
  endLine := 101
  endColumn := 28
  assertId := "5_1"
  functionName := "wide_math_u256_basics.impl__7.bitand"
  kind := "ensures"
  statementHash := "2cdff0a8350c5919"
}
@[vrml_obligation] theorem ensures_5_1
    (self : wide_math_u256_basics.U256)
    (rhs : wide_math_u256_basics.U256)
    (tmp_ : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 rhs) = 4)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)))
    (assume_5 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64)))
    (assume_6 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)))
    (assume_7 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64)))
    (call_new_ensures_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_) = 4)
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0))))
    (call_new_ensures_2 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616))
    (call_new_ensures_3 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616))
    (call_new_ensures_4 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616))
    (call_new_ensures_5 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.bitand.ensures_5_1

-- vrml:begin wide_math_u256_basics.impl__7.bitand.ensures_5_2 dbe87e795a696dae
/--
Generated VC `wide_math_u256_basics.impl__7.bitand.ensures_5_2`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:102:13-105:21`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_2`
- Statement hash: `dbe87e795a696dae`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) vrml_i0⟩ ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0⟩
-/
def ensures_5_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 102
  startColumn := 13
  endLine := 105
  endColumn := 21
  assertId := "5_2"
  functionName := "wide_math_u256_basics.impl__7.bitand"
  kind := "ensures"
  statementHash := "dbe87e795a696dae"
}
@[vrml_obligation] theorem ensures_5_2
    (self : wide_math_u256_basics.U256)
    (rhs : wide_math_u256_basics.U256)
    (tmp_ : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 rhs) = 4)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)))
    (assume_5 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64)))
    (assume_6 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)))
    (assume_7 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64)))
    (call_new_ensures_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_) = 4)
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0))))
    (call_new_ensures_2 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616))
    (call_new_ensures_3 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616))
    (call_new_ensures_4 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616))
    (call_new_ensures_5 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.bitand.ensures_5_2

-- vrml:begin wide_math_u256_basics.impl__7.bitand.ensures_5_3 d0f116e7f1a7c90b
/--
Generated VC `wide_math_u256_basics.impl__7.bitand.ensures_5_3`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:106:13-109:28`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5_3`
- Statement hash: `d0f116e7f1a7c90b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩ ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) vrml_i0⟩ ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0⟩
-/
def ensures_5_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 106
  startColumn := 13
  endLine := 109
  endColumn := 28
  assertId := "5_3"
  functionName := "wide_math_u256_basics.impl__7.bitand"
  kind := "ensures"
  statementHash := "d0f116e7f1a7c90b"
}
@[vrml_obligation] theorem ensures_5_3
    (self : wide_math_u256_basics.U256)
    (rhs : wide_math_u256_basics.U256)
    (tmp_ : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 rhs) = 4)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) vrml_i0))))
    (assume_4 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)))
    (assume_5 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64)))
    (assume_6 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)))
    (assume_7 : Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64)))
    (call_new_ensures_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_) = 4)
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 tmp_))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) vrml_i0))))
    (call_new_ensures_2 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 0 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616))
    (call_new_ensures_3 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 1 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 1) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616))
    (call_new_ensures_4 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 2 = ((Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) % 18446744073709551616))
    (call_new_ensures_5 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616)) :
    Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 tmp_) 3 = ((Vermilion.Bits.shr 128 (Vermilion.Bits.band 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64)) (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 rhs) 3) % 340282366920938463463374607431768211456) 64))) 64) % 18446744073709551616) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.bitand.ensures_5_3

end wide_math_u256_basics.impl__7.bitand

