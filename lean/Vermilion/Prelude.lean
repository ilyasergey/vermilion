import Vermilion.Vstd.Seq
import Vermilion.Vstd.SeqLib
import Vermilion.Vstd.Set
import Vermilion.Vstd.Map
import Vermilion.Vstd.Multiset
import Vermilion.Vstd.Wrapping

/-! # Vermilion prelude

Non-vstd semantic primitives of the shallow Verus embedding: Euclidean
integer division/remainder, the pure spec-level conditional `iteP`, the
machine bit-operation library (`Bits`, M4), and the machine-int range
predicates. The vstd collection models (`Vermilion.Seq`/`Set`/`Map`/
`Multiset`) now live under `Vermilion/Vstd/`, mirroring the vstd module
tree; they are re-exported here (via the imports above) so
`import Vermilion.Prelude` still brings the whole model surface. -/

namespace Vermilion

/-! Named semantic choices for the shallow Verus embedding. -/

/-- An opaque value used to preserve Verus's underspecified division by zero. -/
opaque divZero : Int → Int

/-- Euclidean integer division, deliberately opaque when the divisor is zero. -/
noncomputable def ediv (x y : Int) : Int :=
  if y = 0 then divZero x else x / y

/-- Euclidean integer remainder, coupled to `ediv` away from zero. -/
noncomputable def emod (x y : Int) : Int :=
  if y = 0 then x - y * ediv x y else x % y

@[simp] theorem ediv_of_ne_zero (x : Int) {y : Int} (h : y ≠ 0) :
    ediv x y = x / y := by
  simp [ediv, h]

@[simp] theorem emod_of_ne_zero (x : Int) {y : Int} (h : y ≠ 0) :
    emod x y = x % y := by
  simp [emod, h]

/-- Pure conditional for a Verus spec-level `if`. Verus requires the
condition of an `if` to be `bool`, so the lowered condition is a
proposition; taking the `Decidable` instance keeps the common case — a
comparison or boolean connective — and every spec function built on it
**computable**, so those generated definitions need no `noncomputable`.
A condition instance synthesis cannot see through (an opaque Prop-valued
spec-fn application like dalek-lite's `is_negative a`, a quantifier, a
Rust-`bool` parameter) gets the classical fallback explicitly: the
theorem layer emits module-wide `Decidable` evidence (docs/vcgen.md,
`(EVIDENCE-DECIDABLE-PROP)`), and an affected spec-fn *definition* —
which precedes that evidence — is rendered under `open Classical in`
and marked `noncomputable`. Nothing goes classical silently. -/
def iteP {α : Sort u} (c : Prop) [Decidable c] (a b : α) : α :=
  if c then a else b

@[simp] theorem iteP_pos {α : Sort u} {c : Prop} [Decidable c] (h : c) (a b : α) :
    iteP c a b = a := by
  simp [iteP, h]

@[simp] theorem iteP_neg {α : Sort u} {c : Prop} [Decidable c] (h : ¬ c) (a b : α) :
    iteP c a b = b := by
  simp [iteP, h]

/-- Verus `nat` clipping: saturation at zero. A DEDICATED prelude function
so the lowered operand occurs exactly once — emitting the conditional
`iteP (e ≥ 0) e 0` inline restates `e`, and nested nat arithmetic then
grows exponentially in the clip depth (dalek-lite DL8, `from_bytes`).
Computable (the guard's `Decidable` instance synthesizes). -/
def natClip (x : Int) : Int := iteP (x ≥ 0) x 0

/-- The defining equation, `@[simp]` (and `@[grind =]`) so provers
immediately see the same conditional shape the inline expansion used to
produce. -/
@[simp, grind =] theorem natClip_eq (x : Int) :
    natClip x = iteP (x ≥ 0) x 0 := rfl

/-- Collapse a `nat` clip whose operand is provably nonnegative — the
workhorse for interactive proofs over the `Int`-modeled `nat` layer. -/
theorem natClip_of_nonneg {x : Int} (h : 0 ≤ x) : natClip x = x := by
  simp [natClip, iteP, h]

/-- Verus signed clipping at width `bits ≥ 1`: the Euclidean residue
modulo `2^bits`, interpreted in the two's-complement interval. Dedicated
single-occurrence form for the same reason as `natClip`. -/
def sclip (bits : Nat) (x : Int) : Int :=
  iteP (x % 2 ^ bits ≥ 2 ^ (bits - 1)) (x % 2 ^ bits - 2 ^ bits) (x % 2 ^ bits)

/-- The defining equation, `@[simp]`/`@[grind =]` for the same reason as
`natClip_eq`. -/
@[simp, grind =] theorem sclip_eq (bits : Nat) (x : Int) :
    sclip bits x =
      iteP (x % 2 ^ bits ≥ 2 ^ (bits - 1)) (x % 2 ^ bits - 2 ^ bits)
        (x % 2 ^ bits) := rfl

open Classical in
/-- Verus `choose|x| P(x)` (docs/vcgen.md): some value satisfying `p` when
one exists — Hilbert choice over the Verus-checked guard — otherwise a
fixed unconstrained value of the type, mirroring Verus's `as_type`
coercion of an unsatisfiable choose. Ordinary definition, kernel-checked;
the characterizing fact below is a theorem, so obligations assuming its
ground instances add nothing to the trusted base. -/
noncomputable def chooseSpec {α : Type u} [Inhabited α] (p : α → Prop) : α :=
  if h : ∃ x, p x then Classical.choose h else default

/-- The conditional characterizing fact: exactly Verus's choose axiom
(`(exists x. inv ∧ cond) ==> inv ∧ cond` at the skolem), injected as a
per-occurrence ground hypothesis by the generator. -/
theorem chooseSpec_spec {α : Type u} [Inhabited α] {p : α → Prop}
    (h : ∃ x, p x) : p (chooseSpec p) := by
  unfold chooseSpec
  rw [dif_pos h]
  exact Classical.choose_spec h

/-- Interactive escape hatch: a guard that holds of every satisfying value
AND of `default` holds of the chosen value unconditionally (the shape of
Verus's unconditional `has_type`; scalar range guards all contain 0). -/
theorem chooseSpec_guard {α : Type u} [Inhabited α] {p G : α → Prop}
    (himp : ∀ x, p x → G x) (hdef : G default) : G (chooseSpec p) := by
  unfold chooseSpec
  split
  · exact himp _ (Classical.choose_spec ‹_›)
  · exact hdef

/-! ## Machine bit operations (M4, Lean-native)

Modeled through `BitVec` with proved conversions — ordinary definitions
the kernel checks, nothing trusted, no SMT-facing encodings
(`.claude/memory/m4-lean-native-libraries.md`). Unsigned results read
back through `toNat` (always in `[0, 2^w)`), signed through `toInt`. -/
namespace Bits

/-- Unsigned bitwise AND at width `w`. -/
def band (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x) &&& (BitVec.ofInt w y)).toNat

/-- Unsigned bitwise OR at width `w`. -/
def bor (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x) ||| (BitVec.ofInt w y)).toNat

