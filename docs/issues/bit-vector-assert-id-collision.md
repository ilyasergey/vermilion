---
title: Bit-vector assert obligations collide on their emitted declaration name
labels: [bug, vcgen]
state: open
github: 56
---

Found by the DL8 Layer Set A acquisition (`case-studies/dalek-lite/layer_a.rs`)
while committing the field-cone twins. Two distinct `assert … by (bit_vector)`
obligations inside one function are emitted with the **same** leaf name, so
the generated Lean unit declares the same `theorem`/`_meta def` twice and
fails to build:

```text
error: …lemma_mul_boundary.assert_bv_3_0_meta has already been declared
error: …lemma_mul_boundary.assert_bv_3_0 has already been declared
```

Observed in two units of the cone (both in `generated/` *and* the synced
`proofs/` twins, so this is an emitter defect, not a twin-edit artifact):

- `field_u64` → `impl__16.square2` → `assert_bv_5_0` (×2)
- `field_lemmas_mul_lemmas` → `lemma_mul_boundary` → `assert_bv_3_0` (×2)

The two colliding blocks carry **different statement hashes** (e.g.
`aba44725bf1d8c44` vs `3c8ee05bd5d51b4d`), i.e. they are genuinely different
VCs — the assert-id counter for bit-vector asserts is not being made unique
within a function the way ordinary `assert_N` ids are. The leaf is built in
`Obligation.leaf`/`assertId` (see `lean/Vermilion/Ir/Render.lean` and the
`assertId` assignment upstream in `Vcgen`); bit-vector asserts need the same
per-function disambiguation the plain asserts get.

Impact: `square2` (33 otherwise-provable VCs) and `lemma_mul_boundary` (39
VCs) cannot be committed until the ids are unique — their twins were held
back from the DL8 phase-2 commit for exactly this reason (see
`logs/2026-07-21-dalek-lite-handover.md`). Fix is a same-slice `docs/vcgen.md`
+ `Render`/`Vcgen` change (unique bit-vector assert ids), after which
re-emitting and re-running the per-obligation adjudication recovers both
units automatically.

Update (2026-08-19, Lean 4.33 migration): `lemma_or_bit`'s twin hits the same
collision (two `bv_5_0` blocks). Both obligations now carry real interactive
proofs, and the unit is kept buildable by a stopgap `namespace
collision_635d62c1` wrapper around the second block, marked with
`-- vrml:user:begin/end` in
`case-studies/dalek-lite/proofs/bit_lemmas/layer_a_lemmas_common_lemmas_bit_lemmas_lemma_or_bit.lean`.
Remove that wrapper when the emitter emits unique ids.
