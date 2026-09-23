# Crypto probes — historical measured gap assessment

**Status (2026-09-23):** SHA-3 work is paused while dalek-lite is active.
Counts and verifier revisions below are recorded checkpoint evidence, not a
fresh run. See the [status hub](../README.md) for the active plan and current
toolchain. Acquisition-source pins remain unchanged.

Probe suite for [../PLAN.md](../PLAN.md): one file per crypto idiom, each an
**unchanged executable body inside a modified verification file** from a real
target — curve25519-dalek (via the Aeneas corpus),
[sha3.rs](https://github.com/AeneasVerif/sha3.rs), and Microsoft
SymCrypt's ML-KEM
([`feature/verifiedcrypto`](https://github.com/microsoft/SymCrypt/tree/feature/verifiedcrypto))
— with Verus wrappers, contracts (result binders, requires/ensures, loop
invariants), and required local type scaffolding added around it. Two
`*_noasserts.rs` files are
explicitly labeled accommodations: byte-identical bodies minus
`debug_assert!` lines. Since 2026-07-17 the pinned Verus is our fork
(`ilyasergey/verus`, branch `dev`); checkpoint commit `0bb5732ae…` accepts
`debug_assert!` as a statically checked assert, supports tuple-pattern
parameters through contracts/lowering/erasure, and supports custom
tuple-keyed `IndexMut` contracts and tuple-destructuring assignment. It also
specifies exact modulo-width `rotate_left` for every unsigned type, native
u64 little-endian conversions, and exact immutable/mutable
`usize`/`Range`/`RangeFrom` slice indexing with owner writeback. The
`_noasserts` variants
remain as the pre-fork record and as the smallest reproducible arithmetic
twins.

These files are measurements, not the planned standalone SHA-3 acquisition.
They already use the permitted modification discipline: Verus annotations are
added while the executable bodies stay unchanged. T2 applies this to the whole
pinned scalar file, backed by the landed annotation-erasure and exact-inventory
guard against a pristine upstream comparison; the old
suggestion to replace `StateArray` with plain arrays is retired.
The T2 source is **AeneasVerif/sha3.rs**, not Microsoft SymCrypt/SymCRust
SHA-3. The SymCrypt arithmetic probes in this directory are separate evidence
for the future ML-KEM track.

```console
./case-studies/aeneas/probes/run.sh
```

The driver asserts nothing — the verdict table is the result. Phases:
`front-end`/3 = Verus rejected the program (upstream boundary);
`lowering`/4 = Vermilion refused (outside the fragment); `lean`/1 =
lowered, ≥1 obligation unproven; `lean`/0 = verified. Interpreted
findings: [../gap-matrix.md](../gap-matrix.md).

## Verdicts (last established probe measurement: 2026-07-20)

| Probe | Source | Phase | Result |
|---|---|---|---|
| `dalek_m` | curve25519-dalek limb product (u64→u128) | lean | **Verified** — 2/2 automatic |
| full dalek multiply | promoted out of the probe suite | lean | **Verified as [../curve25519](../curve25519/)** — 38 obligations, all automatable; same-spec `asNat` bridge. The old `dalek_mul_internal` probe no longer exists. |
| `symcrust_mod_reduce` | SymCrypt branchless mod-reduce, verbatim body | lean under the pinned fork | 5-obligation tracked twin including the static assertions; the assertion-free probe below remains the stable minimal run. |
| `symcrust_mod_reduce_noasserts` | same, asserts elided | lean | **Verified** — 1 automatic + 1 interactive (`result == a % Q`) |
| `symcrust_mont_mul` | SymCrypt Montgomery mul, verbatim | front-end | narrowed (fork accommodation landed): only the 4th assert refuses — spec arithmetic has no `&` on the `int`-promoted product; fork candidate: nonneg-`int` bitand |
| `symcrust_mont_mul_noasserts` | same, asserts elided | lean | **Verified** — 10 obligations, 5 automatic + 5 interactive: `result < Q ∧ result·2^16 ≡ a·b (mod Q)` |
| `keccak_iota` | sha3.rs ι round | lean | Historical annotation-light probe: concrete `Index::Output` normalization passes and 12 obligations are emitted, 10 intentionally unproved here. The actual annotated [`../sha3/verification/src/algos.rs`](../sha3/verification/src/algos.rs) now supplies the missing state/index contracts and verifies its 12/12 obligations. |
| `keccak_rho` | sha3.rs ρ round | lean | Checkpoint fork `0bb5732ae…` retains tuple assignment and exact rotation; `Vermilion.Vstd.Rotate` clears the model boundary. This historical annotation-light probe lowers to 23 obligations with 9 intentionally open. The actual annotated [`../sha3/verification/src/algos.rs`](../sha3/verification/src/algos.rs) verifies unchanged `rho` as 17/17 obligations and composes it into verified `round`/`keccak_p`. |
| `keccak_chi` | sha3.rs χ round | lowering | Historical annotation-light measurement only. The actual working copy adds the permitted loop contract/decreases annotation and verifies unchanged χ as part of the current 198-obligation implementation-through-`copy_to` checkpoint. |
| `sha3_compress_u64` | sha3.rs bit-packing | front-end | Verus/vstd: `ChunksExact`, `Enumerate` iterators unsupported |

The interactive twin proofs live in [proofs/](proofs/) and are built by
the `CaseAeneasProbes` Lake lib (`lake build CaseAeneasProbes`). They
rest on two small bridge lemmas (logical shift-by-16 = division by 2^16;
masking with `0xffff` = mod 2^16). The wrap/product saturation portion has
since landed; promoting the general shift/mask lemmas remains issue #35.

The probes intentionally remain historical and may contain open obligations.
The authoritative standalone SHA3 result is logged in
[`../sha3/PROGRESS.md`](../sha3/PROGRESS.md): 198/198 obligations, 25 twins,
0 `sorry`, executable-token identity after erasing 86 annotation regions, and
180/180 Verus/Vermilion parity through unchanged `StateArray::copy_to`.
Public same-spec parity remains 0/6; the exact boundary is
[`../sha3/PARITY_SCOPE.md`](../sha3/PARITY_SCOPE.md).

## Spec bridge: same specification as SymCRust/Aeneas

[proofs/symcrust_mont_mul_specbridge.lean](proofs/symcrust_mont_mul_specbridge.lean)
is the first Rung-A spec bridge (PLAN §2). SymCRust states Montgomery
reduction against `ZMod q` with an explicit modular inverse — see
`Symcrust.mont_reduce` (def,
[MontReduction.lean L28-31](https://github.com/microsoft/SymCrypt/blob/c2e575ace0ea/SymCRust/lean/Symcrust/Properties/MLKEM/Ntt/MontReduction.lean#L28-L31))
and theorem `Symcrust.mont_reduce.spec`
([L33-45](https://github.com/microsoft/SymCrypt/blob/c2e575ace0ea/SymCRust/lean/Symcrust/Properties/MLKEM/Ntt/MontReduction.lean#L33-L45)),
pinned at commit `c2e575ace0ea` (branch head, 2026-07-12):

    t % q = (a * ((R : ZMod q)⁻¹.val : Int)) % q  ∧  0 ≤ t < 2·q

Our Verus contract is the inverse-free congruence
`result < Q ∧ result·2^16 % Q == a·b % Q`. The bridge proves, with zero
axioms:

- `inv_R_val` — `(65536 : ZMod 3329)⁻¹.val = 169`, kernel-computed by
  `decide` (169·65536 = 1 + 3327·3329; note 3327 is SymCrypt's
  `NEG_Q_INV_MOD_R`, their `minus_q_minus_1`).
- `verus_ensures_pins_symcrust_value` /
  `symcrust_value_satisfies_verus_ensures` — the two spec forms have
  the same graph on `[0, Q)`.
- `symcrust_mont_reduce_meets_verus_ensures` — their abstract
  `mont_reduce` (restated verbatim pending vendoring) satisfies our
  postcondition shape.

To make "it's the same VC" a one-look check, the contract is packaged
as **one named implication**. The twin's user section
([proofs/symcrust_mont_mul_noasserts/Specs.lean](proofs/symcrust_mont_mul_noasserts/Specs.lean)
— shared by that study's per-function unit twins)
defines the single statements: `MontMulPre` (exactly the Verus
`requires`), `MontMulSpec` (exactly the Verus `ensures`), and
`mont_mul_model` (the computed value as the VCs describe it). The
bridge imports the twin's modules (built by the `CaseAeneasProbes`
Lake lib) and proves

    mont_mul_spec : MontMulPre a b b_mont → MontMulSpec a b (mont_mul_model a b b_mont)

by chaining the generated obligation theorems verbatim — the
intermediate VC hypotheses are discharged internally, nothing is
assumed beyond `MontMulPre`. (The implication lives in the bridge, not
the twin, because `vrml_sync` keeps user sections above the obligation
theorems it references.) The bridge finishes with:

- `MontMulSpec_iff_symcrust` — **one `iff`**: `MontMulSpec a b r` holds
  exactly when `r = (a·b·((2^16 : ZMod 3329)⁻¹.val)) % 3329`, the value
  SymCRust's `mont_reduce.spec` names.
- `mont_mul_result_is_symcrust_value` — one application of the two:
  under the Verus precondition, the value `mont_mul` computes IS
  SymCRust's specification value.
- `MontMulPre_realizable` — the not-too-strong certificate: for EVERY
  `a, b ∈ [0, Q)`, `b_mont := (b·3327) % 2^16` satisfies all of
  `MontMulPre`, so the implication is non-vacuous on the whole intended
  domain; plus a concrete instance `mont_mul_model 1 1 3327 = 169`
  (= R⁻¹, the Montgomery form of 1·1).

Net effect: **SymCrypt's `mont_mul`, body unmodified (minus
`debug_assert!`s), is verified in Vermilion against the same
mathematical specification SymCRust/Aeneas verifies it against.**
Drift protection is by construction: the bridge is part of the Lake
build; if the Verus contract, the lowering, or the cited spec form
changes, it stops elaborating.

## Provenance

- `dalek_*`: [AeneasVerif/aeneas `tests/src/curve25519.rs`](https://github.com/AeneasVerif/aeneas/blob/main/tests/src/curve25519.rs)
  (adapted there from curve25519-dalek, BSD-3-Clause); their proof:
  `tests/lean/Curve25519/Properties.lean`.
- `symcrust_*`: [microsoft/SymCrypt `SymCRust/src/mlkem/ntt.rs`](https://github.com/microsoft/SymCrypt/blob/c2e575ace0ea/SymCRust/src/mlkem/ntt.rs)
  (MIT), `mod_reduce` at L194-209, `mont_mul` at L237-251.
- `keccak_*`, `sha3_compress_u64`: [AeneasVerif/sha3.rs `src/algos.rs`, `src/lib.rs`](https://github.com/AeneasVerif/sha3.rs)
  (audited target pin `cb411d54ee0b22f88b64c79963691ff63f3ad5b4`;
  θ/ρ/π/χ/ι at `algos.rs` L137-225). The probes are copied slices, so their
  provenance pin does not turn them into the unchanged standalone case study.
