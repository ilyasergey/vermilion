# Vermilion challenges

Two open problems in Vermilion, written up for candidates. The first is the
main task. The second is a stretch goal; take it as far as your time allows.
Neither has been solved, and we have not written down what we think the
answers are.

## What Vermilion does

[Vermilion](../../README.md) is a Lean backend for [Verus](https://github.com/verus-lang/verus),
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
programs we verify this way.

## Challenge 1: Vermilion is slow

Verus checks a typical file in under a second. Vermilion takes several
seconds for the same file, even when every obligation is trivial and every
proof is already written, and it pays that time again on every run, including
runs where nothing has changed. The cost grows with the number of verified
functions, not with how hard they are to prove.

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
second by itself. The largest percolator file starts nineteen such processes,
and the slowest of them took five times longer inside the run than it takes
alone.

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

**Measuring.** Build everything with `./scripts/build.sh`. Each case study
has a `run.sh`; `--clean-env` starts it from a clean cache, and running it a
second time gives the warm number. The Lean checker writes one timing line
per function to `.vermilion/<file>-twin.log`, and the percolator folder has a
`verify_verus.sh` that runs the Verus side for comparison. Every run follows
[scripts/run_example.sh](../../scripts/run_example.sh); tracing it with
`bash -x` is the quickest way to time its phases.

## Challenge 2: what do you have to trust?

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

**Where to look.** A run leaves its intermediate artifacts under
`.vermilion/` in the repository root (the exported Verus IR, the textual IR,
the checker's outputs) and the generated Lean under the case study's
`generated/` folder, next to the hand-maintained `proofs/`. The translation
lives in the `vermilion_direct` crate, the Lean theorem generation under
`lean/Vermilion/Ir/`, and the policy it follows in the
[VC-generation document](../vcgen.md).
