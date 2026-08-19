---
title: Accept debug_assert! in verified bodies
labels: [feature, verus]
state: closed
github: 34
---

The Verus front end rejects `debug_assert!` outright:

```text
error: panic is not supported (if you used Rust's `assert!` macro, you
may have meant to use Verus's `assert` function)
```

Measured impact: **verbatim SymCrypt code cannot enter the pipeline at
all.** SymCrypt's ML-KEM arithmetic (`SymCRust/src/mlkem/ntt.rs`) uses
`debug_assert!` pervasively as inline documentation of value ranges —
`mod_reduce` and `mont_mul` carry 3–4 each — so the
`case-studies/aeneas/probes/symcrust_{mod_reduce,mont_mul}.rs` probes
die at the front end, and the plan's verbatim-acquisition policy
(`case-studies/aeneas/PLAN.md`) currently requires explicitly-labeled
`*_noasserts` accommodation copies.

The irony is that these asserts are morally *specs*: every one of them
is a provable range fact (the accommodated probes verify stronger
contracts than the asserts state). The right treatment is to consume
them as proof obligations, not reject them as panics.

Options, in preference order:

1. Front-end accommodation in Vermilion's pinned Verus: treat
   `debug_assert!(e)` inside `verus!{}` bodies as Verus `assert(e)`
   (an obligation — fail-closed if unprovable, which is strictly
   sound). Since Verus runs `--no-verify` as our front end and Lean is
   the verifier, the obligation lands in the normal `vrml` pipeline.
2. Upstream the same mapping to Verus proper (issue/PR), keeping our
   checkout unpatched.
3. Erase with a loud per-site warning (weaker: loses the obligation).

Note the differential-harness angle: upstream Verus rejects these
files, so accommodated runs have no Verus verdict to compare against —
the disposition category should record "front-end accommodation
applied" (mirrors the `interactive-proofs-first-class` accounting).

Ship with: the verbatim `symcrust_*.rs` probes turning green without
their `_noasserts` twins, and the accommodation documented in
`docs/trust.md`'s front-end discussion.

**Closed 2026-07-17** via option (1), in our Verus fork
(`ilyasergey/verus` branch `dev`): the `verus!` macro layer rewrites
statement-position `debug_assert!`/`debug_assert_eq!`/`debug_assert_ne!`
into auto-proof-block `assert`s (condition visited in ghost mode,
message dropped, unparseable arguments left untouched/fail-closed).
vstd re-verifies 1972/0 under the change; differential corpus 146/146.
Verbatim `symcrust_mod_reduce.rs` now enters the pipeline (5
obligations; the three former debug_asserts are provable twin goals).
Residual boundary, tracked in the gap matrix: `mont_mul`'s fourth
assert masks an `int`-promoted product (`(b * NEG_Q_INV_MOD_R) & RMASK`)
and spec arithmetic has no `&` on `int` — a Verus spec-semantics
question, not an accommodation gap.
