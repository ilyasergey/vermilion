import Vermilion.Obligations
import symcrust_mont_mul_noasserts.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace symcrust_mont_mul_noasserts.mont_mul

-- vrml:begin symcrust_mont_mul_noasserts.mont_mul.assert_0 a082aafca626e459
/--
Generated VC `symcrust_mont_mul_noasserts.mont_mul.assert_0`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:49:19-49:24`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `a082aafca626e459`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 49
  startColumn := 19
  endLine := 49
  endColumn := 24
  assertId := "0"
  functionName := "symcrust_mont_mul_noasserts.mont_mul"
  kind := "assert"
  statementHash := "a082aafca626e459"
}
@[vrml_obligation] theorem assert_0
    (a : Int)
    (b : Int)
    (b_mont : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : Vermilion.inUnsignedRange 32 b)
    (requires_2 : Vermilion.inUnsignedRange 32 b_mont)
    (requires_3 : a < symcrust_mont_mul_noasserts.Q)
    (requires_4 : b < symcrust_mont_mul_noasserts.Q)
    (requires_5 : b_mont ≤ symcrust_mont_mul_noasserts.RMASK)
    (requires_6 : b_mont = ((b * symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R) % 65536)) :
    Vermilion.inUnsignedRange 32 (a * b) := by
  obtain ⟨ha0, ha32⟩ := requires_0
  obtain ⟨hb0, hb32⟩ := requires_1
  simp only [symcrust_mont_mul_noasserts.Q] at requires_3 requires_4
  refine ⟨mul_nonneg ha0 hb0, ?_⟩
  nlinarith
-- vrml:end symcrust_mont_mul_noasserts.mont_mul.assert_0

-- vrml:begin symcrust_mont_mul_noasserts.mont_mul.assert_1 d8e8a06afc931c67
/--
Generated VC `symcrust_mont_mul_noasserts.mont_mul.assert_1`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:50:15-50:27`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `d8e8a06afc931c67`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 50
  startColumn := 15
  endLine := 50
  endColumn := 27
  assertId := "1"
  functionName := "symcrust_mont_mul_noasserts.mont_mul"
  kind := "assert"
  statementHash := "d8e8a06afc931c67"
}
@[vrml_obligation] theorem assert_1
    (a : Int)
    (b : Int)
    (b_mont : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : Vermilion.inUnsignedRange 32 b)
    (requires_2 : Vermilion.inUnsignedRange 32 b_mont)
    (requires_3 : a < symcrust_mont_mul_noasserts.Q)
    (requires_4 : b < symcrust_mont_mul_noasserts.Q)
    (requires_5 : b_mont ≤ symcrust_mont_mul_noasserts.RMASK)
    (requires_6 : b_mont = ((b * symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R) % 65536))
    (assert_0 : Vermilion.inUnsignedRange 32 (a * b)) :
    Vermilion.inUnsignedRange 32 (a * b_mont) := by
  obtain ⟨ha0, ha32⟩ := requires_0
  obtain ⟨hbm0, hbm32⟩ := requires_2
  simp only [symcrust_mont_mul_noasserts.Q] at requires_3
  simp only [symcrust_mont_mul_noasserts.RMASK] at requires_5
  refine ⟨mul_nonneg ha0 hbm0, ?_⟩
  nlinarith
-- vrml:end symcrust_mont_mul_noasserts.mont_mul.assert_1

