// SPDX-License-Identifier: BSD-3-Clause
//
// Stand-in for the external `subtle` crate (dalek-lite DL8): compiled as a
// real rlib with the pinned Verus toolchain and passed to the front end via
// --extern, exactly how the real dependency would arrive. Verus treats it
// as external code; all reasoning about it flows through the acquired
// `assume_specification` contracts. Constant-time bodies mirror subtle's.

#[derive(Clone, Copy, Debug)]
pub struct Choice(pub u8);

impl Choice {
    pub fn unwrap_u8(&self) -> u8 {
        self.0
    }
}

impl From<u8> for Choice {
    fn from(u: u8) -> Choice {
        Choice(u)
    }
}

pub struct CtOption<T> {
    value: T,
    is_some: Choice,
}

impl<T> CtOption<T> {
    pub fn new(value: T, is_some: Choice) -> CtOption<T> {
        CtOption { value, is_some }
    }
    pub fn is_some(&self) -> Choice {
        Choice(self.is_some.0)
    }
    pub fn unwrap(self) -> T {
        assert!(self.is_some.0 == 1);
        self.value
    }
}

pub trait ConstantTimeEq {
    fn ct_eq(&self, other: &Self) -> Choice;
}

pub trait ConditionallySelectable: Copy {
    fn conditional_select(a: &Self, b: &Self, choice: Choice) -> Self;
    fn conditional_assign(&mut self, other: &Self, choice: Choice) {
        *self = Self::conditional_select(self, other, choice);
    }
    fn conditional_swap(a: &mut Self, b: &mut Self, choice: Choice) {
        let t = *a;
        a.conditional_assign(b, choice);
        b.conditional_assign(&t, choice);
    }
}

pub trait ConditionallyNegatable {
    fn conditional_negate(&mut self, choice: Choice);
}

macro_rules! ct_uint {
    ($t:ty) => {
        impl ConstantTimeEq for $t {
            fn ct_eq(&self, other: &Self) -> Choice {
                Choice((self == other) as u8)
            }
        }
        impl ConditionallySelectable for $t {
            fn conditional_select(a: &Self, b: &Self, choice: Choice) -> Self {
                let mask = (choice.0 as $t).wrapping_neg();
                a ^ (mask & (a ^ b))
            }
            // Explicit overrides, as in real subtle: assume_specification
            // targets must be provided by the impl, not trait defaults.
            fn conditional_assign(&mut self, other: &Self, choice: Choice) {
                let mask = (choice.0 as $t).wrapping_neg();
                *self ^= mask & (*self ^ *other);
            }
            fn conditional_swap(a: &mut Self, b: &mut Self, choice: Choice) {
                let mask = (choice.0 as $t).wrapping_neg();
                let t = mask & (*a ^ *b);
                *a ^= t;
                *b ^= t;
            }
        }
    };
}
ct_uint!(u8);
ct_uint!(u64);

impl<const N: usize> ConstantTimeEq for [u8; N] {
    fn ct_eq(&self, other: &Self) -> Choice {
        let mut acc = 0u8;
        for i in 0..N {
            acc |= self[i] ^ other[i];
        }
        Choice((acc == 0) as u8)
    }
}

impl<const N: usize> ConstantTimeEq for [u64; N] {
    fn ct_eq(&self, other: &Self) -> Choice {
        let mut acc = 0u64;
        for i in 0..N {
            acc |= self[i] ^ other[i];
        }
        Choice((acc == 0) as u8)
    }
}
