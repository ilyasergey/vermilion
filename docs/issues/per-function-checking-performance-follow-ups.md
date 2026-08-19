---
title: Per-function checking performance follow-ups
labels: [enhancement, vcgen]
state: open
github: 42
---

Per-function emission (the default since 2026-07-19) checks each function's
unit module in its own parallel `lean` process. Correctness and verdicts are
mode-invariant (`scripts/test_emission_modes.sh`), but two costs are now paid
per unit instead of per file:

1. **The Lean import closure (~2.2 s) is paid by every unit process.** Units
   run concurrently (bounded by cores), so wall-clock on small files is
   comparable to per-file mode — but total CPU is higher, and a file with
   more changed units than cores serializes the overflow. The structural fix
   is the persistent Lean worker already staged in
   `plans/execution-plan.md` ("Foundational and workflow work before M5"):
   import the check environment once, elaborate successive unit deltas in
   the warm process. Per-function emission makes that payoff strictly
   larger — the worker amortizes N unit deltas per save instead of one
   module.

2. **The twin fast path skips at file granularity only.** After a green
   generated check, `vrml_check --twin-check --skip-identical` skips twins
   byte-identical to what Lean just judged, and the `--probe` fast path
   skips the whole generated check when every twin is current — but a
   one-function edit still re-elaborates every non-identical unit twin of
   that file. Teach the fast path to skip per UNIT: an interactive twin
   whose unit's obligations are all unchanged (statement hashes) since the
   last kernel-check needs no re-elaboration, independent of its siblings.

Also worth measuring once the worker lands: whether the shared `Specs`
olean compile (serial, content-cached, re-paid when spec definitions
change) should move into the worker too.
