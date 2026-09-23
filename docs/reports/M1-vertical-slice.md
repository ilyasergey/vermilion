# M1 vertical-slice status

This is a dated measurement record. Tool versions, counts, and timings below
apply to the recorded runs. For current setup and scope, see the
[development guide](../development.md) and [case-study registry](../../case-studies/README.md).

## Working end to end

`scripts/run_suite.sh` (which absorbed the original `run_m1_pipeline.sh`; the alias was removed 2026-07-20) verifies a real `verus!` file with the pinned
Verus front end, captures pre-poly SST, translates the supported fragment, and
checks automatic, reconstructed-SMT, and exact interactive Lean proofs.

Every emitted obligation has:

- a deterministic `<crate>.<module>.<function>.<kind>_<AssertId>` name;
- a named `<obligation>_statement : Prop` used by every proof route;
- Rust span, `AssertId`, obligation kind, function, and statement hash metadata;
- a `@[vermilion_obligation]` automated theorem.

Interactive theorems carry `@[vermilion]` and name the generated statement as
their type. This makes mismatch/staleness a Lean type error; the attribute does
not bypass the kernel.

## Tests and examples

- five Rust unit tests cover SST parsing, context, naming/hash stability,
  rendering, and no-op incremental emission;
- `generated/simple.lean` is derived from `simple.rs` and contains overflow,
  source-assertion, and postcondition VCs with provenance comments;
- `proofs/simple.lean` demonstrates reconstructed cvc5 and interactive Lean
  proofs of exact emitted statement constants;
- `lake build M1Pipeline` checks the colocated example independently.

## Still required before formal M1 completion

- replace the textual SST-log handoff with direct pinned `FunctionSst` access;
- widen type/expression/statement translation beyond the demonstrated fragment;
- invoke the path through a Verus-compatible CLI and return Rust-span JSON;
- add differential verdict tests over the straight-line oracle fragment.
