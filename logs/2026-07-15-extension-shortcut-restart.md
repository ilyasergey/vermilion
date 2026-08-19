# 2026-07-15 — Extension: ⌘⇧R restarts an in-flight verification

User report: after the per-file runner fix, pressing the verify shortcut on
`mergesort.rs` / `mergesort_clean.rs` no longer restarted verification.

## Root cause

`verify()` guards against duplicate spawns with an `inFlight` set keyed by the
runner script. `verifyCurrentFile` (⌘⇧R) went through the same guard, so while a
pass was in flight the shortcut silently no-opped (returns `true`, no message).

That window used to be short. The per-file runner fix now drives
`mergesort.rs` through `run_verbatim.sh`, whose `--manual-proofs` twin
(~3900 lines) kernel-check keeps the run in flight for a long time — long
enough that ⌘⇧R felt dead. (A spawn that emits `error` without `close` — bad
shell, missing runner — could also wedge `inFlight` permanently, since there
was no `error` handler.)

## Fix (`editor/vscode-vermilion/extension.js`)

- `verify()` takes `{ force }`. Automatic triggers (open + save firing
  together) still dedupe on `inFlight`. An explicit ⌘⇧R passes `force: true`:
  it cancels the in-flight child (`kill()`), clears its `inFlight`/`verifying`
  state, and falls through to a fresh run.
- Live children are tracked per runner in a `children` map, each with a
  `canceled` flag and its `documentPath`. The cancelled child's `close`
  (and its verdict poller) see `canceled` and skip all bookkeeping, so a
  killed run cannot clobber the new run's state or paint a stale verdict.
- Added a `child.on('error', …)` handler that releases `inFlight` and repaints,
  so a spawn that never starts can no longer wedge the guard.

Parse-checked the module (jsc `new Function(src)`); ran the merge-sort clean
and verbatim runners — both still verify (0 sorry, twin kernel-checked).

Recorded under Fixed in `docs/wrinkles.md`.
