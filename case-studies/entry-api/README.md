# `HashMap::entry` API — acquired, currently blocked

[`entry_api.rs`](entry_api.rs) is a byte-for-byte copy of Verus's
[`examples/entry_api.rs`](https://github.com/verus-lang/verus/blob/c569645bd37b00b23d349ef64bafee0aa0a49242/examples/entry_api.rs)
at Vermilion's pinned Verus commit `c569645bd37b00b23d349ef64bafee0aa0a49242`
(MIT). Its SHA-256 is
`23b6881384bf24931c618579a0d9e6a2d9fabbab8f28a6235a4073cc7060e2af`.
`verify_verus.sh` checks byte identity and the baseline: **3 verified, 0
errors**.

The file exercises three increasingly rich entry workflows over
`HashMap<u64,u64>`:

- `new` + `entry(...).insert_entry(...)` and an extensional map assertion;
- `or_insert`, specified as insert-if-absent;
- matching `Entry::{Occupied,Vacant}`, including `get_mut` and a write
  through the returned reference.

It is **not yet supported by Vermilion**. The first fail-closed boundary is
vstd's generic, bodyless `view` specification:

```text
uninterpreted spec function view has type parameters (unsupported)
```

This is the same representation problem tracked by
[`lower-generic-spec-functions-used-by-question-mark.md`](../../docs/issues/lower-generic-spec-functions-used-by-question-mark.md):
the IR must preserve one polymorphic symbol and its instantiated type
arguments, rather than accidentally registering a call-instantiated
monomorphic signature. Once that lands, the Entry contracts additionally
exercise returned `&mut` prophecy values (`final(value)`), Entry enum views,
and mutation of the owning map. The aggregate progression is tracked in the
Entry-API issue under `docs/issues/`.

`explore.sh` is intentionally not named `run.sh`, so this known boundary does
not enter the green suite. It succeeds only while the adapter refuses the
unsupported construct and will fail loudly when the fragment catches up.
VS Code extension 0.9.7 treats the imported-vstd refusal as a module-level
fragment result: `entry_api.rs` keeps an **outside the supported fragment**
status and unsupported gutter marks, highlights its
`vstd::std_specs::hash::*` import, and links that diagnostic to the adapter's
precise span in `vstd/std_specs/hash.rs`.

```console
./case-studies/entry-api/verify_verus.sh
./case-studies/entry-api/explore.sh
```
