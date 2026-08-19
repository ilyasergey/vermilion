# The Staged Plan: R0–R7

Each stage names: the trusted layer it attacks (T-numbers from
[`../02-verus-architecture/05-soundness-path.md`](../02-verus-architecture/05-soundness-path.md)
§5.6), the Lean artifact expansion that does the work, prerequisites, the gate, and the risk.
Stages are ordered by dependency and increasing research content: R0–R2 are engineering, R3 is
engineering with empirical teeth, R4–R5 are hard engineering with known references, R6–R7 are
research with milestones. Track F = foundations, Track I = implementation (see README).

```
R0 ──► R1 (F) ──────────────────────────┐
  └──► R2 (F) ──► R3 (F) ──► R4 (F) ────┤──► R7
  └──► R5 (I) ──► R6 (I) ───────────────┘
```

## R0 — Instrument the trust base (prerequisite for everything)

**Attacks**: nothing yet; makes T1–T9 measurable.

**Lean artifact expansion**: a ledger generator inside the Vermilion package —

- a metaprogram that computes, for every `@[vermilion_obligation]` theorem, its axiom closure
  (`#print axioms` programmatically), whether `native_decide` occurred, and whether any
  discharger ran in trust mode; aggregated into a machine-readable ledger artifact per build;
- per-obligation trust flags surfaced in the JSON diagnostics (so the Rust-side CLI can report
  "verified, trusting: lean-smt(cvc5), Vermilion.Seq axioms");
- the probe-test suite for convention definitions (T3) as a named, versioned Lean test target;
- CI wiring: the ledger is diffed against the committed baseline on every PR; increases fail.

**Gate**: the ledger in `reports/axiom-ledger.md` is generated, not hand-maintained; every
number in this plan's later gates is a query against it.

**Risk**: low. All mechanisms exist in Lean today.

## R1 — Retire trusted solver verdicts (T7; also hardens T8)

**Attacks**: the one deliberate trust hole inherited from Veil's design — SMT dischargers in
trust mode (accept `unsat`, admit the goal).

**Lean artifact expansion**:

- make reconstruction mode (`smt (trust := false)`, lean-smt certificate replay) the default for
  CI and release verification runs; trust mode remains an edit-loop accelerator only;
- close the reconstruction gaps that the corpus actually hits: the lean-smt fork's unsupported
  rule shapes get either reconstruction support (upstreamed) or automatic fallback routing to
  proof-producing islands (`omega`, `bv_decide`, `ring`, `decide`, `grind`-with-kernel-check);
- per-goal reconstruction caching keyed by the statement hash already emitted (the
  `statementHash` field in `ObligationMeta`), so the 3–5× cost is paid once per changed goal;
- `lean4checker` runs over the generated obligation modules on a CI schedule (T8 hardening);
  obligations proved via `native_decide` are flagged in the ledger and require opt-in.

**Gate**: nightly corpus run fully green with zero trust-mode admits; ledger category
"trusted-solver" = 0; reconstruction overhead measured and published in the performance ledger.

**Risk**: medium — reconstruction coverage and cost. Mitigation is the fallback ladder plus
caching; the worst case leaves a measured, shrinking list of trust-mode goals, which is still a
strict improvement over Verus's always-trusted three solvers.

## R2 — Prove the mathematical axiom base (vstd's ~176 `axiom fn`s)

**Attacks**: the pure-mathematics slice of the axiom base: `Seq`, `Set`, `Map`, `Multiset`,
arithmetic lemma libraries (`arith`, `power`, `mul`, …).

**Lean artifact expansion**: real models behind the frozen interfaces — `Vermilion.Seq α` over
`List α`/`Array α`, `Set`/`Map` over mathlib's, with every vstd axiom restated and *proved*
under its Verus name (`axiom_seq_push_index_same` becomes a theorem of the same name, so
`broadcast use` sets and user proofs port verbatim — the name-compatibility invariant of
[`../02-verus-architecture/06-spec-language-compat.md`](../02-verus-architecture/06-spec-language-compat.md) §6.3).

Order: `Seq` (largest client base) → `Set`/`Map`/`Multiset` → arithmetic libraries → the
long tail discovered by dogfooding vstd's own proofs through Vermilion.

**Gate**: ledger category "mathematical axiom fns" goes 176 → 0; the vstd differential suite
passes with models substituted (statements unchanged, per the interface discipline).

