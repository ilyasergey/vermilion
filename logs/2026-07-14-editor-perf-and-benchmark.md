# 2026-07-14 — editor verify latency, type-check UX, Verus benchmark

This session ran past midnight; the M3-completion tail and all of M4 were
logged (as they landed) in `2026-07-13-editor-latency-and-m2.md`, which
over-ran the date boundary. This file records the clearly-2026-07-14 work.

## Editor verify latency + type-check marks (extension 0.9.2)

Profiled `run_example.sh` directly: ~7.5–9s wall at **15–17% CPU** — the
pipeline is spawn/IO-bound (~6s idle), not compute-bound, and byte-identical
whether launched from the terminal or the extension's `zsh -lc` spawn
(±0.5s). The perceived IDE slowness was not the pipeline: `paintEditors`
suppressed result marks for any line still in the `verifying` set, and that
set was cleared only at `child.on('close')` — after the whole run including
the optional trailing twin kernel-check. The terminal streams the verdict
the instant `vrml_check` finishes; the extension hid it behind the animation
until close.

- **Fix (711f93c):** poll the run-status file (the workspace FS watcher is
  unreliable for the hidden `.vermilion` dir); the moment it records phase
  `lean`, clear `verifying`, stop the zigzag, and repaint — the twin check
  finishes silently. `stopAnimation` now tracks the `verifying` set alone.
- **Type-check failures (a2f90b7):** a front-end rejection previously set the
  rustc squiggles but returned before any `paintEditors()`, so the zigzag
  lingered and no gutter mark appeared. New shared `applyFrontEndFailure()`
  clears the zigzag, drops stale marks/obligation squiggles, and paints a
  ✗ on every function containing a type error; the early poller invokes it
  on phase `front-end`, the close handler reuses it (guarded by
  `verdictShown`).
- Remaining IDE-only cost (documented, not a Vermilion bug): the lean4
  language server elaborates the written `generated/`+`proofs/` `.lean`
  files concurrently (Mathlib load), competing with the pipeline — the
  terminal never pays this.

## Vermilion vs Verus benchmark

New `scripts/bench_vs_verus.py`; curated results in
`docs/reports/vermilion-vs-verus-timing.md`. Best-of-3, end-to-end to
verdict, clean env (no bash/source wrapper skew). Median **4.2× slower**
than Verus on the shared fragment — and the gap is fixed Lean/Mathlib
startup (~2.2s import of a ~3.1s back end), not algorithmic. Two of the
first-sampled examples turned out to be **capability wins** (Verus's
default prover rejects; Vermilion proves, kernel-checked): m2-loops
(nonlinear invariant) and m3-quantifiers (trigger starvation).

## Mathlib-startup optimization plan (recorded, not executed)

Measured the import breakdown and recorded a staged plan in
`plans/execution-plan.md` ("Open performance TODO — Lean back-end
startup"): (1) free trims (drop the dead `Polyrith` import; gate `Smt` if
the corpus shows its rung never wins), (2) fold vrml_check + twin
kernel-check into one `lean` process (import paid once), (3) a persistent
Lean worker that imports the check environment once and elaborates jobs on
demand — the structural fix that turns the ~2.2s into a one-time session
cost. User asked to preserve the plan for later.
