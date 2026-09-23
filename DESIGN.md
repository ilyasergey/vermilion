# Vermilion design

**Verified Rust meets Lean:** Vermilion replaces Verus's Z3 back end with
Lean 4. Verus's own Rust front and middle end elaborate the program; Lean
states, discharges, and *is the sole judge of* every verification condition.
This document explains how the pipeline works today, what it reuses from
Verus, what sits in the trusted computing base, and how far it is from Verus
feature parity.

## The pipeline

```
        Rust source (verus! macros)
              │
              ▼
  pinned Verus, --no-verify            our fork (ilyasergey/verus, branch
  (front end only)                     dev): upstream c569645bd37b0 + the
                                       env-gated VIR export hook + the
                                       debug_assert!-as-static-assert
                                       accommodation
              │  VERUS_VIR_EXPORT
              ▼
  finalized VIR crate (bincode)        .vermilion/<stem>-vir.bin
              │
              ▼
  crates/vermilion_direct (Rust,       reruns the pinned middle end in
  built with the Verus toolchain)      process: simplify → prune →
              │                        ast_to_sst — then lowers pre-poly
              │                        FunctionSst to the neutral model
              ▼
  textual IR (S-expressions,           .vermilion/<stem>-ir.sexp
  docs/ir.md — the Rust/Lean           structured expression trees, spans,
  boundary)                            assert ids; versioned, fail-closed
              │
              ▼
  lake exe vrml_gen (Lean,             Vermilion.Ir: proper lexer/parser →
  Mathlib-free)                        VC generation → generated/<stem>/
              │                        (one unit module per function +
              │                        shared Specs module; --mode per-file
              │                        for the single-module layout)
              │                        + <stem>.json manifest
              ▼
  lake build + vrml_check              Lean elaborates every obligation; the
              │                        vrml tactic ladder attempts discharge
              ▼
  verdict + rustc-style JSON           failures mapped back to the exact
  diagnostics at Rust spans            Rust range, branded error[vermilion]
              │
              ▼
  vrml_sync                            reconciles the user-editable proofs/
                                       twin (hash-keyed obligation blocks)
```

### Where the VC-bearing Lean files come from

The `vrml_gen` box expands into a four-stage Lean-side chain
(entry point `lean/VrmlGen.lean`, one pass per function in the IR):

1. **Parse** — `Vermilion.Ir.Decode` lexes and parses the IR into the
   `FunctionView`/`Stmt`/`Expr` AST (a real tokenizer, never substring
   matching).
2. **Generate** — `Vermilion.Ir.Vcgen` is the VC generator proper:
   `generateObligations` seeds the state ⟨Γ, H, V, B, κ⟩ from the
   function's binders and `requires`, then folds the statement list
   through `processStmt` — one inference rule per statement kind, the
   relation specified normatively in [docs/vcgen.md](docs/vcgen.md).
   The output is `Obligation` values — sequents as *data* (binders,
   hypotheses, goal, span, unfold set), followed by their class-evidence
   closure (`EvidenceObligation`: structured class target, telescope,
   provenance, dependencies/consumers), no text yet.
3. **Render** — `Vermilion.Ir.Render` prints the module(s):
   `renderDatatype` (real `inductive`s), `renderSpecFn` (`def`s and
   `mutual` blocks with `termination_by`), class-valued
   `@[vrml_evidence]` instances, then one
   `@[vrml_obligation] theorem` per logical obligation via
   `renderObligation`, each closed by the `vrml` ladder attempt; `Print`
   renders the expressions. Two layouts share these pieces: per-function
   (default) emits one unit module per function importing a shared `Specs`
   module that holds the definitions exactly once (`renderSpecsModule` +
   `renderUnitModules`; a reference analysis over each function's
   obligations decides which units need the import) plus, when typeclass
   evidence exists, a shared `Evidence` unit whose plain `instance`s play
   the role of the per-file layout's section-local instances; per-file
   (`renderModule`) emits the classic single module. Obligations and
   hashes are identical across layouts.
