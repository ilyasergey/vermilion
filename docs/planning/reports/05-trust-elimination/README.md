# Trust Elimination: Growing the Lean Artifact Until Verus's Trusted Layers Disappear

This folder plans the *post-parity* program: how the Vermilion Lean artifact — today a prelude,
an obligation library, and a discharger ladder — is gradually expanded until it eliminates, one
by one, the layers that Verus (and base-camp Vermilion) ask users to trust, in both the
implementation and the logical foundations.

It builds directly on the trust ledger of
[`../02-verus-architecture/05-soundness-path.md`](../02-verus-architecture/05-soundness-path.md)
(items T1–T9) and complements [`../04-implementation-plan/`](../04-implementation-plan/): that
plan reaches feature parity with a *smaller and auditable* TCB; this plan makes the TCB
*monotonically shrink* afterwards, with each stage a self-contained expansion of the Lean
artifact behind interfaces the base camp already committed to
(§5.7 of the soundness chapter: named abstract interfaces, SST metadata on every theorem, no
elaboration cleverness in statements).

## Chapters

| Chapter | Focus |
|---|---|
| [`01-staged-plan.md`](01-staged-plan.md) | The stages R0–R7: what Lean code gets written, what trusted layer it deletes, and the gate that certifies the deletion. |

## The two tracks

The trusted surface decomposes into **logical foundations** (things *asserted* in Lean: axioms,
opaque conventions, trusted solver verdicts) and **implementation** (Rust code whose output is
believed: the `sst_to_lean` emitter and everything upstream). They shrink by different
mechanisms and can proceed largely in parallel:

- **Track F (foundations)**: replace axioms with proofs — solver reconstruction by default
  (R1), vstd's mathematical axioms proved (R2), convention definitions pinned (R3), Iris-Lean
  models for ghost state (R4).
- **Track I (implementation)**: replace belief with checking — per-run translation validation
  against a deep embedding of SST (R5), then a Loom-derived certified VC generator that makes
  validation a one-time theorem (R6), then the concurrency/erasure frontier (R7).

## Where the ledger starts and where it can end

| Trusted layer (base camp) | Stage that removes it | Terminal status |
|---|---|---|
| Solver verdicts in trust mode (T7) | R1 | eliminated (reconstruction default; islands already proof-producing) |
| vstd mathematical axioms, ~176 `axiom fn` (part of T5-adjacent axiom base) | R2 | eliminated (proved theorems, same names) |
| Prelude convention definitions (T3) | R3 | pinned: definitions + probe/differential evidence (nothing left to *prove* — conventions are choices) |
| Ghost-state interfaces: `PointsTo`, invariants, tokens (T4) | R4 | eliminated (Iris-Lean models behind unchanged interfaces) |
| `sst_to_lean` emitter + type translation (T2) | R5, then R6 | reduced to a checked correspondence (R5), then to a derived artifact with nothing to validate (R6) |
| Exec/ghost erasure soundness (inside T1, open even in VerusBelt) | R7 | research frontier; plan keeps it reachable, does not promise it |
| rustc + Verus front/middle end (T1) | — | permanent in kind (shared with Verus; R6/R7 semantics subsume parts, far future) |
| `external_body` / `assume_specification` FFI contracts (T5) | — | permanent in kind; shrinks item-by-item by dogfooding vstd |
| User `admit()`/`assume()`/`axiom fn` (T6) | — | user's choice; ledger-tracked, `--no-cheating` maps over |
| Lean kernel (+ compiler where `native_decide` is used) (T8) | — | the floor; `lean4checker` on samples, `native_decide` flagged per obligation |
| Top-level specs (T9) | — | permanent for every verifier; mitigated by multi-modality (test/model-check the same spec) |

## Principles

1. **Interfaces frozen, instances swapped.** Every stage replaces an axiomatic instance behind a
   named interface (`Vermilion.Seq`, `Vermilion.PointsTo`, `Vermilion.Inv`, …) with a proved
   model. Emitted obligation statements never change; a stage is invisible to users except in
   the ledger. This is the single discipline that makes the whole program incremental.
2. **The ledger is the deliverable.** Each stage's gate is a measured, CI-enforced decrease in
   the axiom ledger (`../04-implementation-plan/03-validation-milestones.md`), never prose. The
   ledger is generated from the Lean artifact (`#print axioms` closure over all
   `@[vermilion_obligation]` theorems + trust-mode flags), not hand-maintained (R0).
3. **No stage blocks parity work.** Every stage is behind-the-interface Lean library work plus,
   at most, additive metadata in the emitter. If a stage stalls (R4 and beyond carry research
   risk), the shipped tool is unaffected — it just trusts more, visibly.
4. **Monotonicity.** A stage may not land if it increases any ledger category. Regressions
   (e.g., a new vstd port bringing new axioms) must arrive with their own ledger budget.
