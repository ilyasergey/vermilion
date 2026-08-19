---
title: Formal semantics for the neutral IR
labels: [feature, vcgen, foundations]
state: open
github: 3
---

**Goal.** Today the VC pipeline is *syntactic and trusted*: the Rust lowering
builds a `FunctionView`, `Vermilion.Ir.Vcgen` folds it into `Obligation`
values, and `Vermilion.Ir.Render` prints them as Lean theorem statements. The
correspondence between "the obligation we print" and "what the program
actually means" is currently guaranteed only by construction and by the
prose/judgment spec in [`docs/vcgen.md`](../vcgen.md). This item gives the
neutral IR a *formal semantics in Lean* and re-derives VC generation as a
foundational construction proved sound against it — turning the VCs from a
trusted artifact into a checked one.

This is the standing TCB roadmap item, already recorded as a prominent design
TODO in [`plans/execution-plan.md`](../../plans/execution-plan.md), `WORKPLAN.md`,
`DESIGN.md`, the header of
[`lean/Vermilion/Ir/Vcgen.lean`](../../lean/Vermilion/Ir/Vcgen.lean), and the
binding memory
[`foundational-vcgen`](../../.claude/memory/foundational-vcgen.md).

### Design sketch

Staged, smallest-versioned-surface first:

1. **Semantics of the neutral IR.** Define the meaning of the IR fragment
   (`Expr`, `Stmt`, `FunctionView` — see
   [`lean/Vermilion/Ir/Ast.lean`](../../lean/Vermilion/Ir/Ast.lean) and
   [`docs/ir.md`](../ir.md)) as Lean definitions: an expression denotation and a
   statement-level program semantics (state transformer / big-step relation)
   over the same prelude models the obligations already use. The IR is small
   and versioned, which is why it — not raw SST — is the right first boundary.
2. **Foundational VC generation.** Replace (or shadow) the syntactic
   `processStmt` fold with a weakest-precondition-style construction derived
   from that semantics, and prove it sound: every generated obligation, if
   discharged, implies the program satisfies its contract. Build on **Loom**
   (already in the Lake dependency tree via Veil) or a similar Lean
   program-logic framework rather than from scratch.
3. **Push the boundary toward SST** as the IR grows, so more of the trusted
   Rust lowering comes under the semantics over time.

The soundness obligations this effort must discharge are enumerated in
[`docs/vcgen.md`](../vcgen.md); the foundational generator must reproduce the
per-statement judgment `σ ⊢ s ⇒ σ' ⊣ O` specified there.

### Open questions

- **Coexistence vs. replacement.** Does the foundational generator replace
  `Vcgen`/`Render`, or run alongside it as a checked oracle that certifies the
  syntactic output (a discharged proof that the printed obligations match the
  WP construction)? The latter is a lighter first step.
- **Reveal/visibility and hints in the semantics.** The spec-fn unfold policy
  (`unfolds`, reveal rounds) and broadcast hints are proof-search inputs, not
  semantics. How are they modelled so soundness is stated over the semantics
  while coherence with Verus's visibility verdicts is preserved (see
  [`spec-fns-no-inlining-no-fuel`](../../.claude/memory/spec-fns-no-inlining-no-fuel.md))?
- **Loop and branch discipline.** The current generator encodes Verus's
  path/SSA-join and spun-off-loop discipline syntactically; the semantics must
  justify those exact obligations (invariant entry/preserve/break, guarded
  join facts) rather than a differently-shaped but equivalent set.
- **Where the trust boundary lands.** Even foundational VC generation still
  trusts the Rust SST→IR lowering; what is the smallest honest statement of
  what remains in the TCB after this lands (cf. [`docs/trust.md`](../trust.md))?
