# 2026-07-20 — DL8 hand-off: Layer Set A acquisition, in progress

*Session hand-off (user switching machines). DL4–DL7 are complete and
pushed; this file is the exact state and next steps for DL8. The
committed tree builds (Rust + Lean) and the full suite was green at the
DL6 commit; DL8 adds no regression risk to committed behavior (the new
runner flags and the lowering fuse are additive).*

## What DL8 has produced so far (all committed)

- **Acquisition harness**: `case-studies/dalek-lite/layer_a.rs` — a
  synthetic crate root mounting the field cone VERBATIM via `#[path]`
  into the untracked pinned `upstream/` tree (fetch with
  `./case-studies/dalek-lite/fetch_upstream.sh`): backend
  `field.rs` cone = 13 field-lemma files + 8 common-lemma files +
  5 spec modules (`core`, `field`, `field_u64`, `primality`,
  `scalar52`). Labeled distillation stubs for the out-of-cone edges:
  `subtle_assumes` (field-relevant subset, with the measured `final()`
  mut-ref accommodation), `proba_specs`, `constants::SQRT_M1`,
  `core_assumes` (seq view helpers), `edwards`+`edwards_specs`
  (one struct + the closure of `add_lemmas`' single Edwards lemma),
  `scalar::Scalar52` (struct only).
- **`subtle` as a real extern**: `case-studies/dalek-lite/subtle_stub.rs`
  compiles to an rlib with the pinned Verus toolchain
  (`case-studies/dalek-lite/run.sh` builds it into
  `.vermilion/libsubtle_stub.rlib`) and reaches the front end through
  the new `--verus-extern NAME=PATH` flag in `scripts/run_example.sh`
  (also added: `--verus-flag ARG` generic pass-through).
- **`field_u64.rs`** (tracked copy, pointed at by the crate root): the
  ONLY source edits in the whole acquisition — six `// [final]`-labeled
  mut-ref migration edits our newer front end requires, two
  `[cfg accommodation]` elisions of upstream's own
  `#[cfg(not(verus_keep_ghost))]` runtime-only debug_asserts, and two
  `[body accommodation]` UFCS rewrites dodging a front-end ICE
  (`codegen_select_candidate` on `&*self <op> _rhs` — worth a fork fix
  eventually).
- **Fragment fix landed**: extensional equality (`=~=`, spec `==`) at
  fixed-size array/slice types — `ext_eq_is_plain_eq` now recurses into
  `Primitive(Array/Slice)` element types (their `Seq` models are
  extensional). Removed ten refusal sites in the cone.
  NOTE: no differential guard yet — **add a corpus case** (`[u64; 5]`
  ext-eq, pass + wrong directions) before or with the DL8 commit that
  completes the slice.
- **Issues filed**: `carry-decreases-measures-for-cross-module-recursive-spec-fns`
  (the `load8_at_or_version_rec` refusal — Verus builds
  `termination_check` only under `verifying_owning_bucket`,
  `vir/src/ast_to_sst_func.rs:207`) and
  `vermilion-as-a-standalone-tool` (user request: reproduce proofs
  outside this repo via `vrml init` + prebuilt olean cache).

## THE BLOCKER (currently under the knife)

`FieldElement51::from_bytes` **kills the lowering at ~4 GB RSS**
(exit 137). Facts established:

- 21 functions lower fine before it; the process dies ON from_bytes
  (`VERMILION_TRACE_FUNCTIONS=1` env var added to `main.rs` prints
  per-function progress).
- `sample` profile (scratch): ~90k `clone` frames under deeply
  recursive `Lowering::statement_impl` — expression trees are `Box`,
  not `Arc`, so env/scope clones deep-copy; some path in from_bytes
  builds a huge value that then gets re-cloned until the OOM kill.
- Two guards at the obvious substitution sites (main `StmX::Assign`,
  `eval_pure_setup` bind; `expr_within_budget`, cap 200k nodes) did
  **NOT** fire — the duplication flows through another path.
- Latest attempt (committed, compiles, **not yet validated**): a
  per-function work fuse in the `lower_exp` wrapper
  (`SpecRegistry::work`, reset in `function_view`, cap
  `LOWERING_WORK_FUSE = 5_000_000`). If from_bytes' explosion passes
  through `lower_exp`, this refuses it cleanly and the rest of the cone
  proceeds to dispositions. **First action for the next session: run
  `VERMILION_TRACE_FUNCTIONS=1 ./crates/vermilion_direct/target/release/vermilion_direct .vermilion/layer_a-vir.bin --out /tmp/layer_a-ir.sexp`
  (after one `bash case-studies/dalek-lite/run.sh` to regenerate the
  vir.bin) and see whether the fuse fires.** If it does not, the
  duplication is in `field_update`/scope cloning — tick the fuse there
  too. If it does, `run.sh` should complete end to end and produce
  `generated/layer_a.json` dispositions.

## Remaining DL8 checklist (after the blocker)

1. `bash case-studies/dalek-lite/run.sh` end to end; twins under
   `case-studies/dalek-lite/proofs/layer_a/` (library `CaseDalekLite`
   picks them up via proof-root discovery — verify with
   `scripts/register_proof_lib.py scan`; remember `lake -R` after
   adding/removing twin roots, stale-config gotcha).
2. Read `generated/layer_a.json`: verified / refused (span-mapped) /
   sorry counts. Interactive twins are first-class for residuals.
3. Scoreboard `docs/reports/dalek-lite-layer-a-scoreboard.md` vs
   CryptoProver (11.4 h / $467 field floor; 1,430/1,433 whole-crate;
   3 residual nonlinear).
4. Corpus guard for the array ext-eq fix (see above) + differential run.
5. File the real fix for the duplication as an issue: "share
   substituted values instead of duplicating them" (consider extending
   `docs/issues/share-obligation-contexts-and-name-result-values.md`,
   which is adjacent). The fuse is a fail-closed stopgap, not the fix.
6. PLAN.md DL8 row, dalek README, DL8 log, logs/README index, full
   suite, `scripts/sync_issues.py`, commit, push.

## Machine-local state that will NOT travel

- `case-studies/dalek-lite/upstream/` (pinned clone) — refetch.
- `.vermilion/` transients (vir.bin, rlib, logs) — regenerate.
- `~/.cache/vermilion/verus` — `scripts/setup_verus.sh` rebuilds; the
  fork pin is `48600836424a` on `ilyasergey/verus` branch `dev`.

## Session context worth keeping in mind

- All probes green: dalek-lite `probes/run.sh` 9/9; `explore.sh` has no
  expected boundaries left (echo-only).
- The suite was green at the DL6/DL7 push (parity 189/189, spans
  92/92). DL8's committed changes touch: `lower.rs` (ext-eq arrays +
  guards + fuse + trace hook), `run_example.sh` (two new flags),
  dalek-lite files, and issue files. The ext-eq change can alter rung
  outcomes only by ACCEPTING programs previously refused; the corpus
  had no such case (guard still owed, see checklist).
