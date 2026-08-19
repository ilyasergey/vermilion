---
name: foundational-vcgen
description: "Future-milestone TODO: formal semantics for the lowered SST/IR fragment in Lean + a foundational (verified) VC generator replacing the syntactic one"
metadata:
  type: project
---

On 2026-07-12 (during the M2 architecture work) the user asked to record
prominently: for future milestones, **give a semantics to SST and write a
foundational VC generator** rather than the syntactic obligation
pretty-printing that `Vermilion.Ir.Vcgen`/`Render` do today.

**Why:** The current pipeline trusts the Rust lowering and the Lean
generator's construction of obligation text. A Lean semantics for the
fragment plus a verified weakest-precondition-style generator would make the
VCs a checked artifact, aligning with the project's Lean-foundational goals.

**How to apply:** Staged: (1) formal semantics of the neutral textual IR
(small, versioned — `docs/ir.md`); (2) VC generation derived from and proved
sound against it; (3) push the semantic boundary toward raw SST as the IR
grows. Per the user (2026-07-12), build it on **Loom** (verse-lab) or a
similar Lean program-logic framework, not from scratch. Loom is no longer in
the Lake dependency tree — the Veil package that carried it transitively was
dropped on 2026-08-19 (Mathlib and lean-smt are required directly now) — so
require Loom directly when this work starts. Recorded in plans/execution-plan.md (open
design TODOs), WORKPLAN.md, DESIGN.md (TCB roadmap), and a TODO header in
lean/Vermilion/Ir/Vcgen.lean. Related: [[lean-side-ir-parsing]],
[[vermilion-conventions]].