-- vrml:begin symcrust_mont_mul_noasserts.mont_mul.assert_2 8080cba788843c99
/--
Generated VC `symcrust_mont_mul_noasserts.mont_mul.assert_2`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:51:12-51:19`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `2`
- Statement hash: `8080cba788843c99`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 51
  startColumn := 12
  endLine := 51
  endColumn := 19
  assertId := "2"
  functionName := "symcrust_mont_mul_noasserts.mont_mul"
  kind := "assert"
  statementHash := "8080cba788843c99"
}
@[vrml_obligation] theorem assert_2
    (a : Int)
    (b : Int)
    (b_mont : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : Vermilion.inUnsignedRange 32 b)
    (requires_2 : Vermilion.inUnsignedRange 32 b_mont)
    (requires_3 : a < symcrust_mont_mul_noasserts.Q)
    (requires_4 : b < symcrust_mont_mul_noasserts.Q)
    (requires_5 : b_mont ≤ symcrust_mont_mul_noasserts.RMASK)
    (requires_6 : b_mont = ((b * symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R) % 65536))
    (assert_0 : Vermilion.inUnsignedRange 32 (a * b))
    (assert_1 : Vermilion.inUnsignedRange 32 (a * b_mont)) :
    Vermilion.inUnsignedRange 32 (Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q) := by
  simp only [symcrust_mont_mul_noasserts.Q, symcrust_mont_mul_noasserts.RMASK,
    Vermilion.inUnsignedRange] at *
  rw [band32_ffff_eq_mod _ (by omega) (by omega)]
  omega
-- vrml:end symcrust_mont_mul_noasserts.mont_mul.assert_2

-- vrml:begin symcrust_mont_mul_noasserts.mont_mul.assert_3 fe25aa3c8760f2ca
/--
Generated VC `symcrust_mont_mul_noasserts.mont_mul.assert_3`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:51:5-51:19`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `3`
- Statement hash: `fe25aa3c8760f2ca`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 51
  startColumn := 5
  endLine := 51
  endColumn := 19
  assertId := "3"
  functionName := "symcrust_mont_mul_noasserts.mont_mul"
  kind := "assert"
  statementHash := "fe25aa3c8760f2ca"
}
@[vrml_obligation] theorem assert_3
    (a : Int)
    (b : Int)
    (b_mont : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : Vermilion.inUnsignedRange 32 b)
    (requires_2 : Vermilion.inUnsignedRange 32 b_mont)
    (requires_3 : a < symcrust_mont_mul_noasserts.Q)
    (requires_4 : b < symcrust_mont_mul_noasserts.Q)
    (requires_5 : b_mont ≤ symcrust_mont_mul_noasserts.RMASK)
    (requires_6 : b_mont = ((b * symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R) % 65536))
    (assert_0 : Vermilion.inUnsignedRange 32 (a * b))
    (assert_1 : Vermilion.inUnsignedRange 32 (a * b_mont))
    (assert_2 : Vermilion.inUnsignedRange 32 (Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q)) :
    Vermilion.inUnsignedRange 32 (((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q) % 4294967296)) := by
  simp only [symcrust_mont_mul_noasserts.Q, symcrust_mont_mul_noasserts.RMASK,
    symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R, Vermilion.inUnsignedRange] at *
  -- Collapse the width-32 wraps one at a time: `omega` alone drowns in
  -- the stacked div/mod atoms of the unsimplified goal.
  have h2 : (a * b_mont) % 4294967296 = a * b_mont := by omega
  rw [h2, band32_ffff_eq_mod _ (by omega) (by omega)]
  have h1 : (a * b) % 4294967296 = a * b := by omega
  have h4 : ((a * b_mont % 65536) * 3329) % 4294967296
      = (a * b_mont % 65536) * 3329 := by omega
  rw [h1, h4]
  have hp : a * b ≤ 3328 * 3328 := by nlinarith
  omega
-- vrml:end symcrust_mont_mul_noasserts.mont_mul.assert_3

