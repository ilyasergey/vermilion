# dalek-lite vstd drift assessment (DL7)

*Measured 2026-07-20 against upstream pin `de9ebf015` (Verus release
`0.2026.01.14.88f7396`, January vstd) and our fork checkout
`486008364` (July vstd, base `c569645bd37b0`). Method: mechanical sweep
of every vstd name the crate can reach, resolved against both vstd
trees; scripts inline in the session log
(`logs/2026-07-20-dalek-lite-dl7-vstd-drift.md`).*

## The crate's vstd surface

`use vstd::` sites: 383, resolving to a deliberately narrow module set —
`prelude::*`, `arithmetic::{div_mod, mul, power, power2}`, `bits::*`,
`seq::*`/`seq_lib::*`, and `calc`. No vstd broadcast groups are used
(every `group_*` name in the crate is its own: curve group-order lemma
groups in `scalar.rs`/`scalar52_specs.rs`).

## Resolution sweep

| Surface | Count | Verdict |
|---|---|---|
| Explicitly imported vstd lemmas (`lemma_small_mod`, `lemma_mod_bound`, `lemma_mul_inequality`, `lemma_mul_is_associative`, `lemma2_to64`, `lemma2_to64_rest`, `lemma_pow2_adds`, `lemma_pow2_pos`, `lemma_pow2_unfold`, `lemma_pow2_strictly_increases`) | 10 | **all present** in our July vstd, signatures unchanged |
| Named vstd spec fns (`pow2`, `pow`) | 2 | present |
| `vstd::bits` per-width lemmas reached via globs (`lemma_u64_shl_is_mul`, `lemma_u64_shr_is_div`, `lemma_u64_pow2_no_overflow`, `lemma_u64_low_bits_mask_is_mod`, …) | 8 named at call sites | **all present** (macro-generated in `bits.rs`, both pins) |
| All `lemma_*` **call sites** in the crate | 918 distinct names (recorded sweep) | every name resolves to a crate-local declaration (804 `proof fn`s + macro instantiations in `lemmas/**`) or to our vstd; **zero unresolved** |

## The `lemma_mul_le` correction

`case-studies/dalek-lite/probes/wide_mul_control.rs` (DL0) recorded
"`lemma_mul_le` is gone at our pin" as the first measured drift point.
The sweep shows this was a **misattribution**: `lemma_mul_le` is
dalek-lite's *own* helper
(`curve25519-dalek/src/lemmas/common_lemmas/mul_lemmas.rs:28`,
`(a1, b1, a2, b2): a1 ≤ b1 ∧ a2 ≤ b2 → a1·a2 ≤ b1·b2` over `nat`), not a
vstd export at either pin — the January vstd has no `lemma_mul_le`
either (the grep that suggested otherwise prefix-matched
`lemma_mul_left_inequality`). The one-file probe could not import a
crate-local lemma and swapped in vstd's `lemma_mul_upper_bound`, which
is the correct *distillation* accommodation — but it is not vstd drift,
and that particular lemma needs no vstd substitution in the whole-crate
acquisition: the crate carries its own lemma layer.

## Verdict and scope

The recorded sweep found no missing or changed vstd symbols in the surface
it examined at these two pins. This is a symbol-resolution result. It does
not establish source identity, complete front-end compatibility, or the
absence of acquisition accommodations.

The probe series encountered the front-end mutable-reference syntax migration
(`*x` to `*final(x)` in postconditions). The subsequent Layer Set A acquisition
also introduced labeled field-source and boundary accommodations. The
[fidelity record](dalek-lite-layer-a-scoreboard.md#verification-subject-fidelity)
lists them, including the adapted `field_u64.rs`; mounted lemma/spec files
come directly from the upstream pin.

The measurements here remain dated 2026-07-20. Current proof completion and
remaining assumptions are recorded in the
[case-study status](../../case-studies/dalek-lite/README.md#current-verification-status).
