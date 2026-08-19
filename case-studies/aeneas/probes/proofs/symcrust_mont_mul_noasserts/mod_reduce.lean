import Vermilion.Obligations
import symcrust_mont_mul_noasserts.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace symcrust_mont_mul_noasserts.mod_reduce

-- vrml:begin symcrust_mont_mul_noasserts.mod_reduce.assert_1 7e4287602a61c51a
/--
Generated VC `symcrust_mont_mul_noasserts.mod_reduce.assert_1`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:32:36-32:47`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `1`
- Statement hash: `7e4287602a61c51a`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 32
  startColumn := 36
  endLine := 32
  endColumn := 47
  assertId := "1"
  functionName := "symcrust_mont_mul_noasserts.mod_reduce"
  kind := "assert"
  statementHash := "7e4287602a61c51a"
}
@[vrml_obligation] theorem assert_1
    (a : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : a < (2 * symcrust_mont_mul_noasserts.Q))
    (assume_2 : Vermilion.inUnsignedRange 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mont_mul_noasserts.Q)) :
    (0 ≤ 16) ∧ (16 < 32) := by
  vrml [symcrust_mont_mul_noasserts.Q, symcrust_mont_mul_noasserts.RMASK, symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R, symcrust_mont_mul_noasserts.RLOG2]
-- vrml:end symcrust_mont_mul_noasserts.mod_reduce.assert_1

-- vrml:begin symcrust_mont_mul_noasserts.mod_reduce.ensures_3 5729a1f49bf47fbc
/--
Generated VC `symcrust_mont_mul_noasserts.mod_reduce.ensures_3`.

- Rust source: `case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:25:9-25:38`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `5729a1f49bf47fbc`
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs"
  startLine := 25
  startColumn := 9
  endLine := 25
  endColumn := 38
  assertId := "3"
  functionName := "symcrust_mont_mul_noasserts.mod_reduce"
  kind := "ensures"
  statementHash := "5729a1f49bf47fbc"
}
@[vrml_obligation] theorem ensures_3
    (a : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 a)
    (requires_1 : a < (2 * symcrust_mont_mul_noasserts.Q))
    (assume_2 : Vermilion.inUnsignedRange 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mont_mul_noasserts.Q))
    (assert_1 : (0 ≤ 16) ∧ (16 < 32))
    (assume_4 : Vermilion.inUnsignedRange 32 (Vermilion.Vstd.Wrapping.u32_add (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mont_mul_noasserts.Q) (Vermilion.Bits.band 32 symcrust_mont_mul_noasserts.Q (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mont_mul_noasserts.Q) 16)))) :
    Vermilion.Vstd.Wrapping.u32_add (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mont_mul_noasserts.Q) (Vermilion.Bits.band 32 symcrust_mont_mul_noasserts.Q (Vermilion.Bits.shr 32 (Vermilion.Vstd.Wrapping.u32_sub a symcrust_mont_mul_noasserts.Q) 16)) = (Vermilion.emod a symcrust_mont_mul_noasserts.Q) := by
  obtain ⟨ha0, ha32⟩ := requires_0
  simp only [symcrust_mont_mul_noasserts.Q] at requires_1 ⊢
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
-- vrml:end symcrust_mont_mul_noasserts.mod_reduce.ensures_3

end symcrust_mont_mul_noasserts.mod_reduce

