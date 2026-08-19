# M2 recursion example

[`recursing.rs`](recursing.rs) exercises recursive functions with
`decreases` measures:

- at function entry the measure's value is captured (`decrease%init`
  bindings from Verus's own SST);
- every recursive call site carries a **termination obligation** — for the
  integer measures of this fragment,
  `(0 ≤ cur ∧ cur < init) ∨ (cur = init ∧ …)` — reported as "could not
  prove termination" at the call's span when it fails;
- the recursive call otherwise behaves like any call with a contract: its
  postcondition is instantiated at the call site over a fresh result symbol.

Run this example with:

```console
./examples/m2-recursion/run.sh
```

The Verus front end elaborates the file (`--no-verify`), the direct adapter
serializes the textual IR (`docs/ir.md`), `vrml_gen` (Lean) emits
`generated/recursing/` — one unit module per function, machine output,
never committed — Lean judges
every obligation, and `vrml_sync` maintains the user-editable
`proofs/recursing/` twins.
