import Mathlib.Tactic.Ring

/-!
# Spec bridge: per-limb contract ≡ the dalek/Aeneas `asNat` theorem

The Aeneas proof of this function
(<https://github.com/AeneasVerif/aeneas/blob/main/tests/lean/Curve25519/Properties.lean>)
states `wideAsNat r = asNat a * asNat b` — limbs valued in radix
`2^52`. Our Verus contract states the nine per-limb defining equations
(`z_k = Σ_{i+j=k} a_i·b_j`), which pin the same function graph; this
file proves the two forms coincide: any `z` satisfying the defining
equations satisfies the `asNat` identity. Stated at the shared `Int`
abstraction (PLAN §2's commuting square: dalek's spec is `Nat`-valued
over `U64`; the twin's obligations are `Int`-valued over the same
limbs, nonneg by their `urange` facts).

Together with the kernel-checked twin (`proofs/curve25519.lean`, all 38
obligations), the end-to-end statement is the same specification
Aeneas verified — with overflow-freedom proved, as theirs is (their
`Result`-monadic steps discharge the same side conditions inside
`progress`).
-/

namespace Vermilion.SpecBridge.Curve25519

/-- dalek's 5-limb value (radix `2^52`), restated from
`Curve25519/Properties.lean`'s `asNat`. -/
def asNat (a0 a1 a2 a3 a4 : Int) : Int :=
  a0 + a1 * 2 ^ 52 + a2 * 2 ^ 104 + a3 * 2 ^ 156 + a4 * 2 ^ 208

/-- dalek's 9-limb wide value, restated from their `wideAsNat`. -/
def wideAsNat (z0 z1 z2 z3 z4 z5 z6 z7 z8 : Int) : Int :=
  z0 + z1 * 2 ^ 52 + z2 * 2 ^ 104 + z3 * 2 ^ 156 + z4 * 2 ^ 208
    + z5 * 2 ^ 260 + z6 * 2 ^ 312 + z7 * 2 ^ 364 + z8 * 2 ^ 416

set_option exponentiation.threshold 512 in
/-- **The bridge**: the nine per-limb defining equations of our Verus
`ensures` clause imply the Aeneas theorem's `asNat` identity — pure
ring reasoning, zero axioms. -/
theorem defining_equations_give_asNat
    (a0 a1 a2 a3 a4 b0 b1 b2 b3 b4 z0 z1 z2 z3 z4 z5 z6 z7 z8 : Int)
    (h0 : z0 = a0 * b0)
    (h1 : z1 = a0 * b1 + a1 * b0)
    (h2 : z2 = a0 * b2 + a1 * b1 + a2 * b0)
    (h3 : z3 = a0 * b3 + a1 * b2 + a2 * b1 + a3 * b0)
    (h4 : z4 = a0 * b4 + a1 * b3 + a2 * b2 + a3 * b1 + a4 * b0)
    (h5 : z5 = a1 * b4 + a2 * b3 + a3 * b2 + a4 * b1)
    (h6 : z6 = a2 * b4 + a3 * b3 + a4 * b2)
    (h7 : z7 = a3 * b4 + a4 * b3)
    (h8 : z8 = a4 * b4) :
    wideAsNat z0 z1 z2 z3 z4 z5 z6 z7 z8
      = asNat a0 a1 a2 a3 a4 * asNat b0 b1 b2 b3 b4 := by
  subst h0 h1 h2 h3 h4 h5 h6 h7 h8
  simp only [wideAsNat, asNat]
  ring

end Vermilion.SpecBridge.Curve25519
