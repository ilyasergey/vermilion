# M2 sequence concatenation example

[`seqadd.rs`](seqadd.rs) exercises vstd `Seq::add` — the spec `+` on
sequences — the concatenation operator behind calc-style proofs,
extensionality arguments, and merge-sort-style case studies:

- `s + t` lowers to the IR's `(seqadd …)` node (`docs/ir.md`) and renders
  as `Vermilion.Seq.add s t` (Lean `List` append under the hood);
- the prelude carries the characterizing lemmas — `len_add` (additive
  length) and the boundary split `index_add_left` / `index_add_right` —
  tagged both `@[simp]` and `@[grind =]`, so the first `vrml` ladder rungs
  close concatenation goals without any per-goal tuning;
- the three `proof fn`s state exactly those three facts: additive length,
  reading the left part, and reading the right part across the boundary
  (`(s + t)[s.len() + j] == t[j]`).

Run this example with:

```console
./examples/m2-seqadd/run.sh
```

The Verus front end elaborates the file (`--no-verify`), the direct adapter
serializes the textual IR (`docs/ir.md`), `vrml_gen` (Lean) emits
`generated/seqadd/` — one unit module per function, machine output, never
committed — Lean judges
every obligation, and `vrml_sync` maintains the user-editable
`proofs/seqadd/` twins: byte-identical to the generated modules while
automation succeeds and nothing is hand-edited; any obligation automation
cannot close would appear there as a warned `sorry` for you to prove
interactively (a first-class workflow, not a failure mode — your proof
survives regeneration while the statement hash matches).

The differential corpus guards both directions: `c127_seq_add_ok.rs`
(Verus and Lean both accept) and `c128_seq_add_wrong.rs` (reading the
right part with the wrong source sequence — both reject).
