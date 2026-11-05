# Vermilion Challenges

[Vermilion](../../README.md) is an experimental verifier for Rust that checks
proofs using [Lean](https://lean-lang.org), a proof assistant. It uses the
front end of [Verus](https://github.com/verus-lang/verus) to process Rust
programs and their specifications.

This document describes two Challenges aimed to increase Vermilion's usability
and deacrease it trusted code base. Challenge 1 asks you to find out why
Vermilion is slow and make it faster. Challenge 2 asks you to work out what has
to be trusted when Vermilion says a program is verified, and how to reduce that
trust. Choose either Challenge 1 or Challenge 2. You only need to complete one,
but feel free to try the other for fun if you have time.

Plan for about one working day on your chosen challenge. Allow an extra hour
for the first build, which downloads Lean and Mathlib artifacts and builds
Verus. The time depends on your machine and connection. You can read the
documentation while it runs.

If you reach your time budget, stop and submit what you have. Explain where you
stopped and what you would do next. A partial result with a clear diagnosis
leads to a more interesting discussion than a complete solution without an
explanation. In your write-up, please include roughly how long you spent.

**Contents**

- [What Vermilion Does](#what-vermilion-does)
- [Challenge 1: Vermilion Is Slow](#challenge-1-vermilion-is-slow)
- [Challenge 2: What Do You Have to Trust?](#challenge-2-what-do-you-have-to-trust)
- [Using Coding Agents](#using-coding-agents)
- [How to Submit](#how-to-submit)

## What Vermilion Does

Verus checks Verus-annotated Rust by generating verification conditions and
handing them to an SMT solver. Vermilion generates its proof obligations as Lean
theorem statements. Automation tries to prove them; any remaining obligations
can be proved interactively in proof files that survive subsequent runs of the
pipeline.

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

In our measurements, Verus checks a typical case study file in under a second.
Vermilion takes several seconds (or tens of seconds) for the same file, even
when the obligations are simple and their proofs are already present in Lean
companion files. Much of that cost recurs when nothing has changed. In the
editor, this is the delay between saving a file and seeing its verification
results.

Your task is to explain where the time goes and make the pipeline
substantially faster without changing what is verified.

### Starting observations

The slowest case study in our measurements was
[percolator](../../case-studies/percolator/), a set of slices from a production
risk engine. Its runner covers ten Rust files and 31 production functions,
plus derived functions, with a little over a hundred obligations. Most close
with a single automation step.

Vermilion took about a minute with `--clean-env` and half a minute on an
unchanged rerun. System CPU time was roughly three times user CPU time. The
Verus comparison took about three and a half seconds, though it covers two
additional slices. A case study with just one obligation still took four and
a half seconds. Establish a baseline on your own machine.

Almost all of the measured time was on the Lean side. The checker launches
separate Lean processes for function proof files, many concurrently. Importing
Vermilion's prelude alone took a little over a second. In
[enum_codecs.rs](../../case-studies/percolator/enum_codecs.rs), checking 19
proof files took about six seconds; the slowest file took five times longer
in that run than alone. Summed per-file elapsed times overlap and do not
measure CPU time.

### Expected result

1. **A diagnosis backed by measurements.** Identify the costs paid per
   process, source file, or obligation, on both clean and unchanged runs.
   Investigate how they depend on the size of the Lean environment, the number
   of functions, and the number of available cores.
2. **An implementation with before-and-after results.** Make your changes on
   a branch and measure their effect on percolator and at least two small
   case studies. Record the revisions, commands, hardware, and number of runs
   so that someone else can reproduce the comparison.
3. **A short write-up.** Write a Markdown report in `docs/tasks/write-up.md`.
   Explain what you found, what you changed, which alternatives you considered
   and rejected, and what costs remain. Include the AI use section described
   below.

### Stretch goals

If you have time left, investigate either or both:

1. **VC generation.** Measure the cost of constructing verification conditions
   and rendering Lean code as programs and obligations grow. Look for repeated
   work or duplication in terms and hypotheses. Could reducing it make
   generation or subsequent checking faster?
2. **VC solving.** Find expensive obligations after accounting for startup and
   imports. Separate proof search from elaboration and kernel checking.
   Investigate changes to automation or the form of the obligations, using
   examples that exercise proof search as well as existing proofs.

Show a measured example and explain which optimisation you would try.
Implementation is optional for these goals. If you try a change, measure its
effect on both that phase and the full pipeline.

### Constraints

- Lean remains the only verifier. Every obligation must have a kernel-checked
  proof of its current statement (even if it has been proven externally, e.g., via an SMT solver)
- Preserve existing verification behavior in both supported output layouts:
  per-function and per-source-file. Run the
  [emission-mode check](../../scripts/test_emission_modes.sh) to check that
  the layouts agree on obligations, verification outcomes, and per-obligation
  diagnostic status.
- The [smoke suite](../development.md#test-scopes) and every case study that
  passes on the starting revision must still pass.
- Do not edit the case studies' specifications or code to make them faster.
- Changes to generated statements must preserve their meaning. Update the
  [VC generation policy](../vcgen.md) with any change to VC generation.

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

The runner calls [scripts/run_example.sh](../../scripts/run_example.sh) for
each source file. Use it to locate the pipeline's phases. Keep profiling or
shell-tracing overhead out of the before-and-after comparison.

## Challenge 2: What Do You Have to Trust?

Vermilion reports success after checking Lean proofs. What else has to be
correct for that result to mean that the Rust program satisfies its
contracts? Your task is to identify those dependencies and propose how to
reduce them. Also design a test suite for bugs that could lead to an incorrect
verification result. This is an investigation and design task; implementing
the tests or changing the verifier is optional.

### Starting points

Choose a small [case study](../../case-studies/README.md) and follow a run
from the Rust source to the reported result.
[Binary search](../../case-studies/binary-search/binary_search.rs) is one
option: it has loop invariants and arithmetic checks, with existing Lean
proofs. Use one or two obligations to examine the translation in detail.
State which parts of your conclusions apply only to the example and which
apply to the pipeline as a whole.

Build your account from code and run artifacts before comparing it with the
[trust document](../trust.md) and the
[design overview](../../DESIGN.md#trusted-computing-base). Those documents
describe our view of the trusted base; you may disagree with them. The
[textual IR](../ir.md) and [VC-generation policy](../vcgen.md) describe the
translation boundary and the intended rules for generating obligations.

### Expected result

1. **An account of the trusted base.** Explain what each component must get
   right for the final result to hold. Support your account with code
   locations and artifacts from your run. Include the assumptions of the
   Lean proofs and the connection between their statements and the Rust
   contracts. Explain why you include or exclude each component you discuss.
2. **A comparison with the documentation.** Identify omissions or claims you
   would change, with evidence. If you agree with a claim, explain what you
   checked. Separate confirmed findings from questions you could not settle
   in the available time. You do not need to find a bug to complete the task.
3. **A plan to reduce trust.** Rank possible reductions by what they remove
   and the effort they require. Develop your preferred option far enough
   that someone could start implementing it: identify the code to change,
   the property to establish, and the assumptions that would remain. Explain
   what a test or proof would demonstrate and where its guarantee would end.
4. **A test-suite design for the trusted base.** Choose plausible bugs in the
   components you identified, especially ones that could make an incorrect
   program appear verified. For each, describe a test input and expected
   result, and explain how you would establish that expectation independently
   of the code under test. Include valid cases as well as cases that must be
   rejected. Explain how you would check that the tests catch the intended
   bugs, for example by deliberately introducing one. State what remains
   untested and where comparison with Verus could miss bugs shared by both
   tools.

Put these results in a short Markdown report in `docs/tasks/write-up.md`.
Record the revision and commands used, and include enough evidence for
someone else to follow your argument. Include the AI use section described
below.

### Stretch goals

If you have time left, implement a few of your proposed tests or prototype
one reduction in trust. For the tests, demonstrate a bug they catch, using an
actual fault or a deliberate mutation. For a Lean proof, state the theorem
and inspect its assumptions. For a new check, give an example it rejects and
a valid example it still accepts. Explain which part of the original trust
claim has changed and what remains unverified.

Put implementation work in a separate commit. A prototype can leave parts of
the design unfinished, provided the write-up identifies them. Adding tests
alone does not establish that a component can be removed from the trusted
base; explain what confidence those tests provide.

### Constraints

- Lean remains the only verifier. Every obligation must have a kernel-checked
  proof of its current statement; none may be skipped or weakened. New
  unproved assumptions do not count as a reduction in trust.
- Keep the baseline case studies' code and specifications unchanged. Put
  deliberately failing examples in separate test files and record how to run
  them.
- If you change the pipeline, preserve both per-function and per-source-file
  output. Run the [emission-mode check](../../scripts/test_emission_modes.sh),
  the [smoke suite](../development.md#test-scopes), and the case studies that
  pass on your starting revision.
- Update the [VC-generation policy](../vcgen.md) with any change to VC
  generation, and update the trust documentation for any implemented
  reduction.

### How to investigate

For binary search, run these commands from the repository root:

```console
./scripts/build.sh
./case-studies/binary-search/run.sh --clean-env
```

Compare the Rust source with the emitted IR and the Lean statements under
`case-studies/binary-search/generated/`. Follow an obligation into its
`proofs/` companion and through the checker. Inspect the manifest and the
runner's exit status to see how the individual checks become a reported
result. The case-study runner delegates to
[scripts/run_example.sh](../../scripts/run_example.sh).

For a property you think the pipeline enforces, try a small failing example
in a separate test file. Record the expected outcome and check the actual
diagnostics and exit status. Use such experiments to test specific claims;
explain what still rests on reading the code or accepting an assumption.

## Using Coding Agents

You may use coding agents, and we expect them to help with much of the
mechanical work: building the project and fixing setup problems, finding
where things happen in the code, writing measurement scripts and running them
repeatedly, prototyping and iterating on an implementation, and running the
test suites. You can point an agent at this document; it describes the task
scope, constraints, measurement commands, and submission steps.

Some parts we want to come from you. The write-ups should be your own writing:
the diagnosis, the reasons behind your choices, the alternatives you rejected,
and, for Challenge 2, the trust analysis and reasoning behind the test-suite
design. Using an agent to proofread or to look up a reference is fine; having it
com up with the argument is not okay. An agent can propose an approach, but
choosing it is your decision, and you should be ready to explain and defend
every change and every number in the submission in a follow-up conversation.
Check any measurement an agent reports before you rely on it.

Include an `## AI use` section in `docs/tasks/write-up.md`. It should say:

- which tools and models you used;
- for each deliverable you submit, what the agent did and what you did
  yourself;
- any point where an agent's output was wrong or misleading, and how you
  noticed.

A few paragraphs are enough. If you did not use AI tools, say so in this
section. Using agents does not count against you. We ask for an accurate
account so that we know whose reasoning we are reading.

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

State which challenge you chose in the pull request and include
`docs/tasks/write-up.md`. The report should cover your chosen challenge's
expected results, roughly how long you spent, and any unfinished work. Keep
the `## AI use` section in that file. If you tried both challenges, describe
them in separate sections of the same report.

Include any measurement scripts, experiments, or implementation needed to
reproduce your results. For Challenge 2, keep optional implementation work
in its own commit. Once your work is committed:

```console
git push -u origin YOUR_BRANCH
gh pr create --repo YOUR_LOGIN/vermilion-challenge \
  --base vermilion-challenge --head YOUR_BRANCH --fill
```
