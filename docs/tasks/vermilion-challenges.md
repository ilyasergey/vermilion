# Vermilion Challenges

This document describes two open problems in Vermilion. The first is the
main task. The second is a stretch goal, to take as far as your time allows.
Neither is solved, and we have deliberately not written down what we think
the answers are.

## What Vermilion Does

[Vermilion](../../README.md) is an experimental Lean backend for [Verus](https://github.com/verus-lang/verus),
a verifier for Rust. Verus checks annotated Rust by generating verification
conditions and handing them to an SMT solver. Vermilion keeps the Verus front
end and replaces the solver: every verification condition becomes a theorem
in [Lean](https://lean-lang.org), an automation tactic tries to prove it, and
whatever the automation cannot close is left for a person to prove
interactively, in a proof file that survives re-runs of the pipeline. So
"verified" means "checked by the Lean kernel", with a smaller and more
explicit trusted base than a solver gives.

The [tutorial](../TUTORIAL.md) walks through the workflow in about twenty
minutes. The [case studies](../../case-studies/README.md) are the realistic
programs we verify this way. There is also a
[VS Code extension](../../README.md#vs-code-extension): saving a Rust file
runs the pipeline, verdicts appear on the Rust lines they concern, and one
shortcut jumps from an assertion to its Lean proof and back.

## Challenge 1: Vermilion Is Slow

Verus checks a typical file in under a second. Vermilion takes several
seconds for the same file, even when every obligation is trivial and every
proof is already written, and it pays that time again on every run, including
runs where nothing has changed. The cost grows with the number of verified
functions, not with how hard they are to prove. In the editor it is the delay
between saving a file and seeing its verdicts, so it is felt on every edit.

The worst case among our case studies is
[percolator](../../case-studies/percolator/), a set of verbatim slices of a
production risk engine: ten Rust files, thirty-one functions, a little over a
hundred obligations, nearly all of them closed by automation in one step.
Verus verifies all of it in about three and a half seconds. Vermilion takes a
minute from a clean cache and half a minute when nothing has changed, and
while doing so it spends three times as much CPU time in the operating system
as in its own code. At the other end, the smallest case study, one function
with one obligation, still takes four and a half seconds.

Some observations from our own measuring, in case they help. Almost all of
the time is on the Lean side: the Verus front end and the translation to Lean
together take well under a second per file. The checker verifies each
function's proof file in a separate Lean process, many at a time. A Lean file
that does nothing except import Vermilion's prelude takes a little over a
second by itself.

Within percolator, the time tracks the number of functions in a file. The
slow ones are [enum_codecs.rs](../../case-studies/percolator/enum_codecs.rs)
(nineteen encode and decode functions, one obligation each, about six seconds
of wall time but nearly two minutes of summed process time),
[wide_math_u256_basics.rs](../../case-studies/percolator/wide_math_u256_basics.rs)
(ten functions, about four seconds and forty seconds respectively), and
[policy_gates.rs](../../case-studies/percolator/policy_gates.rs) (eight
functions, about three and a half seconds and half a minute). The files with
one or two functions each finish in under two seconds. The slowest unit of
`enum_codecs.rs`, a one-obligation proof file that automation closes in one
step, took five times longer inside the run than it takes when run alone.

**What we would like from you.** Find out where the time goes, cold and warm,
and make the pipeline substantially faster without changing what is verified.
Three things: a diagnosis backed by measurements (which costs are paid per
process, per file, or per obligation, and how they scale with the size of the
Lean environment, the number of functions, and the number of cores); a change
on a branch, with before-and-after numbers for percolator and for a couple of
the small case studies; and a short write-up of what you found, what you
changed, what you considered and rejected, and what cost remains.

**Constraints.** Lean stays the only verifier, and every obligation stays a
kernel-checked theorem: nothing may be skipped on the strength of a cached
verdict the kernel has not re-established for the current statement.
Verdicts and diagnostics do not change, the two emission modes still agree
(there is a [script](../../scripts/test_emission_modes.sh) for that), the
[smoke suite](../development.md#test-scopes) and every case study that passes
today still pass, and the case studies' proof files are not edited to make
runs faster.

**Measuring.** Each case study has a `run.sh`. Its `--clean-env` flag starts
from a clean cache, and running it a second time gives the warm number. The
Lean checker writes one timing line per function to `.vermilion/<file>-twin.log`,
and the percolator folder has a `verify_verus.sh` that runs the Verus side for
comparison. The commands below build everything and take the numbers quoted
above.

```console
./scripts/build.sh
time ./case-studies/percolator/run.sh --clean-env
time ./case-studies/percolator/run.sh
cat .vermilion/enum_codecs-twin.log
time ./case-studies/percolator/verify_verus.sh
```

Every run follows [scripts/run_example.sh](../../scripts/run_example.sh).
Tracing it is the quickest way to time its phases; this times one percolator
file from a clean cache and writes the trace to a file:

```console
PS4='+$(perl -MTime::HiRes=time -e "printf \"%.2f\", time") ' bash -x scripts/run_example.sh case-studies/percolator enum_codecs.rs --lib CasePercolator --manual-proofs --clean-env 2> trace.log
```

## Challenge 2: What Do You Have to Trust?

Vermilion's claim is that a green run means every obligation is a theorem
checked by the Lean kernel, and that whatever you trust beyond the kernel is
small and written down. The [trust document](../trust.md) is our own account
of that trusted base, and the [design overview](../../DESIGN.md#trusted-computing-base)
summarises it. Whether the account is complete, whether it sizes each
component correctly, and what should leave the trusted base first are open
questions.

Three parts, in order:

1. **Characterise the trusted base yourself.** Start from the question "what
   has to be correct for a green run on a case study to mean that the Rust
   satisfies its contracts?" and answer it from the code and the artifacts of
   a run, not from our documents. Then compare your answer with the trust
   document: what it lists that you would not have, what you found that it
   does not list, and where you disagree with how it sizes a component. Point
   at evidence where you can: an obligation statement, a translation rule, a
   branch in a runner script.
2. **Propose how to shrink it.** Rank the candidate reductions by how much
   trust each removes against what it would cost, and say for each what
   evidence of success would look like: a test, a proof, a measurement. The
   question is what should leave the trusted base first, not what is easiest
   to remove.
3. **Optionally, take a step.** Implement one item from your ranking, or
   enough of it to show that the approach holds up, as a separate commit
   under the same constraints as the first challenge.

We will read this for the quality of the argument, not for its length.

**Where to look.** The policy the Lean theorem generation follows is written
up in the [VC-generation document](../vcgen.md).

## How to Submit

This document, and the starting point for your work, is the `performance-task`
branch of the public repository. Work in a private copy of the repository
under your own GitHub account, and share it with us. Clone the public
repository, check out that branch, create a private repository from the clone,
and give the user `ilyasergey` read access. Then make a branch from
`performance-task`, commit your changes, and open a pull request against
`performance-task` in your private copy; send us the link to the pull request.
Put the write-ups in the pull request as Markdown files under `docs/tasks/`,
so everything is reviewed in one place. Keep the two challenges on separate
commits, and the optional step of the second challenge on its own commit.

```console
git clone git@github.com:ilyasergey/vermilion.git
cd vermilion
git checkout performance-task
gh repo create <your login>/vermilion-challenge --private --source=. --push
gh api -X PUT repos/<your login>/vermilion-challenge/collaborators/ilyasergey -f permission=pull
./scripts/build.sh
git checkout -b <your branch>
```

```console
git push -u origin <your branch>
gh pr create --base performance-task --fill
```

Do not fork the public Vermilion repository, with the Fork button or with
`gh repo fork`: a fork of a public repository is always public, and your
solution would be visible to everyone, including other people doing the
same challenges. The repository created above is a plain copy, not a fork,
and stays private.

If you work with a coding agent, you can point it at this document. It
contains everything the agent needs: what the project is, where the problems
are, how the measurements were taken, which constraints the result must
satisfy, and how to submit.
