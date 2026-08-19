// SPDX-License-Identifier: Apache-2.0
//
// Executable bodies extracted from aeyakovenko/percolator src/wide_math.rs at
// 143e68c4917ed0400a27b952f036a5677047cd84. Verus result binders and
// contracts are added around the bodies. The tuple field is public here solely
// so those contracts may observe it; upstream keeps the field private.

use vstd::prelude::*;

verus! {

#[repr(C)]
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct U256(pub [u64; 4]);

impl U256 {
    /// Create from low 128 bits and high 128 bits.
    #[inline]
    pub const fn new(lo: u128, hi: u128) -> (result: Self)
        ensures
            result.0[0] == lo as u64,
            result.0[1] == (lo >> 64) as u64,
            result.0[2] == hi as u64,
            result.0[3] == (hi >> 64) as u64,
    {
        Self([lo as u64, (lo >> 64) as u64, hi as u64, (hi >> 64) as u64])
    }

    #[inline]
    pub const fn from_u128(v: u128) -> (result: Self)
        ensures
            result.0[0] == v as u64,
            result.0[1] == (v >> 64) as u64,
            result.0[2] == 0,
            result.0[3] == (0u128 >> 64) as u64,
    {
        Self::new(v, 0)
    }

    #[inline]
    pub const fn from_u64(v: u64) -> (result: Self)
        ensures
            result.0[0] == v,
            result.0[1] == 0,
            result.0[2] == 0,
            result.0[3] == 0,
    {
        Self([v, 0, 0, 0])
    }

    #[inline]
    pub const fn lo(&self) -> (result: u128)
        ensures
            result == (self.0[0] as u128) | ((self.0[1] as u128) << 64),
    {
        (self.0[0] as u128) | ((self.0[1] as u128) << 64)
    }

    #[inline]
    pub const fn hi(&self) -> (result: u128)
        ensures
            result == (self.0[2] as u128) | ((self.0[3] as u128) << 64),
    {
        (self.0[2] as u128) | ((self.0[3] as u128) << 64)
    }

    #[inline]
    pub const fn is_zero(&self) -> (result: bool)
        ensures
            result == (
                self.0[0] == 0 && self.0[1] == 0 &&
                self.0[2] == 0 && self.0[3] == 0
            ),
    {
        self.0[0] == 0 && self.0[1] == 0 && self.0[2] == 0 && self.0[3] == 0
    }

    #[inline]
    pub fn try_into_u128(&self) -> (result: Option<u128>)
        ensures
            self.0[2] == 0 && self.0[3] == 0 ==>
                result == Some((self.0[0] as u128) | ((self.0[1] as u128) << 64)),
            !(self.0[2] == 0 && self.0[3] == 0) ==> result == None,
    {
        if self.0[2] == 0 && self.0[3] == 0 {
            Some(self.lo())
        } else {
            None
        }
    }

    pub fn bitand(self, rhs: U256) -> (result: U256)
        ensures
            result.0[0] == (
                ((self.0[0] as u128) | ((self.0[1] as u128) << 64)) &
                ((rhs.0[0] as u128) | ((rhs.0[1] as u128) << 64))
            ) as u64,
            result.0[1] == ((
                ((self.0[0] as u128) | ((self.0[1] as u128) << 64)) &
                ((rhs.0[0] as u128) | ((rhs.0[1] as u128) << 64))
            ) >> 64) as u64,
            result.0[2] == (
                ((self.0[2] as u128) | ((self.0[3] as u128) << 64)) &
                ((rhs.0[2] as u128) | ((rhs.0[3] as u128) << 64))
            ) as u64,
            result.0[3] == ((
                ((self.0[2] as u128) | ((self.0[3] as u128) << 64)) &
                ((rhs.0[2] as u128) | ((rhs.0[3] as u128) << 64))
            ) >> 64) as u64,
    {
        U256::new(self.lo() & rhs.lo(), self.hi() & rhs.hi())
    }

    pub fn bitor(self, rhs: U256) -> (result: U256)
        ensures
            result.0[0] == (
                ((self.0[0] as u128) | ((self.0[1] as u128) << 64)) |
                ((rhs.0[0] as u128) | ((rhs.0[1] as u128) << 64))
            ) as u64,
            result.0[1] == ((
                ((self.0[0] as u128) | ((self.0[1] as u128) << 64)) |
                ((rhs.0[0] as u128) | ((rhs.0[1] as u128) << 64))
            ) >> 64) as u64,
            result.0[2] == (
                ((self.0[2] as u128) | ((self.0[3] as u128) << 64)) |
                ((rhs.0[2] as u128) | ((rhs.0[3] as u128) << 64))
            ) as u64,
            result.0[3] == ((
                ((self.0[2] as u128) | ((self.0[3] as u128) << 64)) |
                ((rhs.0[2] as u128) | ((rhs.0[3] as u128) << 64))
            ) >> 64) as u64,
    {
        U256::new(self.lo() | rhs.lo(), self.hi() | rhs.hi())
    }
}

} // verus!
