---
title: Colocate macro-expanded functions with their invoking crate file
labels: [bug, vcgen]
state: closed
github: 44
---

A function whose SST span points into a macro's *definition* site is
colocated to that site instead of the crate file that invoked the macro.
Measured by the dalek-lite `calc!` probe
(`case-studies/dalek-lite/montgomery_inverse_calc.rs`): the lemma lowers
cleanly to 4 obligations, but the `calc!` expansion makes the function's file
attribute read `vstd/calc_macro.rs`, so `vrml_gen` writes the generated units
into a spurious repo-root `vstd/generated/` tree and `vrml_check` cannot find
the manifest at the expected colocated path — the run dies with "cannot read
manifest … No such file or directory".

The construct itself is NOT the gap: the calc steps arrive as ordinary scoped
asserts our machinery already lowers (the module's spec fns and the four
obligations are generated correctly, just misplaced).

Fix: resolve a function's colocation root from the *invocation* span
(macro-backtrace root), never from the expansion span; add a differential
guard with a `calc!` chain and a suite check that no output lands outside the
source's own `generated/` tree. dalek-lite has 32 `calc!` sites, so this
blocks every lemma-bearing module there (DL3 in
`case-studies/dalek-lite/PLAN.md`).

**RESOLVED 2026-07-20 (dalek-lite DL3).** Fixed at the span's origin rather
than in colocation heuristics: fork commit `486008364` makes `to_air_span`
resolve macro-expansion spans to their **source call site** (rustc's own
diagnostic practice), so both the function's file attribution and every
obligation's diagnostic land in the user's crate. Ordinary `verus!{}` token
spans are call-site spans already and are unaffected — fork native tests
hold exactly (basic 62/0/1, functions 11/11, release vstd 1972/0) and the
Vermilion corpus keeps 182/182 verdict parity with 89/89 failure-span
agreement. Pin bumped to `48600836424a`. Evidence: the verbatim dalek-lite
`lemma_montgomery_inverse` (`calc!` chain) now verifies 4/4 automatically
with correctly colocated output (`probes/run.sh` green gate); the spurious
`vstd/generated/` tree and the explore.sh known-defect arm are gone.
