# 2026-07-12 — span-mapped JSON diagnostics and the vrml rename

## Diagnostics

- `render_module_with_records` now returns, next to the rendered Lean source,
  one `ObligationRecord` per VC: name, kind, `AssertId`, statement hash, Rust
  span, and the obligation's line range inside the generated file.
  `vermilion_direct` writes these as a colocated manifest
  (`generated/<stem>.json`) with the same no-op-preserving atomic emission.
- New workspace binary `vrml_check <manifest.json>`: runs
  `lake env lean --json` on the generated module (loading the cvc5 plugin),
  attributes every Lean error to its obligation via the manifest line ranges,
  and prints one rustc/Verus-style JSON diagnostic per failure with the
  original Rust range as the primary span (`assertion failed`,
  `postcondition not satisfied`, `precondition not satisfied`). Exit codes:
  0 all verified, 1 obligation failed, 2 the check itself broke. A failed
  Lean run with no parseable errors is exit 2, never "all verified".
- `examples/m1-diagnostics/broken.rs` holds a deliberately false assertion.
  `scripts/run_diagnostics_demo.sh` shows Verus and Vermilion pointing at the
  same `broken.rs:16:12` range, asserts the span programmatically, and checks
  the healthy golden module as a control. The example is excluded from `lake`
  targets because its generated theorem must fail.

## vrml rename (user request)

User-facing macros and tools are now `vrml`: the automation tactic
(`by vrml`), the discovery attributes (`@[vrml]`, `@[vrml_obligation]`), and
the checker binary (`vrml_check`). Library names (`Vermilion.*` namespaces,
crate names, `Vermilion.inUnsignedRange`, ...) deliberately keep the full
name. All generated modules were re-emitted; the facade equivalence and
`unchanged` re-emission checks stay green, and `lake build` passes across
Vermilion, M1Pipeline, and M1Widening.

Verification commands:

```console
./scripts/run_m1_pipeline.sh
./scripts/run_diagnostics_demo.sh
lake build
```
