---
title: One emitted Lean file per function (parallel checking)
labels: [enhancement, feature, vcgen]
state: closed
github: 43
---

Emit one Lean unit module per verified function instead of one module per
Rust file, so generated files stay small and the checker can judge units in
parallel.

Shipped (2026-07-19) as the default emission mode:

- `generated/<stem>/<function>.lean` per function; shared datatype/spec-fn
  definitions emitted exactly once into `generated/<stem>/Specs.lean` and
  imported (`import generated.<stem>.Specs`) by the units whose obligations
  reference them (reference analysis over spec-fn applications, unfold
  lists, and datatype mentions; callee contracts are inlined by lowering).
- Twins mirror the layout: `proofs/<stem>/<function>.lean` +
  `proofs/<stem>/Specs.lean` (import rewritten to `<stem>.Specs`, the example lib's own module namespace),
  built by Lake through the existing `proofs` globs; shared helper lemmas
  live in the Specs twin's user sections. Proof blocks migrate across mode
  switches by statement hash.
- `vrml_check` runs one Lean process per unit, in parallel; new flags
  `--twin-check [--skip-identical]` and `--only <function>` (used by watch
  mode).
- `vrml_gen --mode per-function|per-file` (default per-function, sticky via
  the manifest `mode` field, so tools recognize how a directory was
  emitted); `run_example.sh --per-function/--per-file`;
  `run_differential.py --emit-mode`.
- Obligations, statement hashes, diagnostics, and verdicts are identical
  across modes — asserted by `scripts/test_emission_modes.sh` over every
  example and case study.
