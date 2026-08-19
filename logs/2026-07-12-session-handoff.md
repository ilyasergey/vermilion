# 2026-07-12 — session handoff: formal M1 closed

Compressed record of the working session that closed formal M1, for the next
agent. Details per slice live in the sibling logs of the same date.

## What exists now (all pushed to master)

- **Direct SST handoff** (`773e996`): 20-line env-gated patch on the pinned
  Verus (`verus-patches/0001`, fires even under `--no-verify`) exports the
  finalized VIR crate; `crates/vermilion_direct` (outside the workspace,
  built with the Verus toolchain via the `.verus-checkout` symlink) reruns
  the pinned `vir` middle end (`GlobalCtx` → `simplify` → `prune` →
  `ast_to_sst_krate`) and lowers real `FunctionSst`s to the neutral
  `FunctionView`. Textual log reader is legacy, unit-tested only.
- **Fragment** (`b5dd2a8`): straight-line — bools as `Prop`, `int`/`nat`,
  machine widths, casts, assumes, SSA + spec-level lets, calls with
  contracts (fresh quantified result symbols constrained by callee ensures +
  return-type range), early returns with ensures checked at the return site.
  Unknown SST nodes fail closed. `If`/loops are M2.
- **Diagnostics** (`39bd872`): generated manifests (span, AssertId,
  statement hash, Lean line range per obligation); `vrml_check` runs
  `lake env lean --json`, attributes failures, emits rustc-style JSON with
  the Rust span, branded `error[vermilion]`. Exit 0/1/2 = verified/failed/
  check-broken.
- **Incrementality** (`5a25182`): per-function semantic (span-free) and
  location fingerprints in manifests; callee-contract substitution makes
  DAG invalidation emergent. `scripts/test_incrementality.sh` enforces the
  whitespace/move/body/contract matrix.
- **M1 gate** (`72a6038`): `tests/differential/` (12 cases) +
  `scripts/run_differential.py`: 12/12 verdict parity, 4/4 failure spans
  (gate ≥95%). Report: `docs/reports/differential-m1.md`.
- **Proofs twins** (`91dc0e5`): every run emits `generated/<stem>.lean`
  (machine attempts, marker-delimited blocks `-- vrml:begin <name> <hash>`)
  and reconciles user-editable `proofs/<stem>.lean` via `vrml_sync`:
  byte-identical when green+untouched; `sorry`+warning where automation
  fails; user proofs survive while hashes match; stale blocks replaced with
  warnings. Lake builds only twins.

## User-set conventions (binding; also in agent memory)

Lean is the ONLY verifier in pipelines (Verus = `--no-verify` front end);
user-facing names are `vrml*` while libraries stay `Vermilion.*`; one
example one script (`examples/<name>/run.sh` → `scripts/run_example.sh`);
`generated/` and `proofs/` are untracked example artifacts; no
machine-specific paths (auto-clone to `~/.cache/vermilion/verus`, override
`VERUS_CHECKOUT`, symlink `.verus-checkout`); single-command build
(`./scripts/build.sh`); linter noise suppressed in generated modules;
`docs/TUTORIAL.md` updated in the same commit as workflow changes.

## Entry points

`./scripts/build.sh` (everything, self-bootstrapping),
`./scripts/run_m1_pipeline.sh` (tests + all examples; VS Code default build
task), per-example `run.sh`, `scripts/test_incrementality.sh`,
`python3 scripts/run_differential.py`, `docs/TUTORIAL.md`.

## Known gaps / next stage (M2, charted but not started)

1. Re-validate the fresh-clone bootstrap end to end (clone → z3 → patch →
   vargo build was fixed to use the cache dir but the full ~20-min cold run
   was not re-executed).
2. M2 base camp per plans: `if`/loops + invariants, recursion/decreases,
   vstd `Seq/Set/Map`, Veil manager + discharger ladder (replace the fixed
   `vrml` macro), watch mode on the fingerprint manifests (<5 s edit loop).
3. Grow the differential corpus toward tagged `rust_verify_test` extraction.
4. Open design TODO (user-requested): co-evolving program and user proofs
   beyond hash-keyed block reconciliation (`vrml_sync` header,
   execution-plan note).
5. M0 automation solve-rate matrix remains deliberately deferred.
