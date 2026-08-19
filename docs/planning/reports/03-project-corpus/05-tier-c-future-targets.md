# Chapter 5: Tier C — Unverified Modern Rust Targets

Chosen to cover Rust-feature axes Tiers A/B underrepresent, and to give Vermilion
first-verification results. Each entry: what we would verify, which features it stresses, and the
difficulty call. LoC (cloc, 2026-07-12).

## C1. heapless — fixed-capacity data structures (12.4k LoC)

- **Repo:** https://github.com/rust-embedded/heapless
- **Verify:** functional correctness of `Vec`/`String`/`Deque`/`BinaryHeap` with const-generic
  capacities; SPSC queue correctness.
- **Stresses:** const generics, `MaybeUninit` unsafe, light atomics (spsc), no_std.
- **Difficulty:** early-middle. The spsc queue is a gentle on-ramp to the concurrency-token story;
  the sequential structures are a publishable early win on previously-unverified code.

## C2. bytes — reference-counted buffers (7.1k LoC)

- **Repo:** https://github.com/tokio-rs/bytes
- **Verify:** len/cap/refcount invariants; aliasing safety of `Bytes` clones.
- **Stresses:** raw pointers, atomics, manual vtables, unsafe. Small but semantically sharp.
- **Difficulty:** late.

## C3. hashbrown — SwissTable (12.5k LoC)

- **Repo:** https://github.com/rust-lang/hashbrown
- **Verify:** table invariants, no UB, map semantics vs. a `Map` spec.
- **Stresses:** pervasive unsafe, raw pointers, SIMD probing, allocator API. The definitive
  unsafe-data-structure gauntlet; no existing proofs to crib.
- **Difficulty:** late (stretch).

## C4. curve25519-dalek — field/group arithmetic (31.6k LoC workspace)

- **Repo:** https://github.com/dalek-cryptography/curve25519-dalek
- **Verify:** 51-bit-limb field arithmetic mod 2²⁵⁵−19, scalar arithmetic, group-law correctness.
  (fiat-crypto already covers field ops via its `fiat` backend — precedent, not full coverage.)
- **Stresses:** u128 arithmetic, const-time patterns, traits, feature-gated backends.
- **Difficulty:** middle — the nonlinear-arithmetic showcase where mathlib (`ZMod`, `ring`) is an
  unfair advantage over any SMT-backed tool.

## C5. BLAKE3 portable core (10.2k LoC Rust)

- **Repo:** https://github.com/BLAKE3-team/BLAKE3
- **Verify:** compression function + chunk/tree mode against the reference spec.
- **Stresses:** bit rotations, arrays, const fns (SIMD paths excluded initially).
- **Difficulty:** early-middle; `bv_decide`-friendly end-to-end.

## C6. smoltcp — embedded TCP/IP (47.5k LoC)

- **Repo:** https://github.com/smoltcp-rs/smoltcp
- **Verify:** wire-format round trips first (Vest-style), then TCP state-machine safety (no
  invalid transitions, sequence-number arithmetic).
- **Stresses:** no_std, enums, generics over Device/Instant, no-alloc iterators. rustls (~60k) is
  the heavier alternative in the same genre.
- **Difficulty:** middle (codecs) → late (TCP FSM — natural Veil-refinement candidate).

## C7. regex-automata (29.5k LoC; 96.6k workspace)

- **Repo:** https://github.com/rust-lang/regex
- **Verify:** DFA/NFA construction and search correctness against regex semantics.
- **Stresses:** enums, iterators, generics; automata theory is well-trodden in Lean/mathlib.
- **Difficulty:** middle-late.

## C8. petgraph — graph algorithms (31.1k LoC)

- **Repo:** https://github.com/petgraph/petgraph
- **Verify:** Dijkstra, Tarjan SCC, toposort correctness against mathlib graph theory.
- **Stresses:** traits, generics, iterators, closures, index arithmetic; no unsafe.
- **Difficulty:** middle — spec-heavy, solver-light; shows off mathlib specs on mainstream code.

## C9. crossbeam — epoch reclamation, lock-free queues/deques (30.4k LoC)

- **Repo:** https://github.com/crossbeam-rs/crossbeam
- **Verify:** linearizability of queues/deques; epoch-reclamation safety.
- **Stresses:** atomics, unsafe, interior mutability — and it forces the question Vermilion must
  document either way: Verus (and thus Vermilion) assumes sequential consistency; crossbeam's
  real-world correctness arguments live in weak memory. Scope: verify under SC, document the gap.
- **Difficulty:** late (stretch).

## C10. tokio::sync — async primitives (9.1k LoC subtree)

- **Repo:** https://github.com/tokio-rs/tokio (`tokio/src/sync`)
- **Verify:** mutual exclusion, semaphore counting, `Notify` wakeup correctness.
- **Stresses:** **async/await state machines**, intrusive linked lists, atomics, unsafe. Verus's
  own async support is embryonic (`ExprX::Await` exists); this is a research frontier marker, not
  a plan commitment.
- **Difficulty:** frontier.

## Coverage logic

C1/C5 give const generics + arrays + bit math early; C4/C5 route crypto arithmetic to Lean's
strengths; C6/C7/C8 exercise executable-spec refinement on protocol FSMs, automata, and graphs;
C2/C3 stress unsafe/raw-pointer permissions beyond Tier A's allocators; C9/C10 mark the
atomics→weak-memory and async horizons. Together with Tiers A/B, every feature axis in the brief —
traits, generics, closures, iterators, const generics, unsafe/raw pointers, atomics/interior
mutability, async — has at least one corpus representative
(see [`06-feature-matrix.md`](06-feature-matrix.md)).