-- vrml:begin symcrust_mont_mul_noasserts.mont_mul.assert_4 0b376cc377bbacd6
/--
Generated VC `symcrust_mont_mul_noasserts.mont_mul.assert_4`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:52:5-52:18`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `4`
- Statement hash: `0b376cc377bbacd6`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 52
  startColumn := 5
  endLine := 52
  endColumn := 18
  assertId := "4"
  functionName := "symcrust_mont_mul_noasserts.mont_mul"
  kind := "assert"
  statementHash := "0b376cc377bbacd6"
}
@[vrml_obligation] theorem assert_4
    (a : Int)
    (b : Int)
    (b_mont : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : Vermilion.inUnsignedRange 32 b)
    (requires_2 : Vermilion.inUnsignedRange 32 b_mont)
    (requires_3 : a < symcrust_mont_mul_noasserts.Q)
    (requires_4 : b < symcrust_mont_mul_noasserts.Q)
    (requires_5 : b_mont ≤ symcrust_mont_mul_noasserts.RMASK)
    (requires_6 : b_mont = ((b * symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R) % 65536))
    (assert_0 : Vermilion.inUnsignedRange 32 (a * b))
    (assert_1 : Vermilion.inUnsignedRange 32 (a * b_mont))
    (assert_2 : Vermilion.inUnsignedRange 32 (Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q))
    (assert_3 : Vermilion.inUnsignedRange 32 (((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q) % 4294967296))) :
    (0 ≤ symcrust_mont_mul_noasserts.RLOG2) ∧ (symcrust_mont_mul_noasserts.RLOG2 < 32) := by
  refine ⟨by norm_num [symcrust_mont_mul_noasserts.RLOG2], by norm_num [symcrust_mont_mul_noasserts.RLOG2]⟩
-- vrml:end symcrust_mont_mul_noasserts.mont_mul.assert_4

-- vrml:begin symcrust_mont_mul_noasserts.mont_mul.call_requires_5 4389153227cfe607
/--
Generated VC `symcrust_mont_mul_noasserts.mont_mul.call_requires_5`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:54:5-54:20`
- Rust/SST construct: call mod_reduce
- AssertId: `5`
- Statement hash: `4389153227cfe607`
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 54
  startColumn := 5
  endLine := 54
  endColumn := 20
  assertId := "5"
  functionName := "symcrust_mont_mul_noasserts.mont_mul"
  kind := "call_requires"
  statementHash := "4389153227cfe607"
}
@[vrml_obligation] theorem call_requires_5
    (a : Int)
    (b : Int)
    (b_mont : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : Vermilion.inUnsignedRange 32 b)
    (requires_2 : Vermilion.inUnsignedRange 32 b_mont)
    (requires_3 : a < symcrust_mont_mul_noasserts.Q)
    (requires_4 : b < symcrust_mont_mul_noasserts.Q)
    (requires_5 : b_mont ≤ symcrust_mont_mul_noasserts.RMASK)
    (requires_6 : b_mont = ((b * symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R) % 65536))
    (assert_0 : Vermilion.inUnsignedRange 32 (a * b))
    (assert_1 : Vermilion.inUnsignedRange 32 (a * b_mont))
    (assert_2 : Vermilion.inUnsignedRange 32 (Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q))
    (assert_3 : Vermilion.inUnsignedRange 32 (((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q) % 4294967296)))
    (assert_4 : (0 ≤ symcrust_mont_mul_noasserts.RLOG2) ∧ (symcrust_mont_mul_noasserts.RLOG2 < 32)) :
    Vermilion.Bits.shr 32 ((((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q) % 4294967296)) % 4294967296) symcrust_mont_mul_noasserts.RLOG2 < (2 * symcrust_mont_mul_noasserts.Q) := by
  simp only [symcrust_mont_mul_noasserts.Q, symcrust_mont_mul_noasserts.RMASK,
    symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R, symcrust_mont_mul_noasserts.RLOG2,
    Vermilion.inUnsignedRange] at *
  have h2 : (a * b_mont) % 4294967296 = a * b_mont := by omega
  rw [h2, band32_ffff_eq_mod _ (by omega) (by omega)]
  have h1 : (a * b) % 4294967296 = a * b := by omega
  have h4 : ((a * b_mont % 65536) * 3329) % 4294967296
      = (a * b_mont % 65536) * 3329 := by omega
  rw [h1, h4]
  have hp : a * b ≤ 3328 * 3328 := by nlinarith
  have h5 : (a * b + (a * b_mont % 65536) * 3329) % 4294967296
      = a * b + (a * b_mont % 65536) * 3329 := by omega
  rw [h5, shr32_sixteen_eq_div _ (by omega) (by omega)]
  omega
