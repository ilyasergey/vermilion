# Chapter 3: Rust Semantic Foundations

What "Rust means" formally, and which of those meanings Vermilion's soundness program can stand
on. Kept Rust-focused; the one non-negotiable reading is VerusBelt (§3.6).

## 3.1 RustBelt [jung2018rustbelt, jung2020thesis]

The founding result (POPL'18, Coq/Iris): semantic type soundness for λRust — safety of the type
system *extensibly*, so unsafe-implemented libraries (`Mutex`, `RefCell`, `Arc`) are verified
against semantic interpretations of their types. Jung's thesis is the consolidated treatment.
**Relevance:** the proof architecture (semantic typing, per-type Iris interpretations) is what
VerusBelt instantiates for Verus, and what an Iris-Lean-based Vermilion soundness layer would
re-instantiate in Lean.

## 3.2 RustBelt meets relaxed memory [dang2020rbrlx]

Re-verifies the concurrency libraries under ORC11 (a data-race-detecting fragment of repaired
C11) in iRC11. **Relevance:** marks the frontier Vermilion explicitly does *not* cross — Verus
(hence Vermilion) assumes sequential consistency for atomics; the corpus's crossbeam entry
documents the gap.

## 3.3 Stacked Borrows and Tree Borrows [jung2020stackedborrows, villani2025treeborrows]

Operational aliasing models for (unsafe) Rust — the rules Miri enforces; Tree Borrows (PLDI'25,
Distinguished Paper) is the more permissive successor, evaluated over 30k crates, mechanized in
Rocq. **Relevance:** these govern what *unsafe code* is allowed to assume. Verus/vstd's raw-
pointer permissions embed provenance assumptions VerusBelt explicitly leaves out of scope;
Vermilion inherits that scoping and cites Tree Borrows as the eventual reference model. Flux's
metatheory already sits on Stacked Borrows — a precedent for stating verifier soundness relative
to an aliasing model.

## 3.4 MiniRust and the opsem process [minirust, rfc3346, rfc3559]

There is still **no official Rust memory model**: T-opsem (RFC 3346) owns the question; RFC 3559
normatively establishes pointer provenance; MiniRust (Jung's executable "MIR plus" specification,
repo-only) is the de-facto semantics effort. **Relevance:** any claim "Vermilion is sound w.r.t.
Rust" is really "w.r.t. a chosen model (λRust/Radium/LLBC/MiniRust)" — the soundness chapter's
candidate-semantics discussion inherits this caveat, and MiniRust is worth watching as the
eventual normative anchor.

## 3.5 Oxide, KRust, RustSEM (brief) [weiss2019oxide, wang2018krust, kan2024ownership]

Source-level and K-framework semantics of Rust subsets; none currently load-bearing for
verification tools. Cited for completeness; Oxide is arXiv-only, with author lists differing
across versions.

## 3.6 VerusBelt [hance2026verusbelt] — the anchor

PLDI'26 (Distinguished Paper + Artifact), Iris/Rocq. The first semantic soundness proof for a
significant Verus subset: RustHornBelt-style type-spec judgments over λVerus (λRust + an
extension for `AtomicInvariant`), covering full lifetimes, `Send`/`Sync`, mutable borrows, and
the proof-oriented type ladder — `PPtr`, `PCell`, `PointsTo`, `LocalInvariant`/`AtomicInvariant`,
resource algebras, and **storage protocols** (the mechanism behind verified `Rc`/`Arc`/`RefCell`/
`RwLock`). Two inventions: **LeLiLo** (Leaf [hance2023leaf] married to RustBelt's lifetime logic)
giving a uniform model of shared references, and the **points-to cell logic** for compositional
interior mutability. It also surfaces the prophecy **time-travel paradox** when RustHorn
prophecies meet Verus ghost code, fixed by stratification (⌊&mut T⌋ = value × prophecy
*variable*, with assignments a separate parameter) — independently hit by Creusot's developers.

Explicit non-goals, which define Vermilion's opening: *"Verus's translation of Rust source to
verification conditions is entirely trusted code"* (the Φ's were computed manually); solvers
unverified; ghost/exec erasure soundness open (needs decreases-VCs and invariant credits).

**Relevance:** (i) the paper trail that Verus's ghost-type logic is sound — Vermilion cites it
and attacks the two legs it names (solver: lean-smt reconstruction; translation: auditable Lean
statements, then the staged certification ladder); (ii) its interpretation sorts are the design
spec for `Vermilion/Types`; (iii) its stratified prophecies are mandatory reading before general
`MutRef` (Stage 6).

## 3.7 GhostCell and Leaf (brief) [yanovski2021ghostcell, hance2023leaf]

GhostCell (ICFP'21): branded types separating permissions from data, soundness via RustBelt —
the type-level ancestor of Verus's permission style. Leaf (OOPSLA'23): the temporary-sharing
separation-logic library (guards operator, storage protocols) that VerusBelt builds on and
Hance's thesis develops — on the reading list for whoever eventually ports the ghost-state models
to Iris-Lean.

## 3.8 What Vermilion's soundness program takes from this chapter

The dependency chain is: Iris [jung2018irisjfp] → RustBelt (semantic typing) → RustHornBelt
(functional specs, prophecies) → Leaf (sharing) → **VerusBelt** (all of it, for Verus). Porting
that chain to Lean is exactly the Iris-Lean track of
[`../02-verus-architecture/05-soundness-path.md`](../02-verus-architecture/05-soundness-path.md)
— with the measured iris-lean gaps (no total WP, no logically-atomic triples) as the concrete
work items, and with everything above λVerus's scope (weak memory, provenance models, erasure)
inherited as documented open problems rather than new debt.