/-- Unsigned bitwise XOR at width `w`. -/
def bxor (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x) ^^^ (BitVec.ofInt w y)).toNat

/-- Unsigned left shift at width `w` (truncating). -/
def shl (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x) <<< y.toNat).toNat

/-- Unsigned (logical) right shift at width `w`. -/
def shr (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x) >>> y.toNat).toNat

/-- Signed variants read back through `toInt`. -/
def sband (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x) &&& (BitVec.ofInt w y)).toInt
def sbor (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x) ||| (BitVec.ofInt w y)).toInt
def sbxor (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x) ^^^ (BitVec.ofInt w y)).toInt
def sshl (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x) <<< y.toNat).toInt
def sshr (w : Nat) (x y : Int) : Int :=
  ((BitVec.ofInt w x).sshiftRight y.toNat).toInt

/-- Unsigned results are nonnegative. -/
@[simp, grind] theorem band_nonneg (w : Nat) (x y : Int) :
    0 ≤ band w x y := Int.natCast_nonneg _
@[simp, grind] theorem bor_nonneg (w : Nat) (x y : Int) :
    0 ≤ bor w x y := Int.natCast_nonneg _
@[simp, grind] theorem bxor_nonneg (w : Nat) (x y : Int) :
    0 ≤ bxor w x y := Int.natCast_nonneg _

/-- Unsigned results are below `2^w`. -/
@[simp, grind] theorem band_lt (w : Nat) (x y : Int) :
    band w x y < (2 : Int) ^ w := by
  have h := BitVec.isLt ((BitVec.ofInt w x) &&& (BitVec.ofInt w y))
  simp only [band]
  exact_mod_cast h
@[simp, grind] theorem bor_lt (w : Nat) (x y : Int) :
    bor w x y < (2 : Int) ^ w := by
  have h := BitVec.isLt ((BitVec.ofInt w x) ||| (BitVec.ofInt w y))
  simp only [bor]
  exact_mod_cast h
@[simp, grind] theorem bxor_lt (w : Nat) (x y : Int) :
    bxor w x y < (2 : Int) ^ w := by
  have h := BitVec.isLt ((BitVec.ofInt w x) ^^^ (BitVec.ofInt w y))
  simp only [bxor]
  exact_mod_cast h

/-- The in-range read-back: `toNat ∘ ofInt` is the identity on
`[0, 2^w)` — the conversion lemma every identity below leans on. -/
theorem toNat_ofInt_of_range (w : Nat) (x : Int)
    (low : 0 ≤ x) (high : x < (2 : Int) ^ w) :
    (((BitVec.ofInt w x)).toNat : Int) = x := by
  simp [BitVec.toNat_ofInt]
  rw [Int.emod_eq_of_lt low high]
  omega

/-- Logical shifts stay in the unsigned range (mirrors `band_lt` — gives
the arithmetic rungs an atom bound for every `shr` application). -/
@[simp, grind] theorem shr_nonneg (w : Nat) (x y : Int) :
    0 ≤ shr w x y := Int.natCast_nonneg _
