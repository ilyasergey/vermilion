---
title: Bits bridge lemmas and a wrap-collapse rung for constant-time arithmetic
labels: [feature]
state: open
github: 35
---

Verifying SymCrypt's ML-KEM scalar arithmetic verbatim
(`case-studies/aeneas/probes/`, see
`case-studies/aeneas/gap-matrix.md`) needed 6 interactive twin proofs,
and every one of them is the same two ingredients:

1. **Bit↔arithmetic bridge lemmas** missing from `Vermilion.Bits`
   (`lean/Vermilion/Prelude.lean`):
   - `shr w x k = x / 2^k` for in-range `x` (logical shift is division);
   - `band w x (2^k - 1) = x % 2^k` for in-range `x` (masking is mod);
   - constant-folding of concrete `band`/`bor`/`bxor` applications
     (e.g. `band 32 3329 65535 = 3329`, currently a per-twin `decide`).

   The proofs are short (`BitVec.toNat_ushiftRight`,
   `Nat.and_two_pow_sub_one_eq_mod`, `toNat_ofInt_of_range`) and already
   exist as `private` helpers in the probe twins
   (`case-studies/aeneas/probes/proofs/symcrust_mont_mul_noasserts.lean`)
   — promote them to general-width `@[simp]`/`@[grind]` lemmas in
   `Vermilion.Bits`.

2. **A wrap-collapse step**: with ranges in hand
   (`inUnsignedRange 32 (a * b)` etc.), rewrite `x % 2^w → x` before
   the arithmetic rungs run. Today `omega` is handed goals with many
   stacked div/mod atoms (`((p % 2^32) + ((m % 2^32 % 2^16) * q) % 2^32) % 2^32 / 2^16 …`)
   and **fails even on decidably-unsat systems** — the twin proofs had
   to collapse the wraps one small omega-proved equation at a time.
   A preprocessing simp set (conditional `Int.emod_eq_of_lt` driven by
   the range hypotheses) or a dedicated ladder rung would let
   `grind`/`omega` close these goals directly.

Expected payoff (measured, not hypothetical): of the 5 interactive
obligations in the `mont_mul` twin, the 3 overflow/precondition ones
become one-rung goals with (1)+(2); only the two genuinely
number-theoretic goals (branchless-mask correctness, Montgomery
congruence) should stay interactive — and a future `Vermilion.ZMod`
library (`case-studies/aeneas/PLAN.md` §C4) targets those.

Ship with: lemmas + tests in the Lean library, a ladder change
documented in `docs/vcgen.md` if a rung is added, and the probe twins
shrunk to use the library lemmas (their statement hashes are unchanged
— only proof bodies simplify).

**Progress 2026-07-17 (evening):** the wrap-collapse/product half
landed as the `vrml_scalar_saturate` ladder rung (bounded-forall
instantiation, occurring-product bounds from named atom facts,
update-chain collapse, `omega`; per-rung heartbeat budgets introduced,
the saturation rung gets a larger bounded allowance). Measured:
curve25519's 38 obligations — previously 9 automatic + 29 interactive —
now discharge fully automatically. Remaining from this issue: promote
the general-width `shr`/`band` bridge lemmas into `Vermilion.Bits`
(the SymCrypt mask goals still use per-twin private helpers).

**2026-07-20 — new driver (dalek-lite DL4).** Isolated `by (bit_vector)`
queries whose operands are `Seq.index` applications rather than plain
machine-int binders do not close: the dalek-lite probe
`case-studies/dalek-lite/ghost_high_byte.rs` leaves
`Bits.shr 8 (Seq.index bytes 31) 7 = 0` (given `bytes[31] ≤ 127`) to an
interactive twin. The bridge should abstract in-range indexed operands into
BitVec view variables before `bv_decide`, and `Vermilion.Bits` still lacks
the `shr`-as-division characterization the twin proves by hand.

**Landed 2026-07-20 (evening, DL4).** The characterization half is in
`Vermilion.Bits` as general-width proved lemmas: `shr_eq_div` (logical
shift is division by a power of two, any shift amount),
`band_two_pow_sub_one_eq_mod` (masking with `2^k - 1` is `% 2^k`, `k ≤ w`),
plus `@[simp, grind]` range bounds `shr_nonneg`/`shr_lt` mirroring the
`band` ones. The `scalar_saturate` rung now (a) instantiates bounded
contract foralls at the literal `Seq.index` indices occurring in the
sequent — so a 32-byte array's element-range forall no longer hides behind
the exhaustive-instantiation cap — and (b) rewrites `shr` applications to
divisions via a conditional simp (`omega` discharger) once the operand
range is in context. `ghost_high_byte.rs` verifies 3/3 automatically
(twin byte-identical); guards c184/c185; `examples/m4-bitvec` exercises
both the plain-binder and indexed shapes. **Still open from this issue:**
constant-folding of ground `band`/`bor`/`bxor` applications (per-twin
`decide` today; wants a simproc that also recognizes literal `2^k - 1`
masks so `(x >> 4) & 15 == x / 16`-style goals close without the
`2^k - 1` syntactic form), and the full BitVec-view abstraction toward
`bv_decide` for boolean-structure goals (signed shifts, xor chains —
dalek-lite has ~399 `by (bit_vector)` sites; re-measure the residual need
at DL8 Layer Set A).
