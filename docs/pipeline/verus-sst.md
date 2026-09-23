# Verus SST in the simple example

The capture [`artifacts/simple-sst.vir`](artifacts/simple-sst.vir) comes from
`examples/m1-pipeline/simple.rs` at Verus `c569645bd37b0`, using
`--log vir-sst`. It is pre-poly SST, before SMT-specific boxing.

## What is already present

- resolved path `simple::increment` and `u32` parameter/return types;
- normalized `requires` and `ensures`;
- an inserted `HasType (IntRange U 32)` overflow assertion;
- disambiguated parameters, locals, and temporaries;
- explicit `Assign`, `Assert`, `Assume`, `Block`, and `Return` nodes;
- source spans and `AssertId`s 0, 1, and 2.

## Mapping

| SST | Lean |
|---|---|
| `Typ Int (IntRange U 32)` | `Int` plus `inUnsignedRange 32` |
| `reqs` | hypotheses on each statement |
| inserted `Assert (0)` | theorem `assert_0` |
| source `Assert (1)` | theorem `assert_1` |
| `Assign` | symbolic substitution |
| successful `Assume` | accumulated path context |
| `If` | `branch` scope with guarded joins (M2) |
| `Loop` | isolated iteration scope + invariant obligations (M2) |
| `Return`, `ens_exps`, `AssertId 2` | theorem `ensures_2` |
| span, construct, `AssertId` | doc comment and `ObligationMeta` |

This table explains the captured example; it is not the complete supported
fragment. See the [support guide](../support.md) for runnable feature examples
and the [IR specification](../ir.md) for the full boundary. Unsupported forms
receive explicit refusals, while supported sibling functions can continue
through per-function lowering isolation. The Lean IR parser also rejects
unknown forms.
