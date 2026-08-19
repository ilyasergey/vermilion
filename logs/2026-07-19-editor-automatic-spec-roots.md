# 2026-07-19 — automatic editor roots for new Specs twins

## Failure

Every new per-function differential proof directory initially failed in the
Lean editor. `DifferentialProofs` used a hand-maintained root list ending at
c151, so Lake identified later modules such as c156 as `_unknown` and omitted
their sibling `Specs` import from `setup-file`. The same maintenance hazard
existed in every ordinary proof library because every first-level stem was
listed by hand.

An anonymous catch-all glob is not sound here: it also claims `Init`,
`Vermilion.*`, and generated modules from other libraries. Exact module
ownership must be retained.

## Fix

- All 50 named libraries whose source is a `proofs/` directory call one shared
  discovery function. It reads the exact first-level entries, selecting
  submodules for directories and exactly one module for standalone `.lean`
  files. Named libraries remain necessary for unique module ownership and for
  the runner's `lake build <target>` interface; only their redundant per-stem
  lists disappeared.
- Because Lake caches Lakefile elaboration, the editor shim compares an exact
  snapshot of roots below every `proofs/` directory and discards only the
  stale compiled configuration on add/remove. An earlier mtime draft was
  removed after the regression exposed a same-timestamp race.
- Existing-root function additions need no invalidation: the directory's
  submodule glob already covers them.
- Setup handling is structural rather than path-specific: any unit with a
  sibling `Specs.lean` drops `--no-build` on a cold setup so Lake compiles the
  import, and regeneration invalidates the cached payload. The module header
  supplied on stdin is now part of the cache key, so an edited import list
  cannot replay the previous setup.

## Regression

`scripts/test_differential_editor.sh` now uses `editor/bin/lake` with the same
`setup-file <path> - --no-build --no-cache` arguments as Lean's file worker.
After priming the compiled configuration it creates a brand-new generated c999
root and a brand-new root under the ordinary `M1Pipeline` proof library. Each
gets its own `Specs.lean` and importing unit. Both must be recognized as modules
and both Specs imports must appear in `importArts`; a second setup changes only
the stdin header to prove cache separation. Cleanup then proves root removal is
refreshed as well. The old numbered c148/c150 checks are gone, and the focused
regression passes twice consecutively.

Focused checks also resolved the original
`c150_custom_tuple_index_mut_ok/impl__2_index_mut.lean` and the later c156
proof with their exact module names and Specs artifacts. Warm cached setup is
about 20–30 ms. `lake build M1Pipeline CaseAeneasSha3 CasePercolator` passes,
covering directory-only roots and the SHA-3 twins.

The complete six-phase suite passes: all 48 runners, SHA-3's 12/12 obligations
and source-preservation gate, every ordinary twin library, emission and
incrementality checks, 156/156 differential verdict parity, and 75/75
failure-span agreement. Median differential slowdown in this run was 17.52x.

This is editor/Lake integration only. It changes neither Rust lowering nor the
neutral IR/Lean VCGen, and the SHA-3 feature queue remains at exact
`u64::rotate_left`.
