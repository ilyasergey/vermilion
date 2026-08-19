import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive policy_gates.SideV16 where
  | Long
  | Short
deriving Inhabited

@[simp, grind] def policy_gates.SideV16.is_Long : policy_gates.SideV16 → Prop
  | .Long => True
  | .Short => False
instance (x : policy_gates.SideV16) : Decidable (policy_gates.SideV16.is_Long x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.SideV16.is_Short : policy_gates.SideV16 → Prop
  | .Long => False
  | .Short => True
instance (x : policy_gates.SideV16) : Decidable (policy_gates.SideV16.is_Short x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive policy_gates.SideModeV16 where
  | Normal
  | DrainOnly
  | ResetPending
deriving Inhabited

@[simp, grind] def policy_gates.SideModeV16.is_Normal : policy_gates.SideModeV16 → Prop
  | .Normal => True
  | .DrainOnly => False
  | .ResetPending => False
instance (x : policy_gates.SideModeV16) : Decidable (policy_gates.SideModeV16.is_Normal x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.SideModeV16.is_DrainOnly : policy_gates.SideModeV16 → Prop
  | .Normal => False
  | .DrainOnly => True
  | .ResetPending => False
instance (x : policy_gates.SideModeV16) : Decidable (policy_gates.SideModeV16.is_DrainOnly x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.SideModeV16.is_ResetPending : policy_gates.SideModeV16 → Prop
  | .Normal => False
  | .DrainOnly => False
  | .ResetPending => True
instance (x : policy_gates.SideModeV16) : Decidable (policy_gates.SideModeV16.is_ResetPending x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive policy_gates.AssetLifecycleV16 where
  | Disabled
  | PendingActivation
  | Active
  | DrainOnly
  | Retired
  | Recovery
deriving Inhabited

@[simp, grind] def policy_gates.AssetLifecycleV16.is_Disabled : policy_gates.AssetLifecycleV16 → Prop
  | .Disabled => True
  | .PendingActivation => False
  | .Active => False
  | .DrainOnly => False
  | .Retired => False
  | .Recovery => False
instance (x : policy_gates.AssetLifecycleV16) : Decidable (policy_gates.AssetLifecycleV16.is_Disabled x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AssetLifecycleV16.is_PendingActivation : policy_gates.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => True
  | .Active => False
  | .DrainOnly => False
  | .Retired => False
  | .Recovery => False
instance (x : policy_gates.AssetLifecycleV16) : Decidable (policy_gates.AssetLifecycleV16.is_PendingActivation x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AssetLifecycleV16.is_Active : policy_gates.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => False
  | .Active => True
  | .DrainOnly => False
  | .Retired => False
  | .Recovery => False
instance (x : policy_gates.AssetLifecycleV16) : Decidable (policy_gates.AssetLifecycleV16.is_Active x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AssetLifecycleV16.is_DrainOnly : policy_gates.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => False
  | .Active => False
  | .DrainOnly => True
  | .Retired => False
  | .Recovery => False
instance (x : policy_gates.AssetLifecycleV16) : Decidable (policy_gates.AssetLifecycleV16.is_DrainOnly x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AssetLifecycleV16.is_Retired : policy_gates.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => False
  | .Active => False
  | .DrainOnly => False
  | .Retired => True
  | .Recovery => False
instance (x : policy_gates.AssetLifecycleV16) : Decidable (policy_gates.AssetLifecycleV16.is_Retired x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AssetLifecycleV16.is_Recovery : policy_gates.AssetLifecycleV16 → Prop
  | .Disabled => False
  | .PendingActivation => False
  | .Active => False
  | .DrainOnly => False
  | .Retired => False
  | .Recovery => True
instance (x : policy_gates.AssetLifecycleV16) : Decidable (policy_gates.AssetLifecycleV16.is_Recovery x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

inductive policy_gates.PermissionlessRecoveryReasonV16 where
  | BelowProgressFloor
  | BlockedSegmentHeadroomOrRepresentability
  | AccountBSettlementCannotProgress
  | BIndexHeadroomExhausted
  | ActiveBankruptCloseCannotProgress
  | ExplicitLossOrDustAuditOverflow
  | OracleOrTargetUnavailableByAuthenticatedPolicy
  | CounterOrEpochOverflowDeclaredRecovery
deriving Inhabited

@[simp, grind] def policy_gates.PermissionlessRecoveryReasonV16.is_BelowProgressFloor : policy_gates.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => True
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : policy_gates.PermissionlessRecoveryReasonV16) : Decidable (policy_gates.PermissionlessRecoveryReasonV16.is_BelowProgressFloor x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.PermissionlessRecoveryReasonV16.is_BlockedSegmentHeadroomOrRepresentability : policy_gates.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => True
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : policy_gates.PermissionlessRecoveryReasonV16) : Decidable (policy_gates.PermissionlessRecoveryReasonV16.is_BlockedSegmentHeadroomOrRepresentability x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.PermissionlessRecoveryReasonV16.is_AccountBSettlementCannotProgress : policy_gates.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => True
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : policy_gates.PermissionlessRecoveryReasonV16) : Decidable (policy_gates.PermissionlessRecoveryReasonV16.is_AccountBSettlementCannotProgress x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.PermissionlessRecoveryReasonV16.is_BIndexHeadroomExhausted : policy_gates.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => True
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : policy_gates.PermissionlessRecoveryReasonV16) : Decidable (policy_gates.PermissionlessRecoveryReasonV16.is_BIndexHeadroomExhausted x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.PermissionlessRecoveryReasonV16.is_ActiveBankruptCloseCannotProgress : policy_gates.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => True
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : policy_gates.PermissionlessRecoveryReasonV16) : Decidable (policy_gates.PermissionlessRecoveryReasonV16.is_ActiveBankruptCloseCannotProgress x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.PermissionlessRecoveryReasonV16.is_ExplicitLossOrDustAuditOverflow : policy_gates.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => True
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : policy_gates.PermissionlessRecoveryReasonV16) : Decidable (policy_gates.PermissionlessRecoveryReasonV16.is_ExplicitLossOrDustAuditOverflow x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.PermissionlessRecoveryReasonV16.is_OracleOrTargetUnavailableByAuthenticatedPolicy : policy_gates.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => True
  | .CounterOrEpochOverflowDeclaredRecovery => False
instance (x : policy_gates.PermissionlessRecoveryReasonV16) : Decidable (policy_gates.PermissionlessRecoveryReasonV16.is_OracleOrTargetUnavailableByAuthenticatedPolicy x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.PermissionlessRecoveryReasonV16.is_CounterOrEpochOverflowDeclaredRecovery : policy_gates.PermissionlessRecoveryReasonV16 → Prop
  | .BelowProgressFloor => False
  | .BlockedSegmentHeadroomOrRepresentability => False
  | .AccountBSettlementCannotProgress => False
  | .BIndexHeadroomExhausted => False
  | .ActiveBankruptCloseCannotProgress => False
  | .ExplicitLossOrDustAuditOverflow => False
  | .OracleOrTargetUnavailableByAuthenticatedPolicy => False
  | .CounterOrEpochOverflowDeclaredRecovery => True
instance (x : policy_gates.PermissionlessRecoveryReasonV16) : Decidable (policy_gates.PermissionlessRecoveryReasonV16.is_CounterOrEpochOverflowDeclaredRecovery x) := by
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

inductive policy_gates.AutoCrankPlanV16 where
  | NoAction
  | RefreshAccount (asset_index : (core.option.Option Int))
  | SettleBChunk (asset_index : Int)
  | Liquidate (asset_index : Int)
  | DeclareRecovery (reason : policy_gates.PermissionlessRecoveryReasonV16)
  | CloseResolved
deriving Inhabited

@[simp, grind] def policy_gates.AutoCrankPlanV16.is_NoAction : policy_gates.AutoCrankPlanV16 → Prop
  | .NoAction => True
  | .RefreshAccount _ => False
  | .SettleBChunk _ => False
  | .Liquidate _ => False
  | .DeclareRecovery _ => False
  | .CloseResolved => False
instance (x : policy_gates.AutoCrankPlanV16) : Decidable (policy_gates.AutoCrankPlanV16.is_NoAction x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AutoCrankPlanV16.is_RefreshAccount : policy_gates.AutoCrankPlanV16 → Prop
  | .NoAction => False
  | .RefreshAccount _ => True
  | .SettleBChunk _ => False
  | .Liquidate _ => False
  | .DeclareRecovery _ => False
  | .CloseResolved => False
instance (x : policy_gates.AutoCrankPlanV16) : Decidable (policy_gates.AutoCrankPlanV16.is_RefreshAccount x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AutoCrankPlanV16.is_SettleBChunk : policy_gates.AutoCrankPlanV16 → Prop
  | .NoAction => False
  | .RefreshAccount _ => False
  | .SettleBChunk _ => True
  | .Liquidate _ => False
  | .DeclareRecovery _ => False
  | .CloseResolved => False
instance (x : policy_gates.AutoCrankPlanV16) : Decidable (policy_gates.AutoCrankPlanV16.is_SettleBChunk x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AutoCrankPlanV16.is_Liquidate : policy_gates.AutoCrankPlanV16 → Prop
  | .NoAction => False
  | .RefreshAccount _ => False
  | .SettleBChunk _ => False
  | .Liquidate _ => True
  | .DeclareRecovery _ => False
  | .CloseResolved => False
instance (x : policy_gates.AutoCrankPlanV16) : Decidable (policy_gates.AutoCrankPlanV16.is_Liquidate x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AutoCrankPlanV16.is_DeclareRecovery : policy_gates.AutoCrankPlanV16 → Prop
  | .NoAction => False
  | .RefreshAccount _ => False
  | .SettleBChunk _ => False
  | .Liquidate _ => False
  | .DeclareRecovery _ => True
  | .CloseResolved => False
instance (x : policy_gates.AutoCrankPlanV16) : Decidable (policy_gates.AutoCrankPlanV16.is_DeclareRecovery x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AutoCrankPlanV16.is_CloseResolved : policy_gates.AutoCrankPlanV16 → Prop
  | .NoAction => False
  | .RefreshAccount _ => False
  | .SettleBChunk _ => False
  | .Liquidate _ => False
  | .DeclareRecovery _ => False
  | .CloseResolved => True
instance (x : policy_gates.AutoCrankPlanV16) : Decidable (policy_gates.AutoCrankPlanV16.is_CloseResolved x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def policy_gates.AutoCrankPlanV16.get_RefreshAccount_asset_index : policy_gates.AutoCrankPlanV16 → (core.option.Option Int)
  | .NoAction => default
  | .RefreshAccount asset_index => asset_index
  | .SettleBChunk _ => default
  | .Liquidate _ => default
  | .DeclareRecovery _ => default
  | .CloseResolved => default

@[simp, grind] def policy_gates.AutoCrankPlanV16.get_SettleBChunk_asset_index : policy_gates.AutoCrankPlanV16 → Int
  | .NoAction => default
  | .RefreshAccount _ => default
  | .SettleBChunk asset_index => asset_index
  | .Liquidate _ => default
  | .DeclareRecovery _ => default
  | .CloseResolved => default

@[simp, grind] def policy_gates.AutoCrankPlanV16.get_Liquidate_asset_index : policy_gates.AutoCrankPlanV16 → Int
  | .NoAction => default
  | .RefreshAccount _ => default
  | .SettleBChunk _ => default
  | .Liquidate asset_index => asset_index
  | .DeclareRecovery _ => default
  | .CloseResolved => default

@[simp, grind] def policy_gates.AutoCrankPlanV16.get_DeclareRecovery_reason : policy_gates.AutoCrankPlanV16 → policy_gates.PermissionlessRecoveryReasonV16
  | .NoAction => default
  | .RefreshAccount _ => default
  | .SettleBChunk _ => default
  | .Liquidate _ => default
  | .DeclareRecovery reason => reason
  | .CloseResolved => default

