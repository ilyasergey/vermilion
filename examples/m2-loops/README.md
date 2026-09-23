# M2 loops example

[`looping.rs`](looping.rs) exercises the M2 `while` fragment, which mirrors
Verus's loop-isolation discharge:

- every invariant is **checked on entry** under the pre-loop context
  (`invariant_entry_*` obligations);
- the body is verified for an **arbitrary iteration**: the variables the
  loop modifies are replaced by fresh havoc symbols, the invariants and the
  loop condition are assumed (`loop_k_iteration_*` hypotheses), and every
  invariant is **re-checked at the back edge** (`invariant_preserve_*`);
- statements after the loop see only the havoc symbols with the invariants
  and the negated condition assumed (`loop_k_exit_*` hypotheses) — nothing
  discovered inside the body leaks out.

`count_to` needs the minimal `c <= n` invariant; `triple` carries a linear
accumulator invariant through two mutated variables; `sum_below` proves the
closed form of `0 + 1 + … + (n-1)`, whose bound-invariant preservation is
**nonlinear** — beyond today's automation ladder. That obligation shows the
manual-proof workflow: the machine attempt in `generated/` fails,
`vrml_sync` leaves `sorry` in the twin, and the **committed**
`proofs/looping/sum_below.lean` carries the hand-written `nlinarith` proof, which
survives regeneration for as long as the obligation's statement hash is
unchanged. This example runs with `--manual-proofs`: the twin (kernel-checked
by Lake) is the arbiter, and any remaining `sorry` fails the run.

Run this example with:

```console
./examples/m2-loops/run.sh
```

The Verus front end elaborates the file (`--no-verify`), the direct adapter
serializes the textual IR (`docs/ir.md`), `vrml_gen` (Lean) emits
`generated/looping/` — one unit module per function, machine output, never
committed — Lean judges
every obligation, and `vrml_sync` maintains the user-editable
`proofs/looping/` twins: automatic proof bodies match while automation succeeds and
nothing is edited; `sorry` plus a warning wherever a proof needs a human.
