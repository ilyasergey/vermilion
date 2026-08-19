// SPDX-License-Identifier: BSD-3-Clause
//
// LAYER SET A ACQUISITION (dalek-lite DL8): the field-representation /
// reduction cone of Beneficial-AI-Foundation/dalek-lite at
// de9ebf01599fedbbced28b938e2c36c538fe4ae5, WHOLE FILES, acquired
// verbatim through `#[path]` module declarations into the pinned
// `upstream/` tree (materialize it with ../fetch_upstream.sh; the tree
// itself is untracked and never edited).
//
// Modules acquired verbatim (the "9 field modules"):
//   1. backend/serial/u64/field.rs          — the target: FieldElement51
//   2. backend/serial/u64/subtle_assumes.rs — constant-time contracts
//   3. specs/core_specs.rs                  — byte/nat views
//   4. specs/field_specs.rs                 — field-level specification
//   5. specs/field_specs_u64.rs             — p(), 2^51 bounds
//   6. specs/primality_specs.rs             — is_prime + axioms
//   7. lemmas/common_lemmas/* (7 files)     — bit/div-mod/mask/mul/pow/shift/to-nat
//   8. lemmas/field_lemmas/*  (13 files)    — the backend field.rs closure
//   9. (this file)                          — crate-root plumbing + stubs
//
// <MODIFIED CODE> Distillation stubs, exactly as the probe series does
// them — each replaces an out-of-cone crate module or external crate
// with the minimal verbatim extraction the field cone references:
//   - `subtle`: the external crate (invisible to Verus, like the probes'
//     stub); Choice/CtOption/traits with real constant-time bodies.
//   - `constants`: only `SQRT_M1` (verbatim value from
//     backend/serial/u64/constants.rs; the rest of that file pulls the
//     Edwards basepoint tables — out of cone).
//   - `core_assumes`: empty (field.rs only consumes `zeroize_limbs5`,
//     which is `#[cfg(feature = "zeroize")]` — off here as in the
//     default build).
//   - `edwards` + `specs::edwards_specs`: the EdwardsPoint struct (its
//     `#[verifier::type_invariant]` omitted — nothing here constructs
//     one), the closed accessors + `lemma_unfold_edwards`, and the
//     boundedness predicates — the closure of `add_lemmas.rs`'s single
//     pub(crate) Edwards lemma.
//   - `specs::proba_specs`: the uniformity predicates over
//     `FieldElement51` directly (upstream states them over the frontend
//     alias `crate::field::FieldElement = FieldElement51`, out of cone)
//     plus `axiom_from_bytes_uniform`.
// </MODIFIED CODE>

use vstd::prelude::*;

use subtle::{Choice, ConditionallySelectable};

// ---- verbatim acquisitions ----

#[path = "upstream/curve25519-dalek/src/lemmas"]
pub mod lemmas {
    #[path = "common_lemmas"]
    pub mod common_lemmas {
        pub mod bit_lemmas;
        pub mod div_mod_lemmas;
        pub mod mask_lemmas;
        pub mod mul_lemmas;
        pub mod number_theory_lemmas;
        pub mod pow_lemmas;
        pub mod shift_lemmas;
        pub mod sum_lemmas;
        pub mod to_nat_lemmas;
    }
    #[path = "field_lemmas"]
    pub mod field_lemmas {
        pub mod add_lemmas;
        pub mod as_bytes_lemmas;
        pub mod compute_q_lemmas;
        pub mod from_bytes_lemmas;
        pub mod limbs_to_bytes_lemmas;
        pub mod load8_lemmas;
        pub mod mul_lemmas;
        pub mod negate_lemmas;
        pub mod pow2_51_lemmas;
        pub mod pow2k_lemmas;
        pub mod reduce_lemmas;
        pub mod to_bytes_reduction_lemmas;
        pub mod u64_5_as_nat_lemmas;
    }
}

