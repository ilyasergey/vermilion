# Chapter 2: Corpus Table and Recommended Progression

## 2.1 Full corpus summary

| Project | Tier | Size (Rust LoC) | Verified / target property | Key features (Rust · Verus) | Vermilion difficulty |
|---|---|---|---|---|---|
| vstd + Verus examples | A0 | 37.7k + 18.3k | library soundness; feature corpus | everything · everything | early→late (foundation) |
| Vest | A12 | 6.8k lib (129k repo) | parse/serialize round trips, no panics | traits/generics · spec fns, induction | **early** |
| verified-ironkv (IronSHT) | A1 | 8.8k | distributed SHT refinement, marshalling | generics, I/O shim · refinement, Seq/Map quantifiers | early-middle |
| CreuSAT (Creusot) | B1 | 8.2k (3.2k solver) | SAT solver soundness | loops, indices · (Pearlite; port target) | early-middle |
| heapless | C1 | 12.4k | data-structure correctness; SPSC queue | const generics, MaybeUninit | early-middle |
| BLAKE3 portable | C5 | 10.2k | hash correctness vs spec | bit math · bit_vector | early-middle |
| verified-storage (PoWER logs + CapybaraKV) | A5 | 40.6k (KV 29.4k) | crash consistency, corruption detection | trait-abstracted PM, CRC · crash-state quantifiers | middle |
| Verdict | A11 | 22.1k | X.509 path validation vs RFC policies | traits, closures · exec specs, recursion | middle |
| curve25519-dalek | C4 | 31.6k (workspace) | field/group arithmetic | u128, const-time · nonlinear arith | middle |
| Cedar (Lean-modeled) | B7 | ~40k engine + Lean spec | Rust refines existing Lean model | enums, traits · differential→deductive | middle |
| libcrux ML-KEM (hax/F*) | B5 | crate-scale | correctness + secret independence | const generics, SIMD | middle |
| petgraph | C8 | 31.1k | graph algorithm correctness | traits, iterators | middle |
| smoltcp | C6 | 47.5k | codecs; TCP FSM safety | no_std enums, generics | middle→late |
| regex-automata | C7 | 29.5k | automata/search correctness | enums, iterators | middle-late |
| verified-nrkernel page table | A4 | 34.5k | PT refinement vs MMU model | PTE bits · bit_vector, nonlinear | middle-late |
| rlsf-verified (TLSF allocator) | A14 | 22.9k | allocator invariants | raw ptrs, bitmaps · bit_vector | middle-late |
| verify-rust-std harnesses | B2 | contract corpus | no-UB contracts on std internals | unsafe idioms | middle-late |
| s2n-quic (Kani parts) / Firecracker | B3/B4 | harnessed cores | codec round trips; boundary guards | const generics; unsafe | middle-late |
| OwlC | A13 | 32.4k | protocol refinement of generated code | generated Rust · Vest, refinement | middle-late |
| Anvil | A6 | 76.2k | **liveness** (ESR) of k8s controllers | spec closures · TLA embedding | late |
| verified-node-replication | A2 | 12.5k | linearizability (NR) | atomics · tokenized state machines | late |
| verified-memory-allocator (mimalloc) | A3 | 18.4k | concurrent allocator safety | raw ptrs, atomics · PointsTo + tokens | late |
| bytes / hashbrown | C2/C3 | 7.1k / 12.5k | aliasing & table invariants, no UB | unsafe, raw ptrs, SIMD | late |
| VeriSMo | A7 | 42.5k (8.8k exec + ~20k spec/proof) | correctness + info-flow vs malicious hypervisor | no_std, 31 LoC unsafe · custom tracked perms | late |
| vostd (Asterinas) | A8 | 12.7k proofs / ~15k target | OSTD unsafe-API soundness | kernel unsafe · raw-ptr perms | late |
| CortenMM | A9 | 28.1k proofs (190k artifact) | concurrent MM lock protocol | RCU, atomics · tokens, bit_vector | late |
| Atmosphere | A10 | 49.8k | microkernel functional correctness | kernel unsafe · refinement | late |
| crossbeam | C9 | 30.4k | lock-free linearizability | atomics, epochs | late |
| tokio::sync | C10 | 9.1k (subtree) | async primitive correctness | **async**, intrusive lists | frontier |

Small satellites: **verus-tla** (the TLA embedding factored out of Anvil — the port target for a
Lean temporal library) and **verified-graphs** (pure graph-theory specs) — both early wins for
spec-side porting.

## 2.2 The recommended 15-project progression

Ordered easy → hard; each project names the capability it certifies. Stage mapping is in
[`../../ROADMAP.md`](../../ROADMAP.md).

1. **vstd + Verus examples** (A0) — the foundation; the examples suite is the base-camp gate.
2. **Vest** (A12, 6.8k) — first real library: traits + induction, zero solver exotica.
3. **verified-ironkv / IronSHT** (A1, 8.8k) — first real system; *calibrates quantifier
   automation* against Verus/Dafny baselines. The most informative early datapoint in the corpus.
4. **CreuSAT re-verification** (B1, 3.2k) — invariant-dense loops; head-to-head vs Creusot/Why3.
5. **heapless subset** (C1) — const generics + `MaybeUninit`; first previously-unverified target;
   publishable early win.
6. **BLAKE3 portable core** (C5) — `bv_decide` bridge end-to-end.
7. **verified-storage: pmemlog → multilog → CapybaraKV** (A5) — crash-state quantification at
   increasing scale; PoWER is explicitly tool-agnostic, i.e., a *designed* porting benchmark.
8. **Verdict** (A11) — security-critical sequential milestone; executable policy specs.
9. **curve25519-dalek field arithmetic** (C4) — the mathlib-differentiator demo.
10. **Cedar refinement** (B7) — connect AWS's existing Lean model to the production Rust engine;
    highest external-visibility payoff per proof-hour.
11. **verified-nrkernel page table** (A4) — bit-vector + nonlinear + layered refinement; gateway
    to the OS cluster (vostd, CortenMM, Atmosphere share its Lean theories).
12. **verified-node-replication** (A2) — first tokenized-state-machine port; forces the
    concurrency-ghost design decision (possibly Iris-Lean-backed).
13. **verified-memory-allocator** (A3) — raw-pointer permissions at allocator scale.
14. **VeriSMo** (A7) — custom tracked permissions + information flow; recently refreshed to
    latest Verus, so a live target rather than archaeology.
15. **Anvil** (A6) — TLA/liveness embedding in Lean; the capstone. (Alternative capstone if
    liveness is descoped: vostd or CortenMM.)

Stretch/frontier beyond the 15: hashbrown and crossbeam (unsafe/lock-free with no existing proofs
to crib), smoltcp's TCP state machine, tokio::sync as the async horizon marker.
