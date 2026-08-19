On 2026-07-13 the user cancelled the planned `verus2vermilion` annotation
translator: "Do we really need verus2vermilion? Let's continue being
Verus-compatible."

- Vermilion consumes **raw Verus syntax directly** — no Vermilion dialect,
  no migration step, no translated-suite measurement. This is what the
  pipeline already does (the shared front end elaborates `verus!{}`
  as-is).
- SMT-era scripting that has no Lean meaning (`#[verifier::rlimit]`,
  `spinoff_prover`, prover selection) is ignored where encountered;
  triggers are **preserved** in the IR and documented in generated code
  (existing directive). Nothing is rewritten in user sources.
- Suite-coverage gates (M3 onward, and the M7 100%-disposition endpoint)
  are measured over the **unmodified** Verus test suite.

**Why:** Maximal compatibility is the project's differentiator; a dialect
plus a translator adds a migration seam without adding verification value.

**How to apply:** Do not build `verus2vermilion` or introduce
Vermilion-only spec syntax. When a Verus construct is scripting-only,
ignore it (with a warning where useful) rather than requiring a rewrite.
The mentions of `verus2vermilion` in `docs/planning/` are the historical
M0 planning record and stay as written; the operative plan
(`plans/execution-plan.md`) records the cancellation. Related:
[[vermilion-conventions]], [[lean-side-ir-parsing]].
