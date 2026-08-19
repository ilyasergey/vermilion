---
title: Share substituted values in the lowering instead of duplicating them
labels: [bug, vcgen]
state: open
github: 53
---

The substitution-based lowering (`crates/vermilion_direct/src/lower.rs`)
deep-copies subtrees wherever a value is restated, and `Expr` nodes are
`Box`, so every copy is a full tree clone. The duplicating sites:

- **env-lookup substitution** — every variable occurrence clones the
  whole bound value (`ExpX::Var` arm);
- **binder and branch environment clones** — `ExpX::Bind` (let, quant,
  choose, lambda) and statement branching clone every value the env
  holds;
- **Prop-valued conditionals** — the implication pair restates the
  condition;
- **`field_update`** — the record rebuild restates the current value
  once per field.

The worst instance — `lower_clip`'s conditional expansions restating
their operand, which made *nested nat arithmetic* grow exponentially in
the clip depth — was **fixed structurally in DL8**: `nat`/signed clips
now lower to the dedicated single-occurrence IR forms
`(natclip e)`/`(sclip w e)` (`Vermilion.natClip`/`sclip`, docs/ir.md).
Measured on dalek-lite Layer Set A: before, `FieldElement51::from_bytes`
drove the lowering to a ~4 GB OOM kill on one machine and a SIGKILL at
~33 GB RSS after 9 minutes on a 128 GB machine (a `sample` profile put
>85 % of samples inside `Expr::clone` under `lower_clip`); after, the
whole 454-function cone lowers in ~1.4 s at ~0.8 GB with zero
duplication refusals.

Remaining stopgaps for the *other* duplication sites (all fail closed,
none is the fix):

- `EXPR_SUBSTITUTION_BUDGET` (200k nodes) refuses a single oversized
  env value at the assignment sites.
- The per-function work fuse (`LOWERING_WORK_FUSE`, 5M) ticks once per
  `lower_exp` call **and by the node count of every deep copy** at the
  sites above (`charge_expr_copies`/`charge_env_copy`). Size charging
  is essential: call counting alone never fired — the duplication
  allocated gigabytes between ticks.

The real fix is to stop copying:

1. **Share, don't clone:** represent lowered expressions with `Arc`
   nodes (or a hash-consed arena) so restating a subtree is a pointer
   copy. This fixes lowering memory, but obligations still render
   large when printed — so also:
2. **Name, don't substitute:** bind computed values once (a fresh
   symbol with a defining equation, or a `let` form in the IR) and let
   obligations refer to the name. This is the same design as issue #39
   ("share obligation contexts and name result values in emitted
   twins") — the emitter-side symptom of the same substitution choice;
   fixing it at the lowering makes #39's point 2 fall out.

Ship with: `docs/ir.md`/`docs/vcgen.md` updates when the IR grows a
binding form, and the statement-hash migration story for existing
twins. The `natClip`/`sclip` forms are prior art for the pattern:
naming a shape once beats restating it.