#[path = "upstream/curve25519-dalek/src/specs"]
pub mod specs {
    #[path = "core_specs.rs"]
    pub mod core_specs;
    #[path = "field_specs.rs"]
    pub mod field_specs;
    #[path = "field_specs_u64.rs"]
    pub mod field_specs_u64;
    #[path = "primality_specs.rs"]
    pub mod primality_specs;
    #[path = "scalar52_specs.rs"]
    pub mod scalar52_specs;

    // <MODIFIED CODE> edwards_specs distillation: the closure of
    // `field_lemmas/add_lemmas.rs`'s single Edwards lemma — the accessors,
    // `lemma_unfold_edwards`, and the boundedness predicate, from upstream
    // specs/edwards_specs.rs. [visibility accommodation] upstream's
    // accessors are `closed`; the SST export carries a closed body only
    // for the owning bucket, so from the acquisition root they would
    // arrive uninterpreted and `lemma_unfold_edwards` would be unprovable
    // (Verus itself proves it inside the module). `open` here until the
    // fork exports module-owned artifacts cross-bucket — same class as
    // the termination-check gap (docs/issues/
    // carry-decreases-measures-for-cross-module-recursive-spec-fns.md).
    pub mod edwards_specs {
        use vstd::prelude::*;
        use crate::specs::field_specs::*;

        verus! {

        pub(crate) open spec fn edwards_x(
            point: crate::edwards::EdwardsPoint,
        ) -> crate::backend::serial::u64::field::FieldElement51 {
            point.X
        }

        pub(crate) open spec fn edwards_y(
            point: crate::edwards::EdwardsPoint,
        ) -> crate::backend::serial::u64::field::FieldElement51 {
            point.Y
        }

        pub(crate) open spec fn edwards_z(
            point: crate::edwards::EdwardsPoint,
        ) -> crate::backend::serial::u64::field::FieldElement51 {
            point.Z
        }

        pub(crate) open spec fn edwards_t(
            point: crate::edwards::EdwardsPoint,
        ) -> crate::backend::serial::u64::field::FieldElement51 {
            point.T
        }

        /// Equates closed spec accessors (`edwards_x`, …) with actual struct
        /// fields (`.X`, …).
        pub(crate) proof fn lemma_unfold_edwards(point: crate::edwards::EdwardsPoint)
            ensures
                edwards_x(point) == point.X,
                edwards_y(point) == point.Y,
                edwards_z(point) == point.Z,
                edwards_t(point) == point.T,
        {
        }

        /// EdwardsPoint invariant: all coordinate limbs must be 52-bounded.
        pub(crate) open spec fn edwards_point_limbs_bounded(point: crate::edwards::EdwardsPoint) -> bool {
            fe51_limbs_bounded(&edwards_x(point), 52) && fe51_limbs_bounded(&edwards_y(point), 52)
                && fe51_limbs_bounded(&edwards_z(point), 52) && fe51_limbs_bounded(&edwards_t(point), 52)
        }

        } // verus!
    }
    // </MODIFIED CODE>

    // <MODIFIED CODE> proba_specs distillation: the uniformity surface the
    // field cone references, stated over FieldElement51 (upstream's
    // frontend `FieldElement` is exactly this type for the u64 backend).
    pub mod proba_specs {
        use vstd::prelude::*;
        use vstd::arithmetic::power2::pow2;
        use crate::backend::serial::u64::field::FieldElement51;
        use crate::specs::core_specs::*;
        use crate::specs::field_specs::*;

        verus! {

        /// Uniform distribution predicate for a byte slice.
        pub uninterp spec fn is_uniform_bytes(bytes: &[u8]) -> bool;

        /// Uniform distribution predicate for a field element.
        pub uninterp spec fn is_uniform_field_element(fe: &FieldElement51) -> bool;

        /// AXIOM (upstream trusted floor, verbatim): clearing bit 255
        /// preserves uniformity up to negligible bias.
        pub proof fn axiom_from_bytes_uniform(bytes: &[u8; 32], fe: &FieldElement51)
            requires
                fe51_as_nat(fe) == u8_32_as_nat(bytes) % pow2(255),
            ensures
                is_uniform_bytes(bytes) ==> is_uniform_field_element(fe),
        {
            admit();
        }

        } // verus!
    }
    // </MODIFIED CODE>
}

