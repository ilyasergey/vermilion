# Supported features and limitations

[Back to the README](../README.md) · [Documentation index](README.md)

Vermilion accepts Verus source directly. Support depends on the constructs
and library APIs used; accepting a source file does not imply that every
obligation will close automatically. Interactive Lean proofs in `proofs/`
are part of the verification workflow.

## Running a feature example

From the repository root, run the script in the linked example directory:

```console
./examples/m2-loops/run.sh
```

Every example has its own `run.sh`, with Lean as the verifier and Verus as the
front end (`--no-verify`). Each run regenerates machine attempts in
`generated/` and reconciles editable proofs in `proofs/`; proofs survive while
their statement hashes match. Scripts accept `--help` and `--clean-env`
(which clears machine artifacts while preserving `proofs/`). See the
[tutorial](TUTORIAL.md) for the complete proof workflow.

## Supported features

The examples below exercise individual features. Consult the limitations
and case-study reports before generalizing them to a whole crate.

- straight-line code: `bool`, `int`/`nat`, all machine integer widths with
  overflow VCs, casts, lets, `assert`/`assume`, calls with contracts
  (assert `requires` / assume `ensures`), early returns —
  [examples/m1-pipeline](../examples/m1-pipeline/README.md),
  [examples/m1-widening](../examples/m1-widening/README.md);
- `if`/`else` with SSA joins and spec-level `ite` —
  [examples/m2-branches](../examples/m2-branches/README.md);
- Lean class dictionaries required by theorem rendering are first-class
  `@[vrml_evidence]` obligations in the persistent twin. This bridges the
  executable Rust-`bool`/Lean-`Prop` distinction without silently making spec
  definitions classical; Percolator's `encode_bool` and compound `Result`
  gate are the first verified instances;
- `while`/`loop` with invariants and Verus's loop isolation, `decreases`
  measures, `break`/`continue` (incl. `invariant_except_break` and loop
  `ensures`) — [examples/m2-loops](../examples/m2-loops/README.md),
  [examples/m2-break](../examples/m2-break/README.md) — and recursive
  functions with termination checks —
  [examples/m2-recursion](../examples/m2-recursion/README.md);
- range `for` loops (`for i in lo..hi` with invariants over the loop
  variable), specialized soundly from Verus's iterator desugaring —
  [examples/m2-forloop](../examples/m2-forloop/README.md);
- user `spec fn`s — including recursive ones and
  `#[verifier::opaque]`/`reveal`/`reveal_with_fuel` —
  [examples/m2-specfns](../examples/m2-specfns/README.md);
- vstd collections in spec positions: `Seq`, `Set`, `Map`, `Multiset`
  (core operations) —
  [examples/m2-collections](../examples/m2-collections/README.md);
- user datatypes: structs, enums, tuples, `match` (as branch trees),
  constructors, field access, `is`-variant tests — emitted as real Lean
  inductives — [examples/m3-datatypes](../examples/m3-datatypes/README.md);
- quantifiers: `forall`/`exists` as genuine `∀`/`∃` with range guards
  folded in; triggers preserved as metadata but not consumed by Lean —
  [examples/m3-quantifiers](../examples/m3-quantifiers/README.md);
- spec closures and higher-order spec fns: `spec_fn(T…) -> U` values,
  closures, and application as genuine Lean functions —
  [examples/m3-closures](../examples/m3-closures/README.md) — and exec
  closures with `requires`/`ensures` contracts, proved at each call —
  [examples/m3-exec-closures](../examples/m3-exec-closures/README.md);
- traits with contracts (statically dispatched): trait spec fns, inherited
  requires/ensures proved at call sites and against impl bodies —
  [examples/m3-traits](../examples/m3-traits/README.md);
- `&mut self` methods writing fields: record-update semantics through
  the prophecy contracts —
  [examples/m3-mut-fields](../examples/m3-mut-fields/README.md);
- fixed-size arrays `[T; N]`: the `Seq` view with a const-generic
  length fact; literals, indexing, const-generic vstd spec fns —
  [examples/m3-arrays](../examples/m3-arrays/README.md);
- mutually recursive spec fns: one Lean `mutual` block, fuel-coherent
  interleaved unfolding —
  [examples/m3-mutual-rec](../examples/m3-mutual-rec/README.md);
- user `View` impls: `s@` on your own types through the impl's spec fn
  — [examples/m3-user-view](../examples/m3-user-view/README.md);
- generic trait bounds (`fn f<T: Shape>`): the function verifies once
  over `T`, trait spec fns become universally quantified symbols, and
  the inherited trait contract applies at `Self = T` —
  [examples/m3-trait-bounds](../examples/m3-trait-bounds/README.md);
- `broadcast proof fn` + `broadcast use`: the proven lemma's quantified
  fact injected at the use point, scoped like any fact —
  [examples/m3-broadcast](../examples/m3-broadcast/README.md);
