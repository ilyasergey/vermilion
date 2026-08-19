# Chapter 3: Tier A — Projects Already Verified with Verus

These are Vermilion's parity targets, ordered roughly by Vermilion difficulty. For each: repo,
size, what is verified, features exercised, build/test story, and why it matters. LoC marked
"(cloc)" measured 2026-07-12; paper-reported splits cited to their papers.

## A0. Verus `vstd` + example suite — the mandatory baseline

- **Repo:** https://github.com/verus-lang/verus (`source/vstd`, `examples/`)
- **Size:** vstd = 37.7k LoC across 126 files; `examples/` ≈ 18.3k LoC across ~75 files.
- **Contents:** vstd is the verified+trusted spec standard library (`Seq/Set/Map/Multiset`,
  exec `Vec`/`HashMap` wrappers, arithmetic lemma libraries, bit-vector lemmas,
  `PointsTo`/`PCell`/`PPtr`, atomics + invariants, tokenized state-machine runtime). Examples span
  `state_machines/` (29 files), `pcm/` (resource algebras), raw-pointer lists
  (`doubly_linked.rs`, `doubly_linked_xor.rs`), bit-vector proofs, `mergesort`, nonlinear math
  (`imo_1988_6.rs`), concurrency (`atomics.rs`, `invariants.rs`, `rwlock_vstd.rs`), and the
  mdBook guide examples (32 files).
- **Build/test:** `vargo build` verifies vstd in CI; each example verifies with
  `verus examples/foo.rs`.
- **Difficulty:** early→late — it *is* the roadmap. The examples double as an ordered
  feature-conformance suite; `state_machines/` and `pcm/` are the acid test for the concurrency
  story.

## A12. Vest — verified binary parser/serializer combinators

- **Repo:** https://github.com/secure-foundations/vest (USENIX Security 2025)
- **Size:** core library 6.8k LoC (cloc); whole repo ~129k including the `vest-dsl` compiler and
  generated format examples (TLS 1.3 handshake, WireGuard).
- **Verifies:** round-trip correctness (parse∘serialize = id and the converse consistency),
  non-malleability, panic-freedom, no overflow/OOB.
- **Features:** generics + associated types (combinator traits), closures, slices; no unsafe.
  Verus side: traits with spec members, spec/proof functions, induction; fully sequential.
- **Build/test:** cargo/Verus targets verify the library; the DSL regenerates example crates.
- **Why first:** parser combinators are the classic proof-assistant sweet spot (inductive proofs,
  no solver exotica), and Vest feeds Verdict and OwlC — verifying it unlocks a stack.
- **Difficulty:** **early** — the best first real library after vstd basics.

## A1. verified-ironkv (IronSHT) — distributed sharded KV store

- **Repo:** https://github.com/verus-lang/verified-ironkv — SOSP'24 case study (the five case
  studies jointly: 6.1k exec + 31k proof LoC).
- **Size:** 8.8k LoC (cloc).
- **Verifies:** the implementation refines IronFleet's sharded-hash-table protocol state machine
  (key delegation between hosts), plus marshalling correctness for the wire format.
- **Features:** generics, `Vec`, enums, trusted UDP shim; essentially no unsafe. Verus side:
  refinement over `Seq/Map`, heavy universally-quantified lemma libraries, `decreases`; no
  concurrency tokens (event-loop model).
- **Build/test:** `scons --verus-path=<verus>`; runs as real networked processes.
- **Why early:** sequential safe Rust, but its quantifier-heavy refinement style is exactly where
  Lean automation gets stretched — the corpus's designated automation-risk probe, with Dafny
  (IronFleet) and Verus numbers to compare against.
- **Difficulty:** early-middle.

## A5. microsoft/verified-storage — PoWER logs + CapybaraKV

- **Repo:** https://github.com/microsoft/verified-storage (PoWER, OSDI'25, Distinguished Artifact)
- **Size:** 40.6k LoC total; subcrates `pmemlog`, `multilog`, `capybaraKV` (29.4k), `capybaraNS`.
- **Verifies:** crash consistency via the PoWER discipline (every write precondition enforces
  recoverability), CRC-based corruption detection; CapybaraKV is performance-competitive and
  verifies in under a minute.
- **Features:** traits abstracting persistent regions, serialization derives, u64 offset
  arithmetic; minimal unsafe behind trusted region APIs. Verus side: recovery-view spec functions,
  volatile/durable state invariants, `forall` over crash states in write preconditions, overflow
  reasoning; sequential.
