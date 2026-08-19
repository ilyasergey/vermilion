---
title: Lower array repeat initializers ([v; N])
labels: [feature, vcgen]
state: closed
github: 37
---

The array-repeat expression `let mut z = [0u128; 9];` refuses to lower:

```text
error[vermilion]: outside the supported fragment: uninterpreted spec function spec_array_fill_for_copy_type has type parameters (unsupported)
  --> vstd/array.rs:166:16
```

Verus desugars the repeat literal through vstd's generic bodyless
`spec_array_fill_for_copy_type`, so this is the same fail-closed class
as generic `spec_from` (issue #19): a generic uninterpreted spec
function reached from an exec body.

Measured impact: this is the **only** blocker for the curve25519-dalek
`Scalar52::mul_internal` probe
(`case-studies/aeneas/probes/dalek_mul_internal.rs`) — the first
verified-crypto acquisition target of
`case-studies/aeneas/PLAN.md` (§C0). The rest of that body (local
`[u128; 9]` indexed writes, u128 products, `Index` sugar) is never
reached, so the actual status of indexed local-array writes (#22's
local-destination variant) is still unmeasured.

The semantics is simple: `[v; N] : [T; N]` is the constant sequence —
`Seq` of length `N` with every element `v` (`Seq.new`-style fill or
`fun _ => v`). Lower the application either by special-casing the vstd
fill functions to the constant-sequence model, or as part of a general
monomorphized-instance treatment of generic opaque spec fns shared
with #19.

Ship with: a driver exercising `[v; N]` for a machine-int and a
datatype element type, the `dalek_mul_internal` probe advancing past
lowering (re-run `case-studies/aeneas/probes/run.sh`), IR/parser/
`docs/ir.md` updates in the same slice.

**Closed 2026-07-17.** Landed in the same slice as indexed array
destinations: the application routes through the vstd-mirror registry
as `(vstdapply "vstd::array::spec_array_fill_for_copy_type" N t)` with
the const-generic length as the leading Int argument, mirrored by the
constant sequence `Vermilion.Seq.fill` (defined via `Seq.new`, lemma
surface inherited). Differential c146/c147 guard it; parity 146/146;
`dalek_mul_internal` advanced from lowering-refusal to fully lowered.
