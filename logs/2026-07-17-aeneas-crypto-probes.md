# 2026-07-17 — Aeneas crypto subsumption: probes, first verified SymCrypt functions, spec bridge

Session goal (user): start executing `case-studies/aeneas/PLAN.md` — assess
what Vermilion is missing for verified crypto by pushing **unmodified**
Rust bodies (contracts only added) through the pipeline, and construct
the first same-specification proof against the Aeneas/SymCRust side.

## Done

- **Probe suite** `case-studies/aeneas/probes/` (10 files + non-asserting
  `run.sh` driver + README): verbatim bodies from curve25519-dalek (via
  the Aeneas corpus), AeneasVerif/sha3.rs, and microsoft/SymCrypt
  `feature/verifiedcrypto` `SymCRust/src/mlkem/ntt.rs`. Two
  `*_noasserts.rs` accommodation variants (Verus rejects
  `debug_assert!`).
- **First verified SymCrypt functions in Vermilion**:
  - `mod_reduce` (branchless masking): 2 obligations, 1 auto + 1
    interactive.
  - `mont_mul` (Montgomery multiplication under the ML-KEM NTT): 10
    obligations, 5 auto + 5 interactive — `result < Q ∧ result·2^16 ≡
    a·b (mod Q)`. Twin proofs rest on two bridge lemmas
    (shr-16↔div-2^16, band-ffff↔mod-2^16) via `BitVec`/
    `Nat.and_two_pow_sub_one_eq_mod`.
  - dalek limb product `m` (u64→u128): fully automatic.
- **Spec bridge** `probes/proofs/symcrust_mont_mul_specbridge.lean`
  (kernel-checked, in the new `CaseAeneasProbes` Lake lib): packaged
  single statements `MontMulPre`/`MontMulSpec`/`mont_mul_model` in the
  twin's user section; one named implication `mont_mul_spec :
  MontMulPre → MontMulSpec (mont_mul_model …)` proved by chaining the
  generated VCs verbatim; one `iff` `MontMulSpec_iff_symcrust` against
  SymCRust's `Symcrust.mont_reduce.spec` form (`ZMod q` inverse;
  `(2^16 : ZMod 3329)⁻¹.val = 169` by `decide`; their source pinned at
  commit `c2e575ace0ea`, MontReduction.lean L28-45); composition
  corollary = one application. Learned: `vrml_sync` hoists user
  sections above obligations, so the implication lives in the bridge.
- **Gap matrix** `case-studies/aeneas/gap-matrix.md`; PLAN.md corrected
  from measurements (C0 blocker is array-repeat initializers, a
  #19-class generic opaque vstd spec fn — not #22; sha3.rs's tuple-
  indexed state type is Verus-bounded, C2 retargeted to plain-array
  Keccak; C4 step 1 demonstrated).
- **Issues filed**: `lower-array-repeat-initializers` (feature, vcgen),
  `bits-bridge-lemmas-and-wrap-collapse` (feature; also records that
  `omega` fails on stacked div/mod atoms — twins collapse wraps
  stepwise), `accept-debug-assert-in-verified-bodies` (feature),
  `interactive-highlight-shown-for-failed-twin-proofs` (bug,
  vscode-extension; observed live on `mod_reduce(res)` during this
  session).

## Verdicts (probes/run.sh)

3 verified end-to-end; 1 Vermilion lowering refusal
(`spec_array_fill_for_copy_type`); 6 Verus front-end boundaries
(`debug_assert!` ×2, custom `IndexMut`/tuple patterns ×3, iterator
adapters ×1).

## Next

- Land array-repeat lowering → re-run `dalek_mul_internal` → acquire
  `case-studies/curve25519/` with its dalek `asNat` bridge (PLAN C0
  gate).
- Promote the twin's Bits bridge lemmas into `Vermilion.Bits` (+
  wrap-collapse rung) and re-measure automation on the SymCrypt twins.
- `sync_issues.py --push` for the four new issue files (not run this
  session).

## Addendum (same day, staged execution)

- **Stage 1 landed** (commit `feat(vcgen): lower array-repeat literals
  and indexed array destinations`): `[v; N]` via the vstd-mirror
  registry (`Vermilion.Seq.fill`, const-generic length as leading Int
  argument); indexed assignment destinations (`DestProj`) for local
  arrays and `&mut [T; N]`; plus a latent prophecy-staleness fix
  (early-return `has_resolved` snapshots shadowed the live path —
  return-site resolutions now re-snapshot; call-created futures kept
  immutable via `call_futures`). Gates: differential 146/146 + new
  c146/c147; `dalek_mul_internal` lowers fully; percolator
  `active_bitmap_set` 10/11 (last obligation pinned to #18's
  typed-`Result` ctor rendering; its statement cannot even elaborate,
  so the twin is parked in the session scratchpad). #22 closed.
- **Verus fork live** (commit `build: pin Verus to our fork...`):
  github.com/ilyasergey/verus branch `dev`. Carries the VIR export hook (`VERUS_VIR_EXPORT`, patch
  overlay retired) and `debug_assert!`-as-static-assert in the macro
  layer (auto-proof-block; message dropped). vstd 1972/0 under it;
  corpus 146/146; verbatim `symcrust_mod_reduce.rs` (debug_asserts and
  all) now lowers — 3 new provable twin goals pending. `mont_mul`'s
  mask-on-promoted-int assert is a documented spec-semantics boundary.
- **Deferred, next up:** (1) move `wrapping_*` specs + the shr/band
  bridge theorems into a `Vermilion/Vstd/Wrapping.lean` mirrored
  library (user-directed; Stage 2), shrinking the SymCrypt twins;
  (2) split aeneas probes and percolator slices into
  `verified/`/`pending/` subfolders — BLOCKED on in-flight edits:
  another agent is filling `probes/proofs/dalek_mul_internal.lean`,
  and five percolator twins carry uncommitted modifications, so
  directory moves would sweep unreviewed work into a commit;
  (3) twin proofs for verbatim `symcrust_mod_reduce`.
- **Stage 2 (wrapping mirror) landed** (commit `feat(vstd): mirror
  unsigned wrapping_{add,sub,mul}...`): vstd wrapping spec fns resolve
  through the registry to `Vermilion.Vstd.Wrapping` `(x op y) % 2^w`
  models; SymCrypt twins ported (mask proofs simplified — no iteP
  split); verbatim `mod_reduce` fully proven (5/5 incl. its three
  debug_asserts); four mont_mul auto blocks pinned with explicit
  nlinarith/omega proofs (they had regressed to the cvc5 rung, which
  Lake twin builds don't load). Issues #34-#38 published to GitHub
  (`verus` label added for fork work); gap-matrix gained an
  "Addressed" section. Still open from #35: general-width shr/band
  bridges in `Vermilion.Bits` + the wrap-collapse rung.
