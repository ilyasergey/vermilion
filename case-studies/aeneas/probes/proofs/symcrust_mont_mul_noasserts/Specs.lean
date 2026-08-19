import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec symcrust_mont_mul_noasserts.Q case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:15:1
def symcrust_mont_mul_noasserts.Q : Int :=
  3329

-- vrml:spec symcrust_mont_mul_noasserts.RMASK case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:17:1
def symcrust_mont_mul_noasserts.RMASK : Int :=
  65535

-- vrml:spec symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:18:1
def symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R : Int :=
  3327

-- vrml:spec symcrust_mont_mul_noasserts.RLOG2 case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:16:1
def symcrust_mont_mul_noasserts.RLOG2 : Int :=
  16


-- vrml:user:begin
/-- Logical right shift by 16 at width 32 is division by `2^16` for
in-range operands — the `Bits.shr` → arithmetic bridge. -/
theorem shr32_sixteen_eq_div (x : Int)
    (low : 0 ≤ x) (high : x < 4294967296) :
    Vermilion.Bits.shr 32 x 16 = x / 65536 := by
  have hto : (((BitVec.ofInt 32 x)).toNat : Int) = x :=
    Vermilion.Bits.toNat_ofInt_of_range 32 x low (by norm_num; exact high)
  simp only [Vermilion.Bits.shr, BitVec.toNat_ushiftRight,
    Nat.shiftRight_eq_div_pow]
  rw [show (16 : Int).toNat = 16 from rfl, show (2 : Nat) ^ 16 = 65536 from rfl]
  omega

/-- Masking with `0xffff` at width 32 is reduction mod `2^16` for
in-range operands — the `Bits.band` → arithmetic bridge. -/
theorem band32_ffff_eq_mod (x : Int)
    (low : 0 ≤ x) (high : x < 4294967296) :
    Vermilion.Bits.band 32 x 65535 = x % 65536 := by
  have hto : (((BitVec.ofInt 32 x)).toNat : Int) = x :=
    Vermilion.Bits.toNat_ofInt_of_range 32 x low (by norm_num; exact high)
  simp only [Vermilion.Bits.band, BitVec.toNat_and]
  rw [show (BitVec.ofInt 32 65535).toNat = 65535 from rfl,
    show (65535 : Nat) = 2 ^ 16 - 1 from rfl,
    Nat.and_two_pow_sub_one_eq_mod,
    show (2 : Nat) ^ 16 = 65536 from rfl]
  omega

/-- `Q & 0xffff = Q` at width 32 (Q = 3329 fits in 16 bits). -/
theorem band32_q_ffff :
    Vermilion.Bits.band 32 3329 65535 = 3329 := by decide
-- vrml:user:end

-- vrml:user:begin
namespace symcrust_mont_mul_noasserts

/-- **Precondition of `mont_mul`, packaged.** Exactly the Verus
`requires` clauses of `symcrust_mont_mul_noasserts.rs`. -/
def MontMulPre (a b b_mont : Int) : Prop :=
  Vermilion.inUnsignedRange 32 a ∧
  Vermilion.inUnsignedRange 32 b ∧
  Vermilion.inUnsignedRange 32 b_mont ∧
  a < Q ∧ b < Q ∧ b_mont ≤ RMASK ∧
  b_mont = ((b * NEG_Q_INV_MOD_R) % 65536)

/-- **Postcondition of `mont_mul`, packaged.** Exactly the Verus
`ensures` clauses: the result is a reduced residue satisfying the
inverse-free Montgomery congruence.
`symcrust_mont_mul_specbridge.lean` proves this equivalent to
SymCRust's own specification form. -/
def MontMulSpec (a b result : Int) : Prop :=
  0 ≤ result ∧ result < 3329 ∧ (result * 65536) % 3329 = (a * b) % 3329

/-- The value `mont_mul` computes, as the generated VCs describe it
(the callee postcondition term of the `mod_reduce(res)` call, with this
file's constant symbols). -/
noncomputable def mont_mul_model (a b b_mont : Int) : Int :=
  Vermilion.emod (Vermilion.Bits.shr 32 ((((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) RMASK * Q) % 4294967296)) % 4294967296) RLOG2) Q

/- The contract as one named implication —
`mont_mul_spec : MontMulPre a b b_mont → MontMulSpec a b (mont_mul_model a b b_mont)`
— lives in `symcrust_mont_mul_specbridge.lean`: it chains the generated
obligation theorems below, and `vrml_sync` keeps user sections above
them, so it cannot be stated in this file. -/

end symcrust_mont_mul_noasserts
-- vrml:user:end
