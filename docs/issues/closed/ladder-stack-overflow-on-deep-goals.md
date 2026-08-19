---
title: vrml ladder can blow the interpreter stack on deep goals; budgets guard heartbeats, not stack depth
labels: [bug]
state: closed
github: 51
---

`case-studies/aeneas/probes/proofs/dalek_mul_internal.lean` (ORPHANED
machine output: untracked per-file twin of a probe whose source no
longer exists — the tracked layout has no `dalek_mul_internal`; delete
it together with its `generated/dalek_mul_internal.*` siblings to
unblock the `CaseAeneasProbes` lake build) crashes `lean` with exit
134 — a ~9,800-frame stack overflow
inside the `vrml` ladder's rung iteration
(`Vermilion._aux_…_tacticVrml_ladder_1` →
`Lean.Elab.Tactic.tryTactic?` recursion) while elaborating obligations
whose terms are deep `Seq.update`/substitution chains (the issue #39
shape). Confirmed on both the pre-DL8 and DL8 libraries, so this is a
standing ladder robustness gap, not churn fallout.

The per-rung heartbeat budgets (interactive-proofs-first-class policy)
make divergence cheap and legible — but they cannot catch a stack
overflow, which kills the whole `lean` process: one bad obligation takes
down its entire module build (and with it any `lake build` sweeping the
twin library, e.g. the suite's phase-5 twin-library pass).

Wanted, in order of preference:

1. Bound the recursion: the ladder driver's rung/goal iteration should
   be a loop, not recursion through `tryTactic?` continuations, so depth
   scales with rung count only.
2. Guard the goal size before expensive rungs (the emitted terms' node
   count is known at generation time; a `vrml` that sees a
   megabyte-scale goal should fail fast to `sorry`-able failure like a
   budget exhaustion, not crash).
3. The real fix is upstream of the ladder: stop emitting megabyte goals
   (issues #39 and `share-substituted-values-in-the-lowering`).


---

**Resolved (DL8, commit 5b66f18):** scalar_saturate's per-pair product bound now uses the closed-form `mul_lt_mul''` instead of `nlinarith` (which multiplied the whole ~100-hyp context and overflowed the native stack), plus a fail-closed entry guard on `vrml_ladder` (node cap 100k / hyp cap 80). `mul` and kin now fail gracefully into interactive twin obligations instead of aborting the build. Differential parity unchanged (191/191).
