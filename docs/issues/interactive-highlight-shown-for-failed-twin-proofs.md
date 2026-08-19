---
title: Interactively-proven highlight shown even when the backend twin proof fails
labels: [bug, vscode-extension]
state: open
github: 36
---

Obligations covered by an interactive proof in the `proofs/` twin are
highlighted in the editor as "discharged interactively" (blue) even when
that twin proof currently **fails** to kernel-check — a hand-written
proof whose tactic errors out (e.g. an `omega` that no longer closes)
still shows the reassuring interactive-discharge marker instead of a
failure at its span.

Observed 2026-07-17 while iterating on
`case-studies/aeneas/probes/proofs/symcrust_mont_mul_noasserts.lean`:
obligations whose user proofs contained failing `omega` calls were
highlighted as interactively proven while `lean` on the twin reported
errors. Concrete instance: the `mod_reduce(res)` call in
`case-studies/aeneas/probes/symcrust_mont_mul_noasserts.rs:54` (the
`mont_mul.call_requires_5` obligation) carried the blue
interactively-proven highlight while its twin proof failed to
elaborate.

Suspected mechanism: the twin-coverage markers consumed by the editor
are computed statically from the twin's structure (statement hash
matches, no `sorry`) — `vrml_check --twin-coverage-only` and the
`.vermilion/<stem>-check.json` refresh in `scripts/run_example.sh` —
so "has a non-`sorry` proof body" is conflated with "kernel-checked".
A twin that fails elaboration on the fast path falls through to the
full generated check, but the editor's highlight state can still
reflect the optimistic coverage markers.

Acceptance criteria:

- The interactive-discharge highlight appears only for obligations
  whose twin proof was actually kernel-checked in the current state.
- A failing twin proof surfaces as a failure at the obligation's Rust
  span (and/or the twin's Lean location), visually distinct from both
  "automation failed, `sorry` left" and "interactively proven".
- Stale `check.json` state from a previous green run must not survive a
  twin edit that breaks the proof.
