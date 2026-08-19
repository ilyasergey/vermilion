# Chapter 5: The Differential Testing Harness

Vermilion's correctness argument at every stage is empirical first: **run what Verus runs, compare
verdicts**. This chapter designs that harness. It exists from milestone M1 and is the project's
regression net, progress meter, and semantics debugger.

## 5.1 The oracles we inherit for free

1. **Verus's integration suite** (`source/rust_verify_test/`): 152 files, ~4,117 tests. Each test
   embeds a self-contained Verus program as a string and asserts one of: verifies; fails with N
   assertion errors; fails with a specific VIR/Rust error message. Crucially, the harness drives
   the tool **through its CLI and inspects `--output-json` diagnostics only** — no internal APIs.
   Keeping Vermilion's CLI and JSON schema Verus-compatible makes all ~4,117 tests run unmodified.
2. **The example corpus** (`examples/`, 148 files): whole-file verify/no-verify outcomes,
   categorized by fragment (the base-camp gate set).
3. **vstd itself** (52k lines): the largest single body of Verus code; verifying it *is* a test.
4. **Corpus projects** (Tier A): each with its own build command and expected-green status.

## 5.2 Harness architecture

```
tests/differential/
  runner/          # Rust binary: schedules cases, invokes both tools, diffs JSON
  manifests/
    oracle-tests.toml    # per-test: fragment tags, expected verdict, waiver status
    examples.toml        # per-file: fragment, gate membership (M2/M3/...)
    projects.toml        # repo pin, build cmd, verify cmd, expected status
  waivers/         # every intentional divergence, with a written reason + link
  reports/         # dated JSON + markdown scoreboards (the performance/axiom ledgers)
```

Per test case the runner records, for **both** `verus` and `vermilion`:

- verdict (verified / failed / error / timeout), per-error spans and messages;
- wall-clock, and for Vermilion: per-obligation discharger attribution (which rung closed it,
  time per rung) — the data behind the automation reports;
- for Vermilion in reconstruction mode: axiom/sorry census of the produced proofs.

## 5.3 Comparison modes

| Mode | Question it answers | Cadence |
|---|---|---|
| **Verdict parity** | do both tools accept/reject the same programs? | every CI run |
| **Error parity** | on rejection, do error *spans* match (message text may differ)? | every CI run |
| **Performance ledger** | slowdown factor distribution per fragment/project | nightly, appended |
| **Trust-mode delta** | does reconstruction mode prove everything trust mode did? | nightly sample; weekly full |
| **Semantics probes** | convention corners (div-by-zero, clipping, `choose`): dedicated micro-tests where Verus and Lean conventions could diverge (spec-compat §6.2) | every CI run |
| **Churn watch** | Verus pin bump → rerun all; SST shape drift shows up as verdict diffs | on every pin bump |

**Waiver discipline:** a divergence is either (a) a Vermilion bug (fix), (b) annotation-level —
resolved by `verus2vermilion` translation (different annotations are *allowed*; exec code is
not — the runner asserts exec-code identity between the original and translated test), or
(c) a convention decision (documented in spec-compat §6.2 and pinned by a probe test), or
(d) a dropped-machinery disposition (the test exercises SMT-era scripting — profiler, trigger
diagnostics, solver flags — and gets a documented replacement behavior). Waivers require a reason
and are surfaced in every report — silent skips are prohibited.

**Terminal coverage goal (locked):** the **entire** ~4,117-test suite is covered — every test
passes directly, passes after deterministic translation, or carries a category-(d) disposition.
The scoreboard's headline number is exactly this coverage fraction, and M7 requires it to be
100%. The translator itself is harness-tested: determinism (`t(t(x)) = t(x)`, byte-stable),
exec-code identity, and a machine-readable report of every dropped annotation per file.

## 5.4 Fragment tagging

Every oracle test and example is tagged with the features it uses (mechanically: run Verus's
front end, walk the VIR, record feature flags — a one-day tool built on the same `vir` dependency).
Tags drive: gate membership per milestone, verdict-parity denominators ("95% of *fragment* tests",
not of everything), and prioritization (the most-blocking missing feature = the tag with most
red tests).

## 5.5 CI shape

- **Per-PR**: fragment-tagged oracle subset + examples for the current stage; trust mode; verdict
  + error parity. Budget ≤ 30 min.
- **Nightly**: full oracle suite, all examples, gate projects; both solvers (cvc5, Z3);
  reconstruction on a rotating 10% sample; ledgers appended; scoreboard published.
- **Weekly**: full reconstruction run; Verus-pin canary bump (build only, no merge) to see churn
  coming.

## 5.6 Beyond parity: Vermilion-only test classes

1. **Interactive-override tests**: goals designed to defeat automation, closed by committed
   `@[vermilion]` proof files — regression-testing the escape hatch and its statement-matching.
2. **Reconstruction soundness spot-checks**: proofs re-checked with `lean4checker`
   (external kernel check) on a sample — the "did lean-smt really produce kernel-valid proofs"
   backstop.
3. **Counterexample quality tests**: known-false assertions with expected model shapes rendered
   back as Rust-level values.
4. **Cross-validation probes (research-grade, later)**: for sequential functions in the Aeneas
   fragment, translate with Aeneas and check the Vermilion obligation against the purified
   function — an independent semantic oracle for the emitter
   ([`../02-verus-architecture/05-soundness-path.md`](../02-verus-architecture/05-soundness-path.md) §5.5a).

## 5.7 What "done" looks like for the harness itself

The harness is done as infrastructure when: a new contributor can run
`cargo run -p differential -- --gate M2` and get the current scoreboard locally in one command;
every gate in [`03-validation-milestones.md`](03-validation-milestones.md) is computed by it, not
by hand; and every number in a status report traces to a dated `reports/` artifact.
