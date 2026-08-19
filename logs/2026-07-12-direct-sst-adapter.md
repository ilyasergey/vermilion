# 2026-07-12 — direct FunctionSst adapter

Replaced the transitional `--log vir-sst` text parsing as the primary SST
handoff with direct `vir::sst::FunctionSst` access:

- `verus-patches/0001-vermilion-vir-export.patch` (20 lines) adds an
  environment-gated bincode export of the finalized VIR crate, `CrateId`,
  no-location span, and current-crate module list to the pinned Verus
  checkout (`c569645bd37b0`). Inert unless `VERMILION_VIR_EXPORT` is set.
  The export must not live under `.verus-log/`, which Verus clears when its
  own logging starts; the pipeline uses `.vermilion/root-vir.bin`.
- `crates/vermilion_direct` (excluded from the default workspace; built with
  the Verus 1.96.0 toolchain against the checkout via the `.verus-checkout`
  symlink) deserializes the export and reruns the pinned `vir` middle end:
  `GlobalCtx::new` → `check_traits` → `simplify_krate` → per current-crate
  module `prune` → `Ctx::new` → `ast_to_sst_krate`, mirroring
  `verify_crate_inner`/`verify_bucket_outer`. It lowers each `FunctionSst`
  with `exec_proof_check` into the neutral `FunctionView` and emits colocated
  Lean modules via the unchanged generator/renderer/emitter.
- The textual reader is retained solely as an equivalence oracle:
  `vermilion_direct --compare-log` requires identical `FunctionView`s, and a
  second emission must report `unchanged` (byte-stable golden slice).
  `generated/simple.lean` is untouched by the switch (git-clean).
- New scripts: `setup_verus.sh` (idempotent link/patch/build of the checkout)
  and `build.sh` (single-command build of workspace, adapter, and Lean).

Verification commands (all green):

```console
./scripts/build.sh
./scripts/run_m1_pipeline.sh
```

The pipeline reports: 1 Verus function verified; facade equivalence for
`simple.increment`; `unchanged examples/m1-pipeline/generated/simple.lean`;
`lake build M1Pipeline` succeeds (automatic, reconstructed-SMT, interactive).

Trusted-boundary note: the export patch serializes existing VIR data and adds
no axioms or trusted assumptions; soundness still rests on the pinned Verus
front end and the Lean kernel. Ledgers unchanged.