- const generics (`fn f<const N: usize>`): the parameter enters
  obligations as an `Int` binder with its `usize` range; instantiated
  calls substitute the literal —
  [examples/m3-const-generics](../examples/m3-const-generics/README.md);
- generics: type parameters on functions, structs/enums, and spec fns —
  parameterized Lean inductives, verified once generically over abstract
  inhabited types — [examples/m3-generics](../examples/m3-generics/README.md);
- exec `Vec<T>` via its `Seq` view: `v@`, `v@.len()`, `v@.index(i)`, the
  `v[i]` contract — [examples/m3-vec](../examples/m3-vec/README.md) — and
  mutation: `Vec::new`, `v.push(x)`, exec `v.len()`, with extensional
  `Seq`/`Set`/`Multiset` equality as plain Lean `=` —
  [examples/m3-vec-mut](../examples/m3-vec-mut/README.md);
- `&mut` parameters (sequential): `*old(x)`/`*final(x)` contracts, writes
  through the reference, and caller-side write-back through the callee's
  contract, including custom indexed destinations returned as `&mut` —
  Verus's prophecy encoding resolved at lowering time —
  [examples/m3-mutref](../examples/m3-mutref/README.md);
- slices `&[T]` through their `Seq` view —
  [examples/m3-slices](../examples/m3-slices/README.md);
- machine bit operations: `&`, `|`, `^`, shifts as `Vermilion.Bits`
  over `BitVec` — proved conversions and identity set, nothing trusted —
  and `by (bit_vector)` blocks as isolated queries —
  [examples/m4-bitvec](../examples/m4-bitvec/README.md);
- nonlinear arithmetic: bounded-product goals on the `nlinarith`
  ladder rung — [examples/m4-nonlinear](../examples/m4-nonlinear/README.md)
  — including truths stock Verus rejects without manual
  `by (nonlinear_arith)` hints —
  [examples/m4-beyond-verus](../examples/m4-beyond-verus/README.md) — and
  explicit `by (nonlinear_arith)` blocks as isolated queries, exercised by
  the verbatim [IMO 1988 #6](../case-studies/imo-1988-6/) and
  [power-of-2](../case-studies/power-of-2/) studies;
- machine arithmetic retains VIR clipping: exact `nat` saturation, unsigned
  modulo `2^w`, and signed two's-complement interpretation; explicit wrapping
  builtins therefore differ correctly from mathematical `Int` arithmetic;
- `by (compute)`/`by (compute_only)`: ground evaluation via the
  shared middle's interpreter, fail-closed on false computations —
  [examples/m4-compute](../examples/m4-compute/README.md);
- tooling: span-mapped `error[vermilion]` diagnostics
  ([examples/m1-diagnostics](../examples/m1-diagnostics/README.md)),
  incremental fingerprints, watch mode, a VS Code extension (verify on
  save, gutter verdicts, jump-to-proof), and the ill-typed guarantee (a
  program the front end rejects never reaches the verifier).

Additional support exercised by the active dalek-lite benchmark includes
[`choose`, external specifications, and non-isolated loops](../case-studies/dalek-lite/README.md).
For the precise semantics and restrictions, see the
[VC-generation policy](vcgen.md), including choice and loop rules.

## Limitations and current work

- Ghost memory (`PointsTo`, raw pointers, cells), globals/statics, and
  concurrency (atomics and tokenized state machines) remain outside the
  supported fragment. Temporal and liveness reasoning is also future work.
- Sequential support has boundaries, including dynamic dispatch, some
  collection APIs, and recursive specification patterns. Track current
  failures in the [open issues](issues/README.md) and the
  [case-study registry](../case-studies/README.md).
- `choose` and supported non-isolated loop forms have landed. Non-isolated
  loops still have shape restrictions; the [dalek-lite probes](../case-studies/dalek-lite/README.md)
  and [loop rules](vcgen.md#loops-verus-loop-isolation) describe their scope.
- Quantifier witnesses and some arithmetic or collection proofs require
  interactive Lean work. Automation failure leaves a proof obligation to
  fill; an unresolved `sorry` does not count as verification.

Case-study READMEs record the verified subset and remaining assumptions for
each acquisition. Start with [dalek-lite](../case-studies/dalek-lite/README.md)
for the active benchmark, or the [case-study registry](../case-studies/README.md)
for the full collection. The [execution plan](../plans/execution-plan.md)
orders future work; the [progress ledger](reports/progress.md) records
milestone history.

## Translation and proof details

- [Pipeline](pipeline/README.md) and [textual IR](ir.md): the Rust/Lean boundary.
- [VC-generation policy](vcgen.md): obligation construction, spec-function
  visibility, and loop semantics.
- [Typeclass-evidence obligations](vcgen.md#typeclass-evidence-obligations):
  when `Decidable` evidence is generated and why it must be proved.
- [Proof twins](TUTORIAL.md#3-your-proofs-the-proofs-twin): preservation,
  helper lemmas, and emission layouts.
- [Trust boundary](trust.md): what kernel checking establishes and which
  translation assumptions remain trusted.