#[path = "upstream/curve25519-dalek/src/backend"]
pub mod backend {
    #[path = "serial"]
    pub mod serial {
        #[path = "u64"]
        pub mod u64 {
            // The acquisition copy carrying the labeled `final()` mut-ref
            // migration edits (see its header); everything else verbatim.
            #[path = "../../../../../../field_u64.rs"]
            pub mod field;

            // <MODIFIED CODE> scalar distillation: only the Scalar52
            // struct (verbatim from backend/serial/u64/scalar.rs:96),
            // which specs/scalar52_specs.rs — pulled by
            // primality_specs — needs as its subject type. The scalar
            // layer's own verification is the next DL slice up the cone.
            pub mod scalar {
                use vstd::prelude::*;

                verus! {

                pub struct Scalar52 {
                    pub limbs: [u64; 5],
                }

                } // verus!
            }
            // </MODIFIED CODE>

            // <MODIFIED CODE> subtle_assumes distillation: the whole
            // upstream file also gives constant-time contracts to the
            // curve-model point types (AffineNielsPoint, ProjectiveNiels,
            // Montgomery) — out of the field cone. This is the verbatim
            // field-relevant subset (upstream lines 14-84 and 215-260),
            // with the one measured front-end accommodation: our newer
            // pinned Verus requires `*final(x)` for the final value of a
            // `&mut` parameter in ensures (upstream writes bare `*x`).
            pub mod subtle_assumes {
                use subtle::{Choice, ConditionallySelectable, ConstantTimeEq, CtOption};
                use vstd::prelude::*;

                verus! {

                #[verifier::external_type_specification]
                #[verifier::external_body]
                #[allow(dead_code)]
                pub struct ExChoice(Choice);

                #[verifier::external_trait_specification]
                pub trait ExConstantTimeEq {
                    type ExternalTraitSpecificationFor: ConstantTimeEq;

                    fn ct_eq(&self, other: &Self) -> Choice;
                }

                #[verifier::external_type_specification]
                #[verifier::external_body]
                #[verifier::reject_recursive_types(T)]
                #[allow(dead_code)]
                pub struct ExCtOption<T>(CtOption<T>);

                /// Spec-level view of Choice as a boolean
                /// true = Choice(1), false = Choice(0)
                pub uninterp spec fn choice_is_true(c: Choice) -> bool;

                pub assume_specification[ Choice::from ](u: u8) -> (c: Choice)
                    ensures
                        (u == 1) == choice_is_true(c),
                ;

                pub assume_specification[ Choice::unwrap_u8 ](c: &Choice) -> (u: u8)
                    ensures
                        choice_is_true(*c) ==> u == 1u8,
                        !choice_is_true(*c) ==> u == 0u8,
                ;

                #[verifier::external_body]
                pub fn select(a: &u64, b: &u64, c: Choice) -> (res: u64)
                    ensures
                        !choice_is_true(c) ==> res == *a,
                        choice_is_true(c) ==> res == *b,
                {
                    u64::conditional_select(a, b, c)
                }

                pub assume_specification[ <u64 as ConditionallySelectable>::conditional_swap ](
                    a: &mut u64,
                    b: &mut u64,
                    choice: Choice,
                )
                    ensures
                        !choice_is_true(choice) ==> (*final(a) == *old(a) && *final(b) == *old(b)),
                        choice_is_true(choice) ==> (*final(a) == *old(b) && *final(b) == *old(a)),
                ;

                pub assume_specification[ <u64 as ConditionallySelectable>::conditional_assign ](
                    a: &mut u64,
                    b: &u64,
                    choice: Choice,
                )
                    ensures
                        !choice_is_true(choice) ==> *final(a) == *old(a),
                        choice_is_true(choice) ==> *final(a) == *b,
                ;

                #[verifier::external_body]
                pub fn conditional_select_u64(a: &u64, b: &u64, choice: Choice) -> (res: u64)
                    ensures
                        !choice_is_true(choice) ==> res == *a,
                        choice_is_true(choice) ==> res == *b,
                {
                    select(a, b, choice)
                }

                #[verifier::external_body]
                pub fn conditional_swap_u64(a: &mut u64, b: &mut u64, choice: Choice)
                    ensures
                        !choice_is_true(choice) ==> (*final(a) == *old(a) && *final(b) == *old(b)),
                        choice_is_true(choice) ==> (*final(a) == *old(b) && *final(b) == *old(a)),
                {
                    u64::conditional_swap(a, b, choice)
                }

                #[verifier::external_body]
                pub fn conditional_assign_u64(a: &mut u64, b: &u64, choice: Choice)
                    ensures
                        !choice_is_true(choice) ==> *final(a) == *old(a),
                        choice_is_true(choice) ==> *final(a) == *b,
                {
                    a.conditional_assign(b, choice)
                }

                } // verus!
            }
            // </MODIFIED CODE>
        }
    }
}

