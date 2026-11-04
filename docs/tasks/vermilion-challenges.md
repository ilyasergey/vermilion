# Vermilion Challenges

This document describes two open problems in Vermilion. The first is the
main task; the second is an optional stretch goal. We are interested in your
diagnosis and reasoning, and have deliberately left the choice of approach
open.

## What Vermilion Does

[Vermilion](../../README.md) is an experimental [Lean](https://lean-lang.org)
backend for [Verus](https://github.com/verus-lang/verus), a verifier for Rust.
Verus checks annotated Rust by generating verification conditions and handing
them to an SMT solver. Vermilion uses the Verus front end and generates Lean
theorem statements for the resulting proof obligations. Automation tries to
prove them; any remaining obligations can be proved interactively in proof
files that survive subsequent runs of the pipeline.

A successful run requires proofs checked by the Lean kernel. The aim is to
reduce and make explicit what must be trusted to connect those proofs to the
Rust program. Assessing that remaining trust is the subject of Challenge 2.

The [tutorial](../TUTORIAL.md) walks through the workflow in about twenty
minutes; the [development guide](../development.md#prerequisites) lists the
build prerequisites. The [case studies](../../case-studies/README.md) are
realistic programs we verify this way. There is also a
[VS Code extension](../../README.md#vs-code-extension): saving a Rust file
runs the pipeline, results appear on the relevant Rust lines, and one
shortcut jumps from an assertion to its Lean proof and back.

## Challenge 1: Vermilion Is Slow

In our measurements, Verus checks a typical case-study file in under a
second. Vermilion takes several seconds for the same file, even when the
obligations are simple and their proofs are already written. Much of that
cost recurs when nothing has changed. In the editor, this is the delay between
saving a file and seeing its verification results.

Your task is to explain where the time goes and make the pipeline
substantially faster without changing what is verified.

### Starting observations

The slowest case study in our measurements was
[percolator](../../case-studies/percolator/), a set of verbatim slices of a
production risk engine. Its main runner covers ten Rust files and 31 distinct
production functions, with a little over a hundred obligations.
The checked functions also include compiler-generated functions, such as
derived `clone` implementations. Most obligations close with a single
automation step.

Vermilion took about a minute with `--clean-env` and half a minute on an
unchanged rerun. System CPU time was roughly three times user CPU time. The
separate Verus comparison script took about three and a half seconds, though
it covers two additional slices that Vermilion does not yet support. At the
other end, a case study with one function and one obligation still took four
and a half seconds. Treat these figures as starting observations and establish
a baseline on your own machine.

Almost all of the measured time was on the Lean side: the Verus front end
and translation to Lean together took well under a second per file. The
checker verifies each function's proof file in a separate Lean process, with
many running concurrently. A Lean file that only imports Vermilion's prelude
took a little over a second on its own.

Within percolator, checking time grew with the number of function proof files:

- [enum_codecs.rs](../../case-studies/percolator/enum_codecs.rs): 19 proof
  files, comprising twelve encode/decode functions and seven derived `clone`
  implementations, with one obligation each. Checking took about six seconds
  of wall time; the sum of the per-file elapsed times was nearly two minutes.
- [wide_math_u256_basics.rs](../../case-studies/percolator/wide_math_u256_basics.rs):
  ten proof files, about four seconds of wall time and forty seconds of summed
  elapsed time.
- [policy_gates.rs](../../case-studies/percolator/policy_gates.rs): eight
  proof files, about three and a half seconds of wall time and half a minute
  of summed elapsed time.

The elapsed times overlap because the processes run concurrently; their sum
is not a measure of CPU time. Files with one or two function proof files each
finished in under two seconds. The slowest proof file in `enum_codecs.rs`
took five times longer during the concurrent run than when checked alone,
despite containing only one obligation closed by a single automation step.

### Expected result

1. **A diagnosis backed by measurements.** Identify the costs paid per
   process, source file, or obligation, on both clean and unchanged runs.
   Investigate how they depend on the size of the Lean environment, the number
   of functions, and the number of available cores.
2. **An implementation with before-and-after results.** Make your changes on
   a branch and measure their effect on percolator and at least two small
   case studies. Record the revisions, commands, hardware, and number of runs
   so that someone else can reproduce the comparison.
3. **A short write-up.** Explain what you found, what you changed, which
   alternatives you considered and rejected, and what costs remain.

### Constraints

- Lean remains the only verifier, and every obligation remains a
  kernel-checked theorem (e.g., you should not replace Lean checking by uncertified call to an SMT solver). No obligation may be skipped, the validity of every verificaiton condition must be re-established for the current
  statement.
- Preserve existing verification behavior in both supported output layouts:
  per-function and per-source-file. Run the
  [emission-mode check](../../scripts/test_emission_modes.sh) to check that
  the layouts agree on obligations, verification outcomes, and per-obligation
  diagnostic status.
- The [smoke suite](../development.md#test-scopes) and every case study that
  passes on the starting revision must still pass.
- Do not edit the case studies' specifications or code to make them faster.

### How to measure

Use each case study's `run.sh`. For this task, a **clean run** uses
`--clean-env`, which removes generated output and selected pipeline caches.
It retains the built toolchain and dependencies and does not clear operating
system caches. A **warm run** repeats the command without `--clean-env` and
without changing any inputs. Keep build time separate from verification time.

The Lean checker writes per-function elapsed times to
`.vermilion/<source-stem>-twin.log`. Percolator also has a `verify_verus.sh`
for comparison; account for its additional slices when comparing totals.
Run these commands from the repository root:

```console
./scripts/build.sh
time ./case-studies/percolator/run.sh --clean-env
time ./case-studies/percolator/run.sh
cat .vermilion/enum_codecs-twin.log
time ./case-studies/percolator/verify_verus.sh
```

The case-study runner calls
[scripts/run_example.sh](../../scripts/run_example.sh) for each source file.
To locate its phases, you can trace one percolator file with timestamps:

```console
PS4='+$(perl -MTime::HiRes=time -e "printf \"%.2f\", time") ' \
  bash -x scripts/run_example.sh case-studies/percolator enum_codecs.rs \
  --lib CasePercolator --manual-proofs --clean-env 2> trace.log
```

This trace requires Perl and adds timing overhead. Use untraced runs for the
before-and-after comparison.

## Challenge 2: What Do You Have to Trust?

This is an optional stretch goal. Take it as far as your time allows.

Vermilion's claim is that a successful run means every obligation has a proof
checked by the Lean kernel, and that the remaining trusted components and
assumptions are small and documented. The [trust document](../trust.md) is our
own account of that trusted base, and the
[design overview](../../DESIGN.md#trusted-computing-base) summarises it. Your
task is to assess that account independently and identify ways to reduce the
trusted base.

Work through these parts in order:

1. **Characterise the trusted base yourself.** Start from the question:
   "What has to be correct for a successful run on a case study to mean that
   the Rust satisfies its contracts?" Build your answer from the code and run
   artifacts before comparing it with our documents. Explain any omissions,
   components you would exclude, or disagreements about the scope of a
   component's responsibility. Support your argument with concrete evidence,
   such as an obligation statement, a translation rule, or a branch in a
   runner script.
2. **Propose how to shrink it.** Rank possible reductions by the trust they
   remove and the effort they require. For each, explain what evidence would
   establish success, and what a test, proof, or measurement would actually
   demonstrate. Justify which reduction should come first.
3. **Optionally, implement one reduction.** Complete one item from your
   ranking, or build a prototype sufficient to assess its feasibility. Put
   this work in a separate commit and follow the constraints from Challenge 1.

The [VC-generation document](../vcgen.md) describes the policy for generating
Lean obligations and provides another reference for your investigation.
Keep the write-up focused: we will assess the argument and its evidence.

## How to Submit

Start from the `vermilion-challenge` branch of the public repository. Work in
a private copy under your own GitHub account and invite `ilyasergey` as a
collaborator. Submit a pull request within that private repository, targeting
its `vermilion-challenge` branch, and send us the link.

Use a standalone private repository. GitHub keeps
[forks of public repositories public](https://docs.github.com/en/pull-requests/reference/forks#visibility-of-forks),
which would expose your solution to others. Do not use the Fork
button or `gh repo fork`.

The commands below assume GitHub CLI (`gh`) is installed and authenticated,
and Git access over SSH is configured. Replace `YOUR_LOGIN` with your GitHub
login and `YOUR_BRANCH` with your chosen working branch name. Renaming the
original remote to `upstream` leaves `origin` available for your private copy:

```console
git clone --branch vermilion-challenge git@github.com:ilyasergey/vermilion.git
cd vermilion
git remote rename origin upstream
gh repo create YOUR_LOGIN/vermilion-challenge \
  --private --source=. --remote=origin --push
gh api -X PUT repos/YOUR_LOGIN/vermilion-challenge/collaborators/ilyasergey
./scripts/build.sh
git checkout -b YOUR_BRANCH
```

Put your write-ups in Markdown files under `docs/tasks/` and include them in
the pull request. Keep work on the two challenges in separate commits, with
any implementation for Challenge 2 in its own commit. Once your changes and
write-ups are committed:

```console
git push -u origin YOUR_BRANCH
gh pr create --repo YOUR_LOGIN/vermilion-challenge \
  --base vermilion-challenge --head YOUR_BRANCH --fill
```

You may use a coding agent. This document gives it the task scope, constraints,
measurement commands, and submission instructions; your write-up should
explain the reasoning behind the submitted work.
