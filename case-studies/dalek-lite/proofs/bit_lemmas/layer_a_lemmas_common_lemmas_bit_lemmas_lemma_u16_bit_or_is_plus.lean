import Vermilion.Obligations
import bit_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

-- vrml:user:begin
/-- A value below `2 ^ k` shares no bits with a multiple of `2 ^ k`. -/
private theorem nat_and_shiftLeft_eq_zero {x y k : Nat} (hx : x < 2 ^ k) :
    x &&& (y <<< k) = 0 := by
  apply Nat.eq_of_testBit_eq
  intro i
  simp only [Nat.testBit_and, Nat.testBit_shiftLeft, Nat.zero_testBit]
  rcases Nat.lt_or_ge i k with h | h
  · simp [Nat.not_le.mpr h]
  · have hxi : x.testBit i = false := by
      apply Nat.testBit_lt_two_pow
      exact Nat.lt_of_lt_of_le hx (Nat.pow_le_pow_right (by norm_num) h)
    simp [hxi]

/-- Width-generic form of `lemma_uN_bit_or_is_plus`: when `a` fits below the
shift position and `b` fits above it, bitwise-or is addition. -/
private theorem bor_shl_eq_add (w : Nat) (a b k m : Int)
    (hm : m = 2 ^ w - 1)
    (ha : Vermilion.inUnsignedRange w a)
    (hb : Vermilion.inUnsignedRange w b)
    (hk : Vermilion.inUnsignedRange w k)
    (hkw : k < (w : Int))
    (ha4 : a < Vermilion.Bits.shl w 1 k)
    (hb5 : b ≤ Vermilion.Bits.shr w m k) :
    Vermilion.Bits.bor w a (Vermilion.Bits.shl w b k) =
      a + Vermilion.Bits.shl w b k := by
  subst hm
  obtain ⟨ha0, haw⟩ := ha
  obtain ⟨hb0, hbw⟩ := hb
  obtain ⟨hk0, hkww⟩ := hk
  have hknw : k.toNat < w := by omega
  have hpw : (0 : Int) < 2 ^ w := by positivity
  have hpk : (0 : Int) < 2 ^ k.toNat := by positivity
  -- `shl w 1 k = 2 ^ k.toNat`, so `a < 2 ^ k.toNat`
  have honeN : (BitVec.ofInt w 1).toNat = 1 := by
    have h1 : (1 : Int) < 2 ^ w := by
      calc (1 : Int) < 2 ^ 1 := by norm_num
        _ ≤ 2 ^ w := pow_le_pow_right₀ (by norm_num) (by omega)
    have := Vermilion.Bits.toNat_ofInt_of_range w 1 (by norm_num) h1
    omega
  have hshl1 : Vermilion.Bits.shl w 1 k = (2 : Int) ^ k.toNat := by
    simp only [Vermilion.Bits.shl, BitVec.toNat_shiftLeft, Nat.shiftLeft_eq, honeN, one_mul]
    rw [Nat.mod_eq_of_lt (Nat.pow_lt_pow_right (by norm_num) hknw)]
    norm_cast
  have ha' : a < (2 : Int) ^ k.toNat := by rw [hshl1] at ha4; exact ha4
  -- `shr w (2^w - 1) k` is division, so `b * 2 ^ k.toNat ≤ 2 ^ w - 1`
  have hshr := Vermilion.Bits.shr_eq_div w ((2 : Int) ^ w - 1) k (by linarith) (by linarith)
  rw [hshr] at hb5
  have hb' : b * 2 ^ k.toNat ≤ (2 : Int) ^ w - 1 :=
    (Int.le_ediv_iff_mul_le hpk).mp hb5
  -- `b` fits above the shift: `b < 2 ^ (w - k.toNat)`, so the sum stays in range
  have hsplit : (2 : Int) ^ w = 2 ^ (w - k.toNat) * 2 ^ k.toNat := by
    rw [← pow_add]
    congr 1
    omega
  have hbsmall : b < (2 : Int) ^ (w - k.toNat) := by
    apply lt_of_mul_lt_mul_right _ (le_of_lt hpk)
    calc b * 2 ^ k.toNat ≤ 2 ^ w - 1 := hb'
      _ < 2 ^ w := by linarith
      _ = 2 ^ (w - k.toNat) * 2 ^ k.toNat := hsplit
  have hmul : b * 2 ^ k.toNat ≤ ((2 : Int) ^ (w - k.toNat) - 1) * 2 ^ k.toNat :=
    mul_le_mul_of_nonneg_right (by omega) (le_of_lt hpk)
  have hsum : a + b * 2 ^ k.toNat < (2 : Int) ^ w := by nlinarith [hsplit, hmul, ha']
  -- transfer everything to `BitVec`/`Nat`
  have hAI : ((BitVec.ofInt w a).toNat : Int) = a :=
    Vermilion.Bits.toNat_ofInt_of_range w a ha0 haw
  have hBI : ((BitVec.ofInt w b).toNat : Int) = b :=
    Vermilion.Bits.toNat_ofInt_of_range w b hb0 hbw
  have hCN : (BitVec.ofInt w b <<< k.toNat).toNat
      = (BitVec.ofInt w b).toNat * 2 ^ k.toNat := by
    rw [BitVec.toNat_shiftLeft, Nat.shiftLeft_eq]
    apply Nat.mod_eq_of_lt
    have h1 : (((BitVec.ofInt w b).toNat * 2 ^ k.toNat : Nat) : Int) < ((2 ^ w : Nat) : Int) := by
      push_cast
      rw [hBI]
      linarith [hb']
    exact_mod_cast h1
  have hAN : (BitVec.ofInt w a).toNat < 2 ^ k.toNat := by
    have h1 : (((BitVec.ofInt w a).toNat : Nat) : Int) < ((2 ^ k.toNat : Nat) : Int) := by
      push_cast
      rw [hAI]
      exact ha'
    exact_mod_cast h1
  -- disjoint bits, so `|||` is `+` at the `BitVec` level
  have hdisj : BitVec.ofInt w a &&& (BitVec.ofInt w b <<< k.toNat) = 0#w := by
    apply BitVec.eq_of_toNat_eq
    rw [BitVec.toNat_and, hCN, ← Nat.shiftLeft_eq]
    simpa using nat_and_shiftLeft_eq_zero hAN
  have hor := BitVec.add_eq_or_of_and_eq_zero _ _ hdisj
  have hsumN : (BitVec.ofInt w a + (BitVec.ofInt w b <<< k.toNat)).toNat
      = (BitVec.ofInt w a).toNat + (BitVec.ofInt w b <<< k.toNat).toNat := by
    rw [BitVec.toNat_add]
    apply Nat.mod_eq_of_lt
    rw [hCN]
    have h1 : (((BitVec.ofInt w a).toNat + (BitVec.ofInt w b).toNat * 2 ^ k.toNat : Nat) : Int)
        < ((2 ^ w : Nat) : Int) := by
      push_cast
      rw [hAI, hBI]
      linarith [hsum]
    exact_mod_cast h1
  have hwrap : BitVec.ofInt w (((BitVec.ofInt w b <<< k.toNat).toNat : Nat) : Int)
      = BitVec.ofInt w b <<< k.toNat := by
    apply BitVec.eq_of_toNat_eq
    rw [BitVec.ofInt_natCast, BitVec.toNat_ofNat]
    exact Nat.mod_eq_of_lt (BitVec.isLt _)
  simp only [Vermilion.Bits.bor, Vermilion.Bits.shl]
  rw [hwrap, ← hor, hsumN]
  push_cast
  linarith [hAI]
-- vrml:user:end

namespace layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus

-- vrml:begin layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus.ensures_0 1876de8ae4e80649
/--
Generated VC `layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus.ensures_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs:62:1-62:53`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `1876de8ae4e80649`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs"
  startLine := 62
  startColumn := 1
  endLine := 62
  endColumn := 53
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus"
  kind := "ensures"
  statementHash := "1876de8ae4e80649"
}
@[vrml_obligation] theorem ensures_0
    (a : Int)
    (b : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 a)
    (requires_1 : Vermilion.inUnsignedRange 16 b)
    (requires_2 : Vermilion.inUnsignedRange 16 k)
    (requires_3 : k < 16)
    (requires_4 : a < Vermilion.Bits.shl 16 1 k)
    (requires_5 : b ≤ Vermilion.Bits.shr 16 65535 k) :
    Vermilion.Bits.bor 16 a (Vermilion.Bits.shl 16 b k) = (a + Vermilion.Bits.shl 16 b k) := by
  exact bor_shl_eq_add 16 a b k 65535 (by norm_num) requires_0 requires_1
    requires_2 (by exact_mod_cast requires_3) requires_4 requires_5
-- vrml:end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus.ensures_0

end layer_a.lemmas.common_lemmas.bit_lemmas.lemma_u16_bit_or_is_plus

