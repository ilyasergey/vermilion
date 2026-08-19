# Unchanged SHA-3 `rho` verification

## Outcome

The actual `rho` body in
`case-studies/aeneas/sha3/verification/src/algos.rs` is verified without any
executable Rust change. A closed recursive specification models the remaining
loop from `(t, x, y, res)`: when `t < 24` it performs exactly the source's
table lookup, unsigned rotation, state update, coordinate transition, and
recursive step; at `t = 24` it returns `res`. The executable loop invariant
states that this remaining computation equals the original call's model.

This form avoids an artificial 24-coordinate enumeration and is suitable for
later composition. It is still a local implementation model; the universal
bridge to upstream `Sha3.Spec` remains a later scalar-permutation gate.

## Verification evidence

- pinned Verus `a33ad15348aa7153de18a48a246b145bf4e2f483`: 12 verified,
  0 errors for the annotated scalar file;
- Vermilion: 29/29 total SHA-3 obligations across five function twins,
  zero `sorry`;
- new `rho` slice: 17 obligations, 13 automatic and 4 interactive;
- the four twins are definitional tuple entry, finite table-row length,
  one-step recursive invariant preservation with exact machine-clip
  normalization, and loop-exit/postcondition unfolding;
- source guard: all 7 Rust files preserve executable tokens after erasing 42
  typed annotations; all 3 metadata files remain byte-identical;
- `lake build CaseAeneasSha3` and the SHA-3 runner both pass.
- the complete repository suite passes all 48 runners, including 158/158
  Verus-parity cases, 76/76 failure-span cases, and the exact generated/proof
  sibling-`Specs` editor regression.

The measured median slowdown is 19.28x, so correctness and regression gates
are green but the nominal at-most-10x performance target is not yet green.

No Verus lowering, Vermilion lowering, textual IR, or Lean VCGen change was
needed in this stage. The previously landed rotation model was sufficient.

## Next action

Annotate and verify π and χ, then θ. χ already measures only an allowed loop
`decreases` annotation; θ will test the unchanged nested local helper items.
After all five Keccak steps are green, compose `round` and the 24-round
`keccak_p` loop before beginning endian/slice/sponge support.
