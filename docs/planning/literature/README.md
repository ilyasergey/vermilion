# Literature Corpus

The bibliography for the planning reports. The narrative review lives in
[`../reports/01-literature-review/`](../reports/01-literature-review/); citation keys used there
resolve here.

## Contents

- [`bibliography.bib`](bibliography.bib) — generated master BibTeX (105 entries).
- [`bib/`](bib/) — editable topic fragments:
  - `00-verus-line.bib` — Verus, IronSync/VerusSync, Leaf, VerusBelt, the SMT-robustness line
    (Mariposa etc.), LLM proof tooling, and every Verus-verified system in the corpus;
  - `01-rust-verifiers.bib` — Prusti, Creusot, Flux, Kani, VeriFast-for-Rust, RustHorn(Belt),
    Gillian-Rust, the std-lib campaign;
  - `02-rust-translation.bib` — Aeneas/Charon, hax/hacspec/Bertie, coq-of-rust, Electrolysis;
  - `03-rust-semantics.bib` — RustBelt lineage, Stacked/Tree Borrows, MiniRust/opsem RFCs, Iris,
    GhostCell, iris-lean;
  - `04-verifiers-in-itp-and-lean.bib` — Pîrlea thesis + Veil/Loom/Velvet, the IVL tradition,
    validated VC generation, Perennial/Goose line, and the minimal Lean-automation parts list.
- `papers/`, `extracted-text/` — optional local PDFs and extracted text, git-ignored.

Regenerate the master file after editing fragments:

```sh
scripts/merge-bib.sh
```

## Verification status

Bibliographic data (authors, venues, pages, DOIs) was verified against dblp, Crossref, arXiv,
publisher pages, or the papers' own ACM reference blocks on **2026-07-12**, with these systematic
caveats:

- entries marked `verify bibliographic details` were not fully confirmed;
- PACMPL entries carry both article numbers and dblp-style page ranges where both exist — pick
  one convention before publication;
- several tools have **no citable paper** by design and are cited as `@misc` with access dates:
  MiniRust, iris-lean, coq-of-rust, rust-lean-models, Loogle, `grind`/`omega`/`linarith`;
- not-yet-published items (Velvet CAV'26 LNCS metadata, Kani ASE'26) are marked "to appear";
- known non-existent items that earlier drafts guessed at (a "Bassoon" project, an "Axe" trigger
  paper, "RustLean", a standalone VerusSync or libcrux paper, a Verus floating-point paper) are
  deliberately absent — do not re-add them without a primary source.

## Reading priority

1. Verus OOPSLA'23 + SOSP'24, then `reports/02-verus-architecture/` alongside the code.
2. Pîrlea's thesis ch. 3 (the Manager) and the Dafny'26 lessons paper — the infrastructure blueprint.
3. VerusBelt — the trust-story anchor.
4. Aeneas ICFP'22/'24 and Creusot — the two nearest competing designs.
5. Loom/Velvet — the embedding substrate and its measured costs.
