# M1 diagnostics example

[`broken.rs`](broken.rs) contains a deliberately unprovable assertion
(`assert(y < 100)` fails for `x == 99`). It demonstrates that failures are
detected **by Lean** and mapped back to the exact Rust source range:

```console
./examples/m1-diagnostics/run.sh
```

1. The Verus front end elaborates the file under `--no-verify` — it does not
   judge it.
2. Vermilion emits the three obligations and the colocated
   `generated/broken.json` manifest recording, for each obligation, its Rust
   span, `AssertId`, statement hash, and its line range inside its unit
   module `generated/broken/bump.lean`.
3. `vrml_check` runs Lean on the generated module, exactly one theorem fails,
   and the failure is attributed back through the manifest:

   ```text
   error[vermilion]: assertion failed
     --> examples/m1-diagnostics/broken.rs:16:12
      = note: Lean rejected obligation `broken.bump.assert_1` (statement hash ...)
   ```

   with a machine-readable rustc-style JSON diagnostic on stdout.
4. Per the generated/proofs convention, `vrml_sync` writes the user-editable
   `proofs/broken/bump.lean` twin with the unprovable obligation left as `sorry`
   and a warning to prove it manually. (Here no proof exists — the assertion
   is genuinely false; in a real project this is where you would either fix
   the Rust or supply the missing proof.)
5. The script succeeds precisely because Lean rejected the obligation; a
   broken example that verified would be the bug.

`vrml_check` works for any generated module:

```console
cargo run -p vermilion_backend --bin vrml_check -- \
  examples/m1-pipeline/generated/simple.json
```