**Risk**: low; mechanical. The only subtlety is fidelity at the convention corners (out-of-range
`Seq` indexing = arbitrary, possibly-infinite `Set`/`Map`), which R3 pins.

## R3 — Pin the convention layer (T3)

**Attacks**: the residual trust that Vermilion's *definitions* of Verus's semantic conventions —
Euclidean div/mod with uninterpreted-at-zero behavior, `uClip`/`iClip`, `nat` subtraction,
`choose`, out-of-range indexing — mean what Verus's SMT prelude means.

**Lean artifact expansion + harness work**:

- every convention lives in one file (`Vermilion/Prelude/Conventions.lean`) as a named
  definition with a doc-comment citing the Verus prelude lines it mirrors;
- a *differential fuzzing* mode in the testing harness: generated spec expressions exercising
  the corners, evaluated under Verus (via `by(compute)`/Z3) and under Lean (`decide`/`simp`),
  verdicts compared — mechanizing the "meaning compatibility" invariant beyond the hand-written
  oracle tests;
- a lint (Rust-side, in the emitter) flagging specs whose meaning *depends* on an
  underspecified corner (e.g. provable only via `x/0`'s indeterminacy), with the translation
  report recording each hit.

**Gate**: probe + fuzz suites in CI; a published one-page "convention contract" enumerating
every deliberate divergence (target: zero) — after this stage, fidelity questions are answered
by reading one file and one report.

**Risk**: low. Note this layer is *pinned*, not eliminated: conventions are choices, and the
residual "trust" is that the choices match Verus — an empirical statement by nature.

## R4 — Iris-Lean models for ghost state (T4)

**Attacks**: the axiomatized ghost-state interfaces — `PointsTo`, `PCell`/`PPtr`, raw pointers,
`LocalInvariant`/`AtomicInvariant` + namespace masks, PCM tokens, `storage_protocol`, tokenized
state machines.

**Lean artifact expansion**: the VerusBelt development, re-landed on iris-lean, sliced to match
Vermilion's interface stack:

1. `PointsTo`-style exclusive permissions for `PCell`/`PPtr` (heap-indexed resources; the
   sequential slice of VerusBelt's model, no lifetime logic needed yet);
2. invariants + masks: `LocalInvariant`/`AtomicInvariant` against iris-lean invariants, with
   the non-reentrancy obligations of `inv_masks` derived rather than asserted;
3. user PCMs/tokens: VerusSync's metatheorem — *every well-formed tokenized state machine is a
   resource algebra* — mechanized once, so each state machine's tokens get models generically;
4. the lifetime-logic-dependent residue (full `&mut`-prophecy generality, Leaf-style storage
   protocols) last, tracking VerusBelt's LeLiLo structure.

**Prerequisites** (measured in the survey, §5.5c): iris-lean's missing total WP — either
contribute `twp` upstream or keep termination as separate VCs (Verus's own choice, so this is
not blocking); toolchain reconciliation with the Veil/lean-smt pin; the in-flight setoid→type
refactor settling.

**Gate**: ledger category "ghost-state axioms" decreases per slice, reaching 0 for the
sequential slice (1–2) first; interfaces byte-identical before/after (emitted obligations
unchanged); a corpus project using `PCell`+invariants verifies against the modeled instances.

**Risk**: high effort, medium uncertainty — VerusBelt is the existence proof that the models
exist; the risk is porting effort (Rocq→Lean, Iris idiom differences) not mathematical novelty.
This stage is the main reason the interface-freeze principle exists.

## R5 — Per-run translation validation (T2, first half)

**Attacks**: the trusted `sst_to_lean` emitter — the belief that emitted Lean statements mean
what the SST obligations mean.

**Lean artifact expansion + emitter expansion** (Parthasarathy-style validation):

- a **deep embedding of VIR-SST in Lean**: inductive types mirroring `sst.rs` (408 lines of AST
  definitions — small by design) plus the type translation as a Lean function;
- the emitter additionally serializes, per function, the `FunctionSst` it consumed (the
  `--log vir-sst` format the M1 pipeline already reads is the bootstrap; a stable binary/JSON
  schema replaces it);
- a mechanized **correspondence relation** `Corresponds : SST.Obligation → Prop → Prop` defined
  compositionally over the WP shapes of
  [`../02-verus-architecture/02-vc-generation.md`](../02-verus-architecture/02-vc-generation.md) §2.4,
  and a *reflection tactic* that, for each emitted theorem, checks
  `Corresponds sstObligation emittedStatement` by computation;
- the check runs as part of the obligation build; failures are translation bugs caught before
  any proof is attempted.

What remains trusted afterwards: the serializer (that the logged SST is the SST Verus verified —
a printer, auditable), and the `Corresponds` relation itself (the new, small, Lean-side spec of
the translation — this is where the trust *moves*, from 4kloc of Rust to a few hundred lines of
Lean definitions).

**Gate**: 100% of base-camp-fragment obligations carry a checked correspondence certificate;
mutation testing on the emitter (seeded translation bugs) shows the validator catches them.

**Risk**: medium. The known hard part is keeping `Corresponds` honest and small — it must not
degenerate into a second implementation of the emitter; compositionality over SST's small
statement grammar is what makes this plausible.

## R6 — The certified VC generator (T2, second half; the Loom path)

**Attacks**: the same layer as R5, but terminally: instead of validating each run of a trusted
generator, *derive* the generator so there is nothing to validate.

**Lean artifact expansion**:

- `VerusM α`: a Loom monad stack for the sequential+ghost core — state indexed by `PointsTo`
  permissions (the R4 sequential models slot in here), exceptions for panic/assert-failure,
  divergence, nondeterminism for havoc;
- a compositional denotation of deep-embedded SST (from R5) into `VerusM`;
- Loom derives the WP-based VC generator, sound by construction over that denotation;
- the closing theorem: for the supported fragment, the derived obligations are **definitionally
  equal** to what `sst_to_lean` emits — turning R5's per-run validation into a one-time theorem
  and retiring the per-run check for that fragment.

The genuine research content, recorded honestly in §5.5(b) of the soundness chapter: Loom today
has no ownership/heap effect — building the `PointsTo`-indexed state transformer *is* the
contribution; and the shallow-embedding caveat (Rust's aliasing vs Lean's memory model) is the
test case. The mitigating structural fact is Verus's own: AXM means the VCs almost never mention
a heap, so the denotation stays functional.

**Gate**: certified generator for the base-camp fragment (straight-line + calls + loops +
recursion over ints/bools/datatypes/`Seq`); the definitional-equality theorem against the
emitter's output on the whole differential corpus for that fragment.

**Risk**: high — this is a publishable result, not a task. R5 stands alone if R6 stalls.

## R7 — The frontier: concurrency and erasure

**Attacks**: the layers open even in VerusBelt — soundness of ghost/exec erasure, and
foundational semantics for the concurrent layer (atomics, `AtomicInvariant` under real
interleaving, tokenized state machines as protocols).

**Sketch, not commitment**:

- extend R6's semantics to concurrency via iris-lean's WP (logically-atomic triples are a named
  iris-lean gap; contribute or work around with Verus's atomic-block discipline);
- erasure soundness needs exactly what VerusBelt names as future work: `decreases`-style
  termination VCs feeding a total-correctness argument, and the invariant/later-credit treatment
  of Landin's-knot nontermination — Vermilion inherits the debt knowingly (§5.7) and this stage
  is where it would be paid;
- upstream target: the results apply to *Verus itself*, not just Vermilion — the front/middle
  end and erasure are shared, which is the strongest argument this program is worth running.

**Gate** (aspirational): a machine-checked end-to-end statement for a nontrivial concurrent
corpus example: "if all Vermilion obligations hold, the erased Rust execution satisfies its
spec" — modulo the permanent residue (rustc, FFI contracts, specs, kernel).

**Risk**: research program; multi-year. Everything before it has standalone value.

## What this plan deliberately does not do

- **No re-verification of rustc or the front/middle end (T1).** Shared with Verus, out of scope
  by the same reasoning VerusBelt applies; R6/R7 semantics would subsume slices of it at most.
- **No promise to eliminate the FFI boundary (T5)** — `assume_specification` is every verifier's
  permanent residue; it shrinks by dogfooding, not by proof.
- **No coupling of parity milestones to any R-stage.** The implementation plan ships on the
  auditable-but-trusted base camp; this program runs behind it, interface-stable, ledger-visible.
