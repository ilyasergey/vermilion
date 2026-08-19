# 2026-07-20 — dalek-lite acquisition and DL agenda

## Planning inputs

- User direction (this session): pause the Aeneas SHA-3 push; acquire the
  CryptoProver benchmark codebase under `case-studies/`, with README, plan,
  and small probes; then implement every missing Vermilion feature it needs,
  one committed-and-pushed slice at a time, updating logs, docs, differential
  tests, examples, probes, and READMEs per slice.
- Sources studied: the CryptoProver paper ("An AI Approach to Verified
  Production Cryptographic Libraries", arXiv:2608.00965), the
  public harness `ChuyueSun/CryptoProver`, and the benchmark crate
  `Beneficial-AI-Foundation/dalek-lite` at `de9ebf01599fedbbced28b938e2c36c538fe4ae5`
  (BSD-3-Clause; upstream Verus pin `0.2026.01.14.88f7396`, six months older
  than our fork base `c569645bd37b0`).

## Decisions

- dalek-lite enters as `case-studies/dalek-lite/` (external acquisition,
  percolator pattern: probes at top level, `run.sh` green gate, `explore.sh`
  fail-closed boundaries, untracked `upstream/` via `fetch_upstream.sh`).
- Success criterion recorded in its PLAN.md: CryptoProver's result with a
  strictly smaller trusted base (no Z3; the 48-`axiom_*` floor progressively
  proved against Mathlib; residual nonlinear obligations attacked in twins).
- The DL agenda (DL0–DL11) is the operative slice order; the repository
  execution plan gained queue item 0 and SHA-3 queue item 1 is marked PAUSED
  (user, 2026-07-20).

## Commands and outcomes

- All seven probes pass the pinned Verus with full SMT verification
  (`scripts/verus_env.sh` + `rust_verify --crate-type=lib`): 2/2, 1/1, 1/1,
  2/2, 1/1, 1/1, 2/2.
- Vermilion measurements (`scripts/run_example.sh`, fork `0bb5732ae`):
  - `wide_mul_control.rs` — 7/7 obligations automatic (u128 widening core).
  - `choice_assume_spec.rs` — 1/1 automatic: `assume_specification` +
    `external_type_specification` + `uninterp spec fn` over an external type
    already lower end to end.
  - `ghost_high_byte.rs` — 3 obligations: 2 automatic + 1 interactive twin
    (`Bits.shr 8 (Seq.index bytes 31) 7 = 0`; the isolated bit-vector rung
    does not bridge `Seq.index` operands — appended as a driver to issue
    #35's file). Twin kernel-checked.
  - `field_sqrt_choose.rs` — span-mapped refusal at the `Choose` binder
    (new issue: support-choose-in-spec-expressions).
  - `count_loop_isolation.rs` — clean refusal
    (new issue: support-non-isolated-loops).
  - `montgomery_inverse_calc.rs` — DEFECT, not a construct gap: the lemma
    lowers to 4 obligations but the `calc!` expansion span attributes the
    function to `vstd/calc_macro.rs`; output lands in a spurious repo-root
    `vstd/generated/` tree and the manifest is never found (new issue:
    colocate-macro-expanded-functions-with-their-crate).
  - `isolation_driver.rs` — whole-run abort on the first refusal confirms
    the DL1 motivation (`report_unsupported` exits the process,
    `crates/vermilion_direct/src/main.rs:15`); appended as a driver to the
    per-function-lowering-isolation issue.
- First vstd drift point: dalek-lite's `lemma_mul_le` no longer exists at our
  pin; `lemma_mul_upper_bound` is the equivalent (labeled `<MODIFIED CODE>`
  block in the control probe).
- `explore.sh` validates all four expected boundaries; `run.sh` gates the
  three green probes through `CaseDalekLite` (new lakefile library).

## Open risks

- The `explore.sh` calc-defect arm deletes a spurious repo-root `vstd/` tree
  the defect creates; remove that arm together with the DL3 fix.
- Upstream `main` moves fast (2026-07-17 tip); the pin is recorded in
  `fetch_upstream.sh` and README — re-pin deliberately, never implicitly.
- No chacha20 artifact accompanies the public CryptoProver harness; any
  replication would be our own fork of RustCrypto's soft backend (noted in
  the case README's scope).

## Next executable task

DL1 — per-function lowering isolation: continue-on-refusal in
`vermilion_direct` (today `report_unsupported` exits on the first unsupported
function), refusal propagation along the spec-fn reference closure,
per-function dispositions in the manifest/run report, differential guards,
and the `isolation_driver.rs` flip to 1 verified + 1 disposition.

## Same-day addenda (user direction)

- **Probes restructured into `probes/`** with twins in `probes/proofs/` and
  machine output in `probes/generated/` (untracked); the case root is
  reserved for the eventual whole-crate acquisition. Lakefile `CaseDalekLite`
  and both runners updated; validated green after the move.
- **`calc!` needs no dedicated support** (user): the chain's claims already
  lower as ordinary obligations and the Lean twin proves chains directly, so
  DL3 is only the macro-span colocation bug fix — no hint machinery. A
  general "deliberately not needed" assessment (proof-scripting vs semantic
  constructs) is recorded in `case-studies/dalek-lite/PLAN.md` and the case
  README.
