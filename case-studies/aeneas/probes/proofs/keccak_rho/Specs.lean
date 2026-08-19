import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive keccak_rho.StateArray where
  | StateArray (_0 : (Vermilion.Seq Int))
deriving Inhabited

@[simp, grind] def keccak_rho.StateArray.is_StateArray : keccak_rho.StateArray → Prop
  | .StateArray _ => True
instance (x : keccak_rho.StateArray) : Decidable (keccak_rho.StateArray.is_StateArray x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def keccak_rho.StateArray.get_StateArray__0 : keccak_rho.StateArray → (Vermilion.Seq Int)
  | .StateArray _0 => _0

inductive vermilion.tuple_2 (T_0 : Type) (T_1 : Type) where
  | tuple_2 (_0 : T_0) (_1 : T_1)
deriving Inhabited

@[simp, grind] def vermilion.tuple_2.is_tuple_2 {T_0 : Type} {T_1 : Type} : (vermilion.tuple_2 T_0 T_1) → Prop
  | .tuple_2 _ _ => True
instance {T_0 : Type} {T_1 : Type} (x : (vermilion.tuple_2 T_0 T_1)) : Decidable (vermilion.tuple_2.is_tuple_2 x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def vermilion.tuple_2.get_tuple_2__0 {T_0 : Type} [Inhabited T_0] {T_1 : Type} [Inhabited T_1] : (vermilion.tuple_2 T_0 T_1) → T_0
  | .tuple_2 _0 _ => _0

@[simp, grind] def vermilion.tuple_2.get_tuple_2__1 {T_0 : Type} [Inhabited T_0] {T_1 : Type} [Inhabited T_1] : (vermilion.tuple_2 T_0 T_1) → T_1
  | .tuple_2 _ _1 => _1

-- vrml:spec keccak_rho.RHO_OFFSETS case-studies/aeneas/probes/keccak_rho.rs:34:1
def keccak_rho.RHO_OFFSETS : (Vermilion.Seq (Vermilion.Seq Int)) :=
  Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq (Vermilion.Seq Int)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 0) 36) 3) 41) 18)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 44) 10) 45) 2)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 62) 6) 43) 15) 61)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 28) 55) 25) 21) 56)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 27) 20) 39) 8) 14)

