# Statics and lazy atomic initialization — acquired, out of the sequential gate

[`statics.rs`](statics.rs) is a byte-for-byte copy of Verus's
[`examples/statics.rs`](https://github.com/verus-lang/verus/blob/c569645bd37b00b23d349ef64bafee0aa0a49242/examples/statics.rs)
at Vermilion's pinned Verus commit `c569645bd37b00b23d349ef64bafee0aa0a49242`
(MIT). Its SHA-256 is
`e16de160cb4e833da5731021d141f1184e2acd5467bfad99c1b0df1d287825e9`.
`verify_verus.sh` checks byte identity and the baseline: **9 verified, 0
errors**.

The short opening example increments an `exec static AtomicU64`. The bulk of
the file verifies a thread-safe generic `Lazy<T>`:

- a `PCell<Option<T>>` and its `PointsTo` permission;
- an `AtomicU64` coupled to a tracked three-state protocol;
- a `struct_with_invariants!` invariant relating the atomic state, cell id,
  and memory contents;
- compare-exchange ownership transfer, a tracked `'static` reference, and a
  static `LAZY_X` with an initialization postcondition.

It is **not supported by Vermilion**. Lowering stops at the first global
read:

```text
unsupported SST expression StaticVar(... GLOBAL_COUNTER ...)
```

Supporting the whole file is not a small expression case. It requires a
global/static environment and initialization obligations, then M5 ghost
memory (`PCell`, `PointsTo`, tracked static references) and M6 concurrency
semantics (atomic ghost state and invariant opening). Those features must be
given Lean semantics before any `StaticVar` arm is enabled; treating a static
as an unconstrained local would be unsound. The corresponding issue records
that boundary and its staging.

`explore.sh` is intentionally outside the green `run.sh` glob and succeeds
only on the expected fail-closed refusal.

```console
./case-studies/statics/verify_verus.sh
./case-studies/statics/explore.sh
```
