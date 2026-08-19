import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive bounded_arithmetic.V16Error where
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

@[simp, grind] def bounded_arithmetic.V16Error.is_InvalidConfig : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_InvalidConfig x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_ArithmeticOverflow : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_ArithmeticOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_ProvenanceMismatch : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_ProvenanceMismatch x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_HiddenLeg : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_HiddenLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_InvalidLeg : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_InvalidLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_Stale : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_Stale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_BStale : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_BStale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_LockActive : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_LockActive x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_NonProgress : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_NonProgress x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_RecoveryRequired : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_RecoveryRequired x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_CounterOverflow : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_CounterOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def bounded_arithmetic.V16Error.is_CounterUnderflow : bounded_arithmetic.V16Error → Prop
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
instance (x : bounded_arithmetic.V16Error) : Decidable (bounded_arithmetic.V16Error.is_CounterUnderflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

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

inductive core.result.Result (T : Type) (E : Type) where
  | Ok (_0 : Int)
  | Err (_0 : bounded_arithmetic.V16Error)
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

@[simp, grind] def core.result.Result.get_Ok__0 {T : Type} [Inhabited T] {E : Type} [Inhabited E] : (core.result.Result T E) → Int
  | .Ok _0 => _0
  | .Err _ => default

@[simp, grind] def core.result.Result.get_Err__0 {T : Type} [Inhabited T] {E : Type} [Inhabited E] : (core.result.Result T E) → bounded_arithmetic.V16Error
  | .Ok _ => default
  | .Err _0 => _0

