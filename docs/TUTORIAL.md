# Vermilion tutorial: verify Rust in Lean

This walkthrough takes about twenty minutes. You will verify Verus-annotated
Rust through Vermilion's Lean backend, read the generated verification
conditions, write an interactive Lean proof for one of them, break the Rust
program and watch **Lean** report the failure on the exact source line, and
see what regenerates (and what does not) when you edit.

Throughout the pipeline, Verus runs as a **front end only** (`--no-verify`:
parsing, typing, mode checks — no SMT). Lean is the only verifier; every
verdict you see comes from the Lean kernel.

## 0. One-time setup

Prerequisites: `rustup`, `git`, and elan/Lake for Lean 4.28. Then, from the
repository root:

```console
./scripts/build.sh
```

This single command builds the Rust workspace, **clones the pinned Verus
checkout automatically** into `.verus-checkout` (commit `c569645bd37b0`),
downloads the matching Z3, applies the 20-line VIR-export patch
([verus-patches/](../verus-patches/README.md)), builds Verus with its own
pinned toolchain, builds the direct SST adapter, and compiles the Lean
libraries. The first run is slow (Verus + Mathlib + Veil); everything after
is incremental. If you already have a Verus checkout you want to reuse, set
`VERUS_CHECKOUT=/path/to/verus` once and the scripts will link it instead of
cloning.

## 1. Verify a Rust function end to end

Look at [examples/m1-pipeline/simple.rs](../examples/m1-pipeline/simple.rs):

```rust
fn increment(x: u32) -> (y: u32)
    requires x < 100,
    ensures  y == x + 1,
{
    let y = x + 1;
    assert(y > 0);
    y
}
```

Every example is driven by its own script:

```console
./examples/m1-pipeline/run.sh
```

Five things happen: the Verus front end elaborates the file and exports its
finalized VIR crate; Vermilion reruns Verus's own middle end in process to
obtain real `FunctionSst` values and serializes them as a small **textual
IR** ([docs/ir.md](ir.md) — the entire Rust/Lean contract); the Lean
generator `vrml_gen` parses that IR and emits readable Lean theorems into
`generated/` (machine output — recreated on every run, safe to delete);
`vrml_check` has Lean judge every obligation; and `vrml_sync` maintains the
user-editable `proofs/` twin (next sections). To run everything at once (all
examples plus the Rust test suite), use `./scripts/run_suite.sh` — it prints
numbered phase banners, and the differential phase shows a live progress bar
with the current case and pipeline stage. Cold runs re-measure everything;
unchanged cases replay instantly from the verdict cache.

## 2. Read the generated obligations

By default Vermilion emits **one Lean file per verified function**: `simple.rs`
yields `generated/simple/increment.lean` (plus one file per further
function), and — for files that define spec fns or datatypes — a shared
`generated/simple/Specs.lean` holding those definitions exactly once,
imported (`import generated.simple.Specs`) by every unit file whose
obligations reference them. Files stay small, and the checker judges the
units with parallel Lean processes.

Open `examples/m1-pipeline/generated/simple/increment.lean` (it exists after
step 1). For the `assert(y > 0)` you will find:

```lean
@[vrml_obligation] theorem assert_1
    (x : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 x)
    (requires_1 : x < 100)
    (assert_0 : Vermilion.inUnsignedRange 32 (x + 1)) :
    (x + 1) > 0 := by
  vrml
```

Three things to notice:

- The statement is **plain Lean**, one assumption per line: machine integers
  are mathematical `Int`s plus named range hypotheses; `y` was inlined to
  `x + 1` by the SSA substitution; earlier facts (the overflow check
  `assert_0`, the preconditions) are named hypotheses.
- The doc comment above it records the **Rust span**, the construct, the
  `AssertId`, and a **statement hash** — the proof-staleness key.
- `vrml` is the default automation ladder (`grind`/`omega`/`simp` variants/
  `nlinarith`, with reconstructed `smt` as the final fallback; each
  deterministic rung runs under its own heartbeat budget, so one diverging
  tactic cannot starve the rest). There is no trusted escape hatch: whatever
  tactic runs, the Lean kernel checks the result.

The colocated manifest `generated/simple.json` records the same metadata
machine-readably, plus per-function incremental fingerprints, which file
each obligation lives in, and the **emission mode** — so every tool (and
you) can tell how a directory was generated.

