# Execution plan

This file is deliberately ordered with unfinished work first. The actionable
queue is authoritative here; the completed milestones and dated design record
are preserved in the appendix. Case-study status and acquisition order remain
authoritative in [the case-study registry](../case-studies/README.md) and
[the target-project ladder](../docs/reports/target-projects.md).

## Current baseline

M1–M4 feature slices, the F-series sequential work, and the V1–V4 vstd mirror
have landed. Whole-project coverage gates remain incomplete. Current scope
and dated evidence are recorded in the [case-study registry](../case-studies/README.md).
The differential directory contains 191 source fixtures; a file count does
not establish current verdict or span parity. Earlier measurements remain
in the [progress ledger](../docs/reports/progress.md).

Percolator's green runner covers 31 production bodies, with two additional
partial drivers. IMO 1988 #6 and power-of-2 have recorded complete proofs.
Aeneas SHA-3 remains paused at its recorded `copy_to` slice. Entry API and
statics are expected-refusal studies. The recursion tutorial is a historical
investigation, excluded from current supported coverage.

## Ordered work queue

### 0. dalek-lite: the CryptoProver benchmark crate (user-directed 2026-07-20)

The active target remains `Beneficial-AI-Foundation/dalek-lite` at
`de9ebf015`. The [DL agenda](../case-studies/dalek-lite/PLAN.md) records the
ordered work and the [case README](../case-studies/dalek-lite/README.md)
records scope, source accommodations, and current proof status.

