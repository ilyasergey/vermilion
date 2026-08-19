# 2026-07-12 — M2 opens: Lean-side IR architecture, branches, loops

Session record for the start of M2. User directives this session (binding,
stored in `.claude/memory/`, loaded via `CLAUDE.md`):

- the Verus-IR→Lean parser must be **implemented in Lean, idiomatically,
  with proper lexing** — no substring lookahead; Rust stops rendering Lean;
- the legacy textual SST reader is deleted;
- IR growth must be reflected in the planning milestones and instructions;
- directives/memory live in-repo under `.claude/memory/`;
- VCs are rendered as `theorem`s with one assumption per line (no
  `_statement` defs);
- future milestones: a **foundational VC generator** for the IR (formal
  semantics + verified WP, on Loom or similar) — tracked in
  plans/execution-plan.md and DESIGN.md;
- a root **DESIGN.md** documents the pipeline, Verus reuse, TCB, and the
  distance to feature parity (linked prominently from README).

## Architecture: the textual IR boundary (docs/ir.md)

- `vermilion_direct` now lowers pre-poly `FunctionSst` to structured
  expression trees (`vermilion_backend::model::Expr`) and serializes one
  S-expression IR file per run (`ir.rs`); it no longer emits Lean.
- New Lean library `Vermilion.Ir` (Mathlib-free): tokenizer with
  line:column positions (`Sexp.lean`), recursive-descent parser, fail-closed
  decoder (`Decode.lean`), VC generator (`Vcgen.lean`), renderer with
  vrml_sync markers (`Render.lean`), FNV-1a naming/fingerprints
  (`Naming.lean`), JSON manifests (`Manifest.lean`), change-detecting
  emission (`Emit.lean`), and the `lake exe vrml_gen` entry point.
- `generate.rs`, `render.rs`, `naming.rs`, `sst_facade/` deleted from the
  Rust backend; manifest serde schema retained for `vrml_check`/`vrml_sync`.
- Scripts rewired: `run_example.sh`, `run_m1_pipeline.sh` (two-stage
  byte-stability), `test_incrementality.sh`, `run_differential.py`.
- `build.sh` reordered Lean-first so a fresh machine gets a working editor
  (the cvc5 server plugin) as early as possible.

## M2 fragment growth

- **Branches**: `StmX::If` lowers to `(branch cond (then …) (else …))` with
  fresh join symbols (`(fresh …)`) and per-arm join equations; the Lean
  generator scopes arm obligations under the path condition and guards
  arm-discovered facts (`then_k_…`/`else_k_…`) for the continuation. Pure
  `ExpX::If` lowers to `(ite …)`/`Vermilion.iteP` (Int) or an implication
  pair (Prop). Early returns rely on Verus's own `assume false`.
  Assignment destinations unwrap `ExpX::Loc` like vir's `get_loc_var`.
- **Loops**: simple `while` loops lower to entry-invariant obligations,
  havoc `fresh` symbols (modified-variable scan reimplements the
  `compute_assign_info` information absent from the export), an isolated
  `(loop (iteration …) (body …) (exit …))` scope mirroring `sst_to_air`'s
  loop-isolation recipe — including dropping the enclosing context in the
  body (only type facts + invariants + condition are assumed) — and
  back-edge preservation obligations. New obligation kinds
  `invariant_entry`/`invariant_preserve` with dedicated `vrml_check`
  messages. Loops with breaks or decreases fail closed (decreases is the
  next slice; examples use `#[verifier::exec_allows_no_decreases_clause]`).
- Examples `examples/m2-branches`, `examples/m2-loops`; differential corpus
  grown c13–c19 (branches: pass/bad-join/early-return/arm-assert; loops:
  pass/weak-invariant/broken-preservation).

## Validation

