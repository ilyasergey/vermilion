---
name: vermilion-conventions
description: "User-set conventions for the Vermilion repo — vrml naming, Lean-only verdicts, one-script-per-example, generated/proofs twin methodology"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 6f7b4393-71c0-4e9e-aafc-4b4a1fad4626
---

Conventions the user set on 2026-07-12 for Vermilion:

- **User-facing names are `vrml`** (tactic `vrml`, attributes `@[vrml]`,
  `@[vrml_obligation]`, binaries `vrml_check`, `vrml_sync`); library
  namespaces keep the full `Vermilion` name.
- **Lean is the only verifier** in example pipelines: Verus runs
  `--no-verify` as a front end; failures must be visibly Lean's
  (`error[vermilion]` branding). Verus's own SMT verdict is consulted only by
  the differential harness.
- **One example, one script**: `examples/<name>/run.sh` delegating to a
  shared `scripts/run_example.sh`; never conflate demos into one script.
- **generated/proofs twin methodology**: every run emits `generated/`
  (machine statements + `vrml` proof attempts, untracked, overwritten) and
  reconciles the user-editable `proofs/` twin via `vrml_sync`: byte-identical
  when automation succeeds and nothing is edited; `sorry` + warning where
  automation fails; user proofs survive while their statement hash matches
  and are replaced (with a warning) when stale. Lake builds only the twins.
  Open TODO (user-requested, in plans/execution-plan.md): better ways to
  co-evolve program and user proofs.
- Emphasize the generated-attempts vs user-proofs convention in each
  example's README.
- **No machine-specific paths**; `setup_verus.sh` auto-clones the pinned
  Verus into ~/.cache/vermilion/verus (never inside the repo — cargo
  workspace capture) and links it as `.verus-checkout`.
- Suppress Lean unused-variable linter noise in generated modules.
- The whole project must build with the single command `./scripts/build.sh`;
  tutorial (docs/TUTORIAL.md) updated in the same commit as workflow changes.

**Why:** Repeated explicit user direction during the M1 push.

**How to apply:** Preserve these invariants in M2 (loops, watch mode);
extend `run_example.sh` and `vrml_sync` rather than adding new monolithic
scripts; keep new user-typed commands short (`vrml*`).
