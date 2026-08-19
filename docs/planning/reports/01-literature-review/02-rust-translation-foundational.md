# Chapter 2: Translation-Based and Foundational Rust Verification

The extrinsic culture: move the Rust program (or its meaning) into a proof assistant, and reason
there. These tools trade the intrinsic authoring model and push-button automation for
expressiveness, assurance, or both. Vermilion's closest relatives on the Lean side live here.

## 2.1 Aeneas [ho2022aeneas, ho2024borrow, ho2025charon, ho2024thesis]

- **Approach:** safe Rust → **LLBC** (Low-Level Borrow Calculus, a borrow-centric semantics) →
  **pure functional programs** in the prover of your choice (Lean is the primary backend; also
  F*, Coq, HOL4). Mutable borrows compile to forward/backward function pairs — *no prophecies, no
  heap*; loops handled via symbolic joins/fixed points (ICFP'24, which also proves the symbolic
  semantics sound as a borrow checker against a CompCert-style heap model).
- **Toolchain:** Charon (CAV'25) extracts rustc's output into a stable analysis AST (ULLBC/LLBC)
  — deliberately shared infrastructure (Eurydice and other tools consume it too).
- **Scope limits:** no interior mutability, no unsafe, no concurrency; function pointers/closures
  partial. Case studies: a resizable hash map (Lean), the jxl-rs bitstream reader (2026), where
  reported pain was "mundane integer lemmas" and modeling external crates — not the borrow
  machinery. Microsoft uses Aeneas in the SymCrypt-to-Rust effort; a 2026 experience report runs
  production crypto Rust through Charon+Aeneas with AI provers discharging the Lean goals.
- **TCB:** Charon + the Aeneas translation (its metatheory is on paper/partially mechanized, the
  implementation is trusted) + the LLBC-models-Rust claim.
- **For Vermilion:** the closest existing "Rust in Lean" datapoint and the design foil
  (extrinsic purification vs intrinsic VC generation — see ch. 5). Concretely reusable: its Lean
  tactic suite for monadic integer goals (`progress`, `scalar_tac`) attacks exactly the
  side-condition swamp Vermilion's goals will have; LLBC purification is a candidate
  cross-validation oracle for Vermilion's sequential emitter
  ([`../02-verus-architecture/05-soundness-path.md`](../02-verus-architecture/05-soundness-path.md) §5.5a).

## 2.2 hax and the crypto pipeline [bhargavan2024hax, bhargavan2018hacspec, bhargavan2025bertie]

- **Approach:** a large safe-Rust subset (THIR-level) → multiple backends: F*, Coq/Rocq,
  ProVerif, SSProve (and a Lean backend recently). Philosophy: different provers for different
  properties — panic-freedom and functional correctness in F*, symbolic protocol security in
  ProVerif. Successor of hacspec.
- **Track record:** libcrux's ML-KEM (found the KyberSlash-class timing issue; verified
  functional correctness + secret independence), Bertie post-quantum TLS 1.3 (CCS'25 — claimed
  first security-verified Rust protocol implementation).
- **TCB:** the OCaml hax engine + hand-written backend models of core/alloc ("must be carefully
  audited," per the authors).
- **For Vermilion:** evidence that *extrinsic multi-backend* works for spec-shaped code
  (crypto), and a corpus source (B5). Its per-property backend split is the opposite of the
  embedding thesis (one platform, many modes) — a useful contrast for ch. 5.

## 2.3 RefinedRust [gaeher2024refinedrust]

- **Approach:** MIR-level Rust → **Radium** (a Rust-like operational semantics in Coq/Iris);
  refinement-type annotations drive Lithium-style automated proof search that produces *actual
  Coq proofs* — fully foundational, handles selected unsafe code.
- **TCB:** Coq kernel + Radium's fidelity to Rust + the rustc frontend translation.
- **Cost:** automation is proof search inside Coq — the thesis's blunt assessment ("too slow to
  actually use" for the RefinedC lineage) marks the performance cliff foundational tools fall
  off; no concurrency story for user code yet; annotation burden well above Verus's.
- **For Vermilion:** the cautionary datapoint on the other side of the trust/performance
  trade — Vermilion's answer is to keep VC generation *outside* the kernel-checked world (trusted
  emitter, auditable statements) and make foundations a staged program rather than a day-one tax.

## 2.4 Gillian-Rust [ayoun2025gillian]

- **Approach (PLDI'25):** hybrid — Creusot verifies safe code; Gillian-Rust (compositional
  symbolic execution over a rich separation logic embedding RustBelt's lifetime logic +
  RustHornBelt's parametric prophecies) verifies the *unsafe* internals, and exports
  Creusot-consumable specs. Verified real std-library types orders of magnitude faster than
  comparable (foundational) tools; soundness argued on paper, engine trusted.
- **For Vermilion:** the same division of labor Verus achieves with ghost permissions — but
  bolted across two tools. Vermilion inherits Verus's one-tool version; Gillian-Rust remains the
  comparison for unsafe-heavy corpus items (bytes, hashbrown).

## 2.5 coq-of-rust and Electrolysis [coqofrust, ullrich2016electrolysis]

- **coq-of-rust** (Formal Land; grey literature): THIR → monadic shallow embedding in Rocq;
  translated all of core/alloc; no soundness proof; everything trusted. Demonstrates raw
  translation *coverage* is achievable; assurance is the open question.
- **Electrolysis** (Ullrich's 2016 KIT thesis): the earliest Rust→Lean translation ("functional
  purification" into Lean 2) — Aeneas's direct intellectual ancestor, historically obligatory in
  related work.

## 2.6 RustHornBelt [matsushita2022rusthornbelt]

- **The theorem** (PLDI'22, Coq/Iris): RustHorn-style prophetic first-order specs are *sound*
  for real Rust including unsafe-implemented APIs — extending RustBelt's semantic typing from
  safety to functional correctness, via parametric prophecies. This is the semantic license for
  Creusot's encoding, and (adapted) the pattern VerusBelt applies to Verus (ch. 3.6).
- **For Vermilion:** the type-spec judgment shape (`f : fn(T) → U ⇝ Φ`, predicate transformers
  over interpretation sorts) is the formal vocabulary Vermilion's eventual soundness statement
  will be written in; its interpretation-sort table is effectively a spec for
  `Vermilion/Types`.

## 2.7 rust-lean-models [rustleanmodels]

AWS's hand-written Lean 4 models of Rust std functions (repo + blog only; from the Kani team's
org). Small but directly relevant: it overlaps `Vermilion/Prelude`'s std_specs needs, and its
existence signals AWS-side appetite for Lean-based Rust reasoning (see also Cedar, corpus B7).

## 2.8 Synthesis: the two-culture gap Vermilion fills

Reading chapters 1–2 together: the intrinsic culture has the authoring model, the automation, and
the systems track record, but a monolithic trusted pipeline and no escape hatch; the extrinsic
culture has proof assistants (expressiveness, shrinkable TCB, interactivity) but gives up either
the Rust surface (Aeneas — specs and proofs live over translated functional code), the
automation (RefinedRust), or the unsafe/concurrency scope (all of them, vs. Verus). Every tool
above is either Rust-native *or* proof-assistant-native. Vermilion's bet — argued in
[`05-positioning.md`](05-positioning.md) — is that Verus's SST is a narrow enough waist to be
both at once.