Prefer the classic single-module layout? Every run script takes
`--per-file`:

```console
./examples/m1-pipeline/run.sh --per-file    # generated/simple.lean, one module
./examples/m1-pipeline/run.sh --per-function # back to one file per function
```

The mode is **sticky**: an unflagged rerun keeps whatever the manifest
records, and switching emits the new layout, migrates your proofs (next
section), and cleans up the other layout's files. Obligations, statement
hashes, diagnostics, and verdicts are identical in both modes —
`scripts/test_emission_modes.sh` asserts exactly that over every example
and case study.

## 3. Your proofs: the `proofs/` twin

Next to `generated/` every run maintains the **user-editable twin** of each
generated module, reconciled by `vrml_sync`. In the default per-function
layout that is one twin per unit — `proofs/simple/increment.lean` twins
`generated/simple/increment.lean` — plus `proofs/simple/Specs.lean`
mirroring the shared definitions (the unit twins' `import` line is
rewritten to `simple.Specs`, the example lib's own module namespace, so
Lake builds the twins as ordinary library modules and the editor resolves
them); with `--per-file` it is the single `proofs/<name>.lean`. The
rules are the same either way:

- when automation proves everything and you edited nothing, the twin is
  **byte-identical** to the generated module;
- where automation fails, the twin's proof body is **`sorry`**, with a
  warning telling you to prove it manually;
- proofs you write in the twin **survive regeneration** for as long as their
  obligation's statement hash is unchanged (the `-- vrml:begin <name> <hash>`
  markers delimit each block);
- if the Rust code changes an obligation, your old proof is stale: it is
  replaced by a fresh attempt and you get a warning;
- **helper lemmas live in user-owned sections**: anything you write between
  a `-- vrml:user:begin` line and a `-- vrml:user:end` line is preserved
  VERBATIM across every regeneration, re-emitted after the generated header
  and before the first obligation block. In per-function mode, put helpers
  shared by several functions at the end of `proofs/<name>/Specs.lean` —
  every unit twin imports it, and its user sections survive regeneration
  the same way. This is where the interactive-proofs workflow keeps its
  extracted lemmas — see `case-studies/merge-sort/proofs/` for a worked
  example (sortedness helpers + multiset-step lemmas feeding nine
  interactive proofs). Text outside blocks and outside user sections is
  machine territory and is rewritten on every run;
- **switching emission modes never loses a proof**: blocks are keyed by
  statement hash, so `vrml_sync` migrates your hand-written proofs from a
  per-file twin into the per-function unit twins (and back), moves shared
  helper sections into the Specs twin, and warns about the leftover legacy
  file for you to delete.

