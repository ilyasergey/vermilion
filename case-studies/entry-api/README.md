# `HashMap::entry` API — acquired, currently blocked

[`entry_api.rs`](entry_api.rs) is a byte-for-byte copy of Verus's
[`examples/entry_api.rs`](https://github.com/verus-lang/verus/blob/c569645bd37b00b23d349ef64bafee0aa0a49242/examples/entry_api.rs)
at the acquisition source commit `c569645bd37b00b23d349ef64bafee0aa0a49242`
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

The study remains an expected-refusal probe. Its original generic bodyless
`view` blocker was addressed by
[generic specification applications](../../docs/issues/closed/lower-generic-spec-functions-used-by-question-mark.md)
in DL5. That prerequisite's closure is not evidence that the complete Entry
API works: Entry views, standard-library contracts, and returned-`&mut`
relations to the owning map remain tracked by the
[Entry-API issue](../../docs/issues/support-hashmap-entry-api.md).

[`explore.sh`](explore.sh) runs with `--expect-unsupported`, succeeding only
while the adapter refuses a required construct. It is included in the full
suite's expected-refusal case-study runners. Run it to obtain the current
first diagnostic; the pre-DL5 generic-`view` error is historical.

The VS Code extension distinguishes unsupported source from a failed Lean
proof. See the [extension guide](../../editor/vscode-vermilion/README.md).

```console
./case-studies/entry-api/verify_verus.sh
./case-studies/entry-api/explore.sh
```
