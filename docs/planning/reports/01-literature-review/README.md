# Literature Review: Rust Verification and Verifiers in Proof Assistants

The review is organized Rust-first (per the planning priorities): two deep chapters on the Rust
verification tool landscape, one on Rust's semantic foundations, one — deliberately brief on the
Lean side and anchored on Pîrlea's thesis — on verifiers embedded in proof assistants, and a
closing positioning chapter that argues Vermilion's place in this space.

Bibliographic data throughout was verified against dblp/Crossref/arXiv/publisher records
(2026-07-12); the master BibTeX lives in [`../../literature/`](../../literature/). Citation keys
in the text refer to it.

## Chapters

| Chapter | Focus |
|---|---|
| [`01-rust-verifiers-smt.md`](01-rust-verifiers-smt.md) | Auto-active/SMT-family Rust verifiers in detail: Verus, Prusti, Creusot, Flux, Kani, VeriFast-for-Rust, RustHorn. |
| [`02-rust-translation-foundational.md`](02-rust-translation-foundational.md) | Translation- and foundation-based tools: Aeneas/Charon, hax, coq-of-rust, RefinedRust, Gillian-Rust, RustHornBelt, Electrolysis. |
| [`03-rust-semantics.md`](03-rust-semantics.md) | Semantic foundations: RustBelt lineage, Stacked/Tree Borrows, MiniRust/opsem, VerusBelt, GhostCell. |
| [`04-verifiers-in-proof-assistants.md`](04-verifiers-in-proof-assistants.md) | The embedding thesis (Pîrlea), Veil/Velvet/Loom, the IVL tradition (Boogie/Why3/Dafny/F*), Goose/Perennial, validated VC generation. |
| [`05-positioning.md`](05-positioning.md) | Why Vermilion, and how it differs from Aeneas, Velvet/Loom, and RefinedRust — the argument the project must be able to make on demand. |

## The verdict in five sentences

Rust verification has split into two cultures: **intrinsic auto-active tools** (Verus, Prusti,
Creusot, Flux) that keep the developer in Rust and buy automation by trusting an SMT pipeline, and
**translation/foundational tools** (Aeneas, RefinedRust, hax) that buy assurance or expressiveness
by moving the program into a proof assistant and giving up push-button automation or the intrinsic
authoring model. Verus is the intrinsic culture's systems-verification champion — fastest
encodings, ghost/linear types for unsafe idioms, real concurrency — and VerusBelt has now given
its type discipline a semantic foundation while explicitly leaving the VC pipeline and solvers
trusted. Meanwhile the verse-lab line (Veil, Loom, Velvet, Pîrlea's "embedding thesis") has shown
that auto-active verifiers can live *inside* Lean with SMT automation, interactive fallback, and a
shrinkable TCB — but none of these handle real Rust. Vermilion is the synthesis: Verus's front
end, spec language, and encoding discipline, retargeted at SST to emit Lean theorems managed by
Veil-style infrastructure. Nobody else occupies this point; the nearest neighbors (Aeneas from
one side, Velvet from the other) fail different halves of the requirement, which is the
positioning argument of chapter 5.
