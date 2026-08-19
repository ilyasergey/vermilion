# Chapter 6: Feature Matrix

Which Vermilion capability each corpus project needs, and which plan stage delivers it. Stages
refer to [`../../ROADMAP.md`](../../ROADMAP.md). A project is *unblocked* when every feature it
needs has shipped; the first column of blocked projects is the pressure gauge for stage
prioritization.

## 6.1 Verus-feature × project matrix

Legend: ● = essential, ○ = used but stub-able (via `external_body`/axiomatized specs), blank = unused.

| Verus feature (Vermilion stage) | vstd/ex | Vest | IronKV | CreuSAT | heapless | BLAKE3 | storage | Verdict | dalek | Cedar | pagetbl | rlsf | OwlC | NR | alloc | VeriSMo | vostd | Anvil |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| spec/proof/exec fns, requires/ensures (S1) | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● |
| loops + invariants, decreases (S1) | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● |
| datatypes, match, Seq/Set/Map theory (S2) | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● |
| machine ints, overflow/bounds VCs (S2) | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● |
| traits w/ specs, generics (S3) | ● | ● | ● | ○ | ● | ○ | ● | ● | ● | ● | ○ | ○ | ● | ● | ● | ● | ● | ● |
| broadcast lemmas / reveal-hide (S3) | ● | ○ | ● | ○ | ○ | ○ | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● |
| spec closures / FnSpec (S3) | ● | ○ | ○ | | | | ● | ● | | ○ | | | ○ | ● | ● | ● | ○ | ● |
| exec closures w/ requires/ensures (S3) | ● | ○ | | | ○ | | ○ | ● | | ○ | | | ○ | ○ | ○ | ○ | ○ | ● |
| const generics (S3) | ○ | ○ | | | ● | ○ | ○ | | ● | | ○ | | | | | | ○ | |
| `&mut` params + old() (S1) / general MutRef (S6) | ●/○ | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● |
| by(bit_vector) → bv_decide (S4) | ● | | | | | ● | ○ | | ○ | | ● | ● | | | ● | ● | ● | |
| by(nonlinear_arith) → nlinarith (S4) | ● | | | | | | ○ | | ● | | ● | ● | | | ● | ○ | ○ | |
| by(compute) → decide/native_decide (S4) | ● | ○ | | | | ○ | | ○ | ○ | | | | | | | | | |
| recursive spec fns + termination (S2) | ● | ● | ● | ○ | | | ● | ● | | ● | ● | | ● | ● | ● | ● | ● | ● |
| PPtr/PCell/raw_ptr PointsTo (S5) | ● | | | | ● | | ○ | | | | ● | ● | | ● | ● | ● | ● | |
| Local/AtomicInvariant + masks (S5) | ● | | | | ○ | | | | | | ○ | | | ● | ● | ● | ● | |
| tokenized state machines / VerusSync (S6) | ● | | | | ○ | | | | | | ○ | | | ● | ● | ● | ● | |
| PCM / storage protocols (S6) | ● | | | | | | | | | | | | | ○ | ● | ● | ○ | |
| atomics + atomic_ghost (S6) | ● | | | | ○ | | | | | | ○ | | | ● | ● | ● | ● | |
| user-defined tracked permission types (S6) | ○ | | | | | | | | | | | | | | ○ | ● | ● | |
| std_specs (Vec/HashMap/iter…) (S2–S5, incremental) | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● |
| verus-tla temporal embedding (S7) | | | | | | | | | | | | | | | | | | ● |
| assume_specification / external_body (S1) | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● | ● |

(Tier C entries not shown all fit the pattern of their nearest Tier A neighbor: bytes/hashbrown ≈
allocator row; smoltcp/regex-automata/petgraph ≈ Verdict row; crossbeam ≈ NR row; tokio::sync
adds async, which no stage currently delivers.)

## 6.2 Reading the matrix as a schedule

- **Stages 1–2 unblock**: vstd's mathematical core + ~60% of the Verus example suite, Vest,
  CreuSAT, BLAKE3-portable, and most of IronKV (its trait usage is light). This is the base camp.
- **Stage 3 (traits/generics/closures/broadcast) unblocks**: the rest of the sequential corpus —
  Verdict, Cedar, storage (pmemlog first), heapless (with const generics), petgraph, dalek
  (specs side).
- **Stage 4 (specialty provers) unblocks**: page table, rlsf, dalek proofs, VeriSMo's bit-level
  obligations — cheaply, because the Lean tactics already exist.
- **Stage 5 (PointsTo/invariants) unblocks**: the doubly-linked examples, heapless spsc,
  raw-pointer cores of page table and rlsf.
- **Stage 6 (tokens/PCM/atomics/MutRef-general) unblocks**: NR, allocator, VeriSMo, vostd,
  CortenMM, crossbeam.
- **Stage 7 (verus-tla) unblocks**: Anvil.

## 6.3 Rust-feature axes (for completeness)

| Axis | Cheapest representative | Hardest representative |
|---|---|---|
| traits + associated types | Vest | Anvil (trait-heavy controller framework) |
| generics + const generics | heapless | libcrux ML-KEM (const-generic algorithm variants) |
| closures | Verdict | Anvil (FnSpec temporal formulas) |
| iterators | petgraph | regex-automata |
| unsafe / raw pointers | doubly_linked examples | hashbrown |
| interior mutability | PCell examples | bytes |
| atomics / concurrency | atomics.rs example | crossbeam epoch |
| no_std / embedded | heapless | VeriSMo |
| machine-generated code | OwlC | (LLM-generated Verus, via AutoVerus-style corpora) |
| async | — | tokio::sync (frontier; no stage commitment) |
