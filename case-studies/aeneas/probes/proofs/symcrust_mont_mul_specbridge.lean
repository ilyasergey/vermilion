import Mathlib.Data.ZMod.Basic
-- The per-function twins of this probe: the shared user section
-- (MontMulPre/MontMulSpec/mont_mul_model) lives in Specs, the obligation
-- theorems in the per-function unit modules.
import symcrust_mont_mul_noasserts.Specs
import symcrust_mont_mul_noasserts.mont_mul
import symcrust_mont_mul_noasserts.mod_reduce

/-!
# Spec bridge: Verus `mont_mul` ensures ≡ SymCRust's Montgomery spec

The Rung-A side file of `case-studies/aeneas/PLAN.md` §2, for the probe
`case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs`.

Our Verus contract for SymCrypt's `mont_mul` (proved end-to-end by the
twins under `symcrust_mont_mul_noasserts/`, obligations
`mont_mul.ensures_6_0`/`ensures_6_1`) is the inverse-free congruence

    result < Q  ∧  result·2^16 ≡ a·b  (mod Q)          (Q = 3329)

The SymCRust/Aeneas verification (theorem `Symcrust.mont_reduce.spec`,
public source at commit `c2e575ace0ea`, def at L28-31, spec at L33-45:
<https://github.com/microsoft/SymCrypt/blob/c2e575ace0ea/SymCRust/lean/Symcrust/Properties/MLKEM/Ntt/MontReduction.lean#L28-L45>)
states Montgomery reduction as

    t % q = (a * ((R : ZMod q)⁻¹.val : Int)) % q  ∧  0 ≤ t < 2·q

with `R = 2^16` and `minus_q_minus_1 = 3327` — the same constant as the
Rust `NEG_Q_INV_MOD_R` our contract mentions. This file proves the two
forms pin the same value (both directions), and that SymCRust's
abstract `mont_reduce` itself satisfies our Verus postcondition shape.
The hinge is the concrete inverse `(2^16)⁻¹ = 169 in ZMod 3329`
(169·65536 = 1 + 3327·3329), which `decide` certifies through the
kernel.

Drift protection: this file is kernel-checked next to the twin; if the
Verus ensures or their spec form changes, the theorems below stop
elaborating.
-/
namespace Vermilion.SpecBridge

/-- SymCRust's abstract Montgomery reduction, restated verbatim from
`Symcrust.mont_reduce`, public source (commit `c2e575ace0ea`, L28-31):
<https://github.com/microsoft/SymCrypt/blob/c2e575ace0ea/SymCRust/lean/Symcrust/Properties/MLKEM/Ntt/MontReduction.lean#L28-L31>.
Replace this restatement with an import once the SymCRust spec package
is vendored (PLAN §C4). -/
def symcrust_mont_reduce (q R : Nat) (minus_q_minus_1 : Int) (a : Nat) : Int :=
  let f := (a * minus_q_minus_1) % R
  let t := (a + f * q) / R
  t

/-- The concrete inverse SymCRust's spec RHS names: `R⁻¹ = 169` in
`ZMod Q`. Kernel-computed, no axioms. -/
theorem inv_R_val : (((65536 : ZMod 3329)⁻¹.val : ℤ)) = 169 := by decide

/-- **Ours ⇒ theirs.** A result meeting the Verus `mont_mul` ensures is
exactly the value SymCRust's `mont_reduce.spec` RHS names,
`a·b·R⁻¹ mod q`. -/
theorem verus_ensures_pins_symcrust_value
    (a b r : ℤ) (hr0 : 0 ≤ r) (hrQ : r < 3329)
    (h : r * 65536 % 3329 = a * b % 3329) :
    r = (a * b * ((65536 : ZMod 3329)⁻¹.val : ℤ)) % 3329 := by
  rw [inv_R_val]
  omega

/-- **Theirs ⇒ ours.** The SymCRust spec value satisfies the Verus
ensures congruence. Together with the previous theorem the two
specifications have the same graph on `[0, Q)`. -/
theorem symcrust_value_satisfies_verus_ensures (a b : ℤ) :
    ((a * b * ((65536 : ZMod 3329)⁻¹.val : ℤ)) % 3329) * 65536 % 3329
      = a * b % 3329 := by
  rw [inv_R_val]
  omega

/-- **Definition-level check.** SymCRust's abstract `mont_reduce`, at
their ML-KEM instantiation (q = 3329, R = 2^16,
minus_q_minus_1 = 3327), followed by the final reduction to `[0, Q)`,
satisfies our Verus postcondition for the product it reduces. -/
theorem symcrust_mont_reduce_meets_verus_ensures (x : Nat) :
    (symcrust_mont_reduce 3329 65536 3327 x % 3329) * 65536 % 3329
      = (x : ℤ) % 3329 := by
  have h : symcrust_mont_reduce 3329 65536 3327 x
      = ((x : ℤ) + ((x : ℤ) * 3327 % 65536) * 3329) / 65536 := by
    simp [symcrust_mont_reduce]
  rw [h]
  -- 1 + 3327·3329 = 169·2^16, so the reduced sum is an exact multiple
  -- of 2^16; omega needs the exact quotient spelled out.
  have hdiv : ((x : ℤ) + ((x : ℤ) * 3327 % 65536) * 3329) / 65536
      = 169 * (x : ℤ) - 3329 * ((x : ℤ) * 3327 / 65536) := by omega
  rw [hdiv]
  omega

open symcrust_mont_mul_noasserts in
/-- **The `mont_mul` contract as one named implication**, proved by
chaining the twin's generated obligations verbatim (`assert_0` …
`assert_4`, `ensures_6_0`, `ensures_6_1`); the intermediate VC
hypotheses are discharged internally, so nothing is assumed beyond
`MontMulPre`. (Stated here rather than in the twin because `vrml_sync`
keeps user sections above the obligation theorems.) -/
theorem mont_mul_spec (a b b_mont : Int) (pre : MontMulPre a b b_mont) :
    MontMulSpec a b (mont_mul_model a b b_mont) := by
  obtain ⟨r0, r1, r2, r3, r4, r5, r6⟩ := pre
  have a0 := mont_mul.assert_0 a b b_mont r0 r1 r2 r3 r4 r5 r6
  have a1 := mont_mul.assert_1 a b b_mont r0 r1 r2 r3 r4 r5 r6 a0
  have a2 := mont_mul.assert_2 a b b_mont r0 r1 r2 r3 r4 r5 r6 a0 a1
  have a3 := mont_mul.assert_3 a b b_mont r0 r1 r2 r3 r4 r5 r6 a0 a1 a2
  have a4 := mont_mul.assert_4 a b b_mont r0 r1 r2 r3 r4 r5 r6 a0 a1 a2 a3
  have c1 : mont_mul_model a b b_mont
      = (Vermilion.emod (Vermilion.Bits.shr 32 ((((a * b) % 4294967296) + ((Vermilion.Bits.band 32 ((a * b_mont) % 4294967296) RMASK * Q) % 4294967296)) % 4294967296) RLOG2) Q) := rfl
  have c0 : Vermilion.inUnsignedRange 32 (mont_mul_model a b b_mont) := by
    rw [c1]
    simp only [Q, Vermilion.inUnsignedRange]
    rw [Vermilion.emod_of_ne_zero _ (by norm_num)]
    omega
  have h0 := mont_mul.ensures_6_0 a b b_mont (mont_mul_model a b b_mont)
    r0 r1 r2 r3 r4 r5 r6 a0 a1 a2 a3 a4 c0 c1
  have h1 := mont_mul.ensures_6_1 a b b_mont (mont_mul_model a b b_mont)
    r0 r1 r2 r3 r4 r5 r6 a0 a1 a2 a3 a4 c0 c1
  simp only [Q] at h0 h1
  simp only [show ∀ x : Int, Vermilion.emod x 3329 = x % 3329 from
    fun x => Vermilion.emod_of_ne_zero x (by norm_num)] at h1
  exact ⟨c0.1, h0, h1⟩

