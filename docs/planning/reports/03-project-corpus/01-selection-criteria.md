# Chapter 1: Selection Criteria and Method

## 1.1 What the corpus is for

The corpus answers one question during implementation: *is this feature worth building now?* A
feature (say, tokenized state machines, or `by(bit_vector)`) is scheduled when the cheapest
still-unverified corpus project needs it, and each corpus tier acts as a validation gate for the
plan's stages ([`../04-implementation-plan/`](../04-implementation-plan/)).

## 1.2 Tiers

- **Tier A — already verified with Verus.** These are parity targets: Verus accepts them today, so
  Vermilion must eventually accept them (possibly with edits for version drift). They come with
  published code/proof line counts and known verification times — the differential baseline.
  Per the project brief, the corpus starts here.
- **Tier B — verified with other Rust verifiers** (Creusot, Kani, hax/F*, Aeneas). These calibrate
  Vermilion against the rest of the field: re-verifying CreuSAT head-to-head against Creusot/Why3,
  or discharging `verify-rust-std` contracts unboundedly where Kani checks them boundedly. They
  also carry specs that already exist in some formal language — cheap to adapt.
- **Tier C — unverified modern Rust.** Chosen to stress specific Rust-feature axes that Tiers A/B
  underrepresent (const generics, iterators, SIMD-adjacent unsafe, async), and to give Vermilion
  first-verification results no other tool has claimed.

## 1.3 Selection criteria

A project enters the corpus only if it adds value on at least one of:

1. **Feature coverage**: exercises a Rust or Verus feature no cheaper corpus member exercises
   (see the matrix in [`06-feature-matrix.md`](06-feature-matrix.md)).
2. **Differential value**: has an existing verification (Verus or otherwise) to compare against —
   proof effort, verification time, annotation burden.
3. **External visibility**: production-adjacent code (Microsoft, AWS, Asterinas) where a Vermilion
   result is legible outside the verification community.
4. **Size sanity**: the verified core is 3k–50k LoC. Whole-kernel artifacts (CortenMM's 190k-line
   fork) enter via their proof subtrees only.

And it must have: a public repo, a reproducible build (`cargo`/`verus` invocation recorded in its
chapter), and a runnable test mode (its own tests, or verification success itself as the oracle).

## 1.4 Measurement method

- LoC figures marked "(cloc)" were measured on 2026-07-12 shallow clones with `cloc` (Rust code
  lines, excluding blanks/comments). Published exec/proof splits are cited to their papers
  (Verus SOSP'24 Table: 6.1k exec + 31k proof across its five case studies; VeriSMo OSDI'24
  Table 2: ~8.8k exec / ~6.5k spec / ~13.3k proof, 262 trusted lines).
- "Verus features needed" was determined from each project's source (imports of `vstd::` modules,
  macro usage) and its paper.
- One item from early drafts was **removed as nonexistent**: a project remembered as "Bassoon"
  matched nothing in the Verus ecosystem.

## 1.5 The difficulty model

Difficulty tiers (early / middle / late / frontier) rate *Vermilion's* cost, not the original
verification's, and two corrections to naive intuition apply:

- **Bit-vector and nonlinear arithmetic get cheaper.** `bv_decide` (verified, LRAT-checked
  bit-blasting) and mathlib (`nlinarith`, `ring`, `ZMod` theory) attack these goals natively;
  Verus needed `by(bit_vector)`/Singular escapes. Projects dominated by such obligations
  (verified-nrkernel's PTE math, rlsf's bitmaps, BLAKE3, curve25519-dalek) shift earlier.
- **E-matching-shaped quantifier automation gets more expensive.** Verus's SMT encodings silently
  rely on Z3 instantiating `forall`s in ambient axioms. Lean's `grind`/lean-smt are improving but
  unproven at IronKV-refinement scale. Projects whose proofs are quantifier-saturated (IronKV,
  Anvil, storage crash-state quantification) shift later, and the base camp deliberately includes
  one such project (IronKV) precisely to measure this risk early.