-- vrml:end symcrust_mont_mul_noasserts.mont_mul.call_requires_5

-- vrml:begin symcrust_mont_mul_noasserts.mont_mul.ensures_6_0 eb5f18235aa09e59
/--
Generated VC `symcrust_mont_mul_noasserts.mont_mul.ensures_6_0`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:46:9-46:19`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_0`
- Statement hash: `eb5f18235aa09e59`
-/
def ensures_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 46
  startColumn := 9
  endLine := 46
  endColumn := 19
  assertId := "6_0"
  functionName := "symcrust_mont_mul_noasserts.mont_mul"
  kind := "ensures"
  statementHash := "eb5f18235aa09e59"
}
@[vrml_obligation] theorem ensures_6_0
    (a : Int)
    (b : Int)
    (b_mont : Int)
    (tmp_ : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : Vermilion.inUnsignedRange 32 b)
    (requires_2 : Vermilion.inUnsignedRange 32 b_mont)
    (requires_3 : a < symcrust_mont_mul_noasserts.Q)
    (requires_4 : b < symcrust_mont_mul_noasserts.Q)
    (requires_5 : b_mont ≤ symcrust_mont_mul_noasserts.RMASK)
    (requires_6 : b_mont = ((b * symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R) % 65536))
    (assert_0 : Vermilion.inUnsignedRange 32 (a * b))
    (assert_1 : Vermilion.inUnsignedRange 32 (a * b_mont))
    (assert_2 : Vermilion.inUnsignedRange 32 (Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q))
    (assert_3 : Vermilion.inUnsignedRange 32 (((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q) % 4294967296)))
    (assert_4 : (0 ≤ symcrust_mont_mul_noasserts.RLOG2) ∧ (symcrust_mont_mul_noasserts.RLOG2 < 32))
    (call_mod_reduce_ensures_0 : Vermilion.inUnsignedRange 32 tmp_)
    (call_mod_reduce_ensures_1 : tmp_ = (Vermilion.emod (Vermilion.Bits.shr 32 ((((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q) % 4294967296)) % 4294967296) symcrust_mont_mul_noasserts.RLOG2) symcrust_mont_mul_noasserts.Q)) :
    tmp_ < symcrust_mont_mul_noasserts.Q := by
  simp only [symcrust_mont_mul_noasserts.Q] at call_mod_reduce_ensures_1 ⊢
  simp only [show ∀ x : Int, Vermilion.emod x 3329 = x % 3329 from
    fun x => Vermilion.emod_of_ne_zero x (by norm_num)] at call_mod_reduce_ensures_1
  omega
-- vrml:end symcrust_mont_mul_noasserts.mont_mul.ensures_6_0

