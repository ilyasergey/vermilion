---
title: Carry decreases measures for cross-module recursive spec fns
labels: [feature, vcgen, verus]
state: open
github: 49
---

Found by the DL8 Layer Set A acquisition (`case-studies/dalek-lite/layer_a.rs`):

```text
error[vermilion]: outside the supported fragment:
recursive spec function load8_at_or_version_rec has no termination check
```

`load8_at_or_version_rec` (`lemmas/field_lemmas/load8_lemmas.rs:21`) is an
ordinary recursive `open spec fn` with `decreases k`, well within the
fragment — same-module recursive spec fns already emit as real Lean
definitions with `termination_by` from the Verus-checked measures, and
Lean re-proves termination (`decreasing_by … omega`).

The refusal is export plumbing: Verus constructs the SST
`termination_check` payload — where `register_spec_fn` reads the
decreases measures — only under `verifying_owning_bucket`
(`vir/src/ast_to_sst_func.rs:207`), i.e. for the module bucket currently
being verified. In a multi-module crate the spec fn arrives from a
sibling module with `spec_axioms.termination_check = None`, and the
adapter fails closed. Single-file probes could never expose this.

Fix direction: make the decreases measures available for every exported
recursive spec fn regardless of owning bucket — either by carrying the
AST `decrease` exprs into the exported `FunctionSst` (fork change,
`verus` label) or by having the export hook retain each function's
owning-bucket SST form. The adapter then registers cross-module
recursive spec fns exactly like local ones; nothing changes on the Lean
side (termination stays kernel-proved). Until then the refusal is a
span-mapped per-function disposition that fails exactly the function's
consumers (in Layer Set A: the two load8 lemmas and `load8_at` — 37 of
the 38 DL8 refusals are this issue's transitive footprint).

**Same class, second artifact (DL8): `closed` spec-fn bodies.** The
export carries `spec_axioms` (the body) only when `public_body` holds
for the verified bucket (`ast_to_sst_func.rs`, the same
`verifying_owning_bucket` plumbing), so from the acquisition root a
sibling module's `pub closed spec fn` arrives BODYLESS and the adapter
models it as uninterpreted — making even its own module's unfolding
lemma (`lemma_unfold_edwards`) unprovable, though Verus proves it
in-module. The fork fix should carry both module-owned artifacts —
termination checks and closed bodies — with the function. Interim
accommodation: the Layer Set A stub opens its four Edwards accessors
(`[visibility accommodation]` label in `layer_a.rs`).
