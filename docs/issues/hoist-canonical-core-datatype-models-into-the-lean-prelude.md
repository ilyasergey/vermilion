---
title: Hoist canonical core datatype models into the Lean prelude
labels: [feature, vcgen]
state: open
github: 33
---

Generated modules currently redeclare compiler-owned datatype models and all
of their helper declarations. For example,
`case-studies/percolator/proofs/wide_math_u256_basics.lean` contains a local
`core.option.Option`, `core.option.Option.is_None`,
`core.option.Option.is_Some`, `core.option.Option.get_Some__0`, and the two
corresponding `Decidable` instances. The same declarations are repeated in
every generated module that uses `Option`.

These are stable parts of Vermilion's Lean model of the Rust/Verus core
library, not source-program datatypes. Put them in an imported shared Lean
module (the prelude, or a focused module re-exported by it) and make the
renderer reference those declarations instead of emitting a fresh copy.
Hoist each datatype and its complete generated surface together: moving only
`is_None` would leave it referring to a different `Option` from the locally
emitted inductive.

The initial shared inventory must include:

- `core.option.Option`, its `is_None`/`is_Some` predicates,
  `get_Some__0`, attributes, and proposition-level `Decidable` evidence;
- `core.result.Result` with `is_Ok`/`is_Err`, both projections, attributes,
  and evidence;
- `core.ops.control_flow.ControlFlow` with both predicates, projections,
  attributes, and evidence;
- the stable synthesized tuple models currently emitted as
  `vermilion.tuple_N`, including their predicate/projection surface;
- an audit of other compiler-owned zero- or fixed-shape models already
  emitted by the adapter, such as `core.convert.Infallible`.

The ownership rule is the important part: canonical compiler/core models
belong to the shared library, while enums and structs declared by the input
program remain module-local. Preserve the existing fully qualified names,
constructor semantics, wrong-variant `default` projection semantics,
`@[simp, grind]` registrations, and constructive `Decidable` instances.
This is shared library evidence for structural predicates, distinct from the
interactive evidence obligations generated when an arbitrary proposition
lacks a typeclass dictionary.

Acceptance criteria:

1. Generated modules import the shared declarations and no longer redeclare
   the canonical datatype families or their helpers.
2. Two independently generated modules using the same core datatype can be
   imported together without duplicate-declaration collisions.
3. User-defined datatypes are still rendered locally by `renderDatatype`.
4. Regression tests cover `Option`, `Result`, `ControlFlow`, at least one
   tuple arity, and a user-defined enum; they check both declaration ownership
   and elaboration of the generated obligations.
5. Existing Option/Result/ControlFlow case studies and their persistent
   `proofs/` twins kernel-check, with user proofs preserved where theorem
   statement fingerprints are unchanged.
6. Document the shared-model boundary and inventory. Keep `docs/ir.md` and
   `docs/vcgen.md` synchronized if implementation changes the IR or emitted
   obligation form; a pure prologue/declaration-ownership change should not
   alter VC semantics.
