# 2026-07-12 — differential gate, Lean-only verdicts, per-example demos

## Differential measurement (formal M1 gate)

`tests/differential/` holds twelve straight-line cases (eight provable, four
deliberately wrong, spanning arithmetic bounds, subtraction, call contracts,
bool logic, proof-mode int reasoning, widening casts, early returns, and
signed integers). `scripts/run_differential.py` runs each through full Verus
verification AND the Vermilion pipeline, comparing verdicts and failure
lines; it writes `docs/reports/generated/differential-m1-results.md` and
fails below the 95% gate. Result: **12/12 verdict parity, 4/4 failure-span
agreement.** Two fragment fixes came out of the first run: spec-level `Let`
bindings in `ensures` (from casts) are now lowered, and `vrml_check` treats a
Lean run that dies without diagnostics as "check broken", never "verified".

## Lean is the only verifier (user direction)

All example pipelines now run Verus with `--no-verify` — front end only. The
VIR export patch moved before the no-verify branch so it fires regardless;
verdicts come from `vrml_check`, branded `error[vermilion]` with a "Lean
rejected obligation" note so they cannot be mistaken for Verus output.
The textual `--log vir-sst` equivalence step left the pipeline (the log only
exists under full verification); the textual reader remains unit-tested.

## One example, one script; generated/ is the only per-example Lean artifact

- `examples/<name>/run.sh` drives each example via the shared
  `scripts/run_example.sh <dir> <source.rs> [--lib L] [--expect-failure]`.
- `generated/` directories are machine output: untracked, recreated on every
  run, safe to delete. Per user direction the committed `proofs/` directories
  were removed entirely; interactive companion proofs are user-written files
  that import the generated modules and are checked with
  `lake env lean <file>` (tutorial step 3 walks through it; the flow is
  verified to work). Examples are now exactly source + regenerable output.
- Example Lake libs glob only `generated/` and are no longer default targets;
  deleting directories no longer breaks `lake build`.
- Generated modules set `linter.unusedVariables false`, so pipeline output is
  warning-free.
- Removed: `scripts/run_diagnostics_demo.sh` (superseded by
  `examples/m1-diagnostics/run.sh`), the textual-era `emit_sst_log` and
  `emit_pipeline_smoke` example binaries, and the committed
  `proofs/simple.lean` / `proofs/widening.lean` demo files.

## Portability

`scripts/setup_verus.sh` now clones the pinned Verus automatically into
`.verus-checkout` (or links `VERUS_CHECKOUT` if set), fetches Z3, applies the
patch, and builds; no machine-specific paths remain. Scripts share
`scripts/verus_env.sh` and read the toolchain from the checkout's
`rust-toolchain.toml`. `docs/TUTORIAL.md` is the end-of-M1 hands-on
walkthrough.

Verification commands (all green):

```console
./scripts/run_m1_pipeline.sh
./examples/m1-pipeline/run.sh
./examples/m1-widening/run.sh
./examples/m1-diagnostics/run.sh
./scripts/test_incrementality.sh
python3 scripts/run_differential.py
```
