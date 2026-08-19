---
name: m1-user-tutorial-deliverable
description: Formal M1 completed 2026-07-12; tutorial delivered at docs/TUTORIAL.md — keep it current as milestones land
metadata: 
  node_type: memory
  type: project
  originSessionId: 6f7b4393-71c0-4e9e-aafc-4b4a1fad4626
---

Formal M1 (straight-line gate) closed on 2026-07-12: direct FunctionSst
adapter, widened fragment, span-mapped diagnostics (`vrml_check`),
incremental fingerprints, and 12/12 differential verdict parity. The
hands-on tutorial the user requested exists at `docs/TUTORIAL.md`.

**Why:** The user evaluates milestones from the user standpoint and asked for
the tutorial as the M1 closing deliverable; they will expect it updated as
M2 (loops, recursion, collections, watch mode) lands.

**How to apply:** When workflow-visible behavior changes (scripts, macros,
example layout), update `docs/TUTORIAL.md` in the same commit. Next milestone
is M2; its user-visible additions should extend the tutorial. Related:
[[vermilion-conventions]], [[reports-live-in-docs]].
