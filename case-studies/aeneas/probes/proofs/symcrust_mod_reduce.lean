import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec symcrust_mod_reduce.Q case-studies/aeneas/probes/symcrust_mod_reduce.rs:14:1
def symcrust_mod_reduce.Q : Int :=
  3329

-- vrml:user:begin
/-- Logical right shift by 16 at width 32 is division by `2^16` for
in-range operands. -/
private theorem shr32_sixteen_eq_div (x : Int)
    (low : 0 ≤ x) (high : x < 4294967296) :
    Vermilion.Bits.shr 32 x 16 = x / 65536 := by
  have hto : (((BitVec.ofInt 32 x)).toNat : Int) = x :=
    Vermilion.Bits.toNat_ofInt_of_range 32 x low (by norm_num; exact high)
  simp only [Vermilion.Bits.shr, BitVec.toNat_ushiftRight,
    Nat.shiftRight_eq_div_pow]
  rw [show (16 : Int).toNat = 16 from rfl, show (2 : Nat) ^ 16 = 65536 from rfl]
  omega

/-- `Q & 0xffff = Q` at width 32 (Q = 3329 fits in 16 bits). -/
private theorem band32_q_ffff :
    Vermilion.Bits.band 32 3329 65535 = 3329 := by decide
-- vrml:user:end

namespace symcrust_mod_reduce.mod_reduce

-- vrml:begin symcrust_mod_reduce.mod_reduce.assert_0 dde42c95319fa613
/--
Generated VC `symcrust_mod_reduce.mod_reduce.assert_0`.

- Rust source: `case-studies/aeneas/probes/symcrust_mod_reduce.rs:23:19-23:28`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `dde42c95319fa613`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mod_reduce.rs"
  startLine := 23
  startColumn := 19
  endLine := 23
  endColumn := 28
  assertId := "0"
  functionName := "symcrust_mod_reduce.mod_reduce"
  kind := "assert"
  statementHash := "dde42c95319fa613"
}
@[vrml_obligation] theorem assert_0
    (a : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : a < (2 * symcrust_mod_reduce.Q)) :
    a < (2 * symcrust_mod_reduce.Q) := by
  vrml [symcrust_mod_reduce.Q, vstd.wrapping.u32_specs.wrapping_sub, vstd.wrapping.u32_specs.wrapping_add]
-- vrml:end symcrust_mod_reduce.mod_reduce.assert_0

-- vrml:begin symcrust_mod_reduce.mod_reduce.assert_2 7fc85c3b6051960f
/--
Generated VC `symcrust_mod_reduce.mod_reduce.assert_2`.

- Rust source: `case-studies/aeneas/probes/symcrust_mod_reduce.rs:28:19-28:64`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `7fc85c3b6051960f`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mod_reduce.rs"
  startLine := 28
  startColumn := 19
  endLine := 28
  endColumn := 64
  assertId := "2"
  functionName := "symcrust_mod_reduce.mod_reduce"
  kind := "assert"
  statementHash := "7fc85c3b6051960f"
}
@[vrml_obligation] theorem assert_2
    (a : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : a < (2 * symcrust_mod_reduce.Q))
    (assert_0 : a < (2 * symcrust_mod_reduce.Q))
    (assume_3 : Vermilion.inUnsignedRange 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q)) :
    (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16 = 0) ∨ (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16 = 65535) := by
  obtain ⟨ha0, ha32⟩ := requires_0
  simp only [symcrust_mod_reduce.Q] at requires_1 ⊢
  simp only [Vermilion.Vstd.Wrapping.u32_sub, Vermilion.Vstd.Wrapping.sub]
  by_cases h : a < 3329
  · right
    have h1 : (a - 3329) % 2 ^ 32 = a - 3329 + 4294967296 := by omega
    rw [h1, shr32_sixteen_eq_div _ (by omega) (by omega)]
    omega
  · left
    have h1 : (a - 3329) % 2 ^ 32 = a - 3329 := by omega
    rw [h1, shr32_sixteen_eq_div _ (by omega) (by omega)]
    omega
-- vrml:end symcrust_mod_reduce.mod_reduce.assert_2

-- vrml:begin symcrust_mod_reduce.mod_reduce.assert_3 99d10e2daff517de
/--
Generated VC `symcrust_mod_reduce.mod_reduce.assert_3`.

- Rust source: `case-studies/aeneas/probes/symcrust_mod_reduce.rs:31:36-31:47`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `3`
- Statement hash: `99d10e2daff517de`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mod_reduce.rs"
  startLine := 31
  startColumn := 36
  endLine := 31
  endColumn := 47
  assertId := "3"
  functionName := "symcrust_mod_reduce.mod_reduce"
  kind := "assert"
  statementHash := "99d10e2daff517de"
}
@[vrml_obligation] theorem assert_3
    (a : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : a < (2 * symcrust_mod_reduce.Q))
    (assert_0 : a < (2 * symcrust_mod_reduce.Q))
    (assume_3 : Vermilion.inUnsignedRange 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q))
    (assert_2 : (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16 = 0) ∨ (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16 = 65535)) :
    (0 ≤ 16) ∧ (16 < 32) := by
  vrml [symcrust_mod_reduce.Q]
-- vrml:end symcrust_mod_reduce.mod_reduce.assert_3

-- vrml:begin symcrust_mod_reduce.mod_reduce.assert_5 3f941735a8bdde10
/--
Generated VC `symcrust_mod_reduce.mod_reduce.assert_5`.