4. **Emit** — `Vermilion.Ir.Emit` writes the generated file(s) and
   the `<stem>.json` manifest (which records the emission mode),
   change-detecting (byte-identical re-runs
   touch nothing, which is what the suite's determinism phase checks).

Downstream, `vrml_sync` reconciles the user-editable `proofs/` twin
from the generated module and `vrml_check` elaborates it to judge every
obligation — consumers of the generated files, not producers.

### When `Decidable` evidence is generated

Evidence generation is demand-driven and happens after the ordinary logical
VCs have been fixed. `collectEvidenceObligations` scans the hypotheses and
goals of those VCs. The initial producer requests one module-local universal
dictionary `(p : Prop) : Decidable p` exactly when it finds an
`iteP c thenValue elseValue` whose guard is not recognized as constructively
decidable from the explicit telescope.

This is deliberately narrower than “the Rust source contains a `bool` or an
`if`.” No evidence is emitted when no `iteP` survives into a logical VC, nor
for guards built from constants, integer comparisons, constructive Boolean
combinations, or generated datatype-variant predicates. A bare Rust Boolean
represented as `value : Prop`, or an unknown predicate application used as an
`iteP` guard, does request evidence.

Equivalent demands are deduplicated. In per-file mode, evidence is a local
instance after spec definitions and before consuming theorems. In per-function
mode it is a plain instance in the shared `Evidence.lean` unit, visible to
importing obligation modules. Spec definitions precede evidence in the
import graph; opaque-proposition conditionals in those definitions receive
a separate, explicit `open Classical in` / `noncomputable` fallback. The
generated evidence body is a conspicuous placeholder: dependent VCs may be checked contingently,
but `vrml_check` keeps the run red until the persistent twin supplies a
kernel-checked dictionary. The representation itself is class-generic; this
`Decidable` rule is only its first producer. The normative rule and lifecycle
are specified in
[docs/vcgen.md](docs/vcgen.md#typeclass-evidence-obligations).

Two properties are deliberate:

- **Lean is the only verifier.** Verus never runs its SMT back end in the
  pipeline (`--no-verify`); its verdict is consulted exclusively by the
  differential harness (`scripts/run_differential.py`), which treats Verus
  as an oracle to measure agreement, not as a checker.
- **The IR is the only Rust→Lean contract.** Rust never renders Lean
  syntax; Lean never touches Verus internals. Fragment growth must extend
  the IR grammar, its spec, the serializer, and the parser in the same
  change — both sides fail closed on anything unknown.

## What is reused from Verus

| Reused | How |
|---|---|
| Front end (rustc integration, `verus!` macros, type/mode checking) | unchanged pinned binary, run `--no-verify` |
| VIR simplification, pruning, SST construction | the pinned `vir` crate's own passes, rerun in-process by `vermilion_direct` |
| Overflow/bounds checking discipline | Verus's own `Clip`+assert instrumentation arrives already inserted in the SST; clips retain exact `nat` saturation / width-modular / signed two's-complement meaning instead of being erased |
| Callee contracts | looked up in the same crate-wide SST declaration map Verus uses |
| Loop discharge shape | mirrors `sst_to_air`'s loop-isolation recipe (entry check → havoc → assume invariants+condition → body → re-check at back edge → exit facts) |
| Error reporting | spans and `AssertId`s flow through to rustc-format JSON diagnostics |

The pinned Verus front end is maintained on `ilyasergey/verus` branch `dev`.
Besides the environment-gated finalized-VIR export hook, the fork contains
the source-preserving Rust-side accommodations required by the acquired
corpus, currently static `debug_assert!`, tuple-pattern parameters, and custom
tuple-keyed `IndexMut` contracts/erasure, plus tuple-destructuring assignment.
Each accommodation has native Verus regressions and is committed and pushed in
that fork before Vermilion advances its pin.

## Trusted computing base

Everything between the Rust source and the Lean kernel. From larger to
smaller trust surface (the *semantic assumptions* these components make
are enumerated, with their soundness arguments and differential guards,
in [docs/trust.md](docs/trust.md)):

1. **The pinned Verus front/middle end** — elaboration, mode checking, VC
   *placement* (which asserts exist, where overflow checks go). Verus is
   also the differential oracle, so bugs here are shared with Verus rather
   than introduced by Vermilion. Since 2026-07-17 the pin is our fork
   (`ilyasergey/verus`, branch `dev`): upstream plus the VIR export hook
   (formerly a local patch), the `debug_assert!` accommodation, tuple-pattern
   parameter lowering/erasure, custom tuple-keyed `IndexMut` support, and
   tuple-destructuring assignment.
   Native Verus tests and vstd re-verification gate these changes; see
   docs/trust.md "Front-end accommodations".
2. **The Rust lowering** (`vermilion_direct/src/lower.rs`) — the semantic
   translation of pre-poly SST to the neutral model: SSA/spec-let
   substitution, callee-contract substitution, integer-range facts, branch
   joins, loop havoc sets. *This is the largest Vermilion-specific trusted
   component.* Mitigations: it fails closed on anything outside the
   fragment, and the differential gate measures verdict/span parity per
   milestone.
3. **The Lean generator** (`Vermilion.Ir`) — IR parsing and the syntactic
   assembly of obligation statements, following the policy specified in
   [docs/vcgen.md](docs/vcgen.md). Mechanical, but today unverified (see the
   roadmap note below).
4. **The Lean prelude + vstd-mirror conventions** — the shallow embedding
   choices. `Vermilion.Prelude` holds the non-vstd primitives (`bool` as
   `Prop`, machine integers as range-bounded `Int`, opaque division at
   zero `ediv`/`emod`, `iteP`, the `Bits` library, range predicates). The
   collection carriers moved to `lean/Vermilion/Vstd/`, one module per
   vstd module (`Vstd/Seq.lean` ↔ `vstd::seq`, `Vstd/SeqLib.lean` ↔
   `vstd::seq_lib`, `Vstd/Set.lean`, `Vstd/Map.lean`, `Vstd/Multiset.lean`):
   `Seq` as `List`, `Set` as `Finset`, `Map` as finite dom + lookup,
   `Multiset` as Mathlib's, plus the proved lemma surface mirroring vstd's
   axioms. The vstd-path → Lean-name index is `Vstd/Registry.lean`
   (Mathlib-free, so `vrml_gen` reads it), guarded by `Vstd/Probes.lean`
   (build fails on a dangling registry name). User spec fns are *not* part
   of this trust surface: they are emitted as ordinary Lean definitions
   that the kernel checks.
5. **Lean's kernel and the axioms used by each proof.** The `smt` tactic
   uses cvc5 with reconstruction (`trust := false`), producing terms checked
   by the kernel, as do `grind`/`omega`/`simp`. Imported theorem assumptions
   still require a separate axiom audit.
6. **Checking and reporting**: the runners, `vrml_check`, and `vrml_sync`
   must cover every required obligation, check current proof artifacts,
   reject holes, and propagate failures. A bug here can report success
   without an accepted proof even though the kernel's logical rules remain
   sound. The [trust document](docs/trust.md#the-trusted-computing-base)
   records the false-green checker incident and its consequence for receipts.

Verus's Z3 verdict is used only for baselines and differential comparisons.
Proof-search tactics are untrusted when the kernel checks their output.
Generated artifacts and cached results require completeness and freshness
checks; their mere existence does not establish verification.

For annotation-preserving external case studies, source identity is a
separate pre-verification gate. The SHA-3 `vrml_source_guard` requires every
upstream Rust file and compares executable token streams after erasing only
typed annotation regions. Verification-only spec impls are restricted to
`View` and `IndexSpecImpl`; only colocated Lean `src/generated/` and
`src/proofs/` trees are excluded from inventory. This conventional guard is
trusted for the unchanged-source claim, while the Lean kernel remains the
judge of the functions actually covered.

**Roadmap (user-directed):** replace item 3 — and progressively item 2 —
with a *foundational* VC generator for the IR: a formal Lean semantics for
the lowered fragment and a verified weakest-precondition construction proved
sound against it, built on [Loom](https://github.com/verse-lab/loom) (to be
required as a direct Lake dependency when that work starts; the Veil
dependency that used to carry it transitively was dropped 2026-08-19) or a
similar Lean program-logic framework rather than from scratch. The current generation policy it must
reproduce — the per-statement judgment and the soundness obligations to
discharge — is specified in [docs/vcgen.md](docs/vcgen.md). Tracked
prominently in [plans/execution-plan.md](plans/execution-plan.md).

## Distance to Verus feature parity

The [support guide](docs/support.md) links runnable examples and current
boundaries. Later sequential slices include scalar `choose`, generic opaque
specification applications, per-function lowering isolation, and supported
non-isolated `while` loops. Their shape restrictions remain explicit in the
[VC-generation policy](docs/vcgen.md).

Implemented today (M1–M4 feature slices complete; gate-project coverage
measurement for M3/M4 outstanding):

- straight-line code: `bool` (as `Prop`), `int`/`nat`, all machine widths
  with overflow VCs, casts, SSA lets, `assert`/`assume`, calls with
  contracts, early returns;
- `if`/`else` with SSA joins, spec-level `ite` (M2);
- `while`/`loop` loops with invariants, havoc, loop isolation, `decreases`
  measures, `break`/`continue` (with `invariant_except_break` and loop
  `ensures`), and recursion with termination checks (M2);
- range `for` loops (`for i in lo..hi` with invariants naming the loop
  variable): the canonical `VerusForLoopWrapper<Range<_>>` desugaring is
  specialized at lowering time to the equivalent integer loop — entry/exit
  invariant instances at the vstd peek values (the inclusive guard puts
  exit knowledge at `hi`), `lo ≤ i < hi` iterations, the remaining count as
  measure, one shared `arbitrary()` stand-in for empty-range soundness;
  everything non-canonical (other iterators, named-iterator form,
  wrapper-referencing specs, user `break`) fails closed — see
  [docs/trust.md](docs/trust.md);
- `Vec::pop` and `Seq::subrange` (contiguous slices): pop's `Option`
  contract plus `old@.subrange(0, len-1)`; `subrange` is the `List` slice
  with in-range length/index `@[simp]` lemmas (the `vrml` ladder discharges
  their arithmetic side conditions via a `simp (disch := omega)` rung);
- `Seq::add` (the spec `+`, concatenation): `List` append with
  `len_add`/`index_add_left`/`index_add_right` tagged `@[simp, grind =]`
  so the ladder's first rung closes concatenation goals; the ladder's
  deterministic rungs each run under a per-rung heartbeat budget so one
  diverging tactic cannot starve the rest;
- **the vstd mirror** (V-series): vstd spec fns beyond the structural IR
  core lower as `(vstdapply "vstd::…" args…)` and resolve BY NAME against
  shipped Lean libraries structured 1:1 with the vstd module tree
  (`lean/Vermilion/Vstd/`, registry in `Registry.lean` — Mathlib-free so
  the generator reads it; build-time probe keeps it honest; fail-closed
  on unmapped paths). Fragment growth for vstd spec fns is a
  Lean-library-only change; vstd lemma/broadcast-group names map to
  proved mirror lemmas consumed as droppable hints (H2/V4);
- user `spec fn`s in spec positions (M2): emitted as real noncomputable
  Lean definitions in the generated module, applications stay applications
  — no inlining, no definition axioms, no fuel; `#[verifier::opaque]` and
  `reveal`/`hide`/`reveal_with_fuel` narrow each obligation's unfold list
  per program point, reproducing Verus's visibility verdicts; recursive
  spec fns are genuine recursive definitions (`termination_by` from the
  Verus-checked decreases) unfolded by bounded rewriting;
- exec `Vec<T>` via its `Seq` view (M3): a `Vec` binder is its `Seq`
  view, `v@`/`view()` is the identity, `v[i]`/`v@.len()`/`v@.index(i)`
  reduce to Seq operations, and mutation works through the `&mut`
  contracts — `Vec::new`/`v.push(x)`/exec `v.len()`, with Verus
  ext-equality on `Seq`/`Set`/`Multiset` lowered to plain `=`
  (extensional Lean models) and `spec_vec_len` identified with the view
  length per the always-broadcast `group_vec_axioms`; `Map` ext-eq and
  deep `=~~=` fail closed;
- `&mut` parameters in the sequential fragment (M3): Verus's prophecy
  encoding (`mut_ref_current`/`mut_ref_future`, `has_resolved`, two-phase
  borrows) resolved at lowering time — `*old(x)` is the entry binder,
  `*final(x)` the value snapshotted where the borrow resolves, call-site
  futures are fresh symbols constrained only by callee `ensures` (an
  unspecified callee havocs the referent); non-variable `&mut` arguments
  and escaping references fail closed (see `docs/ir.md`);
- vstd collections in spec positions via the prelude conventions (M2):
  `Seq` (`len`/`push`/`index`/`empty`, a Lean `List`), `Set` (`insert`/
  `contains`/`remove`/`len`/`empty`, a `Finset`), `Map` (`insert`/`[]`/
  `dom`/`contains_key`/`empty`, finite dom + lookup), `Multiset`
  (`insert`/`count`/`len`/`empty`, a Mathlib `Multiset`);
- traits with contracts, statically dispatched (M3): impl spec fns are
  ordinary Lean definitions, trait spec-fn calls resolve to the impl for
  their `Self` type, and exec trait-method calls verify against the trait
  declaration's inherited contract (requires proved at call sites,
  ensures instantiated at the impl's spec fns); generic trait bounds are
  supported through universally quantified dictionary symbols, while
  dynamic dispatch fails closed. A unique monomorphic associated-type impl
  equation is normalized to its concrete binder type before IR emission;
  generic or ambiguous projections fail closed;
- systematic type facts at every value-introduction site (M3): the
  recursive `typ_invariant` analogue — scalar ranges, quantified
  element/key facts for `Seq`/`Vec`/`Set`/`Multiset`/`Map`, and datatype
  field facts (recursive, generic-instantiated, one unrolling for
  recursive datatypes) — attached to parameters, call results, branch
  joins, loop havoc symbols, prophecy futures, and quantifier guards;
- spec closures and higher-order spec fns (M3): `spec_fn` arrows,
  lambdas, and applications embed as genuine Lean functions;
- `&mut` through fields (M3): field writes are record updates of the
  root's tracked value (nested paths rebuild recursively); the prophecy
  contract machinery is unchanged;
- fixed-size arrays (M3): `[T; N]` as its `Seq` view with the length
  pinned by a type fact; literals as pushes; const-generic spec fns
  (const params as leading explicit Int arguments) and `Seq::new` in the
  prelude came with it;
- mutually recursive spec fns (M3): reference cycles emit one Lean
  `mutual` block; recursive bodies are range-guarded for totality over
  `Int` (off-range `default`, a valid unconstrained interpretation);
  machine unfolding interleaves the chain, summed rounds = Verus fuel;
- user `View` impls (M3): `s@` through the impl's emitted spec fn; the
  identity shortcut applies only to `Vec` (whose Seq view IS its model)
  — a latent mistyping for user impls, probe-caught and guarded;
- generic trait bounds (M3): trait spec fns at abstract `Self` become
  universally quantified function-typed binders; trait-method calls take
  the trait declaration contract at `Self = T`; `TraitBound` predicates
  are `True` (their content is the contracts); dictionary-sound;
- `broadcast use` (M3): the proven lemma's quantified fact assumed at
  the use point with ordinary fact scoping; registered vstd broadcast
  groups resolve to droppable Lean lemma hints through the V4 registry;
- const generics (M3): `const N: usize` as an `Int` value binder with
  arch-neutral range facts; instantiated calls substitute literals;
  const-generic spec fns take leading explicit `Int` arguments;
  const-generic datatypes fail closed;
- exec closures with contracts (M3): the body check in a
  check-and-discard scope; `ClosureReq`/`ClosureEns` as fresh
  function-typed binders constrained by the assumed contract fact;
  call-site requires proved, ensures assumed — no axioms;
- proof-block scoping (M3): `assert … by { … }` (Verus's `DeadEnd`)
  lowers to the `(scope …)` check-and-discard construct — what a proof
  block assumes or derives dies with the block (rule `(SCOPE)` in
  [docs/vcgen.md](docs/vcgen.md); before this construct, block-local
  `assume`s leaked — see [docs/trust.md](docs/trust.md));
- exec `Vec<T>` via its `Seq` view (M3): `v@`/`view()` as the identity,
  indexing/`len` through contracts, mutation (`new`/`push`/exec `len`)
  through the `&mut` machinery with extensional `Seq` equality as `=`;
- slices `[T]` and arrays `[T; N]` as `Seq` views (M3): unconstrained
  length for slices, a const-generic length fact for arrays; literals,
  bounds-checked indexing, `Seq::new` in the prelude;
- machine bit operations (M4): `Vermilion.Bits` over `BitVec` — proved
  conversions, ranges, and identity set, nothing trusted; `by
  (bit_vector)` blocks discharge as isolated queries (the loop rule's
  scoping, avoiding the circular outer-block assumption the
  differential caught);
- nonlinear assertion queries (M4): `AssertQuery{NonLinear}` lowers to the
  same isolated-query shape, with only type facts and its explicit
  requirements/body; c142 pins that the outer assumed conclusion is absent;
- nonlinear arithmetic (M4): the `nlinarith` ladder rung closes
  bounded-product overflow goals — including truths stock Verus rejects
  without `by (nonlinear_arith)` hints (`examples/m4-beyond-verus`);
- `by (compute)` (M4): evaluated by the shared middle's interpreter
  during our own rerun; false computations abort translation
  (fail-closed); no new trust;
- span-mapped diagnostics, per-function incremental fingerprints, the
  generated/proofs twin workflow, differential measurement.

Not yet implemented (with the milestone that charts it):

Resolved by design rather than implementation (2026-07-13 audit —
consequences of the Lean-native backend, not gaps):

- **quantifier triggers** — deliberately *not consumed*: preserved in
  the IR and documented in generated code; our instantiation is
  trigger-free and more complete (docs/ir.md records the deliberate
  divergence). Nothing left to build.
- **Veil manager integration** — dropped: `vrml_check`, the discharger
  ladder, and watch mode fill that role natively (Loom remains relevant
  only for the future foundational VC generator).
- **counterexample display** — an SMT-model feature with no Lean
  counterpart; reframed as an optional future exploration (e.g.
  instantiation hints from failed `grind` runs), not a parity item.
- **discharger ladder and watch mode** have landed. Watch mode selects
  functions containing changed obligation hashes. Experimental verdict
  caching and future persistent workers are distinguished in the
  [incrementality plan](plans/incremental-computation.md).

| Missing | Milestone |
|---|---|
| `&mut` returns, const-generic datatypes | M3 completion tail (arrays ✓, slices ✓, &mut fields ✓, const-generic spec fns ✓, mutual recursion ✓) |
| wider vstd collection APIs (union/filter/agrees/…; extensional `=~=` already lands as `=` for Seq/Set/Multiset) | on demand, as corpus/gate projects require |
| dynamic dispatch (`dyn`), `DeepView`, unregistered/wider vstd broadcast groups (registered groups + single-lemma `use` ✓) | optional, M7 suite-disposition tail / on corpus demand |
| fine-grained twin-proof staleness diagnostics, proof caching | optional (function-level staleness + a <5s edit loop already work) |
| ring/`polyrith` rungs beyond the current `nlinarith` ladder, on demand (`AssertQuery{NonLinear}` isolated blocks ✓) | M4 tail |
| standard `HashMap::entry` views and returned-`&mut` contracts | sequential corpus growth |
| globals/statics and initialization; atomic ghost protocols | M5/M6 (statics case study) |
| ghost memory: `PointsTo`, raw pointers, cells, invariants | M5 |
| concurrency: tokenized state machines, atomics, PCM/storage protocols | M6 |
| temporal/liveness reasoning, full Verus test-suite disposition | M7 |
| project-level / multi-crate verification tooling (multi-*module* crates already lower whole-crate) | M8 (post-parity) |

The gates are quantitative: each milestone must keep ≥90–95% verdict parity
with Verus on its in-fragment differential corpus, and the endpoint (M7) is
100% disposition of the Verus test suite — every test translated and passing,
or documented as deliberately dropped machinery.

## Where to look

- [docs/ir.md](docs/ir.md) — the IR grammar and coverage rules
- [docs/vcgen.md](docs/vcgen.md) — the VC-generation policy (per-statement
  judgment, conventional form) and the foundational-generator soundness goals
- [docs/trust.md](docs/trust.md) — the trust assumptions of the translation
  and embedding, one by one, with arguments and guards
- [docs/TUTORIAL.md](docs/TUTORIAL.md) — the hands-on workflow
- [plans/execution-plan.md](plans/execution-plan.md) — milestones, gates, open design TODOs
- [logs/](logs/README.md) — session-by-session engineering record
