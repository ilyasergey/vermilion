# Vermilion: Verified Rust Meets Lean

Vermilion is an experimental Lean 4 backend for the
[Verus](https://github.com/verus-lang/verus) verifier. It keeps Verus's Rust
front and middle end and translates VIR-SST verification conditions into
readable Lean theorem statements, with Lean as the only verifier.

- **Verus syntax.** The input uses Verus syntax directly, with no separate
  Vermilion dialect. See the supported scope below for current limitations.
- **Kernel-checked theorems.** Every verification condition becomes a Lean
  theorem you can read, checked by the Lean kernel. The automation that
  proves it is itself untrusted.
- **Interactive proofs.** When automation fails, you write the proof
  yourself, in an editable Lean file that survives re-runs of the pipeline.
- **Lean-native automation.** Proof search uses `bv_decide`, `nlinarith`,
  and Mathlib lemma libraries; Verus's SMT encodings are not reproduced.
- **VS Code plugin.** A Dafny-style automated experience: verdicts appear on
  the offending Rust line, and ⌘⇧J (Ctrl+Shift+J) jumps from a Rust fact to
  its Lean counterpart and back.
- **Missing compared to Verus.** Ghost memory (`PointsTo`, raw pointers,
  cells), statics, and concurrency (atomics, tokenized state machines). See
  [supported features and limitations](docs/support.md) for the current scope.

![Vermilion in VS Code: verifying binary search, with the Lean proof twin and the Lean InfoView](docs/assets/vermilion-demo.gif)

**New here? Take the [hands-on tutorial](docs/TUTORIAL.md)** — verify
Rust through Lean, read the generated theorems, write an interactive
proof, and watch Lean report a broken program on its exact source line,
in about twenty minutes.

**What "verified" means here: [docs/trust.md](docs/trust.md).** Every
obligation is a Lean theorem checked by the Lean kernel; the automation
is never trusted. What *is* trusted — the translation and the embedding
conventions — is enumerated there, assumption by assumption, with the
argument for each and the differential guard that exercises it.


**Headline case study — [curve25519](case-studies/aeneas/curve25519/):**
curve25519-dalek's limb multiplication, body byte-identical to the one the
Aeneas project verifies, machine-checked by Lean end-to-end (38 obligations,
overflow-freedom included) **against the same specification** — a
kernel-checked `ring` bridge shows our per-limb contract implies their
`wideAsNat r = asNat a * asNat b` theorem. One verifier, two toolchains,
one spec.

## Quick start

You need Git, Python 3, Rust installed through `rustup`, Lean installed through
`elan` (providing `lean` and `lake`), and a C/C++ build toolchain. See
[setup details](docs/development.md#prerequisites) for native dependencies.
Run these commands in a terminal:

```console
git clone https://github.com/ilyasergey/vermilion.git
cd vermilion
./scripts/build.sh
./examples/m1-pipeline/run.sh
```

The build fetches the pinned Lean dependencies and Verus fork automatically;
the first build can take a while. The example verifies
[`simple.rs`](examples/m1-pipeline/simple.rs) and reports the Lean verification
results at the Rust source locations.

To inspect or edit a proof, open
`examples/m1-pipeline/proofs/simple/increment.lean` after running the example.
Each source has a `generated/` directory for machine output and a `proofs/`
directory for editable Lean proofs. Your proofs survive reruns while their
obligations remain unchanged. If automation leaves a `sorry`, replace it
with a proof and rerun with `./examples/m1-pipeline/run.sh --manual-proofs`
to check the completed proof twin.

The [hands-on tutorial](docs/TUTORIAL.md) walks through proving a goal,
breaking a Rust postcondition, and regenerating proofs. For other features,
choose a [feature example](docs/support.md#supported-features) and run its
`run.sh` from the repository root.

## VS Code extension

After the build completes, install the bundled Vermilion extension:

```console
./scripts/install_vscode_extension.sh
code .
```

If `code` is unavailable, use **File → Open Folder** to open the repository
root in VS Code. Install the **Lean 4** extension (`leanprover.lean4`) from
the Extensions view for the Lean infoview. If VS Code was already open, run
**Developer: Reload Window** from the Command Palette after installation.

Open `examples/m1-pipeline/simple.rs`:

- **Save** to verify, or use **⌘⇧R** (macOS) / **Ctrl+Shift+R** to run
  *Vermilion: Verify Current File*. Results appear in the gutter and Problems
  panel; detailed output is in the **Vermilion** output channel.
- Place the cursor on an assertion or postcondition and press **⌘⇧J** /
  **Ctrl+Shift+J** to open its Lean proof. The same shortcut returns from a
  Lean obligation to its Rust source.
- Edit the proof in `proofs/` with live feedback from the Lean infoview,
  then rerun verification to update the Rust-side result.

See the [extension guide](editor/vscode-vermilion/README.md) for all commands,
stored verdicts, and handling files within larger case studies.

## Current scope

Vermilion supports a broad sequential Verus fragment, including loops,
recursive specifications, generics, collections, mutable references, and
bit-vector and nonlinear arithmetic. Unsupported constructs produce explicit
diagnostics. Ghost memory, statics, and concurrency remain outside the
supported fragment, and some sequential APIs and source patterns still have
gaps. The [support guide](docs/support.md) links features to runnable examples
and records the boundaries.

The active benchmark is [dalek-lite](case-studies/dalek-lite/), a
curve25519-dalek fork with an existing Verus verification. Its field
arithmetic is partially verified in Lean; remaining proof holes, refused
functions, higher layers, and trusted assumptions are tracked in the study's
[coverage report](case-studies/dalek-lite/README.md#current-verification-status).
See the [execution plan](plans/execution-plan.md) for upcoming work and the
[issue tracker](docs/issues/README.md) for bugs and feature requests.

## Selected examples

- [Binary search](case-studies/binary-search/): a sorted-vector search with
  an existential-witness invariant.
- [Merge sort](case-studies/merge-sort/): sortedness and permutation proofs,
  with interactive Lean lemmas alongside automation.
- [IMO 1988 problem 6](case-studies/imo-1988-6/): a Vieta-jumping proof with
  nonlinear arithmetic and an interactive Lean obligation.
- [curve25519 limb multiplication](case-studies/aeneas/curve25519/): an
  unchanged Rust body and a Lean proof connecting its contract to the Aeneas
  specification.

Each study documents its runner and exact verified scope. The
[case-study registry](case-studies/README.md) includes the full collection,
partial results, and blocked studies.

## Documentation and development

- [Tutorial](docs/TUTORIAL.md): verify a program and write an interactive proof.
- [Support guide](docs/support.md): feature examples and limitations.
- [Architecture](DESIGN.md), [trust boundary](docs/trust.md), and
  [VC-generation policy](docs/vcgen.md): how the translation and proofs work.
- [Development guide](docs/development.md): setup details, test scopes,
  watch mode, and proof-library registration.
- [Documentation index](docs/README.md): reports, roadmap, and engineering logs.

To run the full test suite from the repository root:

```console
./scripts/run_suite.sh
```

## Contributors

See [CONTRIBUTORS.md](CONTRIBUTORS.md).
