# m3-namespaces — same-named functions in different modules

One Rust file, two modules, each defining a function `max` and a spec fn
`is_max`:

```rust
mod signed   { pub open spec fn is_max(…) …  pub fn max(a: i32, b: i32) … }
mod unsigned { pub open spec fn is_max(…) …  pub fn max(a: u32, b: u32) … }
```

This is ordinary Rust namespacing, and the per-function emission
disambiguates everything by qualified name:

- `generated/namespaced/signed_max.lean` and
  `generated/namespaced/unsigned_max.lean` — one unit module per function,
  the module path flattened into the file stem (`namespaced.signed.max` →
  `signed_max`);
- both spec fns live side by side in the shared
  `generated/namespaced/Specs.lean` as fully qualified Lean definitions
  (`namespaced.signed.is_max`, `namespaced.unsigned.is_max`), emitted
  exactly once and imported by the unit modules that reference them;
- inside each unit the theorems sit under the full namespace
  (`namespace namespaced.signed.max`), so nothing ever collides.

Run it:

```console
./run.sh
```

As everywhere, `generated/` holds the machine's statements and proof
attempts (recreated on every run) and `proofs/namespaced/` the user-editable
twins — `signed_max.lean`, `unsigned_max.lean`, and the shared `Specs.lean`
(whose end is the home for user helper sections shared across the units).
