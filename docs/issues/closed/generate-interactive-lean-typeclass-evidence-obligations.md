---
title: Generate interactive Lean typeclass evidence obligations
labels: [feature, vcgen]
state: closed
github: 25
---

Vermilion lowers Verus programs into Lean terms, but the two languages carry
computational evidence differently. In particular, every Verus/Rust `bool`
is executable, while Vermilion currently represents it as a Lean `Prop`.
An arbitrary `p : Prop` does not provide `[Decidable p]`, so a generated
statement such as `Vermilion.iteP p a b` can fail during elaboration before
its logical proof begins. Similar boundaries can arise when a Lean-native
model needs `Inhabited T`, `DecidableEq T`, an order instance, or another
class dictionary that Verus made implicit or obtained from its executable
type.

Do not hide this boundary behind a module-wide classical instance or a
one-off renderer patch. Treat required Lean typeclass evidence as a
first-class generated obligation, with the same persistent, interactive
workflow as logical VCs.

## Design

Introduce a generic **evidence obligation** representation. It carries:

- a stable name and statement hash;
- the telescope of type and value parameters needed by the target;
- a structured Lean class target, rather than an unparsed Lean string;
- the Rust span and lowering/rendering construct that demanded the instance;
- dependencies on earlier evidence obligations; and
- the declarations/expressions that consume the resulting dictionary.

The representation must be class-generic. `Decidable p` is its first
producer, not a special case baked into twin synchronization. Future
producers must be able to request targets such as `Inhabited T` or
`DecidableEq T` without adding another proof-storage mechanism.

Render evidence before every declaration that consumes it as a named,
module-local instance block delimited by the ordinary `vrml:begin` /
`vrml:end` markers. The generated attempt may contain a loud `sorry`
placeholder when there is deliberately no trusted automatic construction;
the user-owned `proofs/` twin replaces that body with a kernel-checked Lean
term. Evidence instances must remain local to the generated module and must
not pollute importers' global instance search.

For the initial Rust-`bool` bridge, the interactive solution may explicitly
choose Lean's classical decision procedure:

```lean
noncomputable local instance vrml_decidable_prop (p : Prop) : Decidable p := by
  exact Classical.propDecidable p
```

That choice is visible and kernel checked in the twin. It is materially
different from silently making every generated definition classical:
executable spec functions should continue to use constructive instances
when the lowering carries them, and the trust/status surface must show when
a classical or user-provided dictionary is required.

## Verification and twin semantics

- Evidence blocks participate in manifests, fingerprints, reconciliation,
  stale-proof detection, `--probe`, diagnostics, and `--fail-on-sorry`.
- A generated check may use a placeholder dictionary to elaborate dependent
  VCs, but the overall run is not verified while any evidence block is
  unresolved.
- Once the twin supplies every evidence proof, the twin is the sole kernel-
  checked arbiter: its instances elaborate the later definitions and VCs.
- Downstream VCs proved using an unresolved generated placeholder are
  contingent results, never reported as a successful verification run.
- Evidence dependencies are emitted topologically; cycles and targets that
  cannot be represented structurally fail closed with a source diagnostic.
- No axiom, `unsafe` declaration, trusted tactic, or permanently hidden
  `sorry` is introduced.

## Initial implementation slice

1. Add the generic evidence-obligation type and renderer, manifest kind, and
   module-local instance declaration form.
2. Make statement rendering collect a `Decidable` demand when an `iteP`
   guard is not already constructively decidable from its telescope.
3. Deduplicate equivalent demands and place them before their consumers.
4. Extend `vrml_check` and `vrml_sync` so an unresolved generated evidence
   block becomes a span-mapped interactive obligation and prevents success.
5. Solve the Percolator `encode_bool` evidence block interactively in its
   persistent twin; confirm the compound `Result` guard follows the same
   mechanism.

## Acceptance criteria

- `encode_bool_decidable.rs` generates a named `Decidable` evidence block,
  and the persistent Lean twin elaborates only after that block is filled.
- `result_gates.rs` verifies through the same generic mechanism without a
  conditional-specific source rewrite.
- A deliberately unresolved evidence fixture exits nonzero, emits a
  diagnostic at the originating Rust span, and leaves a visible `sorry` in
  the twin.
- A solved evidence fixture survives regeneration and lets the current-twin
  fast path kernel-check the whole module.
- Existing computable spec-function fixtures remain free of accidental
  module-wide classical instance leakage and `noncomputable` drift.
- The differential suite, module-manifest tests, twin synchronization tests,
  and the full build pass.
- `docs/ir.md`, `docs/vcgen.md`, `docs/trust.md`, the tutorial, progress
  report, and a dated implementation log explain the evidence boundary and
  interactive workflow.

This generalizes the `Decidable value` half of #18; the separate ambiguous
polymorphic `Inhabited ?m` failure there still requires enough type
information to identify a concrete class target before an evidence
obligation can be generated.

## Completion

Implemented on 2026-07-17. The generic layer now has structured type/term
class arguments, stable evidence identities, dependency validation and
topological ordering, ordinary marker/hash/twin persistence, distinct
source-mapped diagnostics, and fail-closed unresolved semantics. The first
producer requests a module-local `Decidable p` dictionary for theorem-layer
`iteP` consumers whose Rust Boolean became an arbitrary Lean proposition.

Both Percolator drivers verify with explicit, kernel-checked
`Classical.propDecidable p` instance bodies in their persistent twins.
Generic ordering/error guards, the unresolved-to-interactive lifecycle,
the full build, the `CasePercolator` library, and the full differential corpus
pass. Final differential result: 139/139 verdict parity and 67/67 failure-span
agreement. The remaining polymorphic `Inhabited ?m` ambiguity stays in #18.
