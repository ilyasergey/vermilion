# Percolator — verbatim risk-engine slices

This study pins
[`aeyakovenko/percolator`](https://github.com/aeyakovenko/percolator) at
commit
[`143e68c4917ed0400a27b952f036a5677047cd84`](https://github.com/aeyakovenko/percolator/commit/143e68c4917ed0400a27b952f036a5677047cd84)
(2026-07-10, Apache-2.0). Percolator is a `no_std`, dependency-free
perpetual-futures risk engine. Its production core is concentrated in
[upstream `src/v16.rs`](https://github.com/aeyakovenko/percolator/blob/143e68c4917ed0400a27b952f036a5677047cd84/src/v16.rs)
(16,810 lines) and
[upstream `src/wide_math.rs`](https://github.com/aeyakovenko/percolator/blob/143e68c4917ed0400a27b952f036a5677047cd84/src/wide_math.rs)
(2,170 lines); upstream
decomposes its audit into Kani harnesses, production `kernel_*` helpers,
contracts, and runtime/property tests.

The local copy is deliberately slice-based: this directory carries every
selected upstream executable body, its Verus contract, its Vermilion twin, and
the exact upstream pin instead of vendoring a second 47,000-line checkout.
[`check_verbatim.py`](check_verbatim.py) compares 34 copied body occurrences
(33 distinct upstream functions; `encode_side` appears in two stages) with
`src/v16.rs` and `src/wide_math.rs` in a checkout at the pinned commit.
Whitespace is ignored; for
`active_bitmap_is_empty`, the added Verus loop invariant/decreases clauses are
removed before comparison. No executable statement is rewritten. A named
Verus result binder and contracts are added around each body, and the bitmap
loop gains proof-only annotations. The U256 representation study makes its
tuple field public so contracts can observe it (upstream keeps it private),
but its nine method bodies are unchanged.

## What verifies through Vermilion now

The supported progression is ordered by increasing state and arithmetic
complexity:

| Stage | Copied Rust / persistent Lean twin | Verbatim upstream functions | Verus | Vermilion |
|---|---|---|---:|---:|
| Boolean scalar encoding | [`encode_bool_decidable.rs`](encode_bool_decidable.rs) / [`proofs/encode_bool_decidable/`](proofs/encode_bool_decidable/) | `encode_bool` | 1 obligation | 3 (2 logical + 1 interactive evidence) |
| Policy classification | [`policy_gates.rs`](policy_gates.rs) / [`proofs/policy_gates/`](proofs/policy_gates/) | `auto_crank_plan_requires_caller_observation`, `encode_side`, `opposite_side` | 8 obligations | 8 obligations |
| Saturating scalar arithmetic | [`wide_math_saturating_mul.rs`](wide_math_saturating_mul.rs) / [`proofs/wide_math_saturating_mul/`](proofs/wide_math_saturating_mul/) | [`saturating_mul_u128_u64`](https://github.com/aeyakovenko/percolator/blob/143e68c4917ed0400a27b952f036a5677047cd84/src/wide_math.rs#L1701-L1708) | 1 obligation | 4 (3 automatic + 1 interactive) |
| Compound `Result` risk gate | [`result_gates.rs`](result_gates.rs) / [`proofs/result_gates/`](proofs/result_gates/) | `trade_preflight_risk_gate` | 2 | 4 (3 logical + 1 interactive evidence) |
| Persistent enum codecs | [`enum_codecs.rs`](enum_codecs.rs) / [`proofs/enum_codecs/`](proofs/enum_codecs/) | all encode/decode pairs for side, side mode, asset lifecycle, market mode, backing-bucket status, and recovery reason | 19 | 19 |
| U256 representation + bitwise basics | [`wide_math_u256_basics.rs`](wide_math_u256_basics.rs) / [`proofs/wide_math_u256_basics/`](proofs/wide_math_u256_basics/) | [`new`, `from_u128`, `from_u64`, `lo`, `hi`, `is_zero`, `try_into_u128`, `bitand`, `bitor`](https://github.com/aeyakovenko/percolator/blob/143e68c4917ed0400a27b952f036a5677047cd84/src/wide_math.rs#L242-L429) | 10 | 40 |
| Read-only active bitmap | [`active_bitmap_get.rs`](active_bitmap_get.rs) / [`proofs/active_bitmap_get/`](proofs/active_bitmap_get/) | `active_bitmap_is_empty` (bounded loop) and `active_bitmap_get` (array read, shift, mask) | 5 | 19 |

That is 28 distinct production functions with unchanged executable bodies.
The contracts prove the complete codec truth tables, the unique
caller-observation auto-crank case, opposite-side classification, bitmap
emptiness, out-of-range fail-closed reads, exact bit extraction, Boolean
encoding, the compound stale-risk lock gate, scalar saturating multiplication,
and the construction/readback and bitwise laws for the four-limb U256 representation.
The Boolean and `Result` modules make the
Rust-`bool`/Lean-`Prop` distinction explicit: each carries one
`@[vrml_evidence]` `Decidable` dictionary solved in its persistent twin's
shared evidence unit
([`proofs/encode_bool_decidable/Evidence.lean`](proofs/encode_bool_decidable/Evidence.lean),
[`proofs/result_gates/Evidence.lean`](proofs/result_gates/Evidence.lean)),
then Lean checks the consuming logical VCs. Vermilion uses Verus only as the
`--no-verify` front end in [`run.sh`](run.sh); Lean is the verifier.
The separate [`verify_verus.sh`](verify_verus.sh) establishes the Verus
verdict for every green and blocked annotated slice.

```console
./case-studies/percolator/verify_verus.sh
./case-studies/percolator/run.sh --clean-env
```

As in the other case studies, `generated/` is disposable machine output and
`proofs/` is the user-owned twin (one unit module per function around a shared
`Specs.lean`).
[`proofs/active_bitmap_get/active_bitmap_is_empty.lean`](proofs/active_bitmap_get/active_bitmap_is_empty.lean)
and
[`proofs/active_bitmap_get/active_bitmap_get.lean`](proofs/active_bitmap_get/active_bitmap_get.lean)
contain the kernel-checked loop/bitvector proof blocks retained across
regeneration.

## Exact boundary found

The remaining copied bodies all verify with Verus, but expose separate
Vermilion gaps:

| Driver | Upstream function | First Vermilion boundary |
|---|---|---|
| [`bounded_arithmetic.rs`](bounded_arithmetic.rs) | `adjust_u128` | standalone twin leaves a polymorphic `Option`/`Result` `Inhabited` metavariable stuck |
| [`withdrawal_question_mark.rs`](withdrawal_question_mark.rs) | `apply_backing_provider_earnings_withdraw` | generic uninterpreted `spec_from` reached by `?` |
| [`liquidation_fee_minmax.rs`](liquidation_fee_minmax.rs) | `liquidation_fee_from_raw_fee` | std `Ord::max/min` default-body contract |
| [`active_bitmap_set.rs`](active_bitmap_set.rs) | `active_bitmap_set` | indexed assignment through `&mut [u64; 1]` |
| [`active_bitmap_clear.rs`](active_bitmap_clear.rs) | `active_bitmap_clear` | unary fixed-width `BitNot`; indexed array mutation remains behind it |

[`explore.sh`](explore.sh) gates the four lowering refusals with
`--expect-unsupported`:

```console
./case-studies/percolator/explore.sh
```

The remaining Lean-statement defect is not presented as a negative
verification test: `bounded_arithmetic.rs` has a true contract and remains a
Verus-verified regression driver for the separate polymorphic-type ambiguity.
Unlike the fixed evidence gap, `Inhabited ?m` does not yet identify a concrete
class target for an interactive evidence obligation.

The clean implementation items are tracked in the synchronized issue corpus:

- [standalone generated-twin elaboration](../../docs/issues/generated-twins-must-elaborate-without-hidden-typeclass-context.md) (remaining polymorphic type ambiguity);
- [generic spec functions used by `?`](../../docs/issues/lower-generic-spec-functions-used-by-question-mark.md);
- [std `Ord::min/max` default bodies](../../docs/issues/support-std-ord-min-max-default-body-contracts.md);
- [indexed fixed-array mutation](../../docs/issues/support-indexed-mutation-of-fixed-size-arrays.md);
- [unary `BitNot`](../../docs/issues/support-bitnot.md);
- [per-function lowering isolation](../../docs/issues/per-function-lowering-isolation.md).

The Boolean/`Result` class-dictionary boundary was resolved by
[interactive Lean typeclass evidence](../../docs/issues/closed/generate-interactive-lean-typeclass-evidence-obligations.md).

## `wide_math.rs`: the exact current boundary

The complete 2,170-line file is **not** a verbatim Verus/Vermilion target yet.
Wrapping the production file in `verus!` first exposes a Verus visibility
failure: public constants construct `U256`/`I256` through private tuple fields.
Making those fields public for diagnosis reaches unsupported Verus core APIs:
`u128::overflowing_add`, `u128::overflowing_sub`, `u128::leading_zeros`,
`i128::unsigned_abs`, and the `core::fmt::Arguments`/panic-formatting path used
by message-bearing assertions. This happens before Vermilion receives SST.

The two green studies above identify the useful supported subset precisely:
the standalone saturating multiply is declaration-and-body verbatim apart from
its Verus contract/result binder; the nine U256 representation/bitwise methods are
body-verbatim but need the documented field-visibility adaptation. Everything
after this leaf layer combines some subset of helper-call specifications,
multi-limb checked arithmetic, `?`, operator traits, formatted panics,
division loops, nontrivial shifts, or indexed mutation. Those should be
admitted one function at a time after their actual first boundary is supported,
not described as whole-file verification.

## What not to take verbatim yet

The next arithmetic helpers (`position_delta_increases_risk`,
`same_side_risk_reduction_or_flat_obligation`) call `i128::signum` and
`i128::unsigned_abs`, for which this Verus revision itself asks for trusted
`assume_specification` declarations. They therefore do not meet this study's
“Verus verifies the copied implementation” bar without expanding Verus's std
specification base.

The remaining U256/I256 arithmetic and the stateful v16 kernels are later
stages, not honest near-term verbatim wins. They combine multi-limb fixed
arrays, operator traits, checked arithmetic, `?`, indexed mutation, large
mutable views over slices, and thousands of lines of cross-structure
invariants. After the issues above, per-function lowering isolation should be
used to admit small production kernels one at a time rather than extracting
either large module manually.

## Upstream baseline

At the pin, both documented runtime suites pass:

- `cargo test --locked`: 129 tests passed;
- `cargo test --locked --features fuzz`: 158 tests passed.

Given a local checkout at the pinned commit, this command rechecks the pin,
body identity, and both suites:

```console
./case-studies/percolator/check_upstream.sh /path/to/percolator
```

The repository-wide Apache-2.0 [`LICENSE`](../../LICENSE) covers these copied
Apache-2.0 sources; each slice also carries an SPDX header and exact provenance.
