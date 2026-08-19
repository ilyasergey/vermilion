# m4-bitvec — machine bit operations (Lean-native)

Run `./run.sh`. `bitvec.rs` verifies bit-op contracts and ground bit
identities.

**How it lowers (M4, Lean-native).** Bit operations
(`&`, `|`, `^`, `<<`, `>>`) at machine widths lower to `Vermilion.Bits`
— ordinary Lean definitions over `BitVec` with **proved** conversion
and identity lemmas (`toNat ∘ ofInt` on the range, nonneg/`< 2^w`
range facts, the curated identity set), all kernel-checked, nothing
trusted, no SMT-facing encodings (the M4 directive). Unsigned results
read back through `toNat`, signed through `toInt`.

**`by (bit_vector)` is an isolated real-content query.** The exported SST
carries each block's `requires` and `ensures`. Vermilion lowers them through
the loop rule's isolated scope: the VC sees only the explicit requirements
and accumulated type/range facts, never the outer block's assumed conclusion.
That isolation is soundness-critical—the differential harness caught an
earlier context-sharing implementation proving a false identity circularly.
Case c112 now rejects that identity in both Verus and Vermilion at the same
span.

**The bit↔arithmetic bridge (#35, dalek-lite DL4).** Isolated queries with
real arithmetic content — not ground identities — close through *proved
characterization lemmas*: `Bits.shr_eq_div` (a logical right shift of an
in-range operand is division by a power of two) and
`Bits.band_two_pow_sub_one_eq_mod` (masking with `2^k - 1` is reduction mod
`2^k`). The saturation rung applies them conditionally on the operand's
range, which it can also establish for operands that are *array reads*
(`Seq.index` applications bound by `let ghost`): the contract forall over
the array is instantiated at the occurring literal index. `shift_is_division`
(plain binder) and `high_bit_clear` (indexed operand, the dalek-lite
`scalar.rs` shape) exercise both.

All 12 obligations close automatically. Differential guards: c107/c108 for
ordinary bit operations, c112 for the isolated-query rejecting direction,
and c184/c185 for the indexed-operand bridge (both directions).

## generated/ vs proofs/

- `generated/bitvec/` (one unit module per function) is overwritten on
  every run.
- `proofs/bitvec/` is yours; `vrml_sync` reconciles it.