Try it. Run `./examples/m1-widening/run.sh` once, open
`examples/m1-widening/proofs/widening/flags.lean` (the twin of the `flags`
function's unit module), and replace the `vrml` body of
`widening.flags.assert_0` with an explicit proof:

```lean
@[vrml_obligation] theorem assert_0
    (p : Prop)
    (q : Prop) :
    (p ∧ q) → p := by
  intro both
  exact both.left
```

(keep the signature — it is the obligation — and replace only the proof
body after `:= by`).

Rerun the example: `vrml_sync` reports the twin `unchanged` (your proof
survived), the twin is kernel-checked, and the summary lists every goal you
discharged interactively:

```text
✓ all 25 obligations verified — 24 automatic, 1 discharged interactively in your proofs twin: 🎉
  • `looping.sum_below.invariant_preserve_0_3` — examples/m2-loops/proofs/looping/sum_below.lean:433
```

The VS Code infoview elaborates the twin live as you edit. There is no trusted escape hatch anywhere in this flow —
`sorry` is a loud, warned-about hole, and everything else is checked by the
Lean kernel. (How program and user proofs should co-evolve beyond hash-keyed
reconciliation is an open design question tracked in the execution plan.)

### Interactive typeclass evidence

Some generated Lean terms need a class dictionary before their theorem can
even elaborate. The important example is a Rust `bool`: Vermilion represents
it as `p : Prop`, but `Vermilion.iteP p a b` needs `Decidable p`. Rust carries
that decision procedure automatically; Lean asks us to state where it came
from. This is demand-driven, not universal: a `bool` or `if` generates no
evidence unless an `iteP` with a non-constructively-decidable guard actually
survives in a generated VC hypothesis or goal. Constants, integer comparisons,
constructive Boolean combinations, and generated variant predicates need no
interactive dictionary. (A spec-function *definition* whose body contains
such a guard — e.g. a conditional on another Prop-valued spec fn — precedes
the evidence block, so it is instead emitted under `open Classical in` and
marked `noncomputable`; nothing goes classical silently.)

Vermilion renders this boundary as another marker-delimited twin block, before
the logical VCs:

```lean
@[vrml_evidence] noncomputable local instance vrml_evidence_decidable_prop
    (p : Prop) : Decidable p := by
  sorry
```

The diagnostic says **required Lean typeclass evidence is unresolved** and
links directly to this body. Fill it like an ordinary interactive obligation:

```lean
  exact Classical.propDecidable p
```

That choice is explicit, local to the generated module, and kernel checked.
Vermilion may use the generated placeholder to see whether later logical VCs
would pass *if* the dictionary existed, but the file is never reported as
verified while the evidence block contains `sorry`. Once filled, the same
hash/staleness rules preserve the instance across regeneration, and the
current-twin fast path checks the instance and all consuming theorems in one
Lean elaboration. See the
[`encode_bool` Rust driver](../case-studies/percolator/encode_bool_decidable.rs)
and its [persistent Lean twin](../case-studies/percolator/proofs/encode_bool_decidable.lean)
for the smallest complete example.

**One Lean elaboration when the twin is current.** The twin is a *superset* of
the generated module — its automatic blocks are byte-identical, its
interactive blocks are your proofs — so kernel-checking the twin already
proves everything the generated-module check would. When a `--lib`
`--manual-proofs` run finds a complete, up-to-date twin (every obligation's
statement hash matches and nothing is `sorry`), Vermilion **skips the
redundant generated-module check** and lets the twin kernel-check be the sole
arbiter: one elaboration instead of two, which is most of the wall-clock on a
proof-carrying case study. Change an obligation, leave a `sorry`, or break a
twin proof and the full check-then-sync flow returns automatically, so you
still get the graceful per-obligation `sorry` placeholders and span-mapped
diagnostics of the sections below.

## 4. Break the program, get a Rust-side error from Lean

[examples/m1-diagnostics/broken.rs](../examples/m1-diagnostics/broken.rs)
asserts `y < 100` after `y = x + 1` under `x < 100` — false for `x == 99`.

```console
./examples/m1-diagnostics/run.sh
```

The Verus front end elaborates the file without judging it, Vermilion
generates the obligations, Lean fails on exactly one theorem, and
`vrml_check` maps the failure back through the manifest:

```text
error[vermilion]: assertion failed
  --> examples/m1-diagnostics/broken.rs:16:12
   = note: Lean rejected obligation `broken.bump.assert_1` (statement hash 2c40f1e0...)
```

with a machine-readable rustc-style JSON diagnostic on stdout. The
`error[vermilion]` prefix and the "Lean rejected obligation" note tell you
this verdict came from the Lean backend, not from Verus. Try the same
experiment on the healthy example: change `ensures y == x + 1` to
`y == x + 2` in `simple.rs`, rerun `./examples/m1-pipeline/run.sh`, and the
postcondition failure lands on that exact line.

Every example script also takes `--clean-env` to rerun from a clean slate —
it removes `generated/` and the example's cached `.vermilion` artifacts,
**never** your `proofs/` twin:

```console
./examples/m1-pipeline/run.sh --clean-env
```

## 5. Edit and regenerate

After changing a `.rs` file, rerun its example script. The manifest
fingerprints tell you what an edit really did:

- whitespace-only edits re-emit **nothing** (`unchanged`, mtimes preserved);
- moving code updates spans and location fingerprints but keeps every
  statement hash — existing proofs stay valid;
- changing a function body invalidates only that function's obligations;
- changing a function's **contract** also invalidates its callers, because
  callee contracts are substituted into caller obligations.

`./scripts/test_incrementality.sh` demonstrates all four cases with real
front-end runs, and `python3 scripts/run_differential.py` measures verdict
parity between Verus's own SMT verification and the Lean backend on the
corpus in [tests/differential/](../tests/differential/) — straight-line,
branches, loops (including break/continue and decreases), recursion,
collections, datatypes, traits/closures, vectors, specialty queries, and
spec functions (currently 139/139 verdicts, 67/67 failure spans). Cases run
on a worker pool with a live progress bar; unchanged
cases replay from the verdict cache without touching Verus or Lean.

## 6. Watch mode

For an interactive edit loop, keep one source under watch:

```console
./scripts/vrml_watch.sh examples/m1-pipeline simple.rs
```

Every save reruns the front half (Verus front end → IR → `vrml_gen`) and
has Lean re-judge **only the obligations whose statement hash changed** —
whitespace and moves are recognized as "no semantic changes" in well under a
second, and a one-function edit re-verifies just that function's changed
obligations. Diagnostics land on Rust spans exactly as in step 4.

## 6½. Editor integration

Install the bundled VS Code extension once:

```console
./scripts/install_vscode_extension.sh   # then reload VS Code
```

**Opening a Rust file that contains a `verus!` macro verifies it
automatically**, as does **saving any Rust file** (silently, in the
background — no terminal; see the *Vermilion* output channel). **⌘⇧R**
(macOS) / **Ctrl+Shift+R** (Linux/Windows) or the status-bar click do the
same on demand. You do **not** need to author a `run.sh`: a file with an
example `run.sh` next to it is driven through that (so its `--lib` twin
kernel-check still runs), and every other Rust file in the workspace is
driven directly through `scripts/run_example.sh` — its `generated/` and
`proofs/` twins land next to it just the same. Files that do not type-check
fail in the pipeline's own front end, with the rustc errors shown at their
spans. When a run finishes:

- while the file re-verifies, the affected functions show a **trembling
  green zigzag** in the gutter, Dafny style;
- functions whose obligations all passed get a **circled green gutter
  checkmark** next to the line numbers; editing inside a function removes
  its checkmark until the next run;
- failed obligations appear as **red squiggles at their Rust spans**; each
  Problems-panel entry puts the caret **on the `sorry` awaiting your
  proof** in the `proofs/` twin (the command *Vermilion: Open Proof
  Obligation in Twin* does the same from the cursor);
- goals you proved by hand show as informational *discharged interactively*
  notes;
- an **outside the supported fragment** result is highlighted too. A local
  refusal uses the adapter's exact Rust span; if the rejected declaration is
  in a dependency, the matching `use` target is underlined and links to the
  dependency's exact span. Every function gets a red ✗ in that case because
  lowering stopped before per-function obligations were emitted;
- one context-aware shortcut, **`⌘⇧J` / `Ctrl+Shift+J`** (*Vermilion: Go
  to Lean*, also in the editor right-click menu; scoped to Rust files so
  it shadows no editor default), jumps to the Lean side and opens it in
  the same editor group. On any **`assert`**, **`ensures`**, or **invariant**
  clause it lands at the start of that VC's Lean proof (its tactic body) —
  matched by the obligation's Rust span, so each construct routes to its
  own proof, passed or not. When a
  construct produces several VCs (a loop invariant's entry and preserve
  checks, say), a picker lists them by theorem name, status (auto,
  interactive, or unproven `sorry`), and goal. The same key works in
  reverse: in a generated or `proofs/` twin `.lean` file, `⌘⇧J` inside an
  obligation's block (*Vermilion: Go to Rust*) returns to that VC's exact
  Rust position. **Anywhere else inside a function** (`proof fn` and
  `spec fn` included) it lands on the function's Lean counterpart — its
  first theorem in the `proofs/` twin (or `generated/` when no twin exists
  yet), or, for a `spec fn`, its emitted Lean definition;
- the status bar reports the **active file**: a spinner while verifying,
  then `✓ <file> fully verified` or `✗ N failed in <file>`.

Results appear only after a verification has run in this session, and only
for files open in the editor — one file at a time for now.

**Opening the generated `.lean` files is fast** thanks to a caching `lake`
shim (`editor/bin/lake`, wired in via `.vscode/settings.json`). Without it,
every Lean-server start and every `.lean` file open pays Lake's full
workspace re-materialization — one `git` subprocess per dependency checkout,
~17 s on machines where endpoint security taxes each process spawn. The shim
answers `lake serve` and `lake setup-file` from caches under
`.vermilion/lake-shim/` (invalidated when `lakefile.lean`,
`lake-manifest.json`, or `lean-toolchain` change, or when a cached `.olean`
disappears) and delegates everything else to the real Lake. Every registered
`proofs/` source directory discovers its first-level stems as exact Lake
module prefixes; the shim snapshots those roots and refreshes Lake's compiled
configuration whenever the set changes. Its setup cache also treats a sibling
`Specs.lean` and the file worker's stdin module header as dependencies. Only
the first open after a dependency or proof-root change pays the full scan, and
adding a stem to an existing proof library needs no Lakefile edit. A wholly
new proof source tree still needs a named library declaration to establish
module ownership and the runner target.

## 7. The supported fragment: from branches to bit vectors

The examples exercise everything the fragment supports today (M2–M4):

```console
./examples/m2-branches/run.sh      # if/else joins, early returns, spec ite
./examples/m2-loops/run.sh         # while + invariants; manual twin proof
./examples/m2-break/run.sh         # break/continue, loop ensures
./examples/m2-recursion/run.sh     # decreases measures at recursive calls
./examples/m2-collections/run.sh   # vstd Seq/Set/Map/Multiset in specs
./examples/m2-seqadd/run.sh        # Seq::add — the spec + on sequences
./examples/m2-specfns/run.sh       # user spec fns as real Lean defs
./examples/m3-datatypes/run.sh     # structs/enums as real Lean inductives
./examples/m3-mutref/run.sh        # &mut params: old/final prophecy contracts
./examples/m3-vec-mut/run.sh       # Vec mutation: new/push/len contracts
./examples/m3-traits/run.sh        # trait contracts, static dispatch
./examples/m3-closures/run.sh      # spec closures, higher-order spec fns
./examples/m3-exec-closures/run.sh # exec closures with contracts
./examples/m3-const-generics/run.sh # const N: usize parameters
./examples/m3-broadcast/run.sh     # broadcast lemmas at their use sites
./examples/m3-trait-bounds/run.sh  # generic fns under trait bounds
./examples/m3-user-view/run.sh     # user View impls (s@ on your types)
./examples/m3-mutual-rec/run.sh    # mutually recursive spec fns
./examples/m3-namespaces/run.sh    # same-named fns in different modules
./examples/m3-arrays/run.sh        # fixed-size arrays [T; N]
./examples/m3-mut-fields/run.sh    # &mut self field writes
./examples/m3-quantifiers/run.sh   # forall/exists, interactive twin proofs
./examples/m3-generics/run.sh      # type parameters (generics)
./examples/m3-vec/run.sh           # exec Vec<T> via its Seq view
./examples/m3-slices/run.sh        # slices &[T]
./examples/m4-bitvec/run.sh        # bit ops via the Bits library (M4)
./examples/m4-nonlinear/run.sh     # nonlinear arithmetic rung (M4)
./examples/m4-beyond-verus/run.sh  # true + automatic here; stock Verus rejects
./examples/m4-compute/run.sh       # by (compute) ground evaluation (M4)
./case-studies/imo-1988-6/run.sh   # isolated by (nonlinear_arith) queries
./case-studies/power-of-2/run.sh   # shifts, recursion, exact machine clips
```

The last two are unchanged pinned-Verus programs rather than feature demos.
Nonlinear assertion blocks are checked in an isolated context containing only
type facts and their explicit local requirements/body; they cannot use the
outer assumption of the very conclusion they are proving. Machine arithmetic
also retains VIR's exact clipping (`nat` saturation, width-modular unsigned
values, two's-complement signed values), including explicit wrapping
builtins; `nat` and signed clips render as the single-occurrence prelude
functions `Vermilion.natClip`/`Vermilion.sclip` (their `@[simp]` defining
equations restore the conditional shape for provers).

A program using a construct the fragment does not cover yet is refused
**fail-closed at its exact span** — the adapter reports
`error[vermilion]: outside the supported fragment: …` with a rustc-style
`--> file:line:col` pointer (the editor paints it as a squiggle on the
offending fragment). When that span belongs to an imported declaration, the
editor instead underlines the active file's matching `use` target and keeps
the exact dependency span as a clickable related location. Either way, the
result is never a silent skip or a half-translation.

vstd spec fns are special: beyond a small structural core they resolve
**by name** against the shipped vstd mirror
(`lean/Vermilion/Vstd/`, one Lean module per vstd module). If a program
uses a vstd function without a mirror yet, the refusal names it and
extending the fragment is a Lean-only change — add the model definition
and its proved lemmas to `Vermilion/Vstd/<Module>.lean`, register both
in `Vermilion/Vstd/Registry.lean`, and rebuild; no Rust involved. A
compile-time probe fails the build if a registry entry points at a
nonexistent Lean name.

A Verus `broadcast use G` of a vstd broadcast group (e.g.
`group_seq_properties`) is consumed as **hints**: the group resolves
through the registry to its proved mirror lemmas, which are added to that
obligation's automation simp set. Hints only ever help the ladder close a
goal that is stated in full regardless — an unmapped group contributes
nothing — so they are never a trust surface. (A `broadcast use` of a
single lemma is stronger still: its fact is assumed directly.)
`docs/reports/target-projects.md` is the staged plan for growing the
fragment; a future case study blocked on a scheduled feature runs
`--expect-unsupported`, succeeding
*because* the refusal fires and failing loudly once the fragment catches
up.

Obligations inside a branch arm carry the arm's path condition
(`branch_k`); loop bodies are verified for an arbitrary iteration under the
invariants only (Verus's loop isolation — facts from before the loop must be
restated as invariants to be visible inside); each recursive call carries a
termination obligation from its `decreases` measure. A `break` re-checks the
at-exit invariants (`invariant` + loop `ensures`) at its site, a `continue`
re-checks the at-entry invariants plus the termination measure, and a loop
that can break contributes no negated condition to what follows it. Your
`spec fn`s become real Lean definitions in the shared `Specs` module
(imported by each function's unit file; emitted at the top of the single
module in `--per-file` mode) and stay readable applications inside
obligations — never inlined, never
axiomatized, never fueled. Your structs and enums become real Lean
`inductive`s the same way (M3): constructors, field accessors, and
`is`-variant tests are ordinary definitions, `match` verifies through its
desugared branch tree, and injectivity/exhaustiveness are kernel facts.
Functions taking `&mut` parameters verify against `*old(x)`/`*final(x)`
contracts, and their callers see the written-back value through those
contracts (Verus's prophecy encoding, resolved at lowering time — see
`examples/m3-mutref`). That is also how `Vec` mutation works:
`v.push(x)` and exec `v.len()` are ordinary contract calls against
vstd's specs, with extensional `Seq` equality landing as plain Lean `=`
(`examples/m3-vec-mut`). Traits verify statically: impl spec fns become
ordinary Lean definitions, and a trait-method call proves the inherited
`requires` at the call site and assumes the inherited `ensures`,
instantiated at the concrete impl (`examples/m3-traits`). Spec closures
are genuine Lean functions — `spec_fn(int) -> int` is just `Int → Int`
(`examples/m3-closures`). `assert … by { … }` proof blocks are
check-and-discard scopes: what you assume or derive inside dies with
the block, exactly as in Verus. Exec closures carry
`requires`/`ensures` like functions: the body is checked in its own
scope and each call proves the precondition
(`examples/m3-exec-closures`).
`forall`/`exists` become genuine `∀`/`∃` with range guards folded in;
Verus's trigger annotations are preserved in each obligation's doc
comment for future e-matching tooling but never constrain Lean — and
when a quantified goal is beyond the automation ladder (existential
witnesses, index case-splits), you prove it interactively in the twin,
as `examples/m3-quantifiers` demonstrates. See each example's README for the shapes to
expect in `generated/`.

## Where to go next

- [DESIGN.md](../DESIGN.md) — the architecture, what is reused from Verus,
  the trusted computing base, and the road to feature parity.
- [docs/pipeline/README.md](pipeline/README.md) — how source becomes theorem,
  stage by stage.
- [docs/ir.md](ir.md) — the textual IR crossing the Rust/Lean boundary.
- [examples/m1-widening/README.md](../examples/m1-widening/README.md) — the
  straight-line fragment: bools, mathematical integers, casts, calls, returns.
- [plans/execution-plan.md](../plans/execution-plan.md) — what remains in M2
  (vstd collections, the Veil manager, caching) and beyond.
