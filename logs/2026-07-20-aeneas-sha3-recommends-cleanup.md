# Aeneas SHA-3 `recommends` cleanup

Date: 2026-07-20

## Reason

The SHA3 annotation layer had accumulated 15 `recommends` blocks on logical
helper functions. Most repeated one of three facts: the flattened state has 25
lanes, a byte fragment has at most eight bytes, or a recursive cursor lies in
the loop's intended range.

The pinned Verus guide clarifies that a specification function cannot have
logical `requires`/`ensures`; `recommends` is instead lightweight diagnostic
metadata. Callers are not obligated to prove it. Verus normally rechecks
recommendations only to explain another verification failure; eager checking
requires `spec(checked)`. The SHA3 helpers are ordinary `spec fn`s. Therefore
the clauses neither restricted their logical domains nor supplied assumptions
to callers.

## Change

All 15 clauses were removed from
`case-studies/aeneas/sha3/verification/src/algos.rs`. No executable Rust token
changed, no logical body changed, and no recommendation was converted into an
assumption or axiom. Recursive `decreases` clauses, executable contracts, loop
invariants, and bounds checks remain intact.

Vermilion's generated Lean specification definitions are byte-for-byte equal
apart from their source-location comments. The tracked `Specs.lean` was
regenerated to update those locations; the interactive proof bodies did not
change.

## Focused validation

- pinned Verus: **47 verified, 0 errors**;
- Vermilion/Lean: **169/169 obligations**, **22** proof twins, no `sorry`;
- source guard: all **7** Rust files and **3** metadata files, executable-token
  identity after erasing **78** typed regions.

The complete six-phase suite passes all **48** registered runners,
deterministic emission, incrementality/fail-closed/evidence/editor-root gates,
and **176/176** differential verdict parity with **86/86** failure-span
agreement. Median slowdown was **15.92×**. The initial sandboxed run reached
phase 4 and was stopped only because its diagnostic `tee` could not write
`/dev/stderr`; the permission-enabled rerun completed successfully and is the
result recorded here.

During the same documentation stage, the parity acceptance gate was made
explicit: the eventual external bridge must import freshly generated
`algos.Specs` and exact pinned `Sha3.Spec` directly and prove equivalence
between those names. A third restated specification is not acceptable.

This is a proof-scaffolding cleanup, not an expanded SHA3 claim. New helpers
for unchanged `copy_to` should be total and should use explicit executable
contracts/invariants for facts the proof actually needs.
