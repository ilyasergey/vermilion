---
name: interactive-proofs-first-class
description: For proof fns, don't chase Verus parity by fine-tuning automation — interactive twin proofs are a first-class path
metadata:
  type: project
---

On 2026-07-14 (during F7, prompted by the c127 `Seq::add` mismatch) the user
set the policy: **for `proof fn`s we do not try to reach full conformance
with Verus by fine-tuning automation.** Some obligations are simply expected
to be proven interactively in Lean — in the user-owned `proofs/` twin — and
those user proofs are then "given as hints to our automation" (they cover
the obligation; longer-term they should feed the ladder as lemmas). The
user's framing on c127: "maybe c127 is not representative: we can always
prove something like this directly in Lean."

**Why:** Chasing SMT-verdict parity rung-by-rung re-imports the opacity of
the SMT encodings; the project's differentiator is the Lean-native
embedding where an interactive escape hatch is idiomatic, not a failure.
What matters is that automation *failure is cheap and legible* (fast, spans
the right obligation, leaves a `sorry` twin to fill), not that automation
closes everything a Verus `proof fn` closes.

**How to apply:**
- Prefer extending the Lean lemma library (prelude facts, `@[simp]`/
  `@[grind]` tags — the M4 "Lean way") over tactic-ladder tuning; accept
  residual `proof fn` mismatches in the differential corpus when a short
  interactive twin proof discharges them.
- Keep ladder failures graceful: per-rung heartbeat budgets
  (`Vermilion/Obligations.lean`, `vrml_ladder`) exist so a diverging rung
  cannot starve later rungs or turn failure into a minute-long timeout.
- Differential parity reporting should distinguish "Lean pass via
  automation" from "Lean pass via user twin proof" rather than counting
  twin-discharged cases as failures (design TODO in
  plans/execution-plan.md).

Related: [[m4-lean-native-libraries]], [[vermilion-conventions]],
[[spec-fns-no-inlining-no-fuel]].
