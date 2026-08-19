# 2026-07-14 — V4: the `broadcast use` hint channel

The hint half of the extrinsic-proofs design (H2). `broadcast use G` of a
vstd broadcast GROUP now feeds the ladder registry hints.

## Mechanism (end to end)

- **SST finding**: `broadcast use G` appears as `StmX::Fuel(G, 1)` — the
  same node as `reveal`. Single-lemma `broadcast use` was ALREADY handled
  (the adapter turns `Fuel(lemma,_)` into an `Assume` of the lemma's
  quantified requires→ensures fact, strictly stronger than a hint). Only
  GROUPS (and fact-less lemmas) fell through to a "no spec body" error.
- **Adapter**: the Fuel handler now, for a group / undeclared / fact-less
  target, emits `Statement::Broadcast(canonical_path)` (`vstd::<segs>`)
  instead of erroring.
- **IR**: `(broadcast STRING)` statement (`docs/ir.md`).
- **Generator** (`docs/vcgen.md`, state σ now ⟨Γ,H,V,B,κ⟩): the
  `(BROADCAST)` rule resolves the path through
  `Vermilion.Vstd.lemmaHints` into the hint set `B` (fail-open — an
  unregistered path adds nothing); each obligation threads `B` into its
  `vrml [unfolds, hints]` simp set.
- **Trust**: hints are NOT a trust surface — they can only help the
  ladder close a goal stated in full, and the mirror lemmas are proved
  Lean theorems. `docs/trust.md` §`broadcast use` hints.

## Guards

- c137: `broadcast use group_seq_properties` closes a nested-concat length
  goal with no per-site lemma calls (the group resolves to the full Seq
  fact set).
- c138: the same group cannot prove a false length identity — hints are
  not axioms.

Differential corpus **137/137 verdict parity, 66/66 span agreement**;
full suite green.

## Honest scope note

The verbatim `mergesort.rs` does NOT benefit from this channel: its
`broadcast use` targets a single USER lemma (already assumed as a fact),
not a group, and its `main` is out of fragment (Box-allocation internals,
`sorted_by` spec closures). Consolidated the mergesort case study to two
files — `mergesort.rs` (verbatim provenance) and the verified specs-only
`mergesort_clean.rs` — dropping the throwaway `mergesort_verbatim` probe.
Verifying the verbatim proof functions (minus `main`) by automated +
interactive proof is the follow-on case study (`mergesort_verbatim`,
user-directed) — its 22 residual obligations are the user's hand-written
`=~=` scaffolding, interactive-proof territory.