- Rust source: `case-studies/aeneas/probes/symcrust_mod_reduce.rs:33:19-33:26`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `3f941735a8bdde10`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mod_reduce.rs"
  startLine := 33
  startColumn := 19
  endLine := 33
  endColumn := 26
  assertId := "5"
  functionName := "symcrust_mod_reduce.mod_reduce"
  kind := "assert"
  statementHash := "3f941735a8bdde10"
}
@[vrml_obligation] theorem assert_5
    (a : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : a < (2 * symcrust_mod_reduce.Q))
    (assert_0 : a < (2 * symcrust_mod_reduce.Q))
    (assume_3 : Vermilion.inUnsignedRange 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q))
    (assert_2 : (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16 = 0) ∨ (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16 = 65535))
    (assert_3 : (0 ≤ 16) ∧ (16 < 32))
    (assume_6 : Vermilion.inUnsignedRange 32 (Vermilion.Vstd.Wrapping.u32_add (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) (Vermilion.Bits.band 32 symcrust_mod_reduce.Q (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16)))) :
    Vermilion.Vstd.Wrapping.u32_add (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) (Vermilion.Bits.band 32 symcrust_mod_reduce.Q (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16)) < symcrust_mod_reduce.Q := by
  obtain ⟨ha0, ha32⟩ := requires_0
  simp only [symcrust_mod_reduce.Q] at requires_1 ⊢
  simp only [Vermilion.Vstd.Wrapping.u32_add, Vermilion.Vstd.Wrapping.u32_sub,
    Vermilion.Vstd.Wrapping.add, Vermilion.Vstd.Wrapping.sub]
  by_cases h : a < 3329
  · have h1 : (a - 3329) % 2 ^ 32 = a - 3329 + 4294967296 := by omega
    rw [h1, shr32_sixteen_eq_div _ (by omega) (by omega)]
    have hdiv : (a - 3329 + 4294967296) / 65536 = 65535 := by omega
    rw [hdiv, band32_q_ffff]
    omega
  · have h1 : (a - 3329) % 2 ^ 32 = a - 3329 := by omega
    rw [h1, shr32_sixteen_eq_div _ (by omega) (by omega)]
    have hdiv : (a - 3329) / 65536 = 0 := by omega
    rw [hdiv, Vermilion.Bits.band_zero]
    omega
-- vrml:end symcrust_mod_reduce.mod_reduce.assert_5

-- vrml:begin symcrust_mod_reduce.mod_reduce.ensures_6 0a5ab96986bed1a5
/--
Generated VC `symcrust_mod_reduce.mod_reduce.ensures_6`.

- Rust source: `case-studies/aeneas/probes/symcrust_mod_reduce.rs:21:9-21:38`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6`
- Statement hash: `0a5ab96986bed1a5`
-/
def ensures_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mod_reduce.rs"
  startLine := 21
  startColumn := 9
  endLine := 21
  endColumn := 38
  assertId := "6"
  functionName := "symcrust_mod_reduce.mod_reduce"
  kind := "ensures"
  statementHash := "0a5ab96986bed1a5"
}
@[vrml_obligation] theorem ensures_6
    (a : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : a < (2 * symcrust_mod_reduce.Q))
    (assert_0 : a < (2 * symcrust_mod_reduce.Q))
    (assume_3 : Vermilion.inUnsignedRange 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q))
    (assert_2 : (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16 = 0) ∨ (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16 = 65535))
    (assert_3 : (0 ≤ 16) ∧ (16 < 32))
    (assume_6 : Vermilion.inUnsignedRange 32 (Vermilion.Vstd.Wrapping.u32_add (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) (Vermilion.Bits.band 32 symcrust_mod_reduce.Q (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16))))
    (assert_5 : Vermilion.Vstd.Wrapping.u32_add (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) (Vermilion.Bits.band 32 symcrust_mod_reduce.Q (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16)) < symcrust_mod_reduce.Q) :
    Vermilion.Vstd.Wrapping.u32_add (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) (Vermilion.Bits.band 32 symcrust_mod_reduce.Q (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mod_reduce.Q) 16)) = (Vermilion.emod a symcrust_mod_reduce.Q) := by
  obtain ⟨ha0, ha32⟩ := requires_0
  simp only [symcrust_mod_reduce.Q] at requires_1 ⊢
  simp only [Vermilion.Vstd.Wrapping.u32_add, Vermilion.Vstd.Wrapping.u32_sub,
    Vermilion.Vstd.Wrapping.add, Vermilion.Vstd.Wrapping.sub]
  rw [Vermilion.emod_of_ne_zero _ (by norm_num)]
  by_cases h : a < 3329
  · have h1 : (a - 3329) % 2 ^ 32 = a - 3329 + 4294967296 := by omega
    rw [h1, shr32_sixteen_eq_div _ (by omega) (by omega)]
    have hdiv : (a - 3329 + 4294967296) / 65536 = 65535 := by omega
    rw [hdiv, band32_q_ffff]
    omega
  · have h1 : (a - 3329) % 2 ^ 32 = a - 3329 := by omega
    rw [h1, shr32_sixteen_eq_div _ (by omega) (by omega)]
    have hdiv : (a - 3329) / 65536 = 0 := by omega
    rw [hdiv, Vermilion.Bits.band_zero]
    omega
-- vrml:end symcrust_mod_reduce.mod_reduce.ensures_6

end symcrust_mod_reduce.mod_reduce

