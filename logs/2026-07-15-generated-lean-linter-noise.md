# 2026-07-15 — Silence generated-Lean linter noise

User report (wrinkle): checking the merge-sort twin emitted linter warnings —
a dead `isFalse (by simp)` tactic / "never executed" / `<;>`-where-`;`-suffices
on the generated `Decidable` instance, plus a leading `dupNamespace` note.

## Two emitter fixes (`lean/Vermilion/Ir/Render.lean`)

1. **Single-constructor `Decidable` instance.** Each datatype variant gets a
   predicate `is_<v>` and a `Decidable` instance proved generically by
   `cases x <;> first | exact isTrue trivial | exact isFalse (by simp)`. For a
   one-constructor type (`vermilion.tuple_0`) the predicate is always `True`,
   so the `isFalse` alternative is dead (`unusedTactic` /
   `unreachableTactic`) and `<;>` focuses a single goal
   (`unnecessarySeqFocus`). Now the one-variant case emits the exact proof:
   `cases x` then `exact isTrue trivial`. Multi-constructor datatypes keep the
   generic proof (its branches are all reachable — no warnings).

2. **`dupNamespace`.** Generated names routinely repeat a namespace segment:
   a synthesized tuple and its sole Verus variant
   (`vermilion.tuple_0.tuple_0`), and obligations in a function whose name
   equals the file stem (`binary_search.binary_search.assert_1`). These are
   artifacts of the emission scheme, not user oversights, so the generated
   module header now sets `linter.dupNamespace false` (joining the existing
   `unusedVariables` / `nameCheck` suppressions). Chose header suppression
   over renaming constructors/obligations because the names are referenced
   consistently and renaming would ripple through `Ctor`/accessor emission.

The tactic fix is at the source (not a blanket tactic-linter suppression) so
user-authored tactics in the twins' interactive sections keep their linting;
`dupNamespace` is a declaration-name concern users don't hit, so module-wide
suppression there is safe.

## Blast radius

The emitter feeds every generated module. Regenerated all example and
case-study twins (`examples/*/run.sh`, `case-studies/*/run{,_verbatim}.sh`):
all pass, fail=0, and every twin's git diff is exactly the added
`set_option linter.dupNamespace false` header line (and, where a
single-constructor datatype exists, the simplified `Decidable` proof).
Merge-sort — both `mergesort_clean.rs` and the verbatim `mergesort.rs` — now
checks with **zero** warnings.

Also tidied two over-specified `simp` argument lists in user twin proofs that
the pass surfaced (`mergesort.lean`). The same class of leftover in
`case-studies/sorting/proofs/multiset.lean` (four `simp only` sites) is a
pre-existing user-proof cleanup, left as a small follow-up rather than edited
blind.

Wrinkle moved to Fixed. `docs/vcgen.md` unaffected (no VC-generation policy
change — datatype `Decidable` emission and the module header are not part of
the per-statement judgment).
