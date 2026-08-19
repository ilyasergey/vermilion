---
title: Learn proof automation from the accumulated interactive twin proofs
labels: [feature]
state: open
github: 55
---

**Vision: a proof automation that recursively improves itself from its
own interactive proofs.** Every hand-written twin is training data. A
proof a human (or agent) supplies today for one obligation encodes a
reusable discharge strategy; harvested into the `vrml` ladder as a rung
or lemma, it discharges that whole *shape* automatically forever after.
So each acquisition should leave the automation strictly stronger than
it found it, and the marginal human proof burden should *fall* with
scale rather than grow — the opposite of the usual verification
experience.

The loop, run continuously:

1. **Acquire** a crate; the ladder auto-closes what it can, leaving a
   span-mapped interactive worklist.
2. **Prove** the residue interactively (marked `-- vrml:interactive`).
3. **Learn**: mine the new proofs for recurring tactic skeletons and
   load-bearing lemmas; promote the high-frequency ones into ladder
   rungs / `@[grind]`/`@[simp]` prelude lemmas.
4. **Re-verify**: re-run the sweep; VCs migrate from the interactive
   column back to auto-verified. The scoreboard's twins X/Y ratio
   drops without losing coverage — a measurable improvement signal.
5. **Repeat** on the next crate, now with a stronger ladder; the tail
   of genuinely-novel obligations shrinks each cycle.

The fixed point is an automation that has internalized a domain's proof
idioms (here: bounded-limb field arithmetic, constant-time sequence
rebuilds, loop-invariant discharge) so thoroughly that a *new* crate in
the same domain verifies almost entirely automatically — and the only
residue is genuinely new mathematics, which becomes the next round's
training data. Kept honest by construction: everything promoted is
kernel-checked Lean (rungs prove, never assume), so a stronger ladder
never enlarges the trusted base — only the search it can do without a
human.

This DL8 phase-2 corpus is the first training set. Mine it to
strengthen the ladder so the *next* acquisition needs fewer hand
proofs — the standing "feed interactive proofs back as lemmas/rungs"
policy ([[interactive-proofs-first-class]]) made concrete, measurable,
and self-compounding.

Observed recurring proof shapes worth capturing as rungs/lemmas (from
the field_u64 fills):

- **Seq rebuild-equality**: `get_limbs (mk (update/push chain)) =
  target`, closed by `Seq.ext` + per-index `interval_cases` over
  `index_update_*`/`index_push_*`. Every constant-time conditional and
  the loop-built arithmetic results share it. Candidate: a
  `vrml_seq_ext` rung that recognizes a `Seq`/FieldElement-equality
  goal, applies `Seq.ext`, and dispatches indices.
- **Loop-exit invariant discharge**: an ensures/assert that restates a
  `loop_0_exit_*` invariant modulo the constructor-accessor identity —
  closable by instantiating the exit invariant at the occurring
  indices (the `scalar_saturate` bounded-forall machinery already does
  the instantiation; it needs the ext step).
- **Overflow-freedom from limb bounds**: `sum % 2^64 = sum` from
  `fe51_limbs_bounded`/`add_req` — a bound-lookup + `Int.emod_eq_of_lt`.

Mechanism ideas: (1) tag frequently-used twin lemmas `@[grind]`/`@[simp]`
into the prelude; (2) add the recognizers above as ladder rungs; (3)
a lightweight miner that scans `-- vrml:interactive` blocks, clusters by
tactic skeleton, and reports the highest-frequency shapes as rung
candidates. Success metric: re-running the DL8 sweep after the new
rungs land shifts VCs from the interactive column back to auto-verified
(the scoreboard's twins X/Y ratio drops without losing coverage).

Do this AFTER the phase-2 interactive corpus is sizable enough to
generalize from — premature rungs overfit one function's shape.
