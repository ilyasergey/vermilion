---
title: Bool-parameter conditionals emit unprovable Decidable evidence
labels: [bug, vcgen]
state: open
github: 48
---

Found while authoring the DL5 corpus case c188 (its first draft branched on
a `bool` parameter):

```rust
pub fn store_unit(ok: bool) -> (result: Result<(), StoreError>)
    ensures
        ok ==> result == Result::<(), StoreError>::Ok(()),
        !ok ==> result == Result::<(), StoreError>::Err(StoreError::Full),
{
    if ok { Ok(()) } else { Err(StoreError::Full) }
}
```

The typeclass-evidence pass (#25) emits, for the `if ok` join,

```lean
@[vrml_evidence] noncomputable instance …_evidence_decidable_prop
    (p : Prop) : Decidable p := by sorry
```

— a **fully abstract** `∀ (p : Prop), Decidable p`, which is unprovable
(it is essentially excluded middle as data over all propositions, and the
interactive-evidence mechanism cannot save it: no consumer-side
instantiation exists). The evidence generator should either instantiate
`p` to the concrete condition (`Decidable ok` for the Prop binder `ok`,
which the obligation could then carry as an instance binder the way
`iteP` consumers expect), or thread `[Decidable ok]` through the
obligation binders directly. Verus verifies the program, so this is a
verdict-parity gap on any exec `bool` parameter used as a branch
condition under a contract.

Driver: the snippet above (c188's first draft). c139/c140 guard the
already-working `Decidable` evidence shapes; this is the
parameter-condition case they do not cover.