- **Build/test:** per-crate Verus verification (per README); executables run against file-backed
  PM emulation.
- **Why included:** the paper explicitly claims PoWER is portable to other verifiers — a
  *designed-for-porting* benchmark; staged internally (pmemlog → multilog → KV).
- **Difficulty:** middle (crash-state quantification is the stress).

## A11. Verdict — verified X.509 path validation

- **Repo:** https://github.com/secure-foundations/verdict (USENIX Security 2025)
- **Size:** 22.1k LoC (cloc).
- **Verifies:** end-to-end X.509 path validation against formalized Chrome/Firefox/OpenSSL
  policies (RFC 5280 semantics); parsing built on Vest; performance parity with production
  validators; differential-tested on CT-log certificates.
- **Features:** traits, closures, lifetimes, enum-heavy ASN.1 modeling; no unsafe. Verus side:
  executable policy specs, recursive spec functions + termination, sequence reasoning.
- **Difficulty:** middle — the ideal mid-course milestone; its policy-as-executable-spec
  architecture is exactly the "spec in Lean, refined by Rust" story Vermilion wants to tell.

## A4. verified-nrkernel — verified x86-64 page table

- **Repo:** https://github.com/utaal/verified-nrkernel (SOSP'24 case study; lineage: Brun's ETH
  MSc thesis "Verified Paging for x86-64 in Rust" → HotOS'23 "Beyond Isolation" → concurrent
  page-table follow-up)
- **Size:** 34.5k LoC (cloc).
- **Verifies:** page-table insert/remove/resolve refine an abstract VM map, against a trusted
  x86-64 MMU/TLB model; newer branches verify the concurrent version.
- **Features:** raw memory, bit-packed PTEs, no_std. Verus side: `by(bit_vector)` for PTE bits,
  nonlinear arithmetic for address math, layered refinement, raw-pointer permissions.
- **Build/test:** `verus ./page-table/lib.rs --cfg feature="impl" --rlimit 30` (README).
- **Difficulty:** middle-late — but note the inversion: its BV/nonlinear obligations map *well*
  onto `bv_decide`/`nlinarith`, so it may land earlier for Vermilion than it did for Verus. The
  showcase for verified bit-blasting as a differentiator over Z3.

## A14. rlsf-verified — TLSF real-time allocator (community project)

- **Repo:** https://github.com/unsoundsystem/rlsf-verified · **Size:** 22.9k LoC (cloc).
- **Verifies:** two-level segregated-fit allocator invariants (free lists, bitmaps, size-class
  math, pointer arithmetic).
- **Features:** raw pointers, intrusive lists, `by(bit_vector)` bitmap math, nonlinear sizes.
- **Why included:** organic non-institutional Verus adoption; the stepping stone to A3.
- **Difficulty:** middle-late.

## A13. OwlC — compiled verified security-protocol libraries

- **Repo:** https://github.com/secure-foundations/owl (USENIX Security 2025, Distinguished
  Artifact) · **Size:** 32.4k LoC in repo.
- **Verifies:** the Owl DSL proves protocol security; OwlC compiles designs to Rust whose Verus
  proofs show the extracted code refines the protocol spec (HPKE, WireGuard-style handshakes).
- **Why included:** tests Vermilion on *machine-generated* Verus code at scale — the same shape as
  LLM-generated proofs (AutoVerus et al.) — and connects to crypto protocols without needing a
  crypto logic in Lean.
- **Difficulty:** middle-late.

## A2. verified-node-replication — NUMA-aware replication (NrOS/IronSync lineage)

- **Repo:** https://github.com/verus-lang/verified-node-replication (SOSP'24 case study)
- **Size:** 12.5k LoC (cloc).
- **Verifies:** linearizability of Node Replication (flat combining + operation log).
- **Features:** atomics, `UnsafeCell`, generics over the wrapped structure, threads. Verus side:
  **tokenized state machines** (VerusSync), atomic invariants, `tracked` tokens,
  linearization-point reasoning.
- **Difficulty:** late — the flagship of Verus's ghost-token concurrency; porting it validates
  that Vermilion can express IronSync-style proofs, where Lean's separation-logic ecosystem could
  become an advantage rather than a liability.

## A3. verified-memory-allocator — concurrent mimalloc port

- **Repo:** https://github.com/verus-lang/verified-memory-allocator (SOSP'24 case study; largest
  proof share of the 31k aggregate) · **Size:** 18.4k LoC (cloc).