/-- **The equivalence, as one `iff`.** Our packaged `mont_mul` contract
(`MontMulSpec`, exported by the twin as a single named statement) holds
of `r` exactly when `r` is the value SymCRust's `mont_reduce.spec`
names, `a·b·R⁻¹ mod q`. -/
theorem MontMulSpec_iff_symcrust (a b r : ℤ) :
    symcrust_mont_mul_noasserts.MontMulSpec a b r
      ↔ r = (a * b * ((65536 : ZMod 3329)⁻¹.val : ℤ)) % 3329 := by
  simp only [symcrust_mont_mul_noasserts.MontMulSpec, inv_R_val]
  constructor
  · rintro ⟨h0, h1, h2⟩
    omega
  · intro h
    subst h
    exact ⟨by omega, by omega, by omega⟩

/-- **End-to-end, one application.** The twin exports the single named
implication `mont_mul_spec : MontMulPre a b b_mont →
MontMulSpec a b (mont_mul_model a b b_mont)`; composing it with the
`iff` above: under the Verus precondition, the value `mont_mul`
computes IS SymCRust's specification value. -/
theorem mont_mul_result_is_symcrust_value (a b b_mont : Int)
    (pre : symcrust_mont_mul_noasserts.MontMulPre a b b_mont) :
    symcrust_mont_mul_noasserts.mont_mul_model a b b_mont
      = (a * b * ((65536 : ZMod 3329)⁻¹.val : ℤ)) % 3329 :=
  (MontMulSpec_iff_symcrust a b _).mp
    (mont_mul_spec a b b_mont pre)

open symcrust_mont_mul_noasserts in
/-- **Non-vacuity / minimality certificate for `MontMulPre`.** The
precondition is satisfiable for EVERY pair of reduced residues: given
any `a, b ∈ [0, Q)`, taking `b_mont := (b·3327) % 2^16` (which is how
callers compute it — SymCrypt precomputes exactly this table entry)
satisfies all seven conjuncts. So `MontMulPre` restricts nothing
beyond "the inputs are reduced residues and `b_mont` is the Montgomery
companion of `b`": the range and `≤ RMASK` conjuncts are consequences
of the defining equation, and `mont_mul_spec` is not vacuous anywhere
on the intended domain. -/
theorem MontMulPre_realizable (a b : ℤ)
    (ha0 : 0 ≤ a) (ha : a < 3329) (hb0 : 0 ≤ b) (hb : b < 3329) :
    MontMulPre a b ((b * 3327) % 65536) := by
  simp only [MontMulPre, symcrust_mont_mul_noasserts.Q,
    symcrust_mont_mul_noasserts.RMASK,
    symcrust_mont_mul_noasserts.NEG_Q_INV_MOD_R, Vermilion.inUnsignedRange]
  refine ⟨by omega, by omega, by omega, by omega, by omega, by omega, trivial⟩

open symcrust_mont_mul_noasserts in
/-- Concrete end-to-end instance: `mont_mul 1 1` returns `R⁻¹ = 169`,
the Montgomery form of `1·1` — the packaged implication applied at a
witness, evaluated through the spec bridge. -/
example : mont_mul_model 1 1 3327 = 169 := by
  have h := mont_mul_result_is_symcrust_value 1 1 3327
    (MontMulPre_realizable 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num))
  rw [inv_R_val] at h
  norm_num at h
  exact h

end Vermilion.SpecBridge
