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

fn trade_preflight_risk_gate(
    risk_increasing: bool,
    asset_loss_stale: bool,
    target_effective_lag: bool,
    touches_pending_domain_barrier: bool,
) -> (result: V16Result<()>)
    ensures
        result == if touches_pending_domain_barrier
            || (risk_increasing && (asset_loss_stale || target_effective_lag)) {
            Err(V16Error::LockActive)
        } else {
            Ok(())
        },
{
    if touches_pending_domain_barrier
        || (risk_increasing && (asset_loss_stale || target_effective_lag))
    {
        return Err(V16Error::LockActive);
    }
    Ok(())
}

} // verus!
