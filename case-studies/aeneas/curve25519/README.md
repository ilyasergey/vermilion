# curve25519 — dalek `Scalar52::mul_internal`, same spec as Aeneas

**Status (2026-09-23):** SHA-3 work is paused while dalek-lite is active.
Counts and verifier revisions below are recorded checkpoint evidence, not a
fresh run. See the [status hub](../README.md) for the active plan and current
toolchain. Acquisition-source pins remain unchanged.

The first verified-crypto acquisition of the
[Aeneas subsumption plan](../PLAN.md) (target T1, complete as of
2026-07-19):
curve25519-dalek's 5×u64-limb schoolbook multiplication, body taken
**verbatim** from the Aeneas corpus
([`tests/src/curve25519.rs`](https://github.com/AeneasVerif/aeneas/blob/main/tests/src/curve25519.rs);
theirs adapted from
[curve25519-dalek's `Scalar52::mul_internal`](https://github.com/dalek-cryptography/curve25519-dalek/blob/main/curve25519-dalek/src/backend/serial/u64/scalar.rs),
BSD-3-Clause), verified end-to-end by
Lean — **38 obligations, all closable by automation**: the
`scalar_saturate` ladder rung (issue #35; instantiate bounded contract
foralls, bound occurring cross-products from named atom facts, collapse
the update chain, `omega`) discharges all 38 in a clean generated
check. The tracked twins ([proofs/curve25519/](proofs/curve25519/) —
one unit module per function around the shared `Specs.lean`)
deliberately ship the equivalent *explicit* proofs (9 ladder blocks +
29 uniform scripts, hash-stable): they kernel-check in seconds and keep
the editor responsive; re-running the heavy rung on every editor pass
does not.

The later SHA-3 toolchain milestone (Verus pin `1fc6a46d1…`, custom
tuple-keyed `IndexMut`, and Vermilion returned-reference propagation) does not
change this completed study: its 38 statements and tracked proof twins remain
byte-stable under the full-suite rerun.

The SHA-3-specific annotation-erasure/source-inventory guard likewise leaves
this completed, single-file study unchanged.

The subsequent concrete associated-output normalization and c152/c153 corpus
growth also leave its 38 statements unchanged.

The first annotated SHA-3 state/`iota` slice and c154/c155 corpus growth
likewise leave this completed study unchanged.

The tuple-destructuring assignment fork update and c156/c157 corpus growth
also leave this completed study unchanged.

The exact unsigned-rotation fork update retained by `0bb5732ae…`, c158/c159 corpus
growth, and repository-wide generated-`Specs` editor fix likewise leave this
completed study's 38 statements and same-spec bridge unchanged.

The subsequent unchanged-SHA-3 `rho` verification (29 total SHA-3 obligations)
also leaves this completed curve25519 result unchanged.

The 2026-07-20 standalone **AeneasVerif/sha3.rs** work—not Microsoft SymCrypt/SymCRust
SHA-3—likewise leaves this result unchanged. Its
permutation/endian/range/copy and unchanged-`xor`/`copy_to` milestones use
fork `0bb5732ae…`, which passes the full Verus test suite with vstd at 1,972/0;
Vermilion reaches 180/180 differential parity with 88/88 failure-span
agreement, and SHA3 reaches 198 obligations while none of this changes
these 38 statements or the zero-axiom `asNat` bridge.

**Same specification as Aeneas.** Their 41-line proof
([Curve25519/Properties.lean](https://github.com/AeneasVerif/aeneas/blob/main/tests/lean/Curve25519/Properties.lean))
states `wideAsNat r = asNat a * asNat b` for limbs < 2^62. Our Verus
`ensures` states the nine per-limb defining equations;
[proofs/curve25519_specbridge.lean](proofs/curve25519_specbridge.lean)
proves (pure `ring`, zero axioms) that the equations imply the same
`asNat` identity. Overflow-freedom is proved on both sides — Aeneas
threads it through the `Result` monad inside `progress`; here it is 20
span-mapped obligations.

**Spec-only additions to the Rust** (no executable code modified):
contracts, and the Verus idiom for custom `Index` sugar —
`vstd::std_specs::core::IndexSpecImpl` supplies the impl's inherited
`requires` (`i < 5`), and the impl declares its own `ensures`
(`*r == self.0[i]`). Verus's restriction is requires-only-inherited;
impl-level `ensures` are accepted and give callers the returned value.

```console
./case-studies/aeneas/curve25519/run.sh   # tracked twins: 9 ladder + 29 explicit
```

## Why their proof is 41 lines and our twin is ~5k

Mostly presentation and one missing tactic — not proof power:

1. **One theorem vs. 38.** Aeneas states one goal, once. Our emitter
   produces a span-mapped theorem per VC, each restating the full
   ~30-binder context — ~85% of the twin is duplicated *statement
   text*, not proof. (Emitter fix: shared `section` contexts.)
2. **`progress` + `scalar_tac`.** Their proof skeleton walks the
   monadic translation; each step applies the callee's registered spec
   lemma and discharges the overflow side-condition inline with a
   purpose-built scalar tactic. Our 29 interactive proofs are one
   uniform script — instantiate limb bounds, bound the 25 cross
   products, collapse updates, `omega` — i.e. `scalar_tac` written out
   by hand. That script became the `scalar_saturate` rung; a clean generated
   check now closes these obligations automatically. Issue #35 remains open
   only for the general shift/mask bridge work used by the SymCrypt probes.
3. **Pure translation vs. modeled mutation.** Their extraction returns
   the nine products directly; our lowering faithfully tracks the nine
   `z[k] = …` writes as nested functional updates that each ensures
   goal must collapse.
4. **Spec factoring.** They state the `asNat` identity and pay one
   `ring_nf`; we state per-limb equations in Verus and prove the ring
   identity once in the bridge — same content, different split.

What they pay that we don't: a hand-maintained tactic/meta stack, no
Rust-span diagnostics, and specs phrased over `Result`-monadic
translation artifacts. Overflow rigor is identical on both sides —
theirs threads through the `Result` monad, ours is 20 explicit
span-mapped obligations.

## Known limitation (tracked)

Stating the `asNat` identity directly as a tenth Verus `ensures`
(spec fns `as_nat`/`wide_as_nat`) works semantically but explodes
today: the emitter inlines the result value (a 4k-char `Seq.update`
chain) into the obligation and the unfolded statement reaches megabyte
scale, crashing interactive elaboration. The per-limb contract + the
`ring` bridge below carry the same content without the blowup; the
emitter fix (shared obligation contexts / result-value naming) is
tracked in
[share-obligation-contexts](../../../docs/issues/share-obligation-contexts-and-name-result-values.md).
