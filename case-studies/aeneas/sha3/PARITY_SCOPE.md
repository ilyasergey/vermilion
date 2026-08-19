# SHA3 parity scope and completion ledger

This case study targets the standalone
[`AeneasVerif/sha3.rs`](https://github.com/AeneasVerif/sha3.rs) repository at
commit `cb411d54ee0b22f88b64c79963691ff63f3ad5b4`. It is an Aeneas case study;
it is **not** the SHA-3 implementation from Microsoft SymCrypt or SymCRust.
The separate SymCrypt/ML-KEM probes elsewhere under `case-studies/aeneas/`
must not be used as evidence for this result.

## Normative parity boundary

Parity means reproducing the executable dependency closure of the six public
theorems in the pinned Aeneas `Shars/Verification/Sponge.lean`:

- `algos.sha3_224.spec`;
- `algos.sha3_256.spec`;
- `algos.sha3_384.spec`;
- `algos.sha3_512.spec`;
- `algos.shake128.spec`; and
- `algos.shake256.spec`.

The closure includes the named Aeneas intermediate results for the
`StateArray` byte layer, theta/rho/pi/chi/iota, Keccak-p, absorb, squeeze, and
sponge. It also includes small executable support bodies which Aeneas unfolds
inside those proofs, such as `Default::default`, `Deref::deref`, and
`sponge_absorb`. A Vermilion contract for such a support body is local proof
decomposition, not a new upstream theorem claim.

`src/lib.rs`, `src/simple.rs`, `src/neon.rs`, the Rust test module, and every
other theorem-less function outside that closure are out of parity scope.
They remain in both local copies and remain source-guarded because the acquired
artefact is the complete upstream `src/` tree. Verifying them later would be a
separately labelled stretch result.

## Current checkpoint (2026-07-20)

The unchanged executable implementation is verified through
`StateArray::copy_to`. Pinned Verus reports **52 verified, 0 errors**.
Vermilion kernel-checks **198/198 Lean obligations** in **25 proof twins** with
no `sorry`. The source guard checks all seven Rust files and three metadata
files and restores the pristine Rust token streams after erasing **86 typed
annotation regions**.

The lowering work used by this checkpoint is independently pinned by c178–c181:

- a transparent `Deref::deref` result can supply a loop-condition view;
- exact immutable `RangeFrom` indexing on an array delegates to the existing
  slice `Seq.subrange` model; and
- wrong postconditions still fail at the same source span as Verus.

Together with the existing corpus, the result is **180/180 verdict parity**
and **88/88 failure-span agreement**. No new neutral-IR constructor, Lean
VC-generation rule, axiom, or trusted SHA3 primitive was added.

This is not yet Aeneas parity. The final same-spec count remains **0/6** until
the public implementation theorems and the direct bridge described below are
kernel-checked.

## Remaining parity work

In dependency order:

1. verify `sponge_absorb_initial`, `sponge_absorb_final`, and the absorb loop
   and wrapper bodies in the pinned Aeneas proof closure;
2. verify `sponge_squeeze`, including the unchanged unconditional
   `loop`/`return` shape and its termination argument;
3. verify `sponge` and the six public SHA3/SHAKE entry bodies;
4. generate the final bridge from the current annotated source and make the
   bridge directly `import algos.Specs` and the exact pinned `Sha3.Spec`;
5. prove the representation and result equivalences between those imported
   definitions, with no third restated specification; and
6. run the source inventory, theorem-scope allowlist, pin/hash, and
   zero-added-axiom audits before claiming **6/6** parity.

The next likely Vermilion feature boundary is the squeeze
unconditional-loop/return shape. Absorb should first be attempted using the
landed exact slice/array range, dereference-view, prophecy-writeback, and copy
contracts; new lowering should be added only when an unchanged in-scope body
demonstrates a concrete missing shape.
