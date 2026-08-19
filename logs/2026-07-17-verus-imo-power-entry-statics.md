# 2026-07-17 — Verus IMO/power/Entry/statics progression

## Scope

Acquire the next four pinned-Verus examples in increasing implementation
complexity, establish their stock-Verus baselines, extend Vermilion only where
the semantics are understood, retain interactive Lean proofs as first-class
artifacts, and turn the remaining boundaries into reproducible case studies
and synchronized issues.

Pinned source: `verus-lang/verus` commit
`c569645bd37b00b23d349ef64bafee0aa0a49242`, MIT.

## Acquisition and baselines

All local sources compare byte-for-byte with `.verus-checkout/examples/`:

| Study | SHA-256 | Verus baseline |
|---|---|---|
| `imo-1988-6` | `6bb4485af7c9f8a8cd0910e793a70ffa1009c4fe8e64ea3a2d8a2f0527a4b7ce` | 17 verified |
| `power-of-2` | `5d7ede0901bf72ad850515b7f0ef5cb24e88188b08147de091a90df00cb6132a` | 18 verified |
| `entry-api` | `23b6881384bf24931c618579a0d9e6a2d9fabbab8f28a6235a4073cc7060e2af` | 3 verified |
| `statics` | `e16de160cb4e833da5731021d141f1184e2acd5467bfad99c1b0df1d287825e9` | 9 verified |

Each directory has a provenance/design README and a `verify_verus.sh` that
checks the byte identity before invoking Verus.

## Implemented slices

1. `AssertQuery { mode: NonLinear }` lowers to the existing isolated
   `(loop …)` query shape. Only type facts, fresh type-invariant variables,
   and the query's explicit body are visible. The enclosing H is excluded:
   it contains the conclusion Verus has already assumed for downstream use.
   c141/c142 guard the positive and circular-negative directions.
2. Named return destinations enter `var_types` before body lowering, so
   values returned by two branch arms can form a typed SSA join. c143.
3. VIR `Clip` nodes retain exact meaning: `nat` saturation, unsigned modulo
   `2^w`, signed two's-complement interpretation; `char` remains fail-closed.
   c144/c145 pin explicit wrapping `u32` multiplication. This required a
   collection-cardinality-aware side-condition discharger and ground
   normalization between recursive unfolds to preserve prior automation.

No new textual IR node was needed; `docs/ir.md`, normative `docs/vcgen.md`,
`docs/trust.md`, and `DESIGN.md` record the lowering correspondence and trust
argument.

## Case-study results

- `imo_1988_6.rs`: 67 Lean obligations, 66 automatic + 1 interactive. The
  integer `a² ≠ 2` proof in the persistent twin bounds `a`, enumerates the
  integer cases, and normalizes them.
- `power_of_2.rs`: 57 obligations, 40 automatic + 17 interactive. The twin
  uses BitVec conversion facts and explicit recursive arithmetic; helper
  lemmas are in the preserved user section.
- `entry_api.rs`: expected fail-closed at the generic bodyless vstd `view`.
  The next progression is explicit generic type applications, std Entry view
  contracts, then returned-`&mut` prophecy/owner mutation.
- `statics.rs`: expected fail-closed at `StaticVar(GLOBAL_COUNTER)`. Full
  support requires globals/initialization plus M5 ghost memory and M6 atomic
  ghost protocols; it is not smuggled into the sequential model.

## Verification commands

```console
./case-studies/imo-1988-6/verify_verus.sh
./case-studies/power-of-2/verify_verus.sh
./case-studies/entry-api/verify_verus.sh
./case-studies/statics/verify_verus.sh
./case-studies/imo-1988-6/run.sh
./case-studies/power-of-2/run.sh
./case-studies/entry-api/explore.sh
./case-studies/statics/explore.sh
python3 scripts/run_differential.py
./scripts/run_suite.sh
```

Final measured gate: 144/144 verdict parity and 69/69 failure-span agreement.
The full `scripts/run_suite.sh` gate also passed: all 46 example/case-study
runners, deterministic emission, incrementality, ill-typed rejection, and
the typeclass-evidence lifecycle. Exact clipping changed existing theorem
statements where Verus had inserted `Clip`; the persistent interactive twins
for binary search, both merge-sort variants, primes, vector reverse, and the
affected loop/trait/vector examples were migrated and kernel-checked rather
than weakened or regenerated with admissions.

The Entry probe also exposed an editor-only presentation gap: its first
lowering refusal is spanned in imported vstd, so the VS Code extension had no
`entry_api.rs` function to mark and did not retain the warning as a per-file
result. Extension 0.9.6 maps such dependency-level refusals to an explicit
module outcome (all functions unsupported), preserves that outcome across
refresh/focus changes, and is guarded by Node unit tests that distinguish
source-local from dependency-level refusal mapping.

Follow-up editor fix (0.9.7): the original module fallback underlined one
character of the first `fn`, which was visible but did not identify the
active-source construct that introduced the dependency. Dependency refusals
now resolve the external file back to the pinned checkout, underline the best
matching Rust `use` target (`vstd::std_specs::hash::*` for Entry API), and add
the exact external span as related information. Exact, grouped, and unrelated
imports have pure Node regression tests; the all-functions-unsupported verdict
remains conservative because lowering still stopped before obligation
emission.

## Issues

Closed implementation records cover isolated nonlinear queries, exact VIR
clips, and named-result typing. Open records cover the staged standard
`HashMap::entry` surface and the semantics required for statics/atomics. The
existing generic bodyless-spec issue now records both `?` and HashMap-view
drivers.
