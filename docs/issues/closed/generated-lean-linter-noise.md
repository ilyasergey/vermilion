---
title: Generated-Lean linter noise (Decidable dead branch, dupNamespace)
labels: [bug, vcgen]
state: closed
github: 9
---

Remove the warnings from checking a generated Lean file — the `Decidable`-
instance tactic linters (`unusedTactic` / `unreachableTactic` /
`unnecessarySeqFocus`) and the leading `dupNamespace` note.

**Resolution.** Two emitter fixes in `lean/Vermilion/Ir/Render.lean`: (1) a
single-constructor datatype's variant predicate is always `True`, so the
generic `cases x <;> first | isTrue … | isFalse …` left a dead `isFalse` branch
and focused a single goal — now emits `cases x` / `exact isTrue trivial` for the
one-variant case; (2) generated names routinely repeat a namespace segment
(`vermilion.tuple_0.tuple_0`; also `binary_search.binary_search.assert_1` where
the file stem equals the function name), a naming artifact — the module header
now sets `linter.dupNamespace false`. Whole suite regenerated and re-verified
(fail=0); every twin's only change is these lines. (Also tidied two
over-specified `simp` arg lists surfaced in user twin proofs; the equivalent
leftovers in `case-studies/sorting/proofs/multiset.lean` remain as a small
follow-up.)

*Ported from `docs/wrinkles.md` (Fixed).*
