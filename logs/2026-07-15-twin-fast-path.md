# 2026-07-15 — Fast path: check the twin, not the generated module

User observation: on `case-studies/binary-search/run.sh` there is a
considerable delay before `✓ proofs twin kernel-checked`. Root cause: with
`--manual-proofs --lib` the pipeline elaborated Lean **twice** —

1. `vrml_check` on `generated/<stem>.lean` (the "✓ all N obligations … 14
   newly checked, 1 discharged interactively" line), then
2. `lean` on `proofs/<stem>.lean` (the `--lib` twin kernel-check).

The twin is a **superset** of the generated module (auto blocks are
byte-identical; interactive blocks are the user's proofs), so pass 2 already
proves everything pass 1 does — the automatable obligations were elaborated
twice. This only bites when the twin differs from generated, i.e. whenever
there is ≥1 interactive proof (binary-search, merge-sort, every case study).
The editor runs the same pipeline, so it paid the same double cost (it just
paints green after pass 1 and downgrades if pass 2 fails).

## Fix (user-chosen scope: skip only when the twin is current)

- **`vrml_sync --probe`** (new): reports, without writing, whether the twin is
  current & complete for this manifest — twin exists, its obligation blocks
  are exactly the manifest's (as a set), every statement hash matches, and no
  block holds a `sorry`. Exit 0 = current, 1 = stale/incomplete/missing.
- **`scripts/run_example.sh`**: after `vrml_gen`, when `--lib --manual-proofs`
  (and not `--expect-failure`) and `--probe` says current, skip `vrml_check`
  and kernel-check the twin as the **sole arbiter**. On success it clears the
  editor's check file (no failures), records the `lean` run-status, runs
  `vrml_sync` (reports `unchanged`), and prints the familiar
  `✓ proofs twin kernel-checked`. If the twin does **not** kernel-check
  (a broken/edited proof), it falls through to the full check-then-sync flow,
  so failures still get graceful per-obligation `sorry` placeholders and
  span-mapped diagnostics.

Because the fast path writes the `lean` run-status only after the twin
verdict, the editor now surfaces green once (no optimistic-green-then-
downgrade flicker) — and does so after a single elaboration.

## Measured / verified

- binary-search: **5.5s → 2.8s** wall (one elaboration instead of two).
- Broken-twin fallback: shows the twin error, prints the fall-through notice,
  runs the full generated check (rich diagnostics), and still fails correctly.
- Full suite `fail=0`; the fast path fires for every proof-carrying case study
  and interactive example; twins are byte-stable (no diffs after the run).

`docs/TUTORIAL.md` updated in the same slice (workflow-doc discipline). No
`docs/vcgen.md` change — VC generation is unchanged; this is orchestration.
