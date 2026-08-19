# m3-closures — spec closures as genuine Lean functions

Run `./run.sh`. `closures.rs` exercises higher-order spec functions:
`spec_fn(int) -> int` parameters, closure literals, composition returning
a closure, and applications of closure-typed values.

**How it lowers.** The shallow embedding makes this the easiest fragment
of all: `spec_fn(T…) -> U` is the Lean arrow type `T → U`, a Verus
closure `|x| e` is `fun x => e`, and applying a spec-fn value is plain
application — no defunctionalization, no `apply` axioms, nothing trusted.
Like Verus, lambdas are total over their binders' Lean types; machine-int
constraints surface on arguments and results at application sites, where
Verus's typing axioms place them.

**Out of this slice:** *exec* closures (closures with
`requires`/`ensures` called from exec code) use a separate mechanism
(`ClosureInner` sub-verification, closure call contracts) and fail
closed for now.

All 3 obligations close automatically (`vrml` unfolds the spec fns and
beta-reduces). Differential guards: c85 (pass), c86 (wrong value fails
at its span in both verifiers).

## generated/ vs proofs/

- `generated/closures/` (one unit module per function, shared spec-fn
  definitions in `Specs.lean`) is overwritten on every run — never edit it.
- `proofs/closures/` is yours; `vrml_sync` keeps proved obligations
  and flags stale ones when the Rust changes.
