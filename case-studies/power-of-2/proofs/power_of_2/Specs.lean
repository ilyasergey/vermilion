import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

-- vrml:spec power_of_2.pow2 case-studies/power-of-2/power_of_2.rs:35:6
def power_of_2.pow2 (e : Int) : Int :=
  if _h_range : 0 ≤ (e) then
    (if _h : (e = 0) then 1 else Vermilion.natClip (2 * power_of_2.pow2 (Vermilion.natClip (e - 1))))
  else default
termination_by (e).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all


-- vrml:user:begin
/-- The generated `nat` model stores values in `Int` and makes every clip
explicit.  This small fact lets the interactive proofs discharge those
clips without adding case-study-specific rules to global automation. -/
theorem power_of_2.pow2_nonneg (e : Int) : 0 ≤ power_of_2.pow2 e := by
  rw [power_of_2.pow2]
  split_ifs <;>
    simp_all [Vermilion.natClip, Vermilion.iteP] <;>
    split_ifs <;> omega

theorem power_of_2.pow2_succ (e : Int) (h : 0 ≤ e) :
    power_of_2.pow2 (e + 1) = 2 * power_of_2.pow2 e := by
  rw [power_of_2.pow2]
  simp only [show 0 ≤ e + 1 by omega, dite_true,
    show ¬(e + 1 = 0) by omega, dite_false]
  have hsub : e + 1 - 1 = e := by omega
  rw [hsub, Vermilion.natClip_of_nonneg h,
    Vermilion.natClip_of_nonneg (by nlinarith [power_of_2.pow2_nonneg e])]

theorem power_of_2.pow2_pos (e : Int) (h : 0 ≤ e) : 0 < power_of_2.pow2 e := by
  obtain ⟨n, rfl⟩ := Int.eq_ofNat_of_zero_le h
  induction n with
  | zero =>
      rw [power_of_2.pow2]
      norm_num
  | succ n ih =>
      change 0 < power_of_2.pow2 ((n : Int) + 1)
      rw [power_of_2.pow2_succ _ (by omega)]
      nlinarith [ih (by omega)]
-- vrml:user:end
