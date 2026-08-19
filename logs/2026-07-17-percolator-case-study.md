# 2026-07-17 — Percolator corpus acquisition

## Goal and plan

Acquire a commit-pinned external Rust project, establish its upstream baseline,
select production functions whose executable bodies can stay unchanged while
adding Verus specifications, order them by complexity, measure the exact
Vermilion boundary, synchronize clean feature gaps with GitHub issues, update
the live plans/status documents, commit, and stop.

The selected project is
[`aeyakovenko/percolator`](https://github.com/aeyakovenko/percolator), an
Apache-2.0 `no_std` perpetual-futures risk engine. Pin:
`143e68c4917ed0400a27b952f036a5677047cd84` (2026-07-10,
“Prevent same-trade OI masking (#109)”).

## Upstream baseline and design inventory

- `src/v16.rs`: 16,810 lines; account-local risk engine, persistent account
  codecs/views, bounded helpers and state transitions.
- `src/wide_math.rs`: 2,170 lines; U256/I256 arithmetic.
- Upstream proof inventory reported in its README: 244 main Kani harnesses,
  11 arithmetic harnesses, 38 in-module harnesses, 51 contract proofs, 17
  production kernels, and 55 public `*_not_atomic` APIs.
- `cargo test --locked`: **129 passed**.
- `cargo test --locked --features fuzz`: **158 passed**.

The local copy is the slice-based `case-studies/percolator/`: selected bodies,
contracts, twins, pin/provenance, and reproduction scripts. It intentionally
does not vendor build output or a second full 47,000-line checkout.
`check_verbatim.py` checked 24 local body occurrences (23 distinct upstream
functions) against the pinned `src/v16.rs`; whitespace and the proof-only loop
annotations are the only normalized material.

## Increasing-complexity result

Green through Verus and Vermilion (Lean is the only verifier in `run.sh`):

1. `policy_gates.rs`: auto-crank caller-observation classification,
   `encode_side`, and `opposite_side` — 8 Lean obligations.
2. `enum_codecs.rs`: complete encode/decode truth tables for side, side mode,
   asset lifecycle, market mode, backing-bucket status, and recovery reason —
   19 Lean obligations.
3. `active_bitmap_get.rs`: bitmap emptiness (bounded loop) and bit extraction
   (fixed-array read, shifts, mask) — 19 Lean obligations.

Total: **16 distinct unchanged production functions, 46 Lean obligations**,
all persistent twins kernel-checked. `verify_verus.sh` also verifies all green
and blocker drivers: 49 Verus proof obligations across ten files, zero errors.

Verus-green, Vermilion-blocked bodies:

- `encode_bool`: standalone generated theorem lacks `Decidable` evidence for
  `iteP` over a proposition-valued exec bool;
- `trade_preflight_risk_gate`: the same conditional-join issue over `Result`;
- `adjust_u128`: the standalone twin leaves a polymorphic
  `Option`/`Result` `Inhabited` metavariable stuck;
- `apply_backing_provider_earnings_withdraw`: `?` reaches generic opaque
  `spec_from`, whose type parameters are not lowered;
- `liquidation_fee_from_raw_fee`: std `Ord::max/min` default-body contracts;
- `active_bitmap_set`: indexed mutation through `&mut [u64; 1]`;
- `active_bitmap_clear`: unary fixed-width `BitNot`, with indexed array
  mutation behind it.

`position_delta_increases_risk` and
`same_side_risk_reduction_or_flat_obligation` are not admitted: the pinned
Verus itself lacks std specifications for `i128::{signum,unsigned_abs}` and
requests trusted `assume_specification`, which violates the verbatim
implementation-verification bar for this study.

## Issue synchronization

Created locally and synchronized successfully with GitHub via
`scripts/sync_issues.py --push`:

- #18 — generated twins must elaborate without hidden typeclass context;
- #19 — generic spec functions used by `?`;
- #20 — per-function lowering isolation for large crates;
- #21 — unary `BitNot`;
- #22 — indexed mutation of fixed-size arrays through mutable references;
- #23 — std `Ord::min/max` default-body contracts.

The sync also reconciled closed issue #17. The issue Markdown files remain the
single source mirrored to GitHub.

## Reproduction commands

```console
./case-studies/percolator/check_verbatim.py /path/to/percolator
./case-studies/percolator/verify_verus.sh
./case-studies/percolator/run.sh --clean-env
./case-studies/percolator/explore.sh --clean-env
python3 scripts/sync_issues.py --push
```

`run.sh`: 46/46 Lean obligations and all three twins kernel-check.
`explore.sh`: four expected fail-closed lowering boundaries reproduced.
`lake build CasePercolator`, `./scripts/build.sh`, and the full differential
harness also pass; differential parity remains 137/137 with 66/66 matching
failure spans.

No VC-generator implementation changed in this stage, so `docs/vcgen.md` is
unchanged. Every issue that would change lowering or VC shape explicitly
requires the same-slice tests and documentation updates when implemented.

## Next executable task

Stop at this committed boundary. On an explicit next command, either implement
one Percolator-driven issue as a complete tested feature slice (the standalone
twin-elaboration defect is the smallest/highest-leverage candidate), or acquire
the next project/Verus driver from `docs/reports/target-projects.md`.
