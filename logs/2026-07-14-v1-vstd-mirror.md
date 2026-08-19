# 2026-07-14 — V1: the vstd mirror skeleton

First slice of the V-series (plans/execution-plan.md §"The vstd mirror",
user-directed): ship Lean libraries mirroring the vstd modules Verus
programs import, structured 1:1 with the vstd namespace tree so
generated/proofs modules know what to import, and resolved by NAME instead
of per-function hard-coding in the adapter.

- `lean/Vermilion/Vstd/{Seq,SeqLib,Multiset}.lean` ↔
  `vstd::{seq,seq_lib,multiset}`: each file records the vstd spec fns its
  model definitions mirror and the vstd lemma/axiom surface its PROVED
  model lemmas mirror. The `Vermilion.*` namespaces stay the semantic
  model — twins keep referencing `Vermilion.Seq.*`.
- `lean/Vermilion/Vstd.lean` assembles the machine-readable registries:
  `specFnRegistry` (vstd path → model definition; SEMANTICS — V2 resolves
  spec-fn calls through it and fails closed on unmapped names) and
  `lemmaRegistry` (vstd lemma/broadcast-group path → proved mirrors;
  HINTS — V4 resolves `broadcast use` through it and fails open).
  `group_seq_properties` and `to_multiset_ensures` are already populated
  (the S1 surface).
- `Vstd/Probes.lean`: a compile-time honesty check — every Lean name a
  registry references must exist in the environment, so a typo or a
  renamed prelude lemma breaks the build, not hint resolution.

Next: V2 (adapter resolves vstd spec-fn calls through the registry, with a
generic `(vstdapply …)` IR node beyond the structural core), V3 (translate
vstd proof-fn statements in place as `sorry` skeletons, prove
interactively, ship — priority: `lemma_sorted_unique`, seq extensionality,
`Seq::remove`/`contains` to complete `to_multiset_ensures`), V4 (hint
wiring = H2 of the extrinsic-proofs design; done when verbatim
`mergesort.rs` verifies with its scripting consumed as hints).
