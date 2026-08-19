import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive active_bitmap_clear.V16Error where
  | InvalidConfig
  | ArithmeticOverflow
  | ProvenanceMismatch
  | HiddenLeg
  | InvalidLeg
  | Stale
  | BStale
  | LockActive
  | NonProgress
  | RecoveryRequired
  | CounterOverflow
  | CounterUnderflow
deriving Inhabited

@[simp, grind] def active_bitmap_clear.V16Error.is_InvalidConfig : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => True
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_InvalidConfig x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_ArithmeticOverflow : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => True
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_ArithmeticOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_ProvenanceMismatch : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => True
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_ProvenanceMismatch x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_HiddenLeg : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => True
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_HiddenLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_InvalidLeg : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => True
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_InvalidLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_Stale : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => True
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_Stale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_BStale : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => True
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_BStale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_LockActive : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => True
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_LockActive x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_NonProgress : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => True
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_NonProgress x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_RecoveryRequired : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => True
  | .CounterOverflow => False
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_RecoveryRequired x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_CounterOverflow : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => True
  | .CounterUnderflow => False
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_CounterOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def active_bitmap_clear.V16Error.is_CounterUnderflow : active_bitmap_clear.V16Error → Prop
  | .InvalidConfig => False
  | .ArithmeticOverflow => False
  | .ProvenanceMismatch => False
  | .HiddenLeg => False
  | .InvalidLeg => False
  | .Stale => False
  | .BStale => False
  | .LockActive => False
  | .NonProgress => False
  | .RecoveryRequired => False
  | .CounterOverflow => False
  | .CounterUnderflow => True
instance (x : active_bitmap_clear.V16Error) : Decidable (active_bitmap_clear.V16Error.is_CounterUnderflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive core.result.Result (T : Type) (E : Type) where
  | Ok (_0 : T)
  | Err (_0 : E)
deriving Inhabited

@[simp, grind] def core.result.Result.is_Ok {T : Type} {E : Type} : (core.result.Result T E) → Prop
  | .Ok _ => True
  | .Err _ => False
instance {T : Type} {E : Type} (x : (core.result.Result T E)) : Decidable (core.result.Result.is_Ok x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.result.Result.is_Err {T : Type} {E : Type} : (core.result.Result T E) → Prop
  | .Ok _ => False
  | .Err _ => True
instance {T : Type} {E : Type} (x : (core.result.Result T E)) : Decidable (core.result.Result.is_Err x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.result.Result.get_Ok__0 {T : Type} [Inhabited T] {E : Type} [Inhabited E] : (core.result.Result T E) → T
  | .Ok _0 => _0
  | .Err _ => default

@[simp, grind] def core.result.Result.get_Err__0 {T : Type} [Inhabited T] {E : Type} [Inhabited E] : (core.result.Result T E) → E
  | .Ok _ => default
  | .Err _0 => _0

inductive vermilion.tuple_0 where
  | tuple_0
deriving Inhabited

@[simp, grind] def vermilion.tuple_0.is_tuple_0 : vermilion.tuple_0 → Prop
  | .tuple_0 => True
instance (x : vermilion.tuple_0) : Decidable (vermilion.tuple_0.is_tuple_0 x) := by
  cases x
  exact isTrue trivial

-- vrml:spec active_bitmap_clear.V16_MAX_PORTFOLIO_ASSETS_N case-studies/percolator/active_bitmap_clear.rs:11:1
def active_bitmap_clear.V16_MAX_PORTFOLIO_ASSETS_N : Int :=
  16

