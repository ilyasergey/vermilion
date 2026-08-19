# 2026-07-20 — unchanged SHA3 `StateArray::xor`

## Objective

Advance the pinned standalone `AeneasVerif/sha3.rs` scalar artefact toward the
same six-theorem result as upstream Aeneas, without changing executable Rust.
This stage targets the next upstream body, `StateArray::xor`, and any general
Verus/Vermilion support its exact body requires. Whole-source breadth remains a
stretch goal after scalar parity.

Pins remain:

- SHA3 source `cb411d54ee0b22f88b64c79963691ff63f3ad5b4`;
- `sha3.lean` `1a649d5bb6da9272815831a0667c4b62ad388dc1`;
- Aeneas Lean `ad869506e970dbfa714b8733644ca8cd7b187eff`; and
- Verus fork `32259d40b05103fbeab45142dd51c3557f6426c8`.

No Verus-fork edit was needed in this stage.

## SHA3 annotation and proof

The verification copy adds a closed recursive `xor_spec_from` definition and
an annotation-only contract for `StateArray::xor`. The contract says that the
final state is the old state with every byte in `other` XORed into the
corresponding byte from offset zero. The unchanged nested helper and outer
loop carry prefix equality, bounds, and decreasing-suffix annotations.

The residual Lean work is stored in the normal per-function twins:

- `impl__10_xor_inner.lean` proves loop-invariant preservation and the nested
  helper postcondition; and
- `impl__10_xor.lean` proves the public method postcondition.

All three residual obligations are genuine checked theorems; neither file
contains `sorry`.

## Vermilion lowering issue exposed

The exact loop condition contains `8 * *block_idx + 8`. Verus inserts overflow
assertions and matching assumptions while computing that condition. Previous
Vermilion lowering allowed only assignment/call/branch substitutions in the
condition setup and therefore refused the unchanged source.

The lowerer now collects setup assertions, preserving their descriptions and
Rust spans. At an arbitrary loop head it emits the existing `Assert` forms
before an existing `Branch` on the condition. Consequently the checks must be
proved from type facts and loop invariants before the condition can enter the
context. Assertions in short-circuit arms are guarded by arm reachability.
Only an assumption identical to the immediately preceding assertion is
accepted; unmatched assumptions and other effects fail closed. Established
checks become exit facts for the final condition evaluation.

This is a composition of existing textual-IR and VCGen semantics. There is no
new IR constructor, Lean rule, axiom, or trusted arithmetic shortcut.

## Differential guards

- c170: checked arithmetic in a `while` condition verifies when the invariant
  supplies the required bound;
- c171: omitting that bound is rejected at the same source line by Verus and
  Vermilion; and
- c172: an unreachable short-circuit RHS does not create an unconditional
  safety obligation.

The full differential result is 171/171 verdict parity and 83/83 canonical
failure-span agreement. Median slowdown is 15.56× across 171 timed cases; this
is a performance miss only.

## Reproducible outcomes

- annotated SHA3 under pinned Verus: 47 verified, 0 errors;
- SHA3 Vermilion runner: 169/169 obligations, 22 proof twins, 0 `sorry`;
- latest clean SHA3 classification: 24 newly automatic, 145 discharged by
  tracked interactive twins;
- source guard: all 7 upstream Rust files preserve executable tokens after
  erasing 78 typed annotation regions; all 3 metadata files are byte-identical;
- complete six-phase Vermilion suite: all 48 registered runners, deterministic
  emission, incrementality/fail-closed/evidence checks, proof-library builds,
  editor-root integration, and the 171-case differential corpus pass.

The first sandboxed suite attempt stopped at phase 4 only because `/dev/stderr`
was not writable there. Re-running the identical command outside that sandbox
completed; no verifier/test failure was involved.

## Scope and next task

The current result proves the unchanged scalar implementation through
`StateArray::xor`. It is not yet equivalent to upstream's six public
SHA3/SHAKE theorems against `Sha3.Spec`.

The next implementation boundary is mutable range indexing with prophecy
write-back and a precise `copy_from_slice` contract for unchanged `copy_to`.
After that: absorb initial/final blocks, absorb, the squeeze loop, `sponge`, the
six public functions, and the exact zero-axiom bridge to the pinned external
specification. Full `src/` breadth, including files upstream does not prove, is
the stretch goal after scalar parity.
