import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive traits.Square where
  | Square (side : Int)
deriving Inhabited

@[simp, grind] def traits.Square.is_Square : traits.Square → Prop
  | .Square _ => True
instance (x : traits.Square) : Decidable (traits.Square.is_Square x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def traits.Square.get_Square_side : traits.Square → Int
  | .Square side => side

inductive traits.Rect where
  | Rect (w : Int) (h : Int)
deriving Inhabited

@[simp, grind] def traits.Rect.is_Rect : traits.Rect → Prop
  | .Rect _ _ => True
instance (x : traits.Rect) : Decidable (traits.Rect.is_Rect x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def traits.Rect.get_Rect_w : traits.Rect → Int
  | .Rect w _ => w

@[simp, grind] def traits.Rect.get_Rect_h : traits.Rect → Int
  | .Rect _ h => h

-- vrml:spec traits.impl__0.wf examples/m3-traits/traits.rs:24:10
def traits.impl__0.wf (self : traits.Square) : Prop :=
  traits.Square.get_Square_side self < 100

-- vrml:spec traits.impl__0.area_spec examples/m3-traits/traits.rs:22:10
def traits.impl__0.area_spec (self : traits.Square) : Int :=
  traits.Square.get_Square_side self * traits.Square.get_Square_side self

-- vrml:spec traits.impl__1.wf examples/m3-traits/traits.rs:34:10
def traits.impl__1.wf (self : traits.Rect) : Prop :=
  (traits.Rect.get_Rect_w self < 100) ∧ (traits.Rect.get_Rect_h self < 100)

-- vrml:spec traits.impl__1.area_spec examples/m3-traits/traits.rs:32:10
def traits.impl__1.area_spec (self : traits.Rect) : Int :=
  traits.Rect.get_Rect_w self * traits.Rect.get_Rect_h self

