import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive subtle_assumes.subtle_stub.Choice where
  | Choice
deriving Inhabited

@[simp, grind] def subtle_assumes.subtle_stub.Choice.is_Choice : subtle_assumes.subtle_stub.Choice → Prop
  | .Choice => True
instance (x : subtle_assumes.subtle_stub.Choice) : Decidable (subtle_assumes.subtle_stub.Choice.is_Choice x) := by
  cases x
  exact isTrue trivial

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

-- vrml:spec subtle_assumes.choice_is_true case-studies/dalek-lite/probes/subtle_assumes.rs:54:1
noncomputable opaque subtle_assumes.choice_is_true (c : subtle_assumes.subtle_stub.Choice) : Prop

