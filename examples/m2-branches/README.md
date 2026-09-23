# M2 branches example

[`branching.rs`](branching.rs) exercises the M2 conditional fragment:

- **tail-position `if`** (`max_u32`): both arms assign the return slot; the
  continuation sees a fresh join symbol constrained by
  `condition → join = then-value` and `¬ condition → join = else-value`;
- **one-armed reassignment** (`clamp_increment`): a `let mut` local updated
  in one arm joins against its fall-through value;
- **nested conditionals + early return in a branch** (`sign`): the early
  return's postconditions are checked on that path only, and the path's
  continuation is closed by a guarded `assume false`, exactly like Verus;
- **spec-level conditionals** (`abs_small`): `if` inside `ensures` lowers to
  the named `Vermilion.iteP` convention (or to an implication pair when the
  arms are propositions).

Obligations inside an arm carry the arm's path condition as a plain
hypothesis (`branch_k`); facts an arm discovers reach statements after the
`if` only as guarded hypotheses (`then_k_…` / `else_k_…`).

Run this example with:

```console
./examples/m2-branches/run.sh
```

The Verus front end elaborates the file (`--no-verify`), the direct adapter
serializes the textual IR (`docs/ir.md`), `vrml_gen` (Lean) parses it and
emits `generated/branching/` — one unit module per function, machine
output, never committed — Lean
judges every obligation, and `vrml_sync` maintains the user-editable
`proofs/branching/` twins: automatic proof bodies match while automation succeeds and
nothing is edited; `sorry` plus a warning wherever a proof needs a human.
