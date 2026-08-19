import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive vermilion.tuple_0 where
  | tuple_0
deriving Inhabited

@[simp, grind] def vermilion.tuple_0.is_tuple_0 : vermilion.tuple_0 → Prop
  | .tuple_0 => True
instance (x : vermilion.tuple_0) : Decidable (vermilion.tuple_0.is_tuple_0 x) := by
  cases x
  exact isTrue trivial

