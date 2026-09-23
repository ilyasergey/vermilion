# Development guide

[Back to the README](../README.md) · [Documentation index](README.md)

## Prerequisites

Use a shell with Bash and the usual command-line build tools. Install Git,
Python 3, Rust through `rustup` (with `cargo` on `PATH`), and Lean through
`elan` (with `lean` and `lake` on `PATH`). Native dependencies include Clang
with C++17 and libc++ support for the cvc5 Lean bindings, plus `curl`, `tar`,
and `unzip` for dependency downloads. On macOS, install the Xcode Command
Line Tools; on Linux, install the corresponding compiler and libc++
development packages.

The repository selects its Lean version in [`lean-toolchain`](../lean-toolchain),
Lean dependencies in [`lakefile.lean`](../lakefile.lean) and
[`lake-manifest.json`](../lake-manifest.json), and the Verus revision in
[`scripts/setup_verus.sh`](../scripts/setup_verus.sh). The Verus checkout
specifies its own Rust toolchain.

## Build

From the repository root:

```console
./scripts/build.sh
```

This first fetches mathlib's precompiled cache for the pinned dependencies,
then builds the Lean libraries and native solver bindings, the Rust workspace
and tests, and finally the pinned Verus fork and direct SST adapter. This
avoids compiling mathlib from source on a fresh checkout. The remaining
compilation can take a while on the first build; subsequent builds are
incremental, and cache downloads are reused locally.

When building Lean manually, fetch the cache before the first build, after
removing `.lake`, or after changing dependency pins:

```console
lake exe cache get
lake build
```

The [mathlib setup guide](https://leanprover-community.github.io/install/project.html)
documents this cache command. If it fails, `scripts/build.sh` stops before
compilation; fix the download problem and rerun the script.

Verus is cloned into `${XDG_CACHE_HOME:-$HOME/.cache}/vermilion/verus` and
linked as `.verus-checkout`. The setup script also downloads Verus's matching
Z3. To reuse a checkout, set `VERUS_CHECKOUT=/path/to/verus` before building.
Setup aligns that checkout with the repository's pin and refuses a mismatched
checkout with local changes. The fork already contains the required export
hook; no manual patch application is needed.

For an end-to-end first run, follow the [README quick start](../README.md#quick-start)
or [tutorial](TUTORIAL.md).

## Test scopes

The full suite runs Rust tests, examples, case studies, emission and
incrementality checks, proof-twin lifecycle checks, the twin-library build,
and the differential corpus:

```console
./scripts/run_suite.sh
```

While iterating, the fast loop is the smoke scope: unit tests, all
examples, emission determinism, and the pipeline contracts, skipping the
case studies, the twin-library build, and the differential corpus:

```console
./scripts/run_suite.sh --smoke
```

Each case study also runs by itself (all of its runners, including a
study's source-preservation guard and probe suites where it has them):

```console
./scripts/run_suite.sh --list-case-studies   # the valid names
./scripts/run_suite.sh --case-study dalek-lite
./scripts/run_suite.sh --case-study aeneas/sha3
```

The differential corpus also runs by itself. It compares Vermilion's Lean
verdicts and failure spans with Verus's SMT verification results, with a live
progress bar:

```console
./scripts/run_suite.sh --differential
```

For an interactive edit loop outside the editor, keep one source under
watch. Only obligations whose statement hashes change are re-judged:

```console
./scripts/vrml_watch.sh examples/m1-pipeline simple.rs
```


## Editor and proof libraries

Follow the [README extension setup](../README.md#vs-code-extension) and the
[extension guide](../editor/vscode-vermilion/README.md) for commands and
navigation. Build before opening Lean proofs: the Lean server needs the
native cvc5 plugin produced by the build.

The workspace's `editor/bin/lake` shim caches Lake configuration and discovers
module roots in registered proof libraries. Generated modules use an on-demand
overlay so each source's shared `Specs.lean` resolves to the correct tree.
New stems inside an existing proof library need no Lakefile edit.

Register a wholly new proof source tree from the repository root:

```console
./scripts/register_proof_lib.py register <CaseName> <proofs-dir>
```

Registration is idempotent. The suite checks that every proof tree has a
registered library. See [proof twins](TUTORIAL.md#3-your-proofs-the-proofs-twin)
for editing rules and switching between per-function and per-file emission.

## Case-study source preservation

Each case study records its source-preservation contract. Percolator and the
Aeneas-derived body-preservation studies keep executable bodies unchanged and
add specification text. dalek-lite mounts lemma/spec files from the pin but
uses an adapted `field_u64.rs`; its
[source-fidelity record](reports/dalek-lite-layer-a-scoreboard.md#verification-subject-fidelity)
lists those accommodations explicitly.

For body-preserving studies, the additions include:

- **Contracts** (`requires`/`ensures`, result binders) and **loop
  invariants** in Verus syntax around and inside unchanged bodies.
- **Spec-only items**: e.g. for custom `Index` sugar
  (curve25519-dalek's `Scalar52[i]`), an
  `impl vstd::std_specs::core::IndexSpecImpl<usize> for T` supplies the
  inherited `requires` of the `Index` impl, and the impl declares its
  own `ensures`. Verus's restriction is requires-only-inherited;
  impl-level `ensures` are accepted and give callers the returned
  value. See [case-studies/aeneas/curve25519](../case-studies/aeneas/curve25519/).
- **Production assertions**: `debug_assert!`s in SymCrypt are consumed as
  statically checked assertions by the Verus fork and become proof obligations.


## Issues and planning

The [issue tracker](issues/README.md) stores one Markdown file per issue and
syncs both ways with GitHub. Its guide documents the format, conflict handling,
and `scripts/sync_issues.py` commands. The [execution plan](../plans/execution-plan.md)
orders implementation work; [session logs](../logs/README.md) record decisions
and reproducible checks.
