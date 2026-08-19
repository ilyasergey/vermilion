# Chapter 5: From Trusted Pipeline to Foundational Guarantees

Vermilion's primary mission is feature parity with Verus on a Lean backend. Foundational soundness
is *not* a base-camp goal — but the architecture must not paint us into a corner, and the repo
brief explicitly asks for "a structure ready to prove soundness of the verifier on top of Iris-Lean
and Loom." This chapter records what is trusted today, what Vermilion changes immediately, and the
staged path to a semantics.

## 5.1 The trust ledger

**Verus today** trusts: (1) top-level specifications, (2) the Verus verifier itself — in
particular the entire HIR→VIR→SST→AIR→SMT translation, (3) Z3 (and cvc5, and Singular for
`integer_ring`), (4) rustc, and (5) vstd's axioms (measured in the survey: 176 `axiom fn`s, 271
`external_body` items, 386 `assume_specification`s, 56 `admit()`s).

**VerusBelt (PLDI 2026)** proves the *type-system semantics* sound: Iris/Rocq models for `PPtr`,
`PCell`, `PointsTo`, `LocalInvariant`/`AtomicInvariant`, resource algebras, and storage protocols,
over full lifetimes and concurrency (via LeLiLo, the Leaf+lifetime-logic combination), with
RustHornBelt-style predicate transformers `Φ` as the specification interface. But its authors are
explicit about what stays open: *"Verus's translation of Rust source to verification conditions is
also entirely trusted code, and we do not attempt to formalize the connection between predicate
transformers (Φ) and Verus's translation"* — the Φs were computed manually; solvers "likewise are
not verified or proof-producing"; ghost/exec erasure soundness is future work (it needs
`decreases`-style termination VCs and the invariant-credit treatment of Landin's-knot
non-termination).

So the trusted pipeline has three legs: **the VC translation**, **the solvers**, **the axiom base
(vstd + specs)**. Vermilion improves each leg by a different mechanism, on a different timescale.

## 5.2 Leg 1 — solvers: fixed at base camp

Every Vermilion obligation is a Lean theorem. Dischargers are untrusted meta-programs; whatever
they produce is checked by Lean's kernel — with one deliberate exception, inherited from Veil's
design: an SMT discharger can run in *trusted mode* (accept `unsat`, admit the goal — the
Verus-like TCB, fast) or *reconstruction mode* (lean-smt rebuilds a kernel-checked proof from the
solver certificate, at a measured 3–5× cost). The mode is a per-run switch, so CI can reconstruct
nightly while the edit loop stays fast. `bv_decide` (LRAT-checked), `ring`, `omega`, `decide`
are proof-producing from day one — so `by(bit_vector)`/`by(integer_ring)` obligations actually
*gain* checkable proofs relative to Verus, immediately.

## 5.3 Leg 2 — the axiom base: shrunk incrementally

vstd's mathematical core (`Seq`, `Set`, `Map`, `Multiset`, arithmetic lemma libraries) is pure
trusted axiomatics in Verus. In Vermilion these types get real Lean models (e.g. `Seq α` over
`List α`/`Array α`, `Map` over finite maps), and the axioms become **proved lemmas with the same
names**. This is mechanical, high-value, and starts at base camp (plan Stage 2). The
harder-to-model residue — `PointsTo`, invariants, tokens — stays axiomatic longer, with VerusBelt
as the paper trail that sound models exist (§5.5 is about eventually *having* those models
in Lean).

## 5.4 Leg 3 — the VC translation: auditable now, certified later

