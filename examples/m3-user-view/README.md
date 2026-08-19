# m3-user-view — user `View` impls (`s@` on your own types)

Run `./run.sh`. `userview.rs` gives `Stack` a `View` impl whose model
is its Vec's `Seq` view, and verifies code written against `s@`.

**How it lowers.** `s@` desugars to `View::view(s)`; for a *user* impl
this is ordinary static trait dispatch — the impl's `open spec fn view`
is emitted as a Lean definition and applied (`impl__0.view s`), so
`s@.len()` is `Seq.len (view s)`. The identity shortcut applies **only**
to `Vec` (whose Seq view *is* its model); before this slice the
shortcut fired for user impls too, mistyping `s@` — caught by the
probe, fixed, and guarded (c97/c98). `DeepView` stays out of the
fragment for now.

## generated/ vs proofs/

- `generated/userview/` (one unit module per function, shared spec-fn
  definitions in `Specs.lean`) is overwritten on every run.
- `proofs/userview/` is yours; `vrml_sync` reconciles it.