-- vrml:begin symcrust_mont_mul_noasserts.mont_mul.ensures_6_1 1c60ebeeaa55194a
/--
Generated VC `symcrust_mont_mul_noasserts.mont_mul.ensures_6_1`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:47:9-47:75`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_1`
- Statement hash: `1c60ebeeaa55194a`
-/
def ensures_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 47
  startColumn := 9
  endLine := 47
  endColumn := 75
  assertId := "6_1"
  functionName := "symcrust_mont_mul_noasserts.mont_mul"
  kind := "ensures"
  statementHash := "1c60ebeeaa55194a"
}
@[vrml_obligation] theorem ensures_6_1
    (a : Int)
    (b : Int)
    (b_mont : Int)
    (tmp_ : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : Vermilion.inUnsignedRange 32 b)
    (requires_2 : Vermilion.inUnsignedRange 32 b_mont)
    (requires_3 : a < symcrust_mont_mul_noasserts.Q)
    (requires_4 : b < symcrust_mont_mul_noasserts.Q)
    (requires_5 : b_mont ≤ symcrust_mont_mul_noasserts.RMASK)
    (requires_6 : b_mont = ((b * symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R) % 65536))
    (assert_0 : Vermilion.inUnsignedRange 32 (a * b))
    (assert_1 : Vermilion.inUnsignedRange 32 (a * b_mont))
    (assert_2 : Vermilion.inUnsignedRange 32 (Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q))
    (assert_3 : Vermilion.inUnsignedRange 32 (((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q) % 4294967296)))
    (assert_4 : (0 ≤ symcrust_mont_mul_noasserts.RLOG2) ∧ (symcrust_mont_mul_noasserts.RLOG2 < 32))
    (call_mod_reduce_ensures_0 : Vermilion.inUnsignedRange 32 tmp_)
    (call_mod_reduce_ensures_1 : tmp_ = (Vermilion.emod (Vermilion.Bits.shr 32 ((((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) symcrust_mont_mul_noasserts.RMASK * symcrust_mont_mul_noasserts.Q) % 4294967296)) % 4294967296) symcrust_mont_mul_noasserts.RLOG2) symcrust_mont_mul_noasserts.Q)) :
    (Vermilion.emod (tmp_ * 65536) symcrust_mont_mul_noasserts.Q) = (Vermilion.emod (a * b) symcrust_mont_mul_noasserts.Q) := by
  simp only [symcrust_mont_mul_noasserts.Q, symcrust_mont_mul_noasserts.RMASK,
    symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R, symcrust_mont_mul_noasserts.RLOG2,
    Vermilion.inUnsignedRange] at *
  -- Collapse the width-32 wraps in the callee's postcondition.
  have h2 : (a * b_mont) % 4294967296 = a * b_mont := by omega
  rw [h2, band32_ffff_eq_mod _ (by omega) (by omega)] at call_mod_reduce_ensures_1
  have h1 : (a * b) % 4294967296 = a * b := by omega
  have h4 : ((a * b_mont % 65536) * 3329) % 4294967296
      = (a * b_mont % 65536) * 3329 := by omega
  rw [h1, h4] at call_mod_reduce_ensures_1
  have hp : a * b ≤ 3328 * 3328 := by nlinarith
  have h5 : (a * b + (a * b_mont % 65536) * 3329) % 4294967296
      = a * b + (a * b_mont % 65536) * 3329 := by omega
  rw [h5, shr32_sixteen_eq_div _ (by omega) (by omega)] at call_mod_reduce_ensures_1
  simp only [show ∀ x : Int, Vermilion.emod x 3329 = x % 3329 from
    fun x => Vermilion.emod_of_ne_zero x (by norm_num)] at call_mod_reduce_ensures_1 ⊢
  -- The Montgomery identity: b_mont ≡ 3327·b (mod 2^16) lifts to
  -- a·b_mont = 3327·(a·b) − 2^16·(a·⌊b·3327/2^16⌋).
  have hu : a * b_mont = 3327 * (a * b) - 65536 * (a * (b * 3327 / 65536)) := by
    have hb : b_mont = b * 3327 - 65536 * (b * 3327 / 65536) := by omega
    rw [hb]; grind
  -- Hence the accumulated sum is an exact multiple of 2^16
  -- (1 + 3327·3329 = 169·2^16).
  have hS : a * b + (a * b_mont % 65536) * 3329
      = 65536 * (169 * (a * b) - 3329 * (a * (b * 3327 / 65536))
          - 3329 * ((a * b_mont) / 65536)) := by
    have hg : (a * b_mont) % 65536
        = a * b_mont - 65536 * ((a * b_mont) / 65536) := by omega
    rw [hg, hu]; grind
  have hdiv : (a * b + (a * b_mont % 65536) * 3329) / 65536
      = 169 * (a * b) - 3329 * (a * (b * 3327 / 65536))
          - 3329 * ((a * b_mont) / 65536) := by omega
  rw [hdiv] at call_mod_reduce_ensures_1
  omega
-- vrml:end symcrust_mont_mul_noasserts.mont_mul.ensures_6_1

end symcrust_mont_mul_noasserts.mont_mul

