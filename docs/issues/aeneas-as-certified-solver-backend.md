---
title: Use Aeneas as a certified solver backend for specific programs
labels: [feature, foundations]
state: open
github: 40
---

Aeneas and Vermilion share a host prover (Lean) and a trust story
("Lean is the checker"), but reach different fragments: Aeneas
translates borrow-heavy safe Rust (nested borrows in signatures,
`&mut` returns, reborrowed loop cursors, recursive heap datatypes)
that Vermilion's sequential prophecy discipline fails closed on, while
Vermilion carries auto-active Verus contracts, quantified specs, and
the differential oracle. **Could Aeneas serve as a certified backend
for the programs it handles better — a per-function discharge route
alongside the `vrml` ladder — without widening the trusted base?**

The point is not to call an external SMT-style oracle whose verdict we
trust. Aeneas emits **pure Lean definitions plus proof terms the Lean
kernel checks** — so an Aeneas-produced fact is a kernel-checked
theorem, exactly like a twin proof. The question is whether we can
route selected functions through it and compose the result back into a
Vermilion obligation.

Sketch (to be assessed, not committed):

- **Where it helps:** a function outside our fragment but inside
  Aeneas's (a `Box`ed-list helper, an `&mut`-returning accessor). Its
  Vermilion caller currently fails closed at lowering. If Aeneas
  translates that callee to a Lean definition + a proved functional
  spec, the caller could `assume` the callee's contract exactly as it
  does for any called function — the contract now backed by a
  kernel-checked Aeneas theorem instead of a Verus `ensures`.
- **The seam to design:** aligning the two toolchains' models of the
  same value. Aeneas represents a `Vec<T>` via its backward-function
  encoding; Vermilion via the `Seq` view. A bridge theorem (the
  Rung-A pattern already used for specs, PLAN §2) would identify them
  per type, once.
- **Trust:** zero new axioms if Aeneas's output is kernel-checked Lean
  (its extraction correctness joins the TCB the same way ours does —
  and Aeneas's `mechanized-llbc` is narrowing that). This is a
  foundations question: does routing through Aeneas *reduce* net trust
  (its borrow reasoning is proof-carrying) or merely relocate it?
- **Differential story:** functions discharged via Aeneas have no
  Verus verdict to compare against (Verus may reject the program), so
  they need a disposition category, like the anchored-spec case.

Concrete first experiment: take one Aeneas flagship whose borrow shape
we fail closed on (the ICFP'22 hashmap `get_mut`, or the BST cursor
loop), translate it with Aeneas into our Lean environment, and see
whether a Vermilion caller can consume its proved spec through a
type-model bridge. Relates to the S2 borrow slice
(`docs/reports/target-projects.md`), the spec-bridge design
(`case-studies/aeneas/PLAN.md` §2), and the foundational-semantics
work (issue #3).
