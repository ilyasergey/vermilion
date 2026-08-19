---
title: Share obligation contexts and name result values in emitted twins
labels: [feature, vcgen]
state: open
github: 39
---

Two compounding emitter costs, both measured on
`case-studies/aeneas/curve25519`:

1. **Context duplication:** every obligation restates the full
   hypothesis telescope (~110 binders there). The twin is ~5k lines of
   which ~85% is repeated statement text — the single biggest reason
   an Aeneas proof of the same fact is 41 lines. Emitting obligations
   inside a `section` with shared `variable` binders (per function)
   removes the duplication without touching statement hashes'
   semantics (hash the closed statement as today).

2. **Inlined result values:** env-substitution inlines the computed
   result (a 4k-char `Seq.update` chain) into every ensures that
   mentions it. A contract-level spec-fn ensures — e.g. stating the
   dalek `wide_as_nat(z) == as_nat(a)*as_nat(b)` identity directly on
   `mul_internal` — unfolds to megabyte-scale goals: interactive
   elaboration crashes and the ladder burns its budget traversing the
   term. Naming the result once (`let z := …` binder or a fresh symbol
   with a defining equation) makes such contracts linear-sized; it
   also unblocks the natural spec-bridge composition
   (`curve25519_specbridge.lean` currently bridges at the per-limb
   level for exactly this reason).

Ship with: emitter + parser + docs/ir.md + docs/vcgen.md in the same
slice, statement-hash migration story for existing twins, and the
curve25519 tenth-ensures experiment (reverted 2026-07-17, see the
study README) turned back on as the acceptance test.
