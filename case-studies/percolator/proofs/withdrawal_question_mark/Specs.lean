import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive withdrawal_question_mark.V16Error where
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

@[simp, grind] def withdrawal_question_mark.V16Error.is_InvalidConfig : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_InvalidConfig x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_ArithmeticOverflow : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_ArithmeticOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_ProvenanceMismatch : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_ProvenanceMismatch x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_HiddenLeg : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_HiddenLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_InvalidLeg : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_InvalidLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_Stale : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_Stale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_BStale : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_BStale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_LockActive : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_LockActive x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_NonProgress : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_NonProgress x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_RecoveryRequired : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_RecoveryRequired x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_CounterOverflow : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_CounterOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def withdrawal_question_mark.V16Error.is_CounterUnderflow : withdrawal_question_mark.V16Error → Prop
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
instance (x : withdrawal_question_mark.V16Error) : Decidable (withdrawal_question_mark.V16Error.is_CounterUnderflow x) := by
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

inductive core.ops.control_flow.ControlFlow (B : Type) (C : Type) where
  | Continue (_0 : C)
  | Break (_0 : B)
deriving Inhabited

@[simp, grind] def core.ops.control_flow.ControlFlow.is_Continue {B : Type} {C : Type} : (core.ops.control_flow.ControlFlow B C) → Prop
  | .Continue _ => True
  | .Break _ => False
instance {B : Type} {C : Type} (x : (core.ops.control_flow.ControlFlow B C)) : Decidable (core.ops.control_flow.ControlFlow.is_Continue x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.ops.control_flow.ControlFlow.is_Break {B : Type} {C : Type} : (core.ops.control_flow.ControlFlow B C) → Prop
  | .Continue _ => False
  | .Break _ => True
instance {B : Type} {C : Type} (x : (core.ops.control_flow.ControlFlow B C)) : Decidable (core.ops.control_flow.ControlFlow.is_Break x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.ops.control_flow.ControlFlow.get_Continue__0 {B : Type} [Inhabited B] {C : Type} [Inhabited C] : (core.ops.control_flow.ControlFlow B C) → C
  | .Continue _0 => _0
  | .Break _ => default

@[simp, grind] def core.ops.control_flow.ControlFlow.get_Break__0 {B : Type} [Inhabited B] {C : Type} [Inhabited C] : (core.ops.control_flow.ControlFlow B C) → B
  | .Continue _ => default
  | .Break _0 => _0

inductive core.convert.Infallible where
  | Infallible
deriving Inhabited

@[simp, grind] def core.convert.Infallible.is_Infallible : core.convert.Infallible → Prop
  | .Infallible => True
instance (x : core.convert.Infallible) : Decidable (core.convert.Infallible.is_Infallible x) := by
  cases x
  exact isTrue trivial

-- vrml:spec vstd.std_specs.control_flow.spec_from vstd/std_specs/control_flow.rs:50:1
noncomputable opaque vstd.std_specs.control_flow.spec_from {S : Type} [Inhabited S] {T : Type} [Inhabited T] (value : T) (ret : S) : Prop

