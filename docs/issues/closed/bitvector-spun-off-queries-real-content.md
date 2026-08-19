---
title: Rerun Verus's spun-off bit_vector queries with real content
labels: [enhancement, vcgen, foundations]
state: closed
github: 17
---

**Resolution.** The issue was filed from a stale intermediate account of the
M4 work. The pinned Verus SST already carries real `requires` and `ensures`
inside `StmX::AssertBitVector`; the apparent `true` expressions in the first
probe were constant-folded identities, not erased query bodies.

Vermilion now lowers every `by (bit_vector)` block as an **isolated query**:
the VC sees the block's explicit requirements plus type/range facts, but not
the enclosing block's assumed conclusions. This fixes the real soundness
bug—the initial context-sharing implementation could prove a false identity
from its own downstream assumption.

Verified again on 2026-07-17:

- `./examples/m4-bitvec/run.sh --clean-env` — 7/7 real-content obligations
  proved by Lean;
- `python3 scripts/run_differential.py` — 137/137 verdict parity and 66/66
  failure-span agreement;
- c112 rejects `(x | 0) == 0` in both Verus and Vermilion at line 5.

No VC-generator change was made in this documentation stage: the existing
isolated representation reuses the normative `(LOOP)` rule in
[`docs/vcgen.md`](../../vcgen.md). The implementation is in
`crates/vermilion_direct/src/lower.rs`; the trust argument is in
[`docs/trust.md`](../../trust.md), and the positive example is
`examples/m4-bitvec`.
