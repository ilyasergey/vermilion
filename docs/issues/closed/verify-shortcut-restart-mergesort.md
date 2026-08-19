---
title: ⌘⇧R stopped restarting verification on mergesort files
labels: [bug, vscode-extension]
state: closed
github: 16
---

⌘⇧R (verify shortcut) stopped restarting verification on `mergesort.rs` /
`mergesort_clean.rs`.

**Resolution.** The `inFlight` dedupe guard silently no-opped the shortcut
while a pass was running; the per-file-runner fix routed `mergesort.rs` through
the slow verbatim runner, making that window long enough to feel dead. An
explicit ⌘⇧R now cancels the in-flight run and starts fresh (`{force}`);
automatic open+save triggers still dedupe. Also added a spawn-`error` handler so
a failed run can't wedge the guard permanently.

*Ported from `docs/wrinkles.md` (Fixed).*
