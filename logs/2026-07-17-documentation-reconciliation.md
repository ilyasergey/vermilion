# 2026-07-17 — current-status documentation reconciliation

## Scope

Documentation-only stage before corpus acquisition. The repository's dated
logs and chronological implementation notes were preserved, but current-facing
status claims were checked against the code and focused verification runs.

The main contradiction was `by (bit_vector)`: the implementation, trust
document, top-level README, and progress ledger said real-content isolated
queries were supported, while the M4 example README, an older execution-plan
paragraph, and open issue #17 still described a fail-closed placeholder.

## Empirical resolution

`StmX::AssertBitVector` carries real `requires`/`ensures` in the pinned SST.
`crates/vermilion_direct/src/lower.rs` lowers those expressions to a
`Statement::Loop` solely to reuse its isolated VC scope: explicit requirements
and type facts enter the query; outer assumptions do not. No VC-generation
rule changed in this stage—the existing normative `(LOOP)` rule in
`docs/vcgen.md` already specifies the generated obligations.

Commands and results:

```console
./examples/m4-bitvec/run.sh --clean-env
# 7/7 obligations verified by Lean; zero sorry

python3 scripts/run_differential.py
# 137/137 verdict parity; 66/66 failure-span agreement
# c112_bv_block_wrong: Verus fail / Lean fail, both at line 5
```

Issue #17 was therefore a stale issue, not pending implementation. Its local
file moved to `docs/issues/closed/` with the resolution and test evidence.
Remote synchronization was attempted: `gh` was missing, so GitHub CLI 2.96.0
was installed; `scripts/sync_issues.py --dry-run` then reported that GitHub
authentication is not configured. A browser/device login could not be
completed in this non-interactive session. The local state is ready to sync,
but closing GitHub issue #17 remains pending `gh auth login`.

## Current-facing documentation repaired

- `README.md`, `DESIGN.md`, `WORKPLAN.md`, and `plans/execution-plan.md` now
  agree that M4 feature slices and V1--V4 landed, while large project gates
  remain outstanding; the execution plan names corpus acquisition as the
  current frontier.
- `docs/reports/progress.md` now reflects trigger preservation, generic
  datatypes/trait bounds, exec closures, registered broadcast groups,
  `Vec::pop`, the complete vstd mirror migration, extension 0.9.5, and both
  verified merge-sort variants.
- `docs/TUTORIAL.md` reports the current 137/137, 66/66 differential result
  and no longer cites merge sort as an unsupported example.
- Feature READMEs no longer describe later-landed generics, const-generic spec
  fns, vector mutation, generic trait bounds, or trigger metadata as missing.
- `case-studies/README.md` now includes the verified sorting study.
- `docs/reports/target-projects.md` and
  `docs/reports/sequential-case-studies.md` distinguish historical discovery
  notes from the current acquisition frontier.

## Policy check

No Rust, Lean, IR, or VC-generator source changed. Consequently no new
differential cases or `docs/vcgen.md` rule changes were needed. The existing
positive bit-vector example and c112 negative guard are the required test pair.

## Blocker

Run `gh auth login` interactively, then `./scripts/sync_issues.py --push` to
close issue #17 remotely. Do not report the issue tracker as synchronized
until that command succeeds.

## Next stage (requires explicit user command)

Begin corpus acquisition: copy and pin the first Verus-suite/GitHub project
set under `case-studies/`, verify each original with Verus, document design and
provenance, and measure Vermilion's exact support boundary.
