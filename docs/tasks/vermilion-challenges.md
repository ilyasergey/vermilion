# Vermilion challenges

Two open problems in Vermilion, written up as tasks for candidates. The
first is the main task; the second is a stretch goal to take as far as time
allows. Both are real: nothing below has been solved, and we have
deliberately not written down what we think the answers are.

## What Vermilion is

Vermilion is a Lean 4 backend for the [Verus](https://github.com/verus-lang/verus)
verifier. Verus elaborates annotated Rust and places the verification
conditions; Vermilion lowers them to a small textual IR, generates one Lean
theorem per condition, and lets Lean decide. An automation tactic (`vrml`)
attempts every theorem; whatever it cannot close is proved interactively in a
user-owned twin file under `proofs/` that survives re-runs. Every verdict is a
theorem checked by the Lean kernel, and the Lean side is the only verifier:
Verus runs with its own SMT verification disabled.

Start with [README.md](../../README.md), the [tutorial](../TUTORIAL.md), and
the [development guide](../development.md). The pipeline every example and
case study runs is [scripts/run_example.sh](../../scripts/run_example.sh); the
Lean checker it calls is `vrml_check`
([crates/vermilion_backend/src/bin/vrml_check.rs](../../crates/vermilion_backend/src/bin/vrml_check.rs)).
The case studies, each with its own `run.sh`, are registered in
[case-studies/README.md](../../case-studies/README.md).

## Challenge 1: verification time

### The problem

Vermilion is slow relative to the work it does. Verus with Z3 checks a file in
well under a second; the same file through Vermilion takes several seconds
even when every obligation is trivial and every proof is already written.
The cost grows with the number of verified functions rather than with their
difficulty, and it is paid again on every run, including runs where nothing
has changed.

Every number below was taken on 2026-11-04 at commit `8c3fa74`
(Lean `v4.33.0`), on an Apple M5 Max (18 cores, 128 GB), with the project
built by `./scripts/build.sh`. Each case study was run alone from a clean
cache (`run.sh --clean-env`).

| Case study | Rust LOC | Obligations | Wall time |
|---|---:|---:|---:|
| vec-uninterp | 20 | 1 | 4.5 s |
| vec-pop-uninterp | 21 | 3 | 4.5 s |
| binary-search | 37 | 15 | 5.2 s |
| sorting | 46 | 16 | 5.6 s |
| imo-1988-6 | 127 | 67 | 5.9 s |
| vec-reverse | 31 | 20 | 8.1 s |
| power-of-2 | 212 | 57 | 8.1 s |
| primes | 98 | 24 | 9.5 s |
| merge-sort (specs-only) | 101 | 40 | 10.0 s |
| merge-sort (verbatim) | 184 | 60 | 10.4 s |
| **percolator** | **956** | **118** | **61.7 s** |

Two things stand out. The floor is high: a study with one obligation takes
4.5 s. And the worst case is far from the floor: `percolator`, which verifies
verbatim production slices of a `no_std` risk engine (10 Rust files, 31
upstream functions, enum codecs, bit-mask reads, saturating arithmetic, a
U256 representation; most obligations closed by automation in one step),
takes a minute. It is the study we use as the measured instance below, but
the challenge is the pipeline, not that study.

### Measurements on the worst case

| Scenario | Wall | User CPU | System CPU |
|---|---:|---:|---:|
| `./case-studies/percolator/run.sh --clean-env` | 60.3 s | 58.8 s | 170.1 s |
| `./case-studies/percolator/run.sh` (warm, nothing changed) | 31.2 s | 46.4 s | 144.5 s |
| `./case-studies/percolator/verify_verus.sh` (Verus + Z3, 12 files) | 3.5 s | 2.2 s | 0.5 s |

Note the ratio of system time to user time.

Per source file, from a warm run. "Units" are the per-function twin modules
`vrml_check` kernel-checks; it runs one `lean` process per unit, concurrently,
bounded by the machine's core count, and prints each unit's elapsed time to
`.vermilion/<stem>-twin.log`. "Unit CPU" sums those per-unit times.

| File | Rust LOC | Units | Obligations | Slowest unit | Unit CPU (sum) |
|---|---:|---:|---:|---:|---:|
| encode_bool_decidable | 25 | 2 | 3 | 1.7 s | 3.4 s |
| withdrawal_question_mark | 53 | 2 | 6 | 2.5 s | 4.3 s |
| bounded_arithmetic | 49 | 2 | 4 | 1.9 s | 3.7 s |
| active_bitmap_set | 49 | 3 | 11 | 1.9 s | 5.5 s |
| policy_gates | 108 | 8 | 8 | 3.4 s | 26.8 s |
| result_gates | 51 | 3 | 4 | 1.8 s | 5.3 s |
| enum_codecs | 303 | 19 | 19 | 6.4 s | 115.8 s |
| active_bitmap_get | 49 | 3 | 19 | 1.8 s | 5.4 s |
| wide_math_saturating_mul | 26 | 1 | 4 | 1.3 s | 1.3 s |
| wide_math_u256_basics | 137 | 10 | 40 | 3.8 s | 37.5 s |

Phase timing of one file (`enum_codecs.rs`, run alone from a clean cache,
10.3 s total):

| Phase | Time |
|---|---:|
| Verus front end (`--no-verify`) | 0.35 s |
| Lowering to the textual IR | 0.06 s |
| "Preparing the Lean environment" (`lake env`, `lake build` no-op) | 3.1 s |
| Generating obligations (`vrml_gen`) and twin probe | 0.15 s |
| Kernel-checking the 19 unit twins | 5.8 s |

Three further data points, measured with the same `lean` command line and
`LEAN_PATH` that `vrml_check` uses:

- A file containing only the two imports every percolator unit has
  (`Vermilion.Obligations` and the shared `Specs` module) plus a trivial
  theorem takes 1.2 s (0.55 s user, 0.63 s system). Dropping the `Specs`
  import changes nothing.
- The slowest `enum_codecs` unit (38 lines, one obligation, closed by `vrml`
  in one step) takes 1.19 s when run alone. Inside the case-study run it took
  6.4 s.
- Nineteen copies of the import-only file launched at once finish in 4.7 s
  wall time.

### The task

Find out where Vermilion's time actually goes, cold and warm, and make the
pipeline substantially faster without changing what is verified. Part of the
task is to establish the causes with evidence, and part is to decide what to
change.

What we expect to receive:

1. **A diagnosis**, with measurements: which costs are fixed per process, per
   file, or per obligation; which scale with the size of the Lean environment,
   the number of units, or the number of cores; and what the system-time share
   is spent on. Reproducible commands over claims.
2. **A change** to the repository, on a branch, with before/after numbers for
   `percolator` and for two of the small case studies taken by the same
   method, so we can see the effect on both the worst case and the common
   case.
3. **A short write-up** (one or two pages) of what you found, what you
   changed, what you considered and rejected, and what cost remains and why.

Constraints that must hold afterwards:

- Lean remains the only verifier and every obligation remains a theorem
  checked by the Lean kernel. Nothing may be skipped on the basis of a cached
  verdict that the kernel has not actually re-established for the current
  statement.
- Verdicts, statement hashes, and diagnostics are unchanged; the per-function
  and per-file emission modes must still agree (`scripts/test_emission_modes.sh`).
- `./scripts/run_suite.sh --smoke` and every `case-studies/*/run.sh` that
  passes today still pass.
- No absolute paths in emitted artifacts or tool plumbing.
- The `proofs/` twins of the case studies are user-owned; they are not to be
  edited to make a run faster.

### Reproducing the measurements

```console
./scripts/build.sh
time ./case-studies/percolator/run.sh --clean-env     # cold
time ./case-studies/percolator/run.sh                 # warm
cat .vermilion/enum_codecs-twin.log                   # per-unit elapsed_ms
./case-studies/percolator/verify_verus.sh             # the Verus side, for reference
```

To time the pipeline phases of one file, trace the shared runner:

```console
PS4='+$(perl -MTime::HiRes=time -e "printf \"%.2f\", time") ' \
  bash -x scripts/run_example.sh case-studies/percolator enum_codecs.rs \
  --lib CasePercolator --manual-proofs --clean-env 2> trace.log
```

The `LEAN_PATH` the checker uses is cached in `.vermilion/lean-path` after any
run; the shared `Specs` oleans live under `.vermilion/olean/`.

## Challenge 2: the trusted computing base

### The problem

Vermilion's claim is that a green run means every obligation is a theorem
checked by the Lean kernel, and that what has to be trusted beyond the kernel
is small and written down. [docs/trust.md](../trust.md) and the "Trusted
computing base" section of [DESIGN.md](../../DESIGN.md) are the project's own
account of that base. Whether that account is complete, whether its sizing of
each component is right, and what should leave the base first are open
questions.

### The task

Three parts, in order; do as many as your time allows.

1. **Characterise the trusted computing base yourself.** Start from the
   question "what has to be correct for a green `run.sh` on a case study to
   mean that the Rust satisfies its contracts?" and answer it from the code
   and the artifacts of a run (the exported VIR, the textual IR, the generated
   Lean, the manifests, the checker's outputs), not from the documents. Then
   compare your answer with `docs/trust.md`: what it lists that you would not
   have, what you found that it does not list, and where you disagree with its
   sizing of a component. Point at evidence where you can: an obligation
   statement, a lowering rule, a runner branch.
2. **Propose how to decrease it.** Rank the candidate reductions by how much
   trust each removes against what it would cost, and say for each what the
   evidence of success would be: which test, which proof, which measurement.
   The question is what should leave the trusted base first, not what is
   easiest to remove.
3. **Optionally, take a step.** Pick one item from your ranking and
   implement it, or enough of it to show that the approach holds up, with
   evidence. Keep it on the same branch as a separate commit from the
   performance work, under the same constraints as Challenge 1.

We will read this part for the quality of the argument rather than its
length. A precise two-page characterisation with a ranking we can argue
with is worth more than a long survey.
