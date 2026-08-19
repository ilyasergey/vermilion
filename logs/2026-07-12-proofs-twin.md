# 2026-07-12 — the generated/proofs twin methodology

Per user direction, every example run now maintains **two sibling modules**:

- `generated/<stem>.lean` — machine output: obligation statements, metadata,
  and a default-automation (`vrml`) proof attempt per obligation, each block
  delimited by `-- vrml:begin <qualified-name> <statement-hash>` markers.
  Judged by `vrml_check`; overwritten every run; untracked.
- `proofs/<stem>.lean` — the user-editable twin, reconciled by the new
  `vrml_sync` tool: byte-identical to the generated module when automation
  proves everything and nothing was edited; automation failures appear as
  `sorry` with a "prove it manually" warning (and are re-warned while the
  `sorry` remains); user-written proofs survive regeneration for as long as
  their statement hash is unchanged and are replaced with a warning when the
  Rust code changes their VC; blocks for vanished obligations are dropped
  with a warning. Lake builds only the twins (`M1Pipeline`, `M1Widening`).

Verified behaviors (all exercised): green example → twins byte-identical
(`cmp` clean); broken example → twin carries `sorry` + warning while the
pipeline reports `error[vermilion]` at the Rust span; hand-edited proof for
`widening.flags.assert_0` survived regeneration verbatim and kernel-checked;
restoring an edited contract replaced the stale block automatically.

Also fixed, found by fresh-clone validation: the automatic Verus clone must
not live inside the repository (this workspace's Cargo.toml would capture
vargo as a member); `setup_verus.sh` now clones to
`${XDG_CACHE_HOME:-~/.cache}/vermilion/verus` and links `.verus-checkout`,
keeping an existing healthy link.

Open design TODO (recorded in plans/execution-plan.md and vrml_sync): better
co-evolution of program and user proofs than hash-keyed reconciliation.

Verification:

```console
./scripts/run_m1_pipeline.sh
./examples/m1-pipeline/run.sh && cmp examples/m1-pipeline/{generated,proofs}/simple.lean
./examples/m1-diagnostics/run.sh   # expected failure + sorry twin
```
