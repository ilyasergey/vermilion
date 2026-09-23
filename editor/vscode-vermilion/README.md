# Vermilion for VS Code

Vermilion verifies Verus-annotated Rust using Lean as the proof engine, and
this extension brings the results into the editor:

- **verification runs when you open a Rust file with a `verus!` macro**
  (only if its stored verdict is missing or older than the source — a
  current verdict is painted straight from disk, so jumping between
  already-verified files never re-runs the pipeline), on save for any Rust
  file in the workspace, and on demand (**⌘⇧R / Ctrl+Shift+R**, or the
  status-bar click) — silently in the background, no terminal; output lands
  in the *Vermilion* output channel. A file with an
  example `run.sh` next to it goes through that; every other Rust file is
  driven directly through `scripts/run_example.sh`, so **no `run.sh` needs to
  exist** for a file to verify. A source that is not a standalone program —
  a vendored crate member, or a module `#[path]`-mounted into a case study's
  acquisition root (dalek-lite's `field_u64.rs`) — is never driven as a file
  of its own: an explicit **⌘⇧R re-runs the owning study's driver** (the
  `run.sh` whose entry point's manifest sits in the same `generated/` root),
  which re-judges the whole acquisition, that file included; automatic
  open/save triggers leave its recorded verdicts alone rather than launching
  a whole-crate pass. Files that do not type-check fail in the
  pipeline's own front end and those errors appear at their spans
  (rust-analyzer is not consulted — it cannot expand `verus!` macros);
- while a file is being (re-)verified, the functions under verification
  show a **trembling green zigzag** in the gutter (Dafny style) and their
  checkmarks disappear;
- functions whose obligations all passed get a **circled green checkmark
  in the gutter**, next to the line numbers; editing inside a function
  removes its checkmark until the next run;
- when the file **does not type-check**, the trembling zigzag clears, a
  ✗ appears on each function containing a type error, and the rustc
  errors show as red squiggles at their spans (stale checkmarks and
  obligation squiggles are dropped);
- when lowering stops on an **unsupported fragment feature**, the status bar
  says so instead of reporting a verifier failure. A source-local refusal is
  highlighted at its exact span; if the unsupported construct belongs to an
  imported declaration, the matching Rust `use` target is highlighted and
  links to the dependency's exact span. Every function in the opened module
  gets a ✗ because no per-function obligations were emitted. This status
  persists across editor repaint/focus changes. This describes a fully
  refused source; with per-function isolation, supported siblings can still
  emit obligations and receive their own verdicts;
- every rejected obligation gets a **red squiggle at its Rust span**, and
  its Problems-panel entry puts the caret **directly on the `sorry`
  awaiting your proof in the `proofs/` twin**; the command *Vermilion:
  Open Proof Obligation in Twin* does the same from the cursor;
- goals covered by your hand-written twin proofs appear as informational
  *discharged interactively* notes;
- **the highlighting updates as soon as the verdict is known** — the
  moment Lean has judged the obligations — not when the whole pipeline
  process exits. An optional trailing twin kernel-check (the `--lib`
  examples) then finishes in the background without holding the marks
  hostage, so the ✓/✗ appears as promptly as the CLI streams it;
- the status bar reports **the active file**: a spinner while verifying,
  then `✓ <file> fully verified` or `✗ N failed in <file>`;
- one jump key, **⌘⇧J / Ctrl+Shift+J**, both ways: in a Rust file
  (*Vermilion: Go to Lean*) it lands at the enclosing VC's Lean proof —
  with a picker when one span carries several VCs — or on a function's
  Lean counterpart (including methods in synthetic impl namespaces and
  bodyless impl spec methods). Multiline contract continuation lines select
  their comma-delimited `ensures` clause even when Verus reports only the
  declaration span. In a generated or `proofs/` twin `.lean` file
  (*Vermilion: Go to Rust*) it returns from an obligation's block to that
  VC's exact position in the Rust source.

Current stored verdicts appear immediately for files open in the editor.
When the source is newer than its stored verdict, the result is marked stale
and its checkmarks are withheld until verification runs again.

Both emission layouts are understood transparently (the generated manifest
records which one produced a directory): in the default per-function mode
each function's obligations live in their own `generated/<stem>/<fn>.lean`
unit with a `proofs/<stem>/<fn>.lean` twin (spec-fn/datatype definitions in
the shared `Specs` module), and the checker judges units with parallel Lean
processes — the diagnostics, gutter marks, and jumps aggregate the units'
results into the same single view per Rust file.

Every registered `proofs/` source directory discovers new first-level stems
and their shared `Specs.lean` modules automatically. The editor's Lake shim
compares the exact root set, invalidates the compiled Lake configuration when
it changes, and cold-builds a sibling Specs import even though the Lean file
worker requests `--no-build`. Future per-function twins therefore elaborate
in the infoview without a per-stem Lakefile change. A wholly new proof source
tree still needs one named library declaration to give its modules and runner
an unambiguous owner.

## Install

First complete the [build](../../README.md#quick-start). Install the **Lean 4**
extension (`leanprover.lean4`) in VS Code for the Lean infoview. Then, from
the repository root:

```console
./scripts/install_vscode_extension.sh
code .
```

The script links this folder into `~/.vscode/extensions`; no Node/npm build
is needed. If VS Code is already running, use **Developer: Reload Window**.
If the `code` command is unavailable, open the repository root through
**File → Open Folder**. Open `examples/m1-pipeline/simple.rs` and run
**Vermilion: Verify Current File** to try it.

See the [development guide](../../docs/development.md#editor-and-proof-libraries)
for native plugin setup and proof-library registration.