- **Verifies:** memory safety and allocation contracts of a mimalloc-style concurrent allocator
  (thread-local heaps, segments, cross-thread frees).
- **Features:** raw pointers everywhere, pointer arithmetic, atomics, thread locals. Verus side:
  `PointsTo` raw-memory permissions, tokenized state machines for cross-thread free lists, atomic
  invariants, bit-level size-class arithmetic.
- **Difficulty:** late — the stress test of Vermilion's memory model; if `PointsTo` permissions
  carry a real allocator in Lean, everything easier follows.

## A7. VeriSMo — verified security module for AMD SEV-SNP

- **Repo:** https://github.com/microsoft/verismo (OSDI'24 Best Paper)
- **Size:** 42.5k LoC in repo; paper Table 2: ~8.8k exec (incl. 2.1k macros), ~6.5k spec, ~13.3k
  proof, ~1.1k axioms, 262 trusted lines; 31 LoC of unsafe in 32 blocks. Verifies in ~6 min
  (multi-threaded Verus, 32 cores).
- **Verifies:** functional correctness **plus information-flow security** (secret guessing-space
  types) **plus** confidentiality/integrity against a malicious hypervisor interrupting at any
  instruction.
- **Features:** no_std kernel Rust, raw pointers, verified custom allocator, page tables,
  register access, inline-asm behind trusted primitives. Verus side: *custom* tracked permission
  types (`SnpPointsTo` with RMP/PTE attributes), lock/register permissions, security-type traits.
- **Status note:** README documents a mid-2026 refresh — builds/verifies on latest Verus with
  `assume()` workarounds removed. A live target.
- **Difficulty:** late — forces support for *user-defined* ghost/tracked abstractions, not just
  vstd's.

## A8–A10. The verified-OS cluster: vostd, CortenMM, Atmosphere

- **vostd** (https://github.com/asterinas/vostd): Verus verification of Asterinas OSTD's `mm` and
  `sync` modules — "no UB reachable from safe Rust" for the ~15k-line TCB of a 100k+-line Linux-
  ABI-compatible kernel (USENIX ATC'25 paper for Asterinas itself; vostd is repo+blog only).
  Proofs ≈ 12.7k LoC. Dual CI against pinned and upstream Verus — a useful signal of Verus API
  churn that Vermilion's differential harness should copy.
- **CortenMM** (https://github.com/TELOS-syslab/CortenMM-Artifact, SOSP'25 Best Paper): mechanized
  Verus proofs (~28.1k LoC in `verification/`) of a fine-grained page-table locking protocol;
  proof:code ratio 5.2:1. Overlaps verified-nrkernel/vostd, so one Lean page-table theory
  amortizes across three artifacts.
- **Atmosphere** (https://github.com/mars-research/atmosphere, KISV'23 → SOSP'25): microkernel
  subsystems verified against abstract specs; notable for `atmo verify` — a custom build system
  embedding Verus, which tests that Vermilion's driver can integrate into non-trivial builds.
- **Difficulty:** all late; they share the raw-pointer permission + tokenized-protocol feature set.

## A6. Anvil — verified Kubernetes controllers (liveness)

- **Repo:** https://github.com/anvil-verifier/anvil (OSDI'24 Best Paper)
- **Size:** 76.2k LoC today (controllers subtree 50.4k); paper: 5,353 lines of reusable lemma
  framework + 7,817 supporting; adding a controller feature averaged 47 changed lines (19 proof).
- **Verifies:** **liveness** — "eventually stable reconciliation" in a TLA-style temporal logic
  embedded in Verus (now factored out as https://github.com/anvil-verifier/verus-tla) — plus
  safety, for ZooKeeper/RabbitMQ/FluentBit operators and now core controllers (ReplicaSet,
  Deployment, StatefulSet). Deploys on real clusters via kube-rs behind an `external_body` shim.
- **Features:** higher-order spec closures (`FnSpec`) encoding temporal formulas, weak-fairness
  assumptions, very large quantifier/lemma libraries; no unsafe in verified code.
- **Build/test:** `cargo verus` with vstd pinned from crates.io; CI verifies everything; e2e
  cluster tests.
- **Difficulty:** late — the TLA embedding is deep higher-order quantifier work, though Lean is
  arguably a *more* natural home for a temporal-logic library than SMT. Porting verus-tla yields
  a reusable Lean temporal library and is the capstone milestone.
