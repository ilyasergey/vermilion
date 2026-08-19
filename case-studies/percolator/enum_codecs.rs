// SPDX-License-Identifier: Apache-2.0
//
// Executable bodies extracted from aeyakovenko/percolator src/v16.rs at
// 143e68c4917ed0400a27b952f036a5677047cd84.  Verus result binders and
// contracts are the only changes around those bodies.

use vstd::prelude::*;

verus! {

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum V16Error {
    InvalidConfig,
    ArithmeticOverflow,
    ProvenanceMismatch,
    HiddenLeg,
    InvalidLeg,
    Stale,
    BStale,
    LockActive,
    NonProgress,
    RecoveryRequired,
    CounterOverflow,
    CounterUnderflow,
}

pub type V16Result<T> = core::result::Result<T, V16Error>;

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
pub enum MarketModeV16 {
    Live,
    Resolved,
    Recovery,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BackingBucketStatusV16 {
    Empty,
    Fresh,
    Expired,
    Impaired,
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

fn decode_side(value: u8) -> (result: V16Result<SideV16>)
    ensures
        result == match value {
            0 => Ok(SideV16::Long),
            1 => Ok(SideV16::Short),
            _ => Err(V16Error::InvalidConfig),
        },
{
    match value {
        0 => Ok(SideV16::Long),
        1 => Ok(SideV16::Short),
        _ => Err(V16Error::InvalidConfig),
    }
}

fn encode_side_mode(value: SideModeV16) -> (result: u8)
    ensures
        result == match value {
            SideModeV16::Normal => 0u8,
            SideModeV16::DrainOnly => 1u8,
            SideModeV16::ResetPending => 2u8,
        },
{
    match value {
        SideModeV16::Normal => 0,
        SideModeV16::DrainOnly => 1,
        SideModeV16::ResetPending => 2,
    }
}

fn decode_side_mode(value: u8) -> (result: V16Result<SideModeV16>)
    ensures
        result == match value {
            0 => Ok(SideModeV16::Normal),
            1 => Ok(SideModeV16::DrainOnly),
            2 => Ok(SideModeV16::ResetPending),
            _ => Err(V16Error::InvalidConfig),
        },
{
    match value {
        0 => Ok(SideModeV16::Normal),
        1 => Ok(SideModeV16::DrainOnly),
        2 => Ok(SideModeV16::ResetPending),
        _ => Err(V16Error::InvalidConfig),
    }
}

fn encode_asset_lifecycle(value: AssetLifecycleV16) -> (result: u8)
    ensures
        result == match value {
            AssetLifecycleV16::Disabled => 0u8,
            AssetLifecycleV16::PendingActivation => 1u8,
            AssetLifecycleV16::Active => 2u8,
            AssetLifecycleV16::DrainOnly => 3u8,
            AssetLifecycleV16::Retired => 4u8,
            AssetLifecycleV16::Recovery => 5u8,
        },
{
    match value {
        AssetLifecycleV16::Disabled => 0,
        AssetLifecycleV16::PendingActivation => 1,
        AssetLifecycleV16::Active => 2,
        AssetLifecycleV16::DrainOnly => 3,
        AssetLifecycleV16::Retired => 4,
        AssetLifecycleV16::Recovery => 5,
    }
}

fn decode_asset_lifecycle(value: u8) -> (result: V16Result<AssetLifecycleV16>)
    ensures
        result == match value {
            0 => Ok(AssetLifecycleV16::Disabled),
            1 => Ok(AssetLifecycleV16::PendingActivation),
            2 => Ok(AssetLifecycleV16::Active),
            3 => Ok(AssetLifecycleV16::DrainOnly),
            4 => Ok(AssetLifecycleV16::Retired),
            5 => Ok(AssetLifecycleV16::Recovery),
            _ => Err(V16Error::InvalidConfig),
        },
{
    match value {
        0 => Ok(AssetLifecycleV16::Disabled),
        1 => Ok(AssetLifecycleV16::PendingActivation),
        2 => Ok(AssetLifecycleV16::Active),
        3 => Ok(AssetLifecycleV16::DrainOnly),
        4 => Ok(AssetLifecycleV16::Retired),
        5 => Ok(AssetLifecycleV16::Recovery),
        _ => Err(V16Error::InvalidConfig),
    }
}

fn encode_market_mode(value: MarketModeV16) -> (result: u8)
    ensures
        result == match value {
            MarketModeV16::Live => 0u8,
            MarketModeV16::Resolved => 1u8,
            MarketModeV16::Recovery => 2u8,
        },
{
    match value {
        MarketModeV16::Live => 0,
        MarketModeV16::Resolved => 1,
        MarketModeV16::Recovery => 2,
    }
}

fn decode_market_mode(value: u8) -> (result: V16Result<MarketModeV16>)
    ensures
        result == match value {
            0 => Ok(MarketModeV16::Live),
            1 => Ok(MarketModeV16::Resolved),
            2 => Ok(MarketModeV16::Recovery),
            _ => Err(V16Error::InvalidConfig),
        },
{
    match value {
        0 => Ok(MarketModeV16::Live),
        1 => Ok(MarketModeV16::Resolved),
        2 => Ok(MarketModeV16::Recovery),
        _ => Err(V16Error::InvalidConfig),
    }
}

fn encode_backing_bucket_status(value: BackingBucketStatusV16) -> (result: u8)
    ensures
        result == match value {
            BackingBucketStatusV16::Empty => 0u8,
            BackingBucketStatusV16::Fresh => 1u8,
            BackingBucketStatusV16::Expired => 2u8,
            BackingBucketStatusV16::Impaired => 3u8,
        },
{
    match value {
        BackingBucketStatusV16::Empty => 0,
        BackingBucketStatusV16::Fresh => 1,
        BackingBucketStatusV16::Expired => 2,
        BackingBucketStatusV16::Impaired => 3,
    }
}

fn decode_backing_bucket_status(value: u8) -> (result: V16Result<BackingBucketStatusV16>)
    ensures
        result == match value {
            0 => Ok(BackingBucketStatusV16::Empty),
            1 => Ok(BackingBucketStatusV16::Fresh),
            2 => Ok(BackingBucketStatusV16::Expired),
            3 => Ok(BackingBucketStatusV16::Impaired),
            _ => Err(V16Error::InvalidConfig),
        },
{
    match value {
        0 => Ok(BackingBucketStatusV16::Empty),
        1 => Ok(BackingBucketStatusV16::Fresh),
        2 => Ok(BackingBucketStatusV16::Expired),
        3 => Ok(BackingBucketStatusV16::Impaired),
        _ => Err(V16Error::InvalidConfig),
    }
}

fn encode_recovery_reason(value: PermissionlessRecoveryReasonV16) -> (result: u8)
    ensures
        result == match value {
            PermissionlessRecoveryReasonV16::BelowProgressFloor => 0u8,
            PermissionlessRecoveryReasonV16::BlockedSegmentHeadroomOrRepresentability => 1u8,
            PermissionlessRecoveryReasonV16::AccountBSettlementCannotProgress => 2u8,
            PermissionlessRecoveryReasonV16::BIndexHeadroomExhausted => 3u8,
            PermissionlessRecoveryReasonV16::ActiveBankruptCloseCannotProgress => 4u8,
            PermissionlessRecoveryReasonV16::ExplicitLossOrDustAuditOverflow => 5u8,
            PermissionlessRecoveryReasonV16::OracleOrTargetUnavailableByAuthenticatedPolicy => 6u8,
            PermissionlessRecoveryReasonV16::CounterOrEpochOverflowDeclaredRecovery => 7u8,
        },
{
    match value {
        PermissionlessRecoveryReasonV16::BelowProgressFloor => 0,
        PermissionlessRecoveryReasonV16::BlockedSegmentHeadroomOrRepresentability => 1,
        PermissionlessRecoveryReasonV16::AccountBSettlementCannotProgress => 2,
        PermissionlessRecoveryReasonV16::BIndexHeadroomExhausted => 3,
        PermissionlessRecoveryReasonV16::ActiveBankruptCloseCannotProgress => 4,
        PermissionlessRecoveryReasonV16::ExplicitLossOrDustAuditOverflow => 5,
        PermissionlessRecoveryReasonV16::OracleOrTargetUnavailableByAuthenticatedPolicy => 6,
        PermissionlessRecoveryReasonV16::CounterOrEpochOverflowDeclaredRecovery => 7,
    }
}

fn decode_recovery_reason(value: u8) -> (result: V16Result<PermissionlessRecoveryReasonV16>)
    ensures
        result == match value {
            0 => Ok(PermissionlessRecoveryReasonV16::BelowProgressFloor),
            1 => Ok(PermissionlessRecoveryReasonV16::BlockedSegmentHeadroomOrRepresentability),
            2 => Ok(PermissionlessRecoveryReasonV16::AccountBSettlementCannotProgress),
            3 => Ok(PermissionlessRecoveryReasonV16::BIndexHeadroomExhausted),
            4 => Ok(PermissionlessRecoveryReasonV16::ActiveBankruptCloseCannotProgress),
            5 => Ok(PermissionlessRecoveryReasonV16::ExplicitLossOrDustAuditOverflow),
            6 => Ok(PermissionlessRecoveryReasonV16::OracleOrTargetUnavailableByAuthenticatedPolicy),
            7 => Ok(PermissionlessRecoveryReasonV16::CounterOrEpochOverflowDeclaredRecovery),
            _ => Err(V16Error::InvalidConfig),
        },
{
    match value {
        0 => Ok(PermissionlessRecoveryReasonV16::BelowProgressFloor),
        1 => Ok(PermissionlessRecoveryReasonV16::BlockedSegmentHeadroomOrRepresentability),
        2 => Ok(PermissionlessRecoveryReasonV16::AccountBSettlementCannotProgress),
        3 => Ok(PermissionlessRecoveryReasonV16::BIndexHeadroomExhausted),
        4 => Ok(PermissionlessRecoveryReasonV16::ActiveBankruptCloseCannotProgress),
        5 => Ok(PermissionlessRecoveryReasonV16::ExplicitLossOrDustAuditOverflow),
        6 => Ok(PermissionlessRecoveryReasonV16::OracleOrTargetUnavailableByAuthenticatedPolicy),
        7 => Ok(PermissionlessRecoveryReasonV16::CounterOrEpochOverflowDeclaredRecovery),
        _ => Err(V16Error::InvalidConfig),
    }
}

} // verus!