DL1–DL7 and whole-crate artifact routing have landed. The field cone has
5,215 obligation declarations across 436 checked-in Lean files, but eight
explicit proof holes remain in four units. The zero-`sorry` claim was
invalidated by the [checker investigation](../logs/2026-08-19-lean-4.33-veil-removal.md#5b-a-false-green-in-the-acquisition-path-and-its-blast-radius).
Before reporting completion, resolve the proof holes and declaration
collisions, run the acquisition with the working checker, and record the
actual result. The 38 recorded lowering refusals remain separate from proof
completion. Higher layers (DL9), trusted-floor discharge (DL10), and the
nonlinear frontier (DL11) follow the case agenda.

The comparison with CryptoProver must keep verification scope, source
accommodations, and retained assumptions explicit. Replacing the solver does
not itself discharge the upstream axiom floor or the trusted translation.

### 1. Verify the pinned Aeneas `sha3.rs` project — PAUSED (user, 2026-07-20)

Keep `case-studies/aeneas/sha3/upstream` pristine and add ordinary Verus
annotations directly to the separate `verification` project, preserving all
executable Rust. Execute the next slices as independent tested commits:

1. **Complete:** extend the Verus fork/vstd contract for custom tuple-keyed
   `IndexMut` and its returned-`&mut` effect; add positive/negative Verus tests,
   re-run vstd, and push the fork before moving Vermilion's pin. Vermilion
   c150/c151 pin the caller write-back semantics;
2. **Complete:** add the annotation-aware executable-code identity check;
3. **Complete for the first slice:** normalize statically resolved associated
   outputs; add the private-state view and `Index`/`IndexMut` contracts; verify
   unchanged `iota` as 12/12 Lean obligations; pin the result with c154/c155;
4. **Complete:** tuple assignment, exact rotation/endian models, unchanged
   θ/ρ/π/χ/ι, `round`, and the 24-round permutation;
5. **Implementation complete through unchanged `copy_to`:** immutable
   ranges, nested helper loops, checked assertions in loop-condition setup,
   mutable sub-slice prophecy/write-back, and `copy_from_slice` contracts have
   landed; transparent dereference views and immutable array suffix ranges are
   parity-tested; and `copy_to` proves its exact byte result. Next verify
   absorb, then add any squeeze-loop support demonstrated by the unchanged
   source before the public SHA3/SHAKE APIs;
6. prove the generated scalar statements against the exact pinned Aeneas Lean
   definitions. The checked bridge must explicitly import the freshly
   generated `algos.Specs` module from the Verus annotations and pinned
   `Sha3.Spec`; its theorems must relate those imported definitions directly,
   without a third restatement. Gate lane/byte encoding, Keccak-p, sponge, and
   all six public results, run an axiom audit, then report every project file
   as verified, refused, or pending.

The SHA3 parity allowlist is the executable dependency closure of the six
public Aeneas theorems in pinned `Shars/Verification/Sponge.lean`, including
named intermediate theorems and support bodies which those proofs unfold.
Do not spend the parity stage verifying or claiming `lib.rs`, `simple.rs`,
`neon.rs`, Rust tests, or any other theorem-less code outside that closure.
Keep all of those files present and source-guarded; classify them as out of
parity scope, with any later verification reported only as a stretch result.

After every Verus or Vermilion lowering/VCGen change: run its focused parity
tests and the complete verification suite, update the Aeneas ledgers and this
workplan, commit, and push the relevant repository. Extend Vermilion's VCGen
only when a measured post-Verus construct requires new IR/VC semantics.

Acceptance: the annotation-aware check proves executable-source identity;
all files from the pinned `src/` tree remain present; the annotated standalone
Cargo project verifies through Vermilion; and the final Lean bridge imports
the current generated Verus-derived `algos.Specs` plus the exact pinned
`Sha3.Spec`, proves their public SHA3/SHAKE results equivalent with zero added
axioms, and is rebuilt after VC generation. A look-alike bridge specification
or theorem over copied definitions is not acceptance evidence.

### 2. S2: recursive heap datatypes

Acquire and drive the Verus guide's `bst_map.rs` (`TreeMap<V>`), then the
generic/type-invariant variants only after the base driver is green. Required
features, in implementation order:

1. `Box` over recursive datatypes and `Option::take`;
2. `returns` postcondition clauses;
3. sequential `&mut` returns;
4. `Map::union_prefer_right` in the vstd mirror;
5. bounded recursive-datatype handling that also eliminates the recorded
   `doubly_linked` lowering stack overflow.

Acceptance: the base BST map verifies end to end, with interactive twin proofs
where appropriate; each semantic addition has positive and negative
differential guards.

### 3. S3: choice and specification-level search

Drive `summer_school/chapter-1-22.rs` after S2. Add:

1. scalar `choose` is already implemented by DL2; reassess the driver
   against its supported binder/body shapes and conditional characterizing
   hypotheses (see [VC policy](../docs/vcgen.md));
2. boxed recursive enums with `decreases self`;
3. legacy `#[is_variant]` accessors.

Then reassess the finite portions of `guide/lib_examples.rs`. Infinite
`ISet`/`IMap` support remains out of scope unless a selected driver requires
it.

### 4. S4: independent sequential gaps

Schedule these as small, separately committed slices, ordered by a real driver
becoming available:

- unary `BitNot`, then Percolator bitmap clear (indexed mutation has landed);
- std `Ord::min`/`max` default-body contracts;
- Entry API views and returned-`&mut` prophecy contracts;
- `decreases_to!` and `via`/`#[via_fn]` when a new recursion driver is acquired;
- const-generic datatypes;
- `&mut` values escaping into data;
- Map extensional equality (`=~=`/`=~~=`), only after a quotient or
  normalization design is agreed;
- non-range iterators and richer `for` control flow only on corpus demand;
- dynamic dispatch and `DeepView` only on corpus demand; supported
  non-isolated `while` forms already landed in DL6.

The synchronized issue corpus under `docs/issues/` is the implementation
ledger for every clean feature or defect in this list.

### 5. S5: external sequential projects

Acquire one self-contained module at a time in this order, updating the
target-project report whenever evidence changes:

1. Vest parser/serializer combinators;
2. pmemlog / verified-storage;
3. Verdict's parser layer;
4. IronKV marshalling;
5. verified-nrkernel page-table walking;
6. Verus-Bench as the bulk coverage corpus.

Do not describe a project as supported from a hand-translated toy. Preserve
the upstream source or executable bodies, record the exact pin/license, run
the upstream baseline, and state declaration/annotation adaptations
separately from executable-body identity.

## M3/M4 close-out gates

Publish the suite-coverage scoreboard rather than carrying the original
35/60/75% targets as anecdotes. The scoreboard denominator must include every
acquired function and give each one a structural disposition.

- **M3 close-out:** Vest/IronKV marshalling, Verdict, pmemlog, and heapless
  sequential structures; target at least 60% supported coverage. CreuSAT is
  not a Verus project and is no longer a gate.
- **M4 close-out:** BLAKE3, page tables, rlsf bitmaps, and curve25519
  arithmetic; target at least 75% supported coverage.

Feature work required by a gate returns to the numbered queue above and lands
as a normal same-slice addition; the gate itself is measurement, not a license
for speculative encodings.

## Foundational and workflow work before M5

### 1. Foundational VC generation

Give the lowered textual IR a formal semantics in Lean and replace the current
syntactic VC construction with a sound weakest-precondition development.
Stage it as:

1. semantics for the existing neutral IR;
2. a proved-sound VC generator for the straight-line/branch fragment;
3. loops, scopes, calls, mutable-reference resolution, and evidence
   obligations;
4. correspondence checks at the SST-to-IR boundary.

Build on Loom or a comparable existing Lean program-logic framework. Do not
add a second unproved semantics beside the current generator. The normative
policy remains [docs/vcgen.md](../docs/vcgen.md) until each verified stage
replaces it.

### 2. Proof evolution and hint reuse

Design semantic-diff-aware migration for persistent twin proofs so harmless
VC changes do not discard user work. Keep generated bytes deterministic and
never accept a stale proof against a changed theorem. Follow-ons:

- allow already kernel-checked twin lemmas to become droppable hints for later
  obligations in the same program;
- keep `calc!` step scripts droppable; its claims already lower to scoped
  assertions, with proof work available in the Lean twin;
- redesign proof caching outside generated modules; the previous cache was
  removed as unsound/unstable and must not be revived by replaying stale
  verdicts.

### 3. Lean back-end latency

Execute the measured startup plan in order:

1. remove the dead `Polyrith` import; measure whether `Smt` ever uniquely wins
   before gating or removing it;
2. use one Lean process for generated-obligation judgment and proofs-twin
   kernel checking;
3. build a persistent Lean worker that imports the environment once and
   isolates successive file elaborations.

Acceptance: publish cold and warm timings, editor save-to-diagnostic latency,
and any regression over 20%. The target is amortized post-first-file latency
near the measured ~0.9 seconds of actual elaboration/tactics, not an impossible
claim that a cold Lean process beats Verus startup.

### 4. Finish the experimentation kit

The dual Rust/Lean workflow, staleness diagnostics, navigation, and tutorial
exist. Remaining kit work is explicit counterexample presentation and a
curated graded-example path; do not count feature demos mechanically toward an
arbitrary example total.

## Later milestones

### M5 — ghost memory

Model `PointsTo`, raw pointers/cells, ownership tokens, and invariant opening
behind named Lean interfaces. Gate on linked-list/cell/invariant examples and
raw-memory projects; target at least 85% suite coverage.

### M6 — concurrency

Add tokenized state machines, atomic ghost state, PCM/storage protocols, and
general prophecy-based mutable references that escape the sequential lowering
handled in M3. Gate on state-machine examples, node replication, allocators,
and at least 95% suite coverage.

### M7 — temporal/liveness

Add temporal reasoning and the Veil refinement bridge. Gate on an Anvil
controller and 100% disposition of the unmodified Verus suite: verified,
unsupported with an explicit reason, or documented droppable proof scripting.

### M8 — project-level verification

The architecture already processes a multi-module crate in one Verus
front-end run. M8 adds Cargo-target/project orchestration: fan-out generation,
check/sync across every source twin, aggregate staleness and verdicts,
cross-crate imports, and a multi-file/multi-crate suite driver.

## Locked architecture and execution rules

- Pin the Verus front/middle end to an exact commit of
  `ilyasergey/verus`; keep every Rust-side lowering change generic,
  regression-tested, committed, and pushed to that fork before advancing the
  Vermilion pin. Current pin: `a33ad15348aa`.
- Fork at pre-poly VIR-SST inside `vermilion_direct`; do not leak unstable
  Verus fields.
- The Rust/Lean boundary is the versioned **textual IR** (`docs/ir.md`): Rust
  lowers SST to neutral structured data; Lean owns parsing, VC generation,
  rendering, and manifests. Rust never renders Lean syntax.
- Every fragment extension updates the adapter, IR grammar and
  [docs/ir.md](../docs/ir.md), Lean parser/model, positive and negative tests,
  and examples in one slice. If the generation relation or emitted theorem
  shape changes, update [docs/vcgen.md](../docs/vcgen.md) in that same slice.
- Unsupported semantics fail closed and remain source-mapped. Proof hints may
  be dropped, but can never change the proposition being proved.
- Emit readable, discharger-independent Lean `Prop` theorems with stable
  names, Rust spans, `AssertId`, construct descriptions, and statement hashes.
- Preserve executable Rust and measure source identity explicitly. Verus runs
  only as the front end in Vermilion drivers; Lean is the verifier.
- Pin Lean 4.28.0, reuse Veil's manager/SMT stack, and treat automation,
  performance, axiom count, and suite coverage as measured ledgers.

## Definition of done for every checkpoint

- Relevant Rust and Lean tests are green.
- New behavior has positive and negative differential guards when a meaningful
  negative program exists.
- No new axiom, `sorry`, or trusted boundary lacks a ledger entry.
- Semantic conventions are named in the prelude and probe-tested.
- Generated files are deterministic, source-mapped, and colocated.
- Clean features/defects have synchronized GitHub and `docs/issues/` entries.
- `docs/ir.md`, `docs/vcgen.md`, case-study status, progress, and session logs
  are updated in the same slice where applicable.
- Performance regressions above 20% are explained.
- Coherent green slices are committed separately.

# Appendix A — completed work and its historical design record

The appendix preserves the dated decisions, implementation details, and
original gate wording behind completed work. Any surviving unfinished item
has been hoisted into the front matter; historical language saying “next”,
“active”, “planned”, or “in progress” is not an actionable queue.

## Completion checkpoint — 2026-07-17

M1--M4 and the F/V saturation slices reached 144/144 differential verdicts
with 69/69 failure-span agreement. Real-content `by (bit_vector)` and
`by (nonlinear_arith)` queries, exact VIR clipping, named-result branch joins,
and interactive Lean typeclass-evidence obligations all landed with negative
guards. In particular, c112 rejects a false bit-vector identity and c139/c140
pin the Rust-`bool`/Lean-`Prop` `Decidable` boundary.

The first external acquisition pinned Percolator at `143e68c`: 33 distinct
copied bodies pass pinned Verus and 28 functions / 97 Lean obligations verify,
including the supported `wide_math.rs` leaf layer. Verbatim IMO 1988 #6 and
power-of-2 also verify; Entry API and statics remain honest issue-linked
refusal probes.

## Completed foundations

### Repository bootstrap — complete

Pins, layout, build, logs, ledgers, and this local execution-plan area exist.

### M0 infrastructure — complete; automation matrix deferred

The draft prelude, seven semantic probes, 20-category calibration corpus, and
isolated tactic runner exist. Exhaustive solve-rate tuning was explicitly
deprioritized while the end-to-end pipeline is established.

### M1a simple source slice — complete

`examples/m1-pipeline/simple.rs` is processed by the real pinned Verus front
end. Its pre-poly SST is translated into colocated `generated/simple.lean`
obligations. Default automation, reconstructed SMT, and an exact interactive
companion proof build in `proofs/simple.lean`.

## M1 straight-line core — completed

1. ~~Replace the transitional textual SST-log reader with direct
   `vir::sst::FunctionSst` access.~~ Done: `VERMILION_VIR_EXPORT` patch on the
   pinned checkout plus `crates/vermilion_direct`, which reruns the pinned
   `vir` middle end (`simplify` → `prune` → `ast_to_sst_krate`) in process and
   lowers real `FunctionSst` values; equivalence with the textual reader and
   byte-stable golden output are asserted by `scripts/run_m1_pipeline.sh`.
2. ~~Widen types/expressions/statements: bool, mathematical int/nat, checked
   machine integers, lets/SSA assignments, calls, assumes, and multiple
   returns.~~ Done for the straight-line fragment (`examples/m1-widening`):
   bools live in `Prop`, call results are fresh quantified symbols constrained
   by callee contracts, postconditions are checked at each return site, and
   `nat` adds nonnegativity hypotheses. `If`/loops remain fail-closed for M2.
3. ~~Generate stable project/module names and colocate generated files with
   their Rust inputs under per-example/per-crate `generated/` folders.~~ Done.
4. ~~Connect Lean results to Verus-format Rust-span JSON diagnostics.~~ Done:
   colocated obligation manifests plus `vrml_check`, demonstrated on a
   deliberately failing assertion in `examples/m1-diagnostics`.
5. ~~Bring up differential tests for the straight-line oracle subset.~~ Done:
   `tests/differential/` + `scripts/run_differential.py` (results in
   `docs/reports/generated/differential-m1-results.md`).
6. ~~Gate: at least 95% verdict parity and matching failure spans.~~ Met on
   the M1 corpus: 12/12 verdicts, 4/4 failure spans. Extending the corpus to
   tagged `rust_verify_test` extractions is M2 work as the fragment grows.

Incremental generation is a first-class M1/M2 workstream; see
[incremental-computation.md](incremental-computation.md). The M1 interfaces
exist: manifests carry span-insensitive per-function semantic fingerprints
(callee contracts are substituted into caller obligations, so contract edits
propagate and body-only edits stay local) plus location fingerprints, and
`scripts/test_incrementality.sh` enforces the four-edit invalidation matrix.
Per-function output isolation and any replacement discharge cache were carried
forward to the active tooling/workflow queue.

Foundational roadmap item recorded here on 2026-07-12 (now scheduled in the
front matter): **give the lowered SST fragment a formal semantics in Lean and
replace the syntactic VC generator with a foundational one.** Today
`Vermilion.Ir.Vcgen` + `Render` produce obligation *text*; the foundational
version would define the fragment's program semantics as Lean definitions,
derive VCs by a verified (or at least verifiable) weakest-precondition
construction, and prove the generator sound against that semantics — turning
the current trusted Rust-lowering + Lean-printing pipeline into a checked
artifact. Build on Loom (already in the Lake dependency tree via Veil) or a
similar Lean program-logic framework rather than from scratch. Natural
staging: semantics of the neutral IR first (it is small and versioned), then
push the boundary toward SST as the IR grows.

Resolved (2026-07-13; user-requested 2026-07-12): **ill-typed programs
never reach the verifier, and their type errors are highlighted at their
spans** — and this is now structural and suite-enforced. The driver
(`scripts/run_example.sh`) surfaces the Verus front end's exit status
directly: a rejected program stops the pipeline with exit 3 and a
machine-readable `.vermilion/<stem>-run.json` (`{"phase":"front-end",…}`;
successful runs record `"phase":"lean"` with vrml_check's verdict), so no
consumer infers the failure mode from exit codes or file mtimes. The
editor reads that record, publishes the rustc errors as diagnostics at
their spans, and shows a "does not type-check" status; the mtime heuristic
remains only as a fallback for pipelines predating the record. The suite
case (`scripts/test_ill_typed.sh`, in `run_suite.sh`) asserts on a
deliberately ill-typed file that (a) the run stops in the front end
structurally, (b) no obligations are generated or judged (no stale
"verified" state can survive), and (c) the error is reported at its exact
span.

Design settled and implemented 2026-07-13: **user spec functions in
spec expressions, and the reveal/hide/fuel story.** Spec fns — recursive
ones included — are emitted as real Lean definitions with applications
kept as applications (recursive: `termination_by` from the Verus-checked
decreases, dependent conditionals for the termination goals, bounded
rewriting in machine attempts), and `#[verifier::opaque]`/`reveal`/
`reveal_with_fuel` narrow each obligation's unfold list per program point
(differential c36–c42 hold verdict parity in both directions). Mutual
recursion still fails closed. Original design rationale:
Verus's own discharge gates each function's *definition axiom* on
fuel_bool/fuel_nat constants (`#[verifier::opaque]` = no default fuel;
`reveal` raises it; `reveal_with_fuel` bounds recursive unrolling) —
but fuel is an artifact of the SMT encoding (a throttle on otherwise
non-terminating quantifier instantiation of quantified definition axioms),
not semantics, and it never enters the Lean embedding (design settled with
the user, 2026-07-13; explicitly: **no inlining**). The Dafny-style
contract discipline — assert `requires`, assume `ensures` about a fresh
result symbol — is already how statement-level proof/exec calls are
lowered and stays as is. For spec fns in expressions (whose meaning is
their body; there is no contract to plug): (1) the IR grows function
application, and every user spec fn is emitted as a **real Lean
definition** (`termination_by` justified by the decreases obligation Verus
already checks) — obligations keep `f x` readable as an application;
(2) definitions reach the machine prover as **per-occurrence ground
defining equations** assumed as hypotheses (`f a = body[a]` for the
occurrences present — no quantified axiom, no matching loop, no fuel
constant; these are theorems of the emitted definition, so the trusted
base gains nothing); default visibility assumes one round of equations,
`reveal_with_fuel(f, n)` maps to n rounds of ground instantiation at
lowering time, and `hide`/`#[verifier::opaque]` suppresses the equations
for obligations from that program region (`StmX::Fuel` crosses the
lowering as per-obligation visibility). Interactive twin proofs may
`unfold` anything — the escape hatch `reveal` gives Verus users — while
machine attempts reproduce Verus's visibility verdicts, keeping the
differential aligned.

Proof-evolution roadmap item recorded here (now scheduled in the front
matter): better **co-evolve the program and user-provided proofs**. Today
`vrml_sync` reconciles the `proofs/` twin by
(obligation, statement-hash) blocks — user proofs survive only while their VC
is byte-identical. Candidates: semantic-diff-aware proof migration for benign
statement changes, per-obligation arbitration between automation and human
proofs (M2.5 manager), and surfacing staleness in the editor.

## M2 — base camp — CLOSED 2026-07-13 (gate met; two explicit carry-overs)

Closed with: branches, loops/invariants (isolation), break/continue,
recursion/decreases, vstd Seq/Set/Map/Multiset, spec functions (incl.
recursive, opaque/reveal — the no-fuel design), watch mode, editor
support (verify-on-save, gutter verdicts, twin navigation, ill-typed
gating), structural front-end detection, and the measured gates: 60
differential cases at 100% verdict parity (≥90% required), edit loop
~3.6 s (<5 s), median slowdown 6.64× (≤10×). Carry-overs, both explicit:
**Vest/IronKV marshalling** moves to the M3 entry criteria (needs
datatypes/`Vec`/traits/generics); the **per-obligation discharge cache**
stays deferred by user decision (2026-07-13: "remove incrementality so
far, it's buggy") — revisit only with a fresh design (the winning-rung
trace data already exists via `trace.vrml.ladder`, but cache-dependent
generated files would break the suite's byte-stability contract, so the
replay must live outside the generated bytes).


Add loops and invariants, recursion/decreases, vstd `Seq/Set/Map/Multiset`,
reveal/hide, Veil manager integration, the discharger ladder, exact companion
proof discovery, caching, and watch mode.

M2 opened with the Lean-side IR architecture (user-directed, 2026-07-12): the
`branch`, `loop`, and `ite` constructs plus collection types enter the IR
grammar as they land; `docs/ir.md` is the contract and must stay current.

User directive (2026-07-12): **M2 completes all its components — including
editor support (the VS Code workflow: verification tasks with Rust-side
problem matchers, the watch task, staleness surfacing) — before any M3 work
begins.** Every example lives in the automated suite
(`scripts/run_suite.sh`, auto-discovering `examples/*/run.sh`), which is rerun after each implementation
slice.

Gate: at least 60 Verus examples, at least 90% in-fragment verdict parity,
Vest and IronKV marshalling, median slowdown at most 10×, and an incremental
one-function edit loop below five seconds.

Gate status (2026-07-13): **60 cases ✓** (differential corpus, 100%
verdict parity — above the 90% requirement ✓); **edit loop ✓** (~3.6 s
measured by watch mode); **median slowdown ✓ 6.64×** (differential harness cold-run
timings, `verus_seconds`/`vermilion_seconds` in the verdict cache; the
summary prints the median ratio — under the 10× requirement). **Vest/IronKV marshalling is
the one criterion that cannot precede M3**: real marshalling code uses
structs/datatypes, `Vec`, traits, and generics — none in the M2 fragment
— so it is carried explicitly into the M3 entry criteria rather than
silently dropped (flagged to the user at M2 close).

## M2.5 — editor workflow foundation completed

The dual Rust/Lean VS Code workflow, staleness diagnostics, navigation, and
getting-started material landed. Counterexample presentation and a curated
graded-example path remain in the active front matter.

## M3 sequential language slices — completed

The planned sequential language slices landed: datatypes, quantifiers,
generics, `Vec` including mutation, arrays/slices, `&mut` parameters and field
paths, systematic type facts, traits and generic bounds, spec/exec closures,
const generics, broadcast use, user `View` impls, and mutual spec-function
recursion. Later case studies added exact clipping, named-result joins, and
isolated nonlinear queries. The remaining gate is project/corpus measurement,
now scheduled in the front matter.

The proposed `verus2vermilion` annotation translator was cancelled on
2026-07-13: Vermilion consumes Verus syntax directly, and suite gates are
measured over unmodified sources. See
`.claude/memory/no-verus2vermilion.md`.

Quantifier policy (user-settled, 2026-07-13): the backend does **not**
consume triggers, but they are **preserved in the IR** and documented in
each obligation's doc comment for future e-matching tooling (grind
patterns). Goals the ladder cannot close (existential witnesses, index
case-splits) go **interactive in the twin** — no witness-automation rung
is pursued for now (`examples/m3-quantifiers` demonstrates the
workflow). Deliberate divergence: Verus verdicts that fail only because
a *trigger* never fires are not reproduced — our automation is
trigger-free and more complete there (the mirror image of the
reveal/hide coherence we do preserve).

**Historical design scout — generics (type parameters), landed 2026-07-13.**
Facts from the pinned source: the SST our middle produces is **pre-poly
and unboxed** (`poly.rs` runs only after `ast_to_sst_krate` in Verus
proper) — a type parameter is a bare `TypX::TypParam(ident)`, no
`Boxed`/`Poly` artifacts. Datatype params live in
`DatatypeX.typ_params : TypPositives` (name + recursion-acceptance, no
variance; already checked by Verus); spec/checked-fn params in
`FunctionSstX.typ_params : Idents`, with `typ_bounds` empty (or
sizedness-only) for unconstrained params — `Trait`/`TypEquality` bounds
fail closed initially. Call sites carry the **instantiated** type
arguments (`ExpX::Call`'s `Typs`, in callee-param order — possibly
mentioning the caller's own params). Verus verifies generic functions
**once, generically** (abstract type descriptors, universally
quantified); values of param type carry `has_type` — a Poly artifact
that collapses to nothing in a natively-typed Lean embedding **except
inhabitedness**: the `as_type` prelude axiom makes every Verus type
inhabited, so Lean type-param binders must be `(T : Type) [Inhabited
T]`. Equality on param-typed values is plain `Eq` (the `Iff` routing
stays gated on `TypX::Bool` only). Wiring: `Ty::Var(name)` +
`Ty::Data(id, args)` in the model; datatype declarations emit
parameterized inductives; spec-fn defs and obligation theorems get
`(T : Type) [Inhabited T]` binders; call-site `Typs` substitute into
callee contracts/applications.

**First slice: user datatypes (structs/enums/tuples) — design scouted
2026-07-13.** Facts from the pinned Verus source: the export patch already
ships the full `vir::ast::Krate`, whose `KrateX.datatypes` carries all
declarations — no patch change needed; `ast_simplify` (which our middle
already runs) desugars `match` into `If`-chains over
`UnaryOpr::IsVariant` guards with `FieldOpr` projections and synthesizes
tuple datatypes (`Dt::Tuple(n)` = single-variant struct with fields
"0".."n-1"), so **no pattern-match handling is needed** — our Branch
machinery covers it. Wiring: (a) thread the post-simplify
`krate.datatypes` through `MiddleOutput`; (b) lower
`TypX::Datatype(Dt::Path|Dt::Tuple)`, `ExpX::Ctor(dt, variant, binders)`,
`UnaryOpr::Field(FieldOpr)`, `UnaryOpr::IsVariant`; (c) IR grows
`(datatype id (variant NAME (field NAME TYPE)*)*)` top-level forms, a
`(data id type*)` type, and `ctor`/`fieldof`/`isvariant` expressions;
(d) the Lean side emits each datatype as a **real `inductive`** —
injectivity, disjointness, and exhaustiveness come from the kernel, not
axioms (same no-axiom discipline as spec fns) — plus per-variant/field
projection defs (wrong-variant access returns an unconstrained default,
mirroring Verus's underspecification) and `is_<variant>` predicates.
Verus's own AIR discipline for reference: native SMT datatype declaration
+ accessor/height/ext-equal axioms (`datatype_to_air.rs`).

**Slice landed 2026-07-13 — `&mut` parameters (sequential), prophecy
resolved at lowering time.** The pinned Verus models `&mut T` as a
first-class `TypX::MutRef` whose values carry current/future projections
(`UnaryOp::MutRefCurrent`/`MutRefFuture`), resolution markers
(`UnaryOpr::HasResolved`), and two-phase call borrows (temp definition
via `assume mut_ref_current(tmp) == v`, prophecy writeback
`y = mut_ref_future(tmp)` emitted *before* the call). Vermilion resolves
the prophecy in the substitution lowering — current = environment value,
`old(x)` on an own parameter = entry binder, `has_resolved` snapshots the
future, call-site futures are demand-allocated fresh symbols constrained
only by callee ensures, reference-typed temps tracked as aliases — with
**no IR growth and no Lean-side changes**; everything outside the
discipline fails closed. Soundness guarded differentially: c74 (body
changes `x` but ensures `final == old`) and c77 (unspecified callee ⇒
havocked caller assert) fail in both verifiers at the same spans.
Example `examples/m3-mutref` (11/11 automatic); corpus at 77 cases,
77/77 verdicts, 34/34 spans. At this checkpoint, field paths, returned or
escaping references, `&mut Vec<T>` methods, and concurrent/heap prophecy were
still open. Field paths and `Vec` mutation later landed; returned/escaping
references and concurrent prophecy remain in the front-matter queue.

**Slices landed 2026-07-13 (continued).**

- **Vec mutation** (`ExtEq` on extensional models → plain `eq`, Map/deep
  fail closed; `spec_vec_len` ≡ view length per the default-broadcast
  `group_vec_axioms`; call-site type arguments substitute into callee
  contracts). Example m3-vec-mut; differential c78–c81.
- **Systematic type facts** (user directive): `type_range_facts` is the
  recursive `typ_invariant` analogue — quantified element/key facts for
  containers, generic-instantiated datatype field facts — at every
  value-introduction site (params, call results, branch joins, loop
  havocs, prophecy futures, quantifier guards). No trigger machinery:
  the ladder instantiates, or the twin goes interactive (user
  directive).
- **Traits, statically dispatched**: `resolve_trait_method` matches call
  type args against `TraitMethodImpl` declarations (contract positions
  carry no SST resolution); call contracts come from the trait method's
  declaration instantiated at the call (closed an
  accept-where-Verus-rejects hole: inherited trait `requires` produced
  no call-site obligation — guarded by c83). Generic bounds and dynamic
  dispatch failed closed at this checkpoint. Generic bounds later landed;
  dynamic dispatch remains demand-driven. Example m3-traits (two nonlinear goals
  interactive in the tracked twin); differential c82–c84.
- **Spec closures**: `spec_fn` arrows / lambdas / applications are
  genuine Lean functions; IR grew `fnspec`/`lambda`/`applyfn`. Exec
  closures (`ClosureInner`) still failed closed at this checkpoint and landed
  in the subsequent slice. Example m3-closures; differential c85–c86. Corpus
  at 86: 86/86 verdicts, 39/39 spans.

**Soundness audit (2026-07-13, user-prompted) — resolved same day:**
(a) `ext_eq_is_plain_eq` now recurses over the VIR type *including
datatype fields* (and fails closed on type parameters — the
instantiation could be a Map); (b) the `UnaryOpr` lowering catch-all is
gone — `Box`/`Unbox`/`CustomErr` are explicit identities, everything
else fails closed (`IntegerTypeBound` computes a value and must never
default to identity); (c) plain `==` at Map/spec-fn types stays
structural: internally consistent (callee proof and caller assumption
are both structural on our side); the boundary is **trusted vstd
contracts** mentioning Map equality — none in the fragment; quotient or
normalize the Map model before admitting one (design TODO). Remaining
documented trust arguments: quantified type facts are no stronger than
Verus's `has_type`; unguarded datatype field facts hold of `default`
(depends on `deriving Inhabited` defaulting); prophecy resolution
trusts Verus's `has_resolved` placement (guarded by c74/c77).

**Slice landed 2026-07-13 — `(scope …)` check-and-discard + DeadEnd
soundness fix.** Applying the audit standard to `ClosureInner` exposed a
pre-existing leak: `assert … by` proof blocks (`DeadEnd`) lowered
transparently, so block-local `assume`s escaped into the continuation —
accepting programs Verus rejects. New IR statement `(scope stmt*)` with
the `(SCOPE)` Vcgen rule (docs/vcgen.md updated same-slice per policy);
DeadEnd now lowers to a scope (the `assert_by` conclusion still arrives
via the outer Assume Verus emits). Guard: c87 (the leaked-assume program
fails both verifiers). Corpus at 87: 87/87 verdicts, 40/40 spans.

**Slice landed 2026-07-13 — exec closures (as designed below).** The
encoding needed two extra pieces the scout missed: SST temporaries read
before any definition (the opaque closure value) are implicitly
havocked and now become fresh sanitized binders with type facts; and
`grind` needed the range predicates + datatype accessors marked
`@[grind]` to instantiate the quantified contract facts (probe-verified
before adoption). Zero-variant anonymous-closure datatypes emit an
opaque single-variant inductive; synthesized tuple type params
(`T%0`) forced quoting `tyvar` names in the IR (grammar already said
STRING). Example m3-exec-closures (6/6 automatic, chained calls);
differential c88–c90 (chain passes; requires violation and wrong body
fail both sides). Corpus at 90: 90/90 verdicts, 42/42 spans.

**Slice landed 2026-07-13 — const generics.** `ConstTyp` bounds move
const parameters out of the type-parameter list into `Int` value
binders (range facts of the declared type; `usize`/`isize` get the
arch-neutral 64-bit bounds, a documented weakest-common choice for
Verus's symbolic 32/64-bit word — also fixed a pre-existing gap where
`usize` values had NO range facts at all). `ConstGeneric` uses lower to
the binder generically and to the literal at instantiated calls.
Const-generic spec functions and arrays failed closed at this checkpoint and
later landed; const-generic datatypes remain in the active queue. Example
m3-const-generics (8/8 automatic); differential c91–c92.

**Slice landed 2026-07-13 — `broadcast use` (single lemma).** The use
arrives as Fuel pointing at a proof fn whose `proof_exec_axioms` holds
the (Pars, Exp, Trigs) triple; the lowering assumes the ∀-closure of
`requires → ensures` (type facts as guards) at the use point — a
theorem (the lemma's body is verified by both sides), scoped as an
ordinary fact. Guards c93/c94 use an opaque spec fn so the fact flows
only through the lemma. vstd broadcast GROUPS beyond the structural
identities (`spec_vec_len`) remained fail-closed at this checkpoint; V4 later
landed group support. Example m3-broadcast (2/2); corpus 94/94, 44/44 spans.

**Historical design scout — generic trait bounds (`T: Shape`), landed
2026-07-13.** Inside the generic function: trait spec fns applied at
the abstract `Self = T` become fresh function-typed binders (one per
(trait spec fn, type-param) pair — the closure-predicate pattern);
trait-method calls take the TRAIT declaration's contract with
`Self := T`, whose spec-fn mentions lower to those symbols;
`NullaryOpr::TraitBound` lowers to `True` (its verification content is
the contracts, which flow through the symbols). The generic obligation
then quantifies over `T` and the symbols — sound for every
interpretation, in particular every impl (Verus's dictionary
semantics). Instantiated calls of the generic fn substitute concrete
types, and the existing `resolve_trait_method` machinery takes over.

**Slice landed 2026-07-13 — generic trait bounds** (as scouted below:
per-(trait fn, type-args) fnspec symbols joining the function's
universal binders; trait-decl contract at `Self := T`; TraitBound →
True). Example m3-trait-bounds (7/7, generic + concrete paths);
differential c95–c96.

**Slice landed 2026-07-13 — user `View` impls.** `s@` on user types
routes through the impl's emitted spec fn via ordinary trait dispatch;
the `View::view` identity is now gated on the argument being an
alloc `Vec` — previously it fired for user impls, mistyping `s@`
(probe-caught latent bug). Example m3-user-view; differential c97–c98.
Corpus at 98: 98/98 verdicts, 46/46 spans. DeepView fails closed.

**Original design scout (retained for the record).** SST shape
(probe-confirmed): the closure body arrives as `StmX::ClosureInner`
(assume requires → body → assert ensures, `typ_inv_vars` naming the
fresh params) — an inline sub-verification to lower like the
loop-isolation scope (fresh param binders + type facts; enclosing env
visible for captures; env changes discarded). The closure VALUE has a
synthesized `anonymous_closure%N` datatype type; its contract reaches
call sites through an assumed quantified fact over
`InternalFun::ClosureReq/ClosureEns` predicates applied to (closure
value, argument tuple). Wiring that needs no axioms: lower the two
predicates as fresh `Ty::Fn`-typed binders (per closure type,
demand-allocated like prophecy futures), let the assumed ∀-fact
constrain them, and let call sites assert `ClosureReq(c, args)` /
assume `ClosureEns(c, args, result)` — tuples and quantified facts
already exist. This was the scout-time boundary; the exec-closure slice above
subsequently landed.

## M4 Lean-native specialty provers — language/automation slices completed

Build **Lean libraries**, not SMT-facing encodings
(`.claude/memory/m4-lean-native-libraries.md`): lemma libraries over the
prelude models plus ladder rungs backed by Lean-native automation —
`BitVec` views with proved conversion lemmas closed by `bv_decide`,
curated nonlinear sets with `nlinarith`/`polyrith`, `decide`/`norm_num`
for compute-style goals. Nothing enters the TCB; the libraries are
ordinary proved Lean code. Gate on BLAKE3, page tables, rlsf bitmaps, and
curve25519 arithmetic; target at least 75% suite coverage. Go-ahead
given 2026-07-13: proceed M3 → M4 and STOP at the end of M4.

**M4 completion update.** `Vermilion.Bits` (BitVec-backed operations with
proved conversions/ranges/identities), the `nlinarith` rung, the
beyond-Verus nonlinear showcase, and `by (compute)` all landed.
`AssertBitVector` carries its real `requires`/`ensures` content and is lowered
as an isolated query; c112 pins the rejecting direction. The remaining M4
items are gate-project measurements. `AssertQuery{NonLinear}` block form has
since landed as an isolated query (c141/c142 and the IMO/power case studies).

## Per-function emission — DONE 2026-07-19 (user-directed; default mode)

One Lean unit module per verified function (`generated/<stem>/<fn>.lean`)
around a shared `generated/<stem>/Specs.lean` holding datatype/spec-fn
definitions exactly once, imported — never duplicated — by the units whose
obligations reference them (reference analysis: `Expr.applies` +
`Expr.dataRefs`/`Ty.dataRefs` over each function's obligations; exec-call
contracts are already inlined by lowering, so callee spec references
surface there). Twins mirror the layout (`proofs/<stem>/<fn>.lean`,
`proofs/<stem>/Specs.lean` with the import rewritten to `<stem>.Specs`, each example lib's own module namespace), are
Lake-built through the existing `.submodules `proofs` globs, and proof
blocks migrate across mode switches by statement hash. `vrml_check` judges
units with parallel Lean processes (specs compiled once to
a `.vermilion/olean/` shadow root prepended to our own LEAN_PATH so plain LEAN_PATH
resolves the import), gained `--twin-check [--skip-identical]` and
`--only <fn>` (watch mode now delegates its delta to it). Modes: `vrml_gen
--mode per-function|per-file`, per-function the default, sticky via the
manifest's `mode` field (how existing artifacts are recognized).
Obligations, hashes, diagnostics, and verdicts are mode-invariant —
`scripts/test_emission_modes.sh` asserts it over every example and case
study, and the differential harness runs either mode (`--emit-mode`).
Open TODO: teach the twin fast path to skip per-unit (not just per-file)
re-elaboration when only one unit twin changed.

## Saturation push — completed Verus-suite feature slices (F-series, 2026-07-14)

Goal (user-directed 2026-07-14): saturate Vermilion to feature parity as a
Verus-compliant verifier for the **sequential** fragment Verus supports.
Method: sweep the Verus example corpus, bucket what fails to lower, land
the gaps as ordinary same-slice feature work (adapter + IR + `docs/ir.md` +
Lean parser + prelude + example + differential cases together).

Scout (63 Verus examples swept): 15 lower end-to-end, 29 hit fragment
gaps, 19 are front-end rejects (non-sequential or non-fragment). Landed
slices: F3 range `for` loops, F4 `Vec::pop`/`Seq::subrange`, F5 while
loops holding a live `&mut` borrow, F6 `loop_isolation(false)` assessed
and deferred (distinct non-isolated discharge), **F7 `Seq::add`
(concatenation, the spec `+`) — landed 2026-07-14**: IR `(seqadd …)`,
prelude `add` with `len_add`/`index_add_left`/`index_add_right` tagged
`@[simp, grind =]`, `examples/m2-seqadd`, differential c127/c128;
corpus now 127 cases at 100% verdict parity, 61/61 span agreement.

F7 also hardened the ladder and the harness:

- **Per-rung heartbeat budgets** (`Vermilion/Obligations.lean`): every
  deterministic rung runs under a fresh baseline + cap (50k), with
  runtime exceptions caught and the tactic state rolled back, so one
  diverging rung (c127: uninformed `grind` e-matching quantified
  per-element range facts) cannot starve later rungs or turn a failure
  into a minute-long timeout. `smt` stays last and uncapped.
- **Differential harness staleness fixes** (`scripts/run_differential.py`):
  build `Vermilion` alongside `vrml_gen` (generated modules import
  `Vermilion.Obligations` at judge time), and stamp the verdict cache by
  Lean **source content** rather than one `.olean` mtime (Lake does not
  reliably rewrite a given artifact on library changes, so the mtime
  stamp could replay verdicts from a superseded library).

**Policy (user-directed 2026-07-14, recorded in
`.claude/memory/interactive-proofs-first-class.md`):** for `proof fn`s we
do not chase Verus verdict parity by fine-tuning automation. Interactive
twin proofs are a first-class discharge path ("we can always prove
something like this directly in Lean"); prefer prelude/library facts (the
M4 Lean way) over ladder tuning, and keep automation failure fast and
legible. The reporting follow-up—distinguishing automation from user-twin
discharge—now appears in the active tooling queue.

**Historical S1 adoption — completed.** On 2026-07-14 the S1--S5 target
progression became the operative milestone ladder. S1 initially exposed
`Seq::to_multiset`, `Vec::clone`, `Vec::split_off`, and multiset-invariant
proofs in merge sort. Those features and the corresponding vstd lemmas later
landed; both the specs-only and verbatim merge-sort studies now verify.
Source-mapped lowering refusals, structured run-status records, and editor
display of dependency-level refusals also landed during this push.

### Verus proof annotations as hints — design and landed groundwork

User directive (2026-07-14, during the merge-sort work): "think how to move
from Verus-style proofs/lemmas to more extrinsic ones in Lean. We want to
make use of those annotations if they already exist, instructing the Lean
level, but we don't implement a faithful lowering for them, as they are
artefacts of SMT-based proving."

**The principle.** Verus proof scripting (inline `proof {}` blocks, per-site
lemma invocations, `broadcast use`, `=~=` nudges, `calc!`) exists to steer
Z3's quantifier instantiation. Vermilion's obligations are always stated in
full, so this scripting is never *semantically* needed — it can only help
automation. Therefore it lowers to **hints**: data the `vrml` attempt may
use and may equally ignore. The invariant that keeps this sound and cheap:
**hints must be droppable** — an unmapped, unlowered, or wrong hint can
never change what is proved, only whether automation closes it (fallback:
the interactive twin, per `.claude/memory/interactive-proofs-first-class.md`).
Hints therefore fail OPEN (warn and drop), the opposite of fragment
semantics, which fail closed.

**What already behaves this way** (keep): statement-level lemma calls
(Dafny-style: requires become obligations, instantiated ensures become
ground hypotheses — ground facts ARE hints); `reveal`/`hide`/
`reveal_with_fuel` (per-obligation unfold lists); `by (bit_vector)`/
`by (compute)`/`by (nonlinear_arith)` isolated queries; trigger
annotations (preserved, unconsumed); rlimit/prover selection (ignored).

**Original staged plan and disposition:**

- **H1 — hint channel (landed for broadcast groups in V4).** IR: obligations grow `(hints …)` — lemma names
  and/or ground fact expressions harvested from the enclosing proof
  context. Generator: the machine attempt becomes `vrml [unfolds…] using
  [hints…]`; ladder rungs thread hints into their simp/grind sets and as
  `have` hypotheses. No new semantics: the hint set defaults to empty
  everywhere.
- **H2 — vstd lemma mapping (landed; unblocked verbatim `mergesort.rs`).**
  `broadcast use L` (single lemma or GROUP) maps L's *name* to prelude
  lemma names via a Lean-side registry (e.g. `Seq::to_multiset_ensures ↦
  toMultiset_push/len/add`; `group_seq_properties ↦ the Seq simp set`).
  Crucially the lemma STATEMENT is never lowered — exactly the
  don't-lower-SMT-artifacts directive; unmapped names warn and drop.
  User `broadcast proof fn`s: their instantiated ensures join the hint
  set where the statement lowers; otherwise warn and drop.
- **H3 — structured scripting (carried to the active workflow queue).** `calc!` chains and `assert … by { … }`
  subproofs: the intermediate claims become ordinary assert obligations
  (already stated); their scripted justifications become hints for those
  obligations rather than nested faithful proofs.
- **H4 — user twin proofs as hints (carried to the active workflow queue).** Obligations the
  user proved interactively (and helper lemmas in `-- vrml:user:begin`
  sections) register as hint lemmas for LATER obligations of the same
  program — the "user proofs feed the automation" half of the
  interactive-proofs policy. Mechanically: `vrml_sync` records
  twin-proven names in the manifest; the generator passes them as hints
  to downstream attempts.

H2's acceptance condition was met: verbatim `mergesort.rs` verifies with its
scripting consumed as hints, and the hints remain droppable. Richer reporting
for hint-assisted versus interactive closes is scheduled in the front matter.

### The vstd mirror (V-series) — completed through V4

User directive: preemptively work through the vstd modules Verus programs
import (`vstd::prelude`, `vstd::seq`/`seq_lib`, `vstd::multiset`, …) and
ship Lean libraries of their specifications and interactively proved
theorems with Vermilion, structured to MIRROR the vstd namespaces so
imports into generated/proofs files are predictable; reuse the existing
in-place spec/lemma translation; and make IR emission pick these up from
the libraries by NAME rather than per-function hard-coding in the adapter.

Agreed, with one refinement recorded here: vstd SPEC FNS resolve through a
name registry to shipped Lean *definitions* (semantics — fail closed when
unmapped), while vstd LEMMAS ship as proved theorems consumed through the
HINT channel (H2 above — fail open when unmapped). The two directions have
different soundness obligations and must not be conflated.

Status 2026-07-14: **V1 landed** (`e558f32`); **V2 Phase A landed**
(`cb2021e`) — the `(vstdapply …)` node, the Mathlib-free
`Vermilion/Vstd/Registry.lean`, decode-time fail-closed resolution,
guards c133/c134 (`Multiset::add` resolves end to end). **V2 Phase B
landed** — the adapter's op table shrank to the structural core
(`len`/`index` fabricated by the generator, type-carrying empties, the
`to_iset` collapse, bitops); `push`/`update`/`subrange`/`add`/
`to_multiset` and the Set/Map/Multiset value-arg ops now emit
`vstdapply`, resolved by the registry to the IDENTICAL rendered text —
generated modules, statement hashes, and twins were byte-stable across
the migration (validated: zero stale-twin warnings; 133/133 parity;
suite green). Known follow-up: span recovery for generation-time
vstdapply refusals (IR exprs are span-free). **V3 landed** — two parts:
(a) the **library restructure**: the vstd collection models moved OUT of
`Prelude.lean` into `Vermilion/Vstd/{Seq,SeqLib,Set,Map,Multiset}.lean`,
one Lean module per vstd module, mirroring the vstd tree; namespaces
(`Vermilion.Seq`/…) are unchanged so nothing downstream moved, and
`Prelude.lean` re-exports them (keeping only the non-vstd primitives —
`ediv`/`emod`, `iteP`, `Bits`, range predicates). The redundant
`Prelude/Probes.lean` smoke-tests were dropped (the corpus covers them;
they dragged `Mathlib.Tactic` into the default target); `Vstd/Probes.lean`
stays as the registry honesty guard. (b) the **ported surface**:
`Seq::first`/`last` (`vstd::seq`), `Seq::contains`/`drop_last`/
`drop_first`/`remove`, `Multiset::remove` (spec-fn model defs +
characterizing lemmas), the proved mirror `dropLast_add` (vstd
`drop_last_distributes_over_add`) and `toMultiset_contains` (the
membership half of `to_multiset_ensures`), all registered; guards
c135/c136 (135/135 parity). At that checkpoint, the `remove` half of
`to_multiset_ensures` and `sorted_by`/`lemma_sorted_unique` were deferred
because merge sort did not require them; the later sorting study supplied its
required comparator surface. **V4 (hint channel)
landed** — `broadcast use G` of a broadcast GROUP lowers to
`(broadcast "vstd::…")`; `processStmt`'s `(BROADCAST)` rule resolves the
path through `Vermilion.Vstd.lemmaHints` into the state's hint set `B`,
threaded into each obligation's `vrml [...]` simp set (`docs/vcgen.md`
updated: state σ = ⟨Γ,H,V,B,κ⟩). Guards c137/c138. Single-lemma
`broadcast use` was ALREADY handled (adapter assumes the lemma's
quantified fact — strictly stronger), so only groups needed the channel.
**Verbatim mergesort VERIFIED (user-directed).** The upstream
`examples/mergesort.rs` (all inline proof scripting preserved, minus the
out-of-fragment `main`) is `case-studies/merge-sort/mergesort.rs`,
verified end to end: 60 obligations, 43 automatic (ladder + broadcast
hints + assumed broadcast-lemma facts), 17 interactive in the twin, and
NO reliance on the `smt` rung (the twin elaborates under the plain
kernel). Getting there needed a fix and a routing correction, both landed:
(i) `leanSegment` now suffixes Lean keywords that are legal Rust
identifiers (`end`→`end_`, …) — the upstream `end` parameter was producing
an ill-formed binder; (ii) the adapter routes ALL `seq_lib` `Seq` methods
(`drop_last`/`remove`/`contains`/`drop_first`, not just `to_multiset`)
through the vstd-mirror registry — routing them to generic user
spec-fn emission produced an ill-formed `{A : Type}` binder for the ones
whose element type survives only in a monomorphized argument
(`remove i`, `contains needle`), and duplicated the mirror. The specs-only
`mergesort_clean.rs` stays as the interactive-proofs-first contrast
(40 obligations, 31 auto + 9 interactive). Corpus at 137/137 (adds
c137/c138); the `mergesort_verbatim` throwaway probe was folded into
`mergesort.rs` (one verbatim file, not two).

**Original V1--V4 outline (all four stages landed):**

- **V1 — library skeleton (landed).** `lean/Vermilion/Vstd/` mirrors
  vstd module paths (`Vstd/Seq.lean` ↔ `vstd::seq`, `Vstd/SeqLib.lean` ↔
  `vstd::seq_lib`, `Vstd/Multiset.lean` ↔ `vstd::multiset`, …). Each file
  states the vstd declarations it mirrors — definitions over the
  `Vermilion.*` model namespaces (which stay THE semantic model; twins
  keep referencing `Vermilion.Seq.*`) and theorems mirroring vstd's
  lemma surface, each annotated with its vstd path. A registry
  (`Vermilion.Vstd.registry : vstd path → Lean names`) is the machine-
  readable index.
- **V2 — adapter/name resolution (landed).** vstd spec-fn calls resolve through
  the registry (serialized as a generic `(vstdapply "path" args…)` IR
  node for ops beyond the structural core), with the Lean side failing
  closed—with the call span—when the library lacks the name. The
  hard-coded op table shrinks to the structural core (`seqlen`,
  `seqindex`, …) that the differential corpus pins.
- **V3 — statement translation pipeline (landed).** Lower vstd proof-fn
  signatures (requires/ensures) in place to Lean theorem statements, use
  temporary `sorry` skeletons only during development, prove them
  interactively, and ship no `sorry`. Priority by corpus demand:
  `group_seq_properties`,
  `to_multiset_ensures` (done — the S1 bridge lemmas),
  `lemma_sorted_unique`, seq extensionality, `Multiset::add` surface.
- **V4 — emission wiring (= H2, landed).** `broadcast use` names and ambient
  broadcast groups resolve through the registry into ladder hints;
  unmapped names warn and drop. Done when verbatim `mergesort.rs`
  verifies with its scripting consumed as hints.

### M1–M4 documentation audit — completed 2026-07-14

The audit swept `DESIGN.md`, the superseded roadmaps/workplans, `docs/`, and
this execution plan. It corrected stale claims about generic datatypes, mutual
recursion, exec closures, and slices, then separated unfinished work into
fragment, measurement, tooling, performance, proof-evolution, and foundational
categories. Those still-relevant items are normalized into the ordered front
matter rather than repeated as a dated backlog here.

## 2026-07-17 addendum — verified-crypto track (Aeneas subsumption)

Operative plan: `case-studies/aeneas/PLAN.md` (status ledger §0). Landed:
stage 1 lowering gaps (array-repeat, indexed writes, prophecy fix), stage 2
wrapping mirror, Verus fork (`ilyasergey/verus` dev — export hook +
debug_assert accommodation), curve25519 study (gate C0, same spec as
Aeneas). Next: Bits bridges + wrap-collapse rung (#35), typed-`Result`
ctor rendering (#18), nonneg-`int` bitand in the fork (verbatim
`mont_mul`), C2 plain-array Keccak, C4 NTT staging.

## 2026-07-19 addendum — standalone SHA-3 and tuple parameters

The complete pinned `sha3.rs` project is now local in separate pristine and
annotation-working copies. Verus fork commit `35f3268264fc` implements tuple
parameter lowering and erasure; its regressions and vstd pass, and Vermilion
c148/c149 preserve positive/negative parity. The six-phase Vermilion suite is
green at 148/148 verdicts and 71/71 failure spans. Differential generated and
proof modules now have Lake roots, so their `Specs` imports also resolve in the
Lean editor. No VCGen change was needed for tuple parameters. The active queue
was custom tuple-keyed `IndexMut`, followed by source annotations and the
unchanged permutation/sponge/API ladder above.

## 2026-07-19 addendum — custom mutable indexing and returned references

Verus fork commit `1fc6a46d1561` now supports tuple patterns in contracts and
custom static `IndexMut`; the `functions` suite is 11/11 and vstd is 1972/0 in
debug and release. Vermilion resolves the returned-reference future into the
caller's indexed destination. Differential c150 verifies 11 Lean obligations,
c151 rejects the wrong assertion at Verus's line, and the full six-phase suite
is green at 47/47 example/case-study runs, 150/150 verdict parity, and 72/72
failure-span agreement. The VS Code jump resolver now follows impl namespaces
and Specs markers, fixing navigation from c150 methods. At that checkpoint,
the next queue was annotation preservation, `Index::Output` projection
normalization, and Verus destructuring assignment.

## 2026-07-19 addendum — SHA-3 source-preservation gate

The standalone source guard now compares all seven Rust files in the pristine
and verification projects after erasing explicitly typed annotation regions.
It also requires the complete relative `src/` inventory, byte-identical
`Cargo.toml`, `Cargo.lock`, and `rust-toolchain`, and byte-identical non-Rust
source files. Six Rust unit tests pin accepted contract and named-result
erasure plus rejection of executable edits, executable content mislabeled as
a contract, malformed regions, and missing/extra paths. The local pristine copy still passes the
separate pinned Git blob check. The verification tree currently has zero
annotation regions, so no SHA-3 function is claimed verified. The active queue
at that checkpoint was static `Index::Output` normalization followed by
state-wrapper and ι annotations.

## 2026-07-19 addendum — concrete associated-output normalization

Vermilion now reads the post-simplify crate's associated-type impl equations
and normalizes a projection only when one exact monomorphic equation matches.
It introduces no IR or Lean VCGen construct and assumes no type equation in
Lean. Differential c152 verifies all 11 obligations with unchanged
`&Self::Output`/`&mut Self::Output` signatures; c153 is rejected at line 39 by
both verifiers. The complete corpus is 152/152 with 73/73 failure-span
agreement. A separate suite test confirms Verus accepts an abstract generic
projection while Vermilion refuses it during lowering. The unchanged `iota`
probe now reaches Lean and emits 12 obligations; its 10 unproved obligations
identify the next annotation slice—state/index contracts—rather than another
lowering feature. The complete six-phase suite passes all 47 end-to-end
runners, 152/152 verdicts, 73/73 failure spans, and the Lake/editor import
guard. The differential cache now requires materialized manifests, `Specs`,
and obligation modules before replaying a verdict, preventing cached runs from
removing the editor fixtures they subsequently validate.

## 2026-07-19 addendum — first unchanged SHA-3 state/`iota` slice

The annotated `case-studies/aeneas/sha3/verification/src/algos.rs` now adds a
closed private-state view, `IndexSpecImpl`, exact `Index`/`IndexMut` reference
contracts, and an exact postcondition to the unchanged `iota` body. Pinned
Verus reports 9 verified and 0 errors. Vermilion verifies all 12 obligations
across four colocated proof-twin units with no `sorry`; every other production
body remains explicitly `external_body`, so this is a partial result.

The source guard erases 38 typed regions and then matches all seven upstream
Rust files token-for-token against the pristine copy. It permits only
verification-side `src/generated/` and `src/proofs/` Lean artefact trees and
restricts erased spec impls to `View` or `IndexSpecImpl`. Eight guard tests and
c154/c155 bring the differential corpus to 154/154 verdict parity and 74/74
failure-span agreement. The next staged change is tuple-destructuring
assignment in the Verus fork, needed by unchanged `rho`; it must receive Verus
parity tests, a full suite run, documentation, commit, and fork push before the
rotate model is added.

## 2026-07-19 addendum — tuple-destructuring assignment

Verus fork commit `7734d271ad796ba134200fd2fa8ac1e706200342`
enables rustc's existing destructuring-assignment desugaring: evaluate the RHS
once into synthetic tuple bindings, then use ordinary assignments for the
original destinations. Native tests pin flat simultaneous swap, nested tuple
and wildcard behavior, executable compilation/erasure, and a wrong-result
rejection. The full `basic` binary is 62 passed with 1 ignored, `functions` is
11/11, and debug/release vstd are each 1,972/0.

Vermilion needed only the new pin and c156/c157; its lowering, textual IR, and
Lean VCGen already consume the ordinary declaration/assignment form. The
differential corpus is 156/156 with 75/75 failure-span agreement. The actual
unchanged `rho` probe now stops at `u64::rotate_left`, making an exact
width-64 variable-count rotation specification and Lean model the next stage.

## 2026-07-19 addendum — automatic proof-module editor roots

The hand-maintained differential case list is gone, and the fix is deliberately
not differential-only: all 50 named proof libraries use the same exact
first-level-root discovery function. The named libraries remain to establish
unique module ownership and preserve the runner targets. The editor shim keeps
an exact snapshot across every `proofs/` tree, refreshes Lake's compiled
configuration on add/remove, treats any sibling `Specs.lean` as a cold-build
dependency, and keys cached setups by the file worker's stdin module header.
A generic regression creates both differential-generated and ordinary-example
roots after priming Lake, then checks import resolution, header changes, and
root removal with the real no-build protocol. The earlier numbered editor
checks and mtime invalidation are removed. The SHA-3 execution queue remains
unchanged: exact `u64::rotate_left` is next. The milestone suite is green:
48/48 runners, 156/156 verdict parity, 75/75 failure-span agreement, and the
unchanged SHA-3 slice at 12/12 obligations; median differential slowdown was
17.52x.

## 2026-07-19 addendum — exact rotation and generated-module editor roots

Verus fork commit `a33ad15348aa7153de18a48a246b145bf4e2f483` specifies
`rotate_left` for all unsigned widths using a shift reduced modulo the width
and an explicit zero case. Native compile/erasure, positive, negative, basic,
functions, and debug/release vstd tests pass. Vermilion routes those canonical
vstd calls through `Vermilion.Vstd.Rotate`; c158/c159 cover shifts 0, 4, 63,
64, and 129 plus a wrong result. The corpus is 158/158 with 76/76 failure-span
agreement. The unchanged `rho` probe now lowers fully to 23 obligations; 9
index/bounds/precondition goals remain, so the next stage is annotation-only
contracts/invariants and the exact poststate proof—not more rotation lowering.

The editor fix now covers both proof and generated trees. Proof roots remain
automatically discovered; a requested generated stem anywhere in the
repository is exposed through a disposable, duplicate-checked Lake overlay.
The integration regression opens the reported
`case-studies/aeneas/probes/generated/keccak_iota/impl__6_index.lean`, checks
its canonical module name and sibling `generated.keccak_iota.Specs` import,
and separately creates a generated fixture outside `tests/`. The full suite
passes 48/48 runners, 158/158 differential verdicts, 76/76 failure spans, and
12/12 current SHA-3 obligations; measured median differential slowdown was
19.28x. Existing Lean language-server workers require one restart to load the
new wrapper behavior.

## 2026-07-19 addendum — unchanged `rho` verified

The actual annotated SHA-3 working copy now verifies unchanged `rho`, not just
the historical probe. A closed recursive spec function models the remaining
loop computation from `(t, x, y, res)` and the loop invariant equates that
remaining computation with the original call. This gives a compact exact
implementation contract without enumerating the 24 coordinates or changing
an executable token.

Pinned Verus reports 12 verified and 0 errors. Vermilion verifies 29/29 total
SHA-3 obligations across five proof-twin units with zero `sorry`; `rho`
contributes 13 automatic and 4 interactive obligations. The source guard
erases 42 typed regions and still matches all seven Rust files plus three
metadata files against pristine. No Verus/Vermilion lowering, IR, or VCGen
change was needed. The next ordered slice is π and χ, then θ, `round`, and
Keccak-p; the bridge from the local loop model to the pinned external
`Sha3.Spec` remains part of the permutation gate.

## 2026-07-20 addendum — unchanged `StateArray::xor`

The accumulated fork pin is
`32259d40b05103fbeab45142dd51c3557f6426c8`; no Verus change was required for
this slice. The unchanged SHA3 working copy now verifies the scalar
implementation through `StateArray::xor`: 47 verified / 0 errors in Verus and
169/169 kernel-checked Lean obligations across 22 twins with no `sorry`.
Erasing 78 typed annotation regions restores the pristine tokens of all seven
Rust files, and all three metadata files remain byte-identical.

The exact `xor` loop exposed checked arithmetic in Verus's `while`-condition
setup. Vermilion now proves those setup assertions from type facts and
invariants before branching on the condition, retains short-circuit guards,
and carries established checks to loop exit. c170–c172 bring the complete
corpus to 171/171 verdict parity and 83/83 failure-span agreement. This
lowering composes existing `Assert`, `Branch`, and `Loop` forms; the textual IR
and Lean VCGen are unchanged. The complete six-phase suite passes all 48
runners.

That next infrastructure slice is now complete. Verus fork
`0bb5732ae6afa6eabf3843e34bc554223b67be8f` specifies mutable
`usize`/`Range`/`RangeFrom` indexing, including initial subviews and final-owner
writeback. Vermilion normalizes only the matching slice output, restores
inherited bounds, and composes the prophecy relation with the ordinary
`copy_from_slice` contract. c173–c177 bring the corpus to 176/176 verdict
parity and 86/86 failure-span agreement; the full 48-runner suite passes. No
new IR form, Lean VCGen rule, or axiom was needed.

The unchanged `copy_to` consumer now verifies against its exact
lane-to-little-endian-byte sequence specification. c178–c181 bring the corpus
to 180/180 verdict parity and 88/88 failure-span agreement. Next verify
absorb/squeeze, `sponge`, the six public functions, and the exact
pinned `Sha3.Spec` bridge. Whole-source breadth remains the post-parity stretch
goal.