@[simp, grind] theorem shr_lt (w : Nat) (x y : Int) :
    shr w x y < (2 : Int) ^ w := by
  have h := BitVec.isLt ((BitVec.ofInt w x) >>> y.toNat)
  simp only [shr]
  exact_mod_cast h

/-! ### Bit↔arithmetic bridge (issue #35, dalek-lite DL4)

Characterization lemmas that let the arithmetic rungs (`omega`,
`scalar_saturate`) consume bit operations on in-range operands: a logical
right shift is division by a power of two, masking with `2^k - 1` is
reduction mod `2^k`. Deliberately *conditional* on the operand range — the
saturation rung applies them with an `omega` discharger, so they fire
exactly where the context proves the operand in range (contract foralls
over byte arrays, machine-int type facts), including operands that are
`Seq.index` applications rather than plain binders. -/

/-- Logical right shift is division: `shr w x k = x / 2^k` for in-range
`x` (any shift amount; an overshifting `k` yields `0 = 0`). -/
theorem shr_eq_div (w : Nat) (x k : Int)
    (low : 0 ≤ x) (high : x < (2 : Int) ^ w) :
    shr w x k = x / (2 : Int) ^ k.toNat := by
  have hto : (((BitVec.ofInt w x)).toNat : Int) = x :=
    toNat_ofInt_of_range w x low high
  simp only [shr, BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
  rw [Int.natCast_div, hto, Nat.cast_pow]
  norm_num

/-- Masking with `2^k - 1` is reduction mod `2^k` for in-range `x`. The
mask must fit the width (`k ≤ w`) or `ofInt` would truncate it. -/
theorem band_two_pow_sub_one_eq_mod (w k : Nat) (x : Int)
    (low : 0 ≤ x) (high : x < (2 : Int) ^ w) (hk : k ≤ w) :
    band w x ((2 : Int) ^ k - 1) = x % (2 : Int) ^ k := by
  have hpow : (((2 : Nat) ^ k : Nat) : Int) = (2 : Int) ^ k := by
    push_cast; rfl
  have h1 : (0 : Int) < 2 ^ k := by positivity
  have hle : (2 : Int) ^ k ≤ 2 ^ w := pow_le_pow_right₀ (by norm_num) hk
  have hto : (((BitVec.ofInt w x)).toNat : Int) = x :=
    toNat_ofInt_of_range w x low high
  have hmask : (((BitVec.ofInt w ((2 : Int) ^ k - 1))).toNat : Int)
      = (2 : Int) ^ k - 1 :=
    toNat_ofInt_of_range w _ (by omega) (by omega)
  have hmnat : (BitVec.ofInt w ((2 : Int) ^ k - 1)).toNat = 2 ^ k - 1 := by
    omega
  have hxnat : (BitVec.ofInt w x).toNat = x.toNat := by omega
  simp only [band, BitVec.toNat_and, hmnat, hxnat,
    Nat.and_two_pow_sub_one_eq_mod]
  rw [Int.natCast_mod, Nat.cast_pow, Int.toNat_of_nonneg low]
  norm_num

/-- The curated identity set (the goals Verus's `bit_vector` mode is
typically asked for; each is a kernel-checked `BitVec` fact). -/
@[simp, grind] theorem band_zero (w : Nat) (x : Int) :
    band w x 0 = 0 := by simp [band]
@[simp, grind] theorem zero_band (w : Nat) (x : Int) :
    band w 0 x = 0 := by simp [band]
@[simp, grind] theorem bor_zero (w : Nat) (x : Int)
    (low : 0 ≤ x) (high : x < (2 : Int) ^ w) : bor w x 0 = x := by
  have zero : BitVec.ofInt w 0 = 0#w := rfl
  simp only [bor, zero, BitVec.or_zero]
  exact toNat_ofInt_of_range w x low high
@[simp, grind] theorem bxor_self (w : Nat) (x : Int) :
    bxor w x x = 0 := by simp [bxor]
@[simp, grind] theorem band_self (w : Nat) (x : Int)
    (low : 0 ≤ x) (high : x < (2 : Int) ^ w) : band w x x = x := by
  simp only [band, BitVec.and_self]
  exact toNat_ofInt_of_range w x low high

end Bits

/-- Model of Verus `&str` (`StrSlice`): the underlying character data.
Only the type and its literals are lowered today (opaque, contract-free
passing — e.g. `core::fmt::Formatter::write_str`); no string operation
enters the fragment, so nothing beyond constructor injectivity — which
Verus's own string theory also provides on literals — is derivable. -/
structure StrSlice where
  raw : String
  deriving Inhabited, DecidableEq, Repr

def inUnsignedRange (bits : Nat) (x : Int) : Prop :=
  0 ≤ x ∧ x < 2 ^ bits

def inSignedRange (bits : Nat) (x : Int) : Prop :=
  -(2 ^ (bits - 1) : Nat) ≤ x ∧ x < 2 ^ (bits - 1)

/- `grind` may unfold the range predicates: quantified contract facts
(exec-closure contracts, container element facts) carry range guards
that e-matching must discharge at instantiation time. -/
attribute [grind] inUnsignedRange inSignedRange
end Vermilion