- Fresh-machine bootstrap re-validated end to end (handoff gap #1): rustup
  installed from scratch, `./scripts/build.sh` completed exit 0 (Verus
  clone → z3 → patch → vargo → Lean libraries).
- Gate results on the new pipeline (all green at commit time):
  - workspace tests + two-stage byte-stable emission;
  - all six examples pass; `m2-loops` exercises the **manual-proof
    workflow** (`--manual-proofs` / `vrml_sync --fail-on-sorry`): the
    nonlinear `sum_below` bound fails automation, and the committed twin
    `examples/m2-loops/proofs/looping.lean` carries the hand-written
    `nlinarith` proof (twin now tracked in git);
  - incrementality contract holds (A byte-stable, B move-only,
    C callee-local, D contract-propagating);
  - differential corpus grown 12 → 21 cases: **21/21 verdict parity, 9/9
    failure spans** (docs/reports/generated/differential-m1-results.md).

## Also landed

- Discharger ladder v1: `vrml` = `vrml_norm` + `vrml_ladder` (grind →
  omega → smt → simp_all), reporting the winning rung via the
  `trace.vrml.ladder` class for future manager/caching work.
- Watch mode: `scripts/vrml_watch.sh` / `vrml_watch` — reruns the front
  half on save and has Lean re-judge only obligations whose statement hash
  changed (whitespace/moves: "no semantic changes", sub-second). After the
  performance round (slim imports, direct lean, cached env) a full watch
  iteration measures **3.6s** — the M2 <5s one-function edit-loop gate is
  met; the discharge cache remains as a further win.
- Fixed en route: multiple `ensures` at one return site shared an AssertId
  (duplicate theorem names); id-less asserts (termination checks) now get
  per-function ordinals; `vrml` macro no longer fails when normalization
  closes the goal.

## Performance and workflow session (same day, continued)

Profiled `run_example.sh` end to end after the user reported slowness.
Findings and fixes (warm example run: **~62s → ~7-14s**):

- **Lake workspace materialization is the dominant cost**: every `lake`
  invocation runs `git diff HEAD --exit-code` in each dependency checkout
  (~15 packages, Mathlib's tree alone is ~6.5k files) — ~30s wall at 5% CPU
  under disk load, per invocation, and the example driver invoked lake four
  times. Fixed by caching `LEAN_PATH` (`scripts/lean_env.sh`), invoking
  `lean` directly in `vrml_check` and for twin kernel-checks, and gating the
  remaining `lake build` behind a source-newer-than-stamp check.
- `setup_verus.sh` re-scanned the rust_verify binary with `strings` (~10s)
  — stamped; plus a fast-path stamp for the whole script. `verus_env.sh`
  sysroot query cached.
- Import loading: `Vermilion.Obligations` imported all of `Mathlib.Tactic`;
  slimmed to the tactic families the ladder and typical manual proofs use
  (~4.3s → ~2.9s per fresh `lean` process; also speeds the editor's
  per-file workers).
- Duplicate elaboration: the twin is no longer rebuilt when byte-identical
  to the just-judged generated module.

Workflow/UX (user-directed):

- `vrml_check`: colored, clickable (`path:line:col`) human reports on
  stderr with concrete next steps (fix the Rust vs. write a manual proof in
  the twin, with the exact twin block location); goals covered by a
  hash-matching, sorry-free twin proof are reported green as *discharged
  interactively* (bulleted list) and no longer fail the check — the twin is
  kernel-checked by the driver; festive green summary when everything is
  proven; `--llm` emits a verbose self-contained report per failure
  (obligation, spans, Lean's goal state, the generated block, guidance).
- `run_example.sh`: live single-line status (captions replace each other),
  colored good/bad outcomes, trailing blank line, `--clean` flag (never
  touches `proofs/`), passed through by every example `run.sh`.
- Suite: `scripts/run_suite.sh` is the canonical all-milestones entry
  (auto-discovers `examples/*/run.sh`, plus incrementality + differential);
  `run_m1_pipeline.sh` is a compatibility alias. VS Code tasks: suite build
  task and a background watch task, both with `error[vermilion]` problem
  matchers (in-editor squiggles on the Rust spans).

Follow-up polish round (all user-directed): the console prefix is
`[vermilion]`; sync warnings are yellow with a separator line before the
first one; a breathing line precedes the final outcome; outcomes are
green/red; interactively discharged goals are listed as bullets;
`--clean-env` (renamed from `--clean`) plus `--help` on the shared driver;
startup shaved further (inline setup fast-path, cargo no-op builds gated by
source staleness, sysroot cached) — a warm example run is ~7-10s, of which
~2s is the Verus front end and ~4-5s is Lean environment loading + proofs.

## vstd Seq slice (CP4)

`Seq<T>` binders (`(seq TYPE)` in the IR, `Vermilion.Seq` in Lean), spec
calls `len`/`push`/`index`/`empty` (element-typed) mapped onto the named
prelude conventions with `@[simp]` automation lemmas; anything else fails
closed. `examples/m2-collections` (vstd-enabled front end via `use vstd::`
detection in the drivers) and differential cases c24/c25.

## Editor support (M2, user-required before M3)

VS Code extension `editor/vscode-vermilion` (installed by
`scripts/install_vscode_extension.sh`, plain JS, no build step). Checking
is on demand — Cmd/Ctrl+Shift+V on a Rust file (rust-only binding) or the
status-bar click runs that example's `run.sh` in a reused terminal; no
continuous re-checking. On completion it repaints from the pipeline's
check files and manifests: green `✓ verified` marks on functions whose
obligations all passed, red squiggles at the exact Rust spans of failures,
informational "discharged interactively" notes for goals covered by manual
twin proofs, and each Problems entry links to the unproven goal's block in
the `proofs/` twin (also via the "Open Proof Obligation in Twin" command).
Results are surfaced only for files open in the editor, one file at a time
for now. Task problem matchers + a background watch task feed the Problems
panel as well.

Second editor round (user-directed, v0.3): verification triggers on **save**
and runs silently in the background (spawned login shell, output channel —
no terminal); green **gutter checkmarks** (bundled SVG, next to the line
numbers) replace the inline text; the twin links land on the goal right
after `:= by` (verified against `broken.rs`); the twin/manifest files are
watched too, so links stay fresh; the status bar is scoped to the **active
file** (`✓ <file> fully verified` / `✗ N failed in <file>`), shows a spinner
while verifying, and displays nothing from stale artifacts at startup; if
the Rust type checker (rust-analyzer et al.) reports errors in the file,
verification is paused until they are fixed; rustc-style exclusive end
columns are now converted correctly, so squiggles no longer overshoot by
one character.

Third editor round (user-directed, v0.4, Dafny look-and-feel): while a file
re-verifies, the functions under verification show a trembling green
zigzag in the gutter (two phase-shifted SVGs alternated on a timer) and
their checkmarks disappear — the whole file gets the zigzag on its first
run; the checkmark is circled, Dafny-style; typing inside a function
removes its (now stale) checkmark until the next save re-verifies it;
jump-to-proof places the caret exactly on the `sorry` (or the proof-body
start) inside the twin block; files that do not type-check never reach the
verifier — existing Rust-extension errors gate the run, and rustc errors
from the Verus front end (these cargo-less examples are invisible to
rust-analyzer) are parsed from the pipeline output and published at their
spans as `rustc (vermilion front end)` diagnostics.

## Editor v0.5 and the debugging session around it

- Zigzags: thinner, irregular strokes; scoped to the exact functions being
  re-verified via brace-matched function ranges parsed from the source
  (never past a function's closing brace); the whole file only on its very
  first run. Circled red ✗ on failed functions; circled ✓ on verified
  ones, both on the `fn` line. Typing inside a function marks it stale
  (checkmark hidden) without losing its range. Interactively discharged
  goals link to the twin exactly like failures (caret lands on the manual
  proof / the `sorry`). Activation on startup; the ⌘⇧V/Ctrl⇧V shortcut is
  bound to Rust files only (an R-variant was tried and reverted as
  clashing).
- **Bug found and fixed**: the rust-analyzer gate added in v0.4 silently
  blocked every verification — rust-analyzer cannot expand `verus!` macros
  and permanently flags these files. The gate is gone; type errors are
  caught by the pipeline's own front end and published at their spans.
- **Incident (self-inflicted)**: while chasing Lake's per-open ~18s
  workspace materialization (measured: one `git diff HEAD` per package,
  serialized; `lake setup-file` pays it on every editor file-open, and a
  lakefile edit invalidates the trace graph for a one-time full replay —
  the reported 15-minute stall), an experiment that parked mathlib's
  `.git` caused Lake to re-clone the package and wipe its build artifacts.
  Restored via `lake exe cache get`. Conclusion recorded: do not touch
  package checkouts. (The "~18s is out of our reach" conclusion was wrong —
  see logs/2026-07-13-editor-latency-and-m2.md: the cost is a flat
  per-process-spawn security-agent tax multiplied by Lake's 28 git
  invocations, and a caching `lake` shim removes it. The fsmonitor configs
  set during this chase were a red herring and have been reverted.)
- **Incrementality disabled by user decision**: the per-obligation
  verified-hash cache (delta-module elaboration) remains implemented but
  gated behind VERMILION_CHECK_CACHE=1 after proving confusing in live
  editing; every run re-elaborates all non-covered goals. The
  differential harness keeps its whole-case verdict cache (keyed on case
  content + tool/library stamps), which replays unchanged cases without
  Verus or Lean.
- `twin_covers` is signature-exact now: a goal counts as *discharged
  interactively* only when the twin block has the same hash AND
  byte-identical theorem signature with a differing, sorry-free body —
  stale-formatted twin blocks no longer masquerade as manual proofs.
- The `sum_below` manual `nlinarith` proof was found overwritten in the
  working twin (a transient statement-hash change during source
  experiments made vrml_sync replace the block; reverting the source does
  not resurrect a replaced proof — a live instance of the co-evolution
  design TODO). Restored from git; the committed twin remains the source
  of truth for manual proofs.

## Deferred within M2 (next session)

- Ill-typed programs: guarantee (with a suite case) that they are never
  verified and their type errors are highlighted at their spans — recorded
  as an open TODO in plans/execution-plan.md (user-requested).
- Loops with `break`/`continue` (fail closed today; loop `decreases` landed).
- vstd `Set/Map/Multiset` (Seq landed), reveal/hide.
- Deeper Veil manager integration and the discharge cache (replay the
  recorded winning rung instead of re-climbing the ladder).
- Differential corpus growth toward the 60-example M2 gate (25 today).
- M0 automation solve-rate matrix (still deliberately deferred).
