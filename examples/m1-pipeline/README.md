# M1 pipeline example

The golden slice: one Verus-annotated `u32` function flows through the pinned
Verus front end, the direct pre-poly SST adapter, and Lean. **Lean is the only
verifier** — Verus runs under `--no-verify` as a front end.

```console
./examples/m1-pipeline/run.sh
```

## Generated attempts vs. your proofs

Every run produces two sibling Lean modules from `simple.rs`, and the
convention is the same in every example:

- **`generated/simple/increment.lean` is machine output** (one unit module
  per verified function; `simple.rs` has just `increment`). Obligation statements,
  span/hash metadata, and a default-automation (`vrml`) proof attempt per
  obligation. It is overwritten on every run and never committed — deleting
  it is always safe. `vrml_check` judges it and reports failures at their
  Rust spans (`error[vermilion]: ...`).
- **`proofs/simple/increment.lean` is the user-editable twin.** `vrml_sync` reconciles
  it with the fresh obligations on every run: when automation proves
  everything and you edited nothing, it is **byte-identical** to the
  generated module; where automation fails, the proof body becomes `sorry`
  with a warning asking you to prove it manually; proofs you write survive
  regeneration for as long as their statement hash is unchanged, and go stale
  (replaced, with a warning) the moment the Rust code changes their VC.
  Lake kernel-checks this twin (`lake build M1Pipeline`).

Try both directions: change the `ensures` to `y == x + 2` and rerun — the
postcondition VC fails at `simple.rs:10:9` and the twin gets a `sorry`;
restore it and rerun — the stale block is replaced and the twins are
identical again.

## Lean editor server

Run `./scripts/build.sh` once before opening the project so the native cvc5
plugin exists; the root Lake configuration passes that plugin to `lake serve`.
After changing dependencies or Lake configuration, use **Lean 4: Restart
Server** from the VS Code Command Palette.
