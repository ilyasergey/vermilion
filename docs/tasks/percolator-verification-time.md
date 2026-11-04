# R&D task: verification time of the `percolator` case study

## Context

Vermilion is a Lean 4 backend for the [Verus](https://github.com/verus-lang/verus)
verifier. Verus elaborates the annotated Rust, Vermilion lowers the resulting
verification conditions to Lean theorem statements, and Lean is the only
verifier: an automation tactic (`vrml`) attempts each theorem, and whatever it
cannot close is proved interactively in a user-owned twin file under
`proofs/`. Every verdict is a kernel-checked Lean theorem.

Start with [README.md](../../README.md), the [tutorial](../TUTORIAL.md), and the
[development guide](../development.md). The pipeline that every example and
case study runs is [scripts/run_example.sh](../../scripts/run_example.sh); the
Lean checker it calls is `vrml_check`
([crates/vermilion_backend/src/bin/vrml_check.rs](../../crates/vermilion_backend/src/bin/vrml_check.rs)).

## The case study

[case-studies/percolator](../../case-studies/percolator/) verifies verbatim
production slices of a `no_std` risk engine: 10 Rust files, 31 upstream
functions, 118 obligations, all verified. The proof twins under
`case-studies/percolator/proofs/` are complete, so a run only has to confirm
that nothing has drifted and kernel-check the twins. The functions are simple
(enum encode/decode pairs, bit-mask reads, saturating arithmetic, a U256
representation); most obligations are closed by automation in one step.

It is the slowest fully verified case study in the repository by a wide
margin, and the work it does does not justify the time.

## Measurements

All numbers below were taken on 2026-11-04 at commit `8c3fa74`
(Lean `v4.33.0`), on an Apple M5 Max (18 cores, 128 GB), with the project built
by `./scripts/build.sh`. Each case study was run alone from a clean cache
(`run.sh --clean-env`).

| Case study | Rust LOC | Obligations | Wall time |
|---|---:|---:|---:|
| vec-uninterp | 20 | 1 | 4.5 s |
| vec-pop-uninterp | 21 | 3 | 4.5 s |
| binary-search | 37 | 15 | 5.2 s |
| imo-1988-6 | 127 | 67 | 5.9 s |
| vec-reverse | 31 | 20 | 8.1 s |
| power-of-2 | 212 | 57 | 8.1 s |
| primes | 98 | 24 | 9.5 s |
| merge-sort (specs-only) | 101 | 40 | 10.0 s |
| merge-sort (verbatim) | 184 | 60 | 10.4 s |
| **percolator** | **956** | **118** | **61.7 s** |

The same study, measured in more detail:

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

## The task

Find out where the time in `./case-studies/percolator/run.sh` actually goes,
cold and warm, and make the run substantially faster without changing what is
verified. We have deliberately not written down what we think the cause is, or
what to do about it. Part of the task is to establish the cause with evidence,
and part is to decide what to change.

What we expect to receive:

1. **A diagnosis**, with measurements: which costs are fixed per process, per
   file, or per obligation; which scale with the size of the Lean environment,
   the number of units, or the number of cores; and what the system-time share
   is spent on. Reproducible commands over claims.
2. **A change** to the repository, on a branch, with before/after numbers for
   `percolator` taken by the same method, plus the same numbers for two of the
   small case studies above so we can see the effect on the common case.
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
  edited to make the run faster.

## Reproducing the measurements

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
