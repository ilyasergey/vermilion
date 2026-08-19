## Planning for implementing Verus verifier for Rust in Lean

Okay, today we're going to do some research into implementing the Verus deductive verifier in Lean. 

Our goals are:

* Undertand parts of verus infrastructure (front-end, VC generation, solving via SMT, Intermediate Representation) and see which of them transfer to Lean naturally, and which don't .
* Substitute the SMT backend of Verus by the generation of Lean theorems, so they could be proven via LeanSMT or interactively, by humans or AI. 
* Being able to articulate why this approach is desirable and how it compares to Aeneas, Velvet and Loom.
* We need to have feature-parity with Verus, but also be able to extend it in the future.
* While Verus is non-foundational (its VC generator is not proven correct), we want to identify possible semantics to provide foundational guarantees for it. This is not the top priority, but a future research task we should plan for. Our main task is to implement the same functionality as in Verus but with Lean as a verification back-end.

Here are the relevant papers you should check out, on embedding verifiers in Lean and on Verus. Feel free to expand from here:

* https://pirlea.net/papers/thesis-draft.pdf
* https://verse-lab.org/papers/velvet-cav26.pdf
* https://verse-lab.org/papers/loom-popl26.pdf
* https://verse-lab.org/papers/veil-dafny26.pdf
* https://dl.acm.org/doi/epdf/10.1145/3694715.3695952
* https://iris-project.org/pdfs/2026-pldi-verusbelt.pdf

Relevant repositories (Verus, Veil, Iris-Lean, locally):

* a local checkout of `iris-lean`
* a local checkout of `veil` (development tree)
* a local checkout of `verus-lang/verus`

What we need to have, ideally in this porting effor:

* A working verifier for Verus based on a mixed deep/shallow embedding, utilising the verification manage structure
* A collection of benchmarks from Verus so we could make sure they are accepted/rejected by our port
* A well-documented design, including all components and the IR
* A structure ready to prove soundness of the verifier on top of Iris-Lean and Loom
* Project nave Vermillion
* You should find a progression from easy features to complex ones, so we would get something off the ground quickly.
* Also think about a testing harness to avaluate Verimillion against Verus.


This effort is about doing the preliminary research before we start implementing the verifier itself. This is what I want you to do:

* Make a readme and .gitignore for this folder as it were a github repository
* Find a collection of projects 10-20 written in modern Rust that we should be able to support through our embedding. 
* Characterise what the progressing in which we should port Verus to Lean as Vermillion
* Think which features of Verus we won't need (trigger programming ,EPR embeddings), as those are avialble/made reducndant by Lean embedding and ability to use things such as Veil for protocol specification
* You should also collect as much research literature as possible on Rust embedding for verification (Pursi and other efforts), compile a joint bibtex file and a report on this (in several chapters, under a dedicated folder)
* Assemble a report on plausible projects our semantics should support (in a separate folder, with chapters), along with the descriptions of their interesting features, challenges, building intsurctions, testing modes etc. Start from those that are supported by Verus itself.
* Devise a detailed staged plan to implement Verus migration to Lean along with milestones that we should be able to validate. Don't get hung up on implementing the full type chekcker. We should get to the first "base camp" --- a verifier sufficion to support the large fraction of Verus' own example. Let's try to get there as quickly as possible. Then chart what should come next all the way till the most complicated project you have in mind.
* Write a comprehensive guide how to read the plan in this repository, so another AI agent or human could use it for the execution.

Feel free to ask me questions. You can use an earlier planning repository of ours as an example of how to organise things.