The `sst_to_lean` emitter is trusted code, exactly as `sst_to_air` is — Vermilion does not
magically remove it. What changes at base camp is **auditability**: the translation's entire
output is a set of human-readable Lean theorem statements over documented type translations
(Veil's "transparent desugaring" argument), rather than fuel-guarded, poly-boxed SMT-LIB. The
inspectable interface makes translation-validation-style review possible per project.

The certification ladder beyond that, in increasing strength and cost:

1. **Differential assurance** (base camp): the harness of ~4,117 Verus oracle tests plus corpus
   projects, run against both backends. Not a proof; catches translation bugs empirically.
2. **Per-run validation** (research task, Parthasarathy-style): emit, alongside each obligation, a
   proof that the Lean statement corresponds to the SST via a mechanized correspondence relation.
   Requires a deep embedding of SST in Lean — plausible because SST is small (408 lines of AST
   definitions) and `sst_to_lean` is compositional.
3. **A verified VC generator** (the Loom path): give a Verus core its own semantics in Lean and
   *derive* the VC generator, so there is nothing left to validate. §5.5.

## 5.5 Candidate semantics for a foundational Vermilion

The long-term research question the brief asks us to plan for: which semantics should give meaning
to Verus programs in Lean? Three candidates, not mutually exclusive — we expect the middle one to
be the workhorse and the third to be the destination for concurrency:

**(a) Pure-functional semantics via Aeneas's LLBC.** Safe-Rust fragments translate to pure
functions (Aeneas's symbolic borrow semantics, proven sound at ICFP 2024). A Vermilion obligation
could be validated against the Aeneas translation of the same function. Attractive because it
exists today with Lean backends; limited because it excludes exactly what makes Verus special
(interior mutability, raw pointers, concurrency, ghost permissions). Verdict: useful as a
*cross-validation oracle* for the sequential fragment, not as Vermilion's semantic foundation.

**(b) Loom-style monadic semantics for a Verus core (sequential + ghost).** Define
`VerusM α` as a Loom monad stack (state for a heap indexed by `PointsTo` permissions, exceptions
for panics/assert-failure, divergence, nondeterminism for havoc), give SST statements a
compositional denotation, and let Loom *derive* the WP-based VC generator with soundness proved by
construction. This is the "architecting a foundational verifier" blueprint from Pîrlea's thesis
applied to Rust. Two honest caveats recorded now: (i) the thesis and the Dafny'26 lessons paper
both flag that shallow embeddings may not survive languages "with memory models significantly
different from Lean's" — Rust's aliasing is the test case; (ii) Loom today has no ownership/heap
effect — building one (a PointsTo-indexed state transformer) is the actual research content. The
mitigating insight is Verus's own: **AXM (aliasing XOR mutability) means VCs almost never mention
a heap** — the permission discipline that makes VCs functional for Z3 makes the denotation
tractable for Lean too. Milestone shape: a certified VC generator for the base-camp fragment whose
derived obligations are *definitionally equal* to what `sst_to_lean` emits (turning leg-2
validation into a one-time theorem).

**(c) Iris-Lean for the concurrent/unsafe layer.** VerusBelt is the existence proof: `PointsTo`,
invariants, resource algebras, and storage protocols have Iris models. Porting that development
from Rocq to iris-lean gives Vermilion's ghost-state APIs foundational Lean models, and VerusSync's
"every well-formed tokenized state machine is a resource algebra" metatheorem is the bridge for
the token machinery. Current gaps in iris-lean measured by our survey: no total WP (Verus
obligations are total-correctness-shaped — either contribute `twp` upstream or keep termination as
separate VCs, which is exactly what Verus does anyway), no logically-atomic triples, an in-flight
setoid→type refactor, and a toolchain ahead of Veil's (4.31 vs 4.28). None of these block the plan
because this layer is deliberately last.

## 5.6 Summary: the trust inventory of the non-foundational port

Everything the parity-first (non-foundational) Vermilion asks you to trust, in one table — with
the Verus comparison and the exit path for each item. "Axiomatic" below means: stated in Lean
without proof (axioms, opaque definitions, `external_body`-backed specs), checked only by the
differential harness and probe tests.

| # | Trusted item | vs Verus | Exit path |
|---|---|---|---|
| T1 | **rustc + Verus front/middle end** (parsing, types, borrows, modes, erasure, HIR→VIR→SST) — that SST faithfully represents the program | identical to Verus | none planned (both tools share it; VerusBelt-style semantics would subsume parts, far future) |
| T2 | **The `sst_to_lean` emitter + type translation** — that emitted Lean statements mean what SST obligations mean (WP shapes of §2.4; `u64` ↦ bounded `Int`; coercion placement read off VIR) | *replaces* trusting `sst_to_air`+AIR+poly+fuel; smaller and, unlike SMT-LIB, human-auditable | differential harness now → per-run validation → Loom-derived certified generator (§5.4–5.5) |
| T3 | **Prelude convention definitions** — div/mod-by-zero wrapper, clipping, `nat` subtraction, `choose` — that they match Verus's semantics | Verus trusts the same conventions inside `prelude.rs` (asserted as SMT axioms); Vermilion's are Lean *definitions* in one file, guarded by probe tests | fidelity is empirical by design; conventions are definitions, not axioms — nothing to discharge beyond the probe suite |
| T4 | **Ghost-state interfaces (Stages 5–6)** — `PointsTo`, `PCell`/`PPtr`, invariants + masks, tokens/PCM/storage protocols, as *axiomatized named interfaces* | identical trust level to vstd's axioms; VerusBelt is the paper evidence sound models exist | Iris-Lean models slotted behind the named interfaces (§5.5c), axiom ledger decreasing per milestone |
| T5 | **std_specs / `assume_specification` / `external_body` bodies** — trusted contracts for Rust std and unverified code (vstd inherits ~271 external_body + 386 assume_specification) | identical to Verus | permanent in kind (every verifier trusts its FFI boundary); shrinks item-by-item as vstd is dogfooded |
| T6 | **User-level `admit()` / `assume()` / `axiom fn`** | identical (Verus's `--no-cheating` flag maps over) | tracked in the axiom ledger; user's choice |
| T7 | **Solvers + lean-smt's translation — in trust mode only** (accept `unsat`, admit the goal) | strictly better: per-run optional, vs Verus's always-trusted Z3/cvc5/**Singular** (Singular is gone entirely — `ring` is proof-producing) | flip to reconstruction mode: lean-smt rebuilds kernel-checked proofs (3–5× cost); `bv_decide`/`ring`/`omega`/`decide` are proof-producing already |
| T8 | **Lean kernel** (+ Lean compiler where `native_decide` is used — flagged per obligation) | replaces trusting the SMT solver's core | external checkers (`lean4checker`) on samples; the kernel is the floor |
| T9 | **Top-level specifications** — that they say what you meant | identical to every verifier | multi-modality helps in practice (testing/model-checking the same spec via Veil/Plausible) |

Explicitly **not** trusted (checked by the kernel): the Veil-derived manager, every discharger
and tactic, all `@[vermilion]` interactive proofs, all generated proofs in reconstruction mode.

Net versus Verus at base camp: T1/T5/T6/T9 unchanged; T2 smaller and auditable where Verus's is
opaque; T3 explicit where Verus's is implicit; **vstd's ~176 mathematical `axiom fn`s become
proved theorems** (the Seq/Set/Map/arithmetic core — a strict deletion from the trust base);
Singular leaves the TCB; solvers become optional trust. The axiom ledger
([`../04-implementation-plan/03-validation-milestones.md`](../04-implementation-plan/03-validation-milestones.md))
makes this inventory a measured, monotonically shrinking artifact rather than prose.

## 5.7 What base camp must do to keep this path open

Concrete architectural obligations on the implementation, so the soundness program stays cheap:

1. **Emit obligations against named abstract interfaces**, not inlined encodings: `Vermilion.Seq`,
   `Vermilion.PointsTo`, `Vermilion.Inv` etc. as opaque-but-lawful structures whose axiomatic
   instances can later be swapped for proved models without touching emitted statements.
2. **Keep the SST correspondence in the metadata**: every emitted theorem carries the `AssertId`,
   span, and the SST construct that produced it — the hooks per-run validation needs.
3. **No Lean-elaboration cleverness in obligation statements**: statements must be stable,
   first-order-ish, and independent of discharger choice (the Loom lesson about SMT-hostile
   specification-monad shapes applies to us even before Loom is in the loop).
4. **Ghost erasure stays Rust-side and unmodified** — VerusBelt names erasure soundness as open;
   we inherit that debt knowingly and do not add to it.
