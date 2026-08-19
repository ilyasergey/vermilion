import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive enum_codecs.V16Error where
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

@[simp, grind] def enum_codecs.V16Error.is_InvalidConfig : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_InvalidConfig x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_ArithmeticOverflow : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_ArithmeticOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_ProvenanceMismatch : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_ProvenanceMismatch x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_HiddenLeg : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_HiddenLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_InvalidLeg : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_InvalidLeg x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_Stale : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_Stale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_BStale : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_BStale x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_LockActive : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_LockActive x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_NonProgress : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_NonProgress x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_RecoveryRequired : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_RecoveryRequired x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_CounterOverflow : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_CounterOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.V16Error.is_CounterUnderflow : enum_codecs.V16Error → Prop
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
instance (x : enum_codecs.V16Error) : Decidable (enum_codecs.V16Error.is_CounterUnderflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive enum_codecs.SideV16 where
  | Long
  | Short
deriving Inhabited

@[simp, grind] def enum_codecs.SideV16.is_Long : enum_codecs.SideV16 → Prop
  | .Long => True
  | .Short => False
instance (x : enum_codecs.SideV16) : Decidable (enum_codecs.SideV16.is_Long x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.SideV16.is_Short : enum_codecs.SideV16 → Prop
  | .Long => False
  | .Short => True
instance (x : enum_codecs.SideV16) : Decidable (enum_codecs.SideV16.is_Short x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive enum_codecs.SideModeV16 where
  | Normal
  | DrainOnly
  | ResetPending
deriving Inhabited

@[simp, grind] def enum_codecs.SideModeV16.is_Normal : enum_codecs.SideModeV16 → Prop
  | .Normal => True
  | .DrainOnly => False
  | .ResetPending => False
instance (x : enum_codecs.SideModeV16) : Decidable (enum_codecs.SideModeV16.is_Normal x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.SideModeV16.is_DrainOnly : enum_codecs.SideModeV16 → Prop
  | .Normal => False
  | .DrainOnly => True
  | .ResetPending => False
instance (x : enum_codecs.SideModeV16) : Decidable (enum_codecs.SideModeV16.is_DrainOnly x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.SideModeV16.is_ResetPending : enum_codecs.SideModeV16 → Prop
  | .Normal => False
  | .DrainOnly => False
  | .ResetPending => True
instance (x : enum_codecs.SideModeV16) : Decidable (enum_codecs.SideModeV16.is_ResetPending x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive enum_codecs.AssetLifecycleV16 where
  | Disabled
  | PendingActivation
  | Active
  | DrainOnly
  | Retired
  | Recovery
deriving Inhabited

@[simp, grind] def enum_codecs.AssetLifecycleV16.is_Disabled : enum_codecs.AssetLifecycleV16 → Prop
  | .Disabled => True
  | .PendingActivation => False
  | .Active => False
  | .DrainOnly => False
  | .Retired => False
  | .Recovery => False
instance (x : enum_codecs.AssetLifecycleV16) : Decidable (enum_codecs.AssetLifecycleV16.is_Disabled x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.AssetLifecycleV16.is_PendingActivation : enum_codecs.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => True
  | .Active => False
  | .DrainOnly => False
  | .Retired => False
  | .Recovery => False
instance (x : enum_codecs.AssetLifecycleV16) : Decidable (enum_codecs.AssetLifecycleV16.is_PendingActivation x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.AssetLifecycleV16.is_Active : enum_codecs.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => False
  | .Active => True
  | .DrainOnly => False
  | .Retired => False
  | .Recovery => False
instance (x : enum_codecs.AssetLifecycleV16) : Decidable (enum_codecs.AssetLifecycleV16.is_Active x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.AssetLifecycleV16.is_DrainOnly : enum_codecs.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => False
  | .Active => False
  | .DrainOnly => True
  | .Retired => False
  | .Recovery => False
instance (x : enum_codecs.AssetLifecycleV16) : Decidable (enum_codecs.AssetLifecycleV16.is_DrainOnly x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.AssetLifecycleV16.is_Retired : enum_codecs.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => False
  | .Active => False
  | .DrainOnly => False
  | .Retired => True
  | .Recovery => False
instance (x : enum_codecs.AssetLifecycleV16) : Decidable (enum_codecs.AssetLifecycleV16.is_Retired x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.AssetLifecycleV16.is_Recovery : enum_codecs.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => False
  | .Active => False
  | .DrainOnly => False
  | .Retired => False
  | .Recovery => True
instance (x : enum_codecs.AssetLifecycleV16) : Decidable (enum_codecs.AssetLifecycleV16.is_Recovery x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive enum_codecs.MarketModeV16 where
  | Live
  | Resolved
  | Recovery
deriving Inhabited

@[simp, grind] def enum_codecs.MarketModeV16.is_Live : enum_codecs.MarketModeV16 → Prop
  | .Live => True
  | .Resolved => False
  | .Recovery => False
instance (x : enum_codecs.MarketModeV16) : Decidable (enum_codecs.MarketModeV16.is_Live x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.MarketModeV16.is_Resolved : enum_codecs.MarketModeV16 → Prop
  | .Live => False
  | .Resolved => True
  | .Recovery => False
instance (x : enum_codecs.MarketModeV16) : Decidable (enum_codecs.MarketModeV16.is_Resolved x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.MarketModeV16.is_Recovery : enum_codecs.MarketModeV16 → Prop
  | .Live => False
  | .Resolved => False
  | .Recovery => True
instance (x : enum_codecs.MarketModeV16) : Decidable (enum_codecs.MarketModeV16.is_Recovery x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive enum_codecs.BackingBucketStatusV16 where
  | Empty
  | Fresh
  | Expired
  | Impaired
deriving Inhabited

@[simp, grind] def enum_codecs.BackingBucketStatusV16.is_Empty : enum_codecs.BackingBucketStatusV16 → Prop
  | .Empty => True
  | .Fresh => False
  | .Expired => False
  | .Impaired => False
instance (x : enum_codecs.BackingBucketStatusV16) : Decidable (enum_codecs.BackingBucketStatusV16.is_Empty x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.BackingBucketStatusV16.is_Fresh : enum_codecs.BackingBucketStatusV16 → Prop
  | .Empty => False
  | .Fresh => True
  | .Expired => False
  | .Impaired => False
instance (x : enum_codecs.BackingBucketStatusV16) : Decidable (enum_codecs.BackingBucketStatusV16.is_Fresh x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.BackingBucketStatusV16.is_Expired : enum_codecs.BackingBucketStatusV16 → Prop
  | .Empty => False
  | .Fresh => False
  | .Expired => True
  | .Impaired => False
instance (x : enum_codecs.BackingBucketStatusV16) : Decidable (enum_codecs.BackingBucketStatusV16.is_Expired x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.BackingBucketStatusV16.is_Impaired : enum_codecs.BackingBucketStatusV16 → Prop
  | .Empty => False
  | .Fresh => False
  | .Expired => False
  | .Impaired => True
instance (x : enum_codecs.BackingBucketStatusV16) : Decidable (enum_codecs.BackingBucketStatusV16.is_Impaired x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive enum_codecs.PermissionlessRecoveryReasonV16 where
  | BelowProgressFloor
  | BlockedSegmentHeadroomOrRepresentability
  | AccountBSettlementCannotProgress
  | BIndexHeadroomExhausted
  | ActiveBankruptCloseCannotProgress
  | ExplicitLossOrDustAuditOverflow
  | OracleOrTargetUnavailableByAuthenticatedPolicy
  | CounterOrEpochOverflowDeclaredRecovery
deriving Inhabited

@[simp, grind] def enum_codecs.PermissionlessRecoveryReasonV16.is_BelowProgressFloor : enum_codecs.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => True
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : enum_codecs.PermissionlessRecoveryReasonV16) : Decidable (enum_codecs.PermissionlessRecoveryReasonV16.is_BelowProgressFloor x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.PermissionlessRecoveryReasonV16.is_BlockedSegmentHeadroomOrRepresentability : enum_codecs.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => True
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : enum_codecs.PermissionlessRecoveryReasonV16) : Decidable (enum_codecs.PermissionlessRecoveryReasonV16.is_BlockedSegmentHeadroomOrRepresentability x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.PermissionlessRecoveryReasonV16.is_AccountBSettlementCannotProgress : enum_codecs.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => True
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : enum_codecs.PermissionlessRecoveryReasonV16) : Decidable (enum_codecs.PermissionlessRecoveryReasonV16.is_AccountBSettlementCannotProgress x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.PermissionlessRecoveryReasonV16.is_BIndexHeadroomExhausted : enum_codecs.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => True
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : enum_codecs.PermissionlessRecoveryReasonV16) : Decidable (enum_codecs.PermissionlessRecoveryReasonV16.is_BIndexHeadroomExhausted x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.PermissionlessRecoveryReasonV16.is_ActiveBankruptCloseCannotProgress : enum_codecs.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => True
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : enum_codecs.PermissionlessRecoveryReasonV16) : Decidable (enum_codecs.PermissionlessRecoveryReasonV16.is_ActiveBankruptCloseCannotProgress x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.PermissionlessRecoveryReasonV16.is_ExplicitLossOrDustAuditOverflow : enum_codecs.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => True
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : enum_codecs.PermissionlessRecoveryReasonV16) : Decidable (enum_codecs.PermissionlessRecoveryReasonV16.is_ExplicitLossOrDustAuditOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.PermissionlessRecoveryReasonV16.is_OracleOrTargetUnavailableByAuthenticatedPolicy : enum_codecs.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => True
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : enum_codecs.PermissionlessRecoveryReasonV16) : Decidable (enum_codecs.PermissionlessRecoveryReasonV16.is_OracleOrTargetUnavailableByAuthenticatedPolicy x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def enum_codecs.PermissionlessRecoveryReasonV16.is_CounterOrEpochOverflowDeclaredRecovery : enum_codecs.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => True
instance (x : enum_codecs.PermissionlessRecoveryReasonV16) : Decidable (enum_codecs.PermissionlessRecoveryReasonV16.is_CounterOrEpochOverflowDeclaredRecovery x) := by
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

