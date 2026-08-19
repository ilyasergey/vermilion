# 2026-07-12 — Lean server cvc5 plugin

Diagnosed an editor crash while opening
`examples/m1-pipeline/proofs/simple.lean`. Direct elaboration aborted at
`cvc5.TermManager.new`: batch `lake build` had loaded the native library from
the module setup JSON, while the language-server process had not loaded it.

Configured the root Lake package's `moreGlobalServerArgs` with a portable
`nameToSharedLib "cvc5_cvc5"` plugin path. This applies to `lake serve` and
therefore the VS Code Lean extension. Documented the required initial
`lake build` and **Lean 4: Restart Server** workflow.

Verification:

- `lake build` succeeded;
- direct elaboration with the configured cvc5 plugin succeeded for
  `proofs/simple.lean`;
- `lake serve -- --version` started successfully under Lean 4.28.0.
