// SPDX-License-Identifier: Apache-2.0
//
// Executable bodies extracted from aeyakovenko/percolator src/v16.rs at
// 143e68c4917ed0400a27b952f036a5677047cd84.  Verus result binders and
// contracts are the only changes around those bodies.

use vstd::prelude::*;

verus! {

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SideV16 {
    Long,
    Short,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SideModeV16 {
    Normal,
    DrainOnly,
    ResetPending,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum AssetLifecycleV16 {
    Disabled,
    PendingActivation,
    Active,
    DrainOnly,
    Retired,
    Recovery,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum PermissionlessRecoveryReasonV16 {
    BelowProgressFloor,
    BlockedSegmentHeadroomOrRepresentability,
    AccountBSettlementCannotProgress,
    BIndexHeadroomExhausted,
    ActiveBankruptCloseCannotProgress,
    ExplicitLossOrDustAuditOverflow,
    OracleOrTargetUnavailableByAuthenticatedPolicy,
    CounterOrEpochOverflowDeclaredRecovery,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum AutoCrankPlanV16 {
    NoAction,
    RefreshAccount {
        asset_index: Option<usize>,
    },
    SettleBChunk {
        asset_index: usize,
    },
    Liquidate {
        asset_index: usize,
    },
    DeclareRecovery {
        reason: PermissionlessRecoveryReasonV16,
    },
    CloseResolved,
}

pub fn auto_crank_plan_requires_caller_observation(plan: &AutoCrankPlanV16) -> (result: bool)
    ensures
        result == match plan {
            AutoCrankPlanV16::RefreshAccount { asset_index } => asset_index.is_none(),
            AutoCrankPlanV16::SettleBChunk { .. }
            | AutoCrankPlanV16::Liquidate { .. }
            | AutoCrankPlanV16::DeclareRecovery { .. }
            | AutoCrankPlanV16::CloseResolved
            | AutoCrankPlanV16::NoAction => false,
        },
{
    match plan {
        AutoCrankPlanV16::RefreshAccount { asset_index } => asset_index.is_none(),
        AutoCrankPlanV16::SettleBChunk { .. }
        | AutoCrankPlanV16::Liquidate { .. }
        | AutoCrankPlanV16::DeclareRecovery { .. }
        | AutoCrankPlanV16::CloseResolved
        | AutoCrankPlanV16::NoAction => false,
    }
}

fn encode_side(value: SideV16) -> (result: u8)
    ensures
        result == match value {
            SideV16::Long => 0u8,
            SideV16::Short => 1u8,
        },
{
    match value {
        SideV16::Long => 0,
        SideV16::Short => 1,
    }
}

fn opposite_side(side: SideV16) -> (result: SideV16)
    ensures
        result != side,
{
    match side {
        SideV16::Long => SideV16::Short,
        SideV16::Short => SideV16::Long,
    }
}

} // verus!