// <MODIFIED CODE> constants distillation: only SQRT_M1 (verbatim value
// from backend/serial/u64/constants.rs; the rest of that file carries the
// Edwards basepoint tables, out of the field cone).
pub mod constants {
    use vstd::prelude::*;
    use crate::backend::serial::u64::field::FieldElement51;

    verus! {

    pub const SQRT_M1: FieldElement51 = FieldElement51 {
        limbs: [
            1718705420411056,
            234908883556509,
            2233514472574048,
            2117202627021982,
            765476049583133,
        ],
    };

    } // verus!
}
// </MODIFIED CODE>

// <MODIFIED CODE> core_assumes distillation: the byte-sequence view
// helpers the field cone references, verbatim from core_assumes.rs
// (`zeroize_limbs5` is `#[cfg(feature = "zeroize")]`, off here as in the
// default build; the hash/point specs are out of cone).
pub mod core_assumes {
    use vstd::prelude::*;

    verus! {

    // Build a Seq<u8> from fixed arrays (for specs)
    pub open spec fn seq_from32(b: &[u8; 32]) -> Seq<u8> {
        b@
    }

    // Convert a Seq<u8> to a [u8; 32] array (requires seq.len() >= 32)
    pub open spec fn seq_to_array_32(s: Seq<u8>) -> [u8; 32] {
        [
            s[0], s[1], s[2], s[3], s[4], s[5], s[6], s[7],
            s[8], s[9], s[10], s[11], s[12], s[13], s[14], s[15],
            s[16], s[17], s[18], s[19], s[20], s[21], s[22], s[23],
            s[24], s[25], s[26], s[27], s[28], s[29], s[30], s[31],
        ]
    }

    } // verus!
}
// </MODIFIED CODE>

// <MODIFIED CODE> edwards + edwards_specs distillation: the closure of
// `field_lemmas/add_lemmas.rs`'s single pub(crate) Edwards lemma. The
// struct's `#[verifier::type_invariant]` is omitted — nothing in the
// field cone constructs an EdwardsPoint.
pub mod edwards {
    use vstd::prelude::*;
    use crate::backend::serial::u64::field::FieldElement51;

    verus! {

    pub struct EdwardsPoint {
        pub(crate) X: FieldElement51,
        pub(crate) Y: FieldElement51,
        pub(crate) Z: FieldElement51,
        pub(crate) T: FieldElement51,
    }

    } // verus!
}
// </MODIFIED CODE>

fn main() {}
