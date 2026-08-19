import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive wide_math_u256_basics.U256 where
  | U256 (_0 : (Vermilion.Seq Int))
deriving Inhabited

@[simp, grind] def wide_math_u256_basics.U256.is_U256 : wide_math_u256_basics.U256 → Prop
  | .U256 _ => True
instance (x : wide_math_u256_basics.U256) : Decidable (wide_math_u256_basics.U256.is_U256 x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def wide_math_u256_basics.U256.get_U256__0 : wide_math_u256_basics.U256 → (Vermilion.Seq Int)
  | .U256 _0 => _0

inductive core.option.Option (V : Type) where
  | None
  | Some (_0 : V)
deriving Inhabited

@[simp, grind] def core.option.Option.is_None {V : Type} : (core.option.Option V) → Prop
  | .None => True
  | .Some _ => False
instance {V : Type} (x : (core.option.Option V)) : Decidable (core.option.Option.is_None x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.option.Option.is_Some {V : Type} : (core.option.Option V) → Prop
  | .None => False
  | .Some _ => True
instance {V : Type} (x : (core.option.Option V)) : Decidable (core.option.Option.is_Some x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.option.Option.get_Some__0 {V : Type} [Inhabited V] : (core.option.Option V) → V
  | .None => default
  | .Some _0 => _0

