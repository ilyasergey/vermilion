---
title: Support non-isolated loops (loop_isolation(false))
labels: [feature, vcgen]
state: closed
github: 46
---

`#[verifier::loop_isolation(false)]` changes Verus's loop discharge: the loop
body retains the enclosing context's facts across havoc instead of seeing
only the declared invariants. Vermilion deliberately fails closed on the
attribute (`unsupported SST loop: loop_isolation(false) is not lowered`) —
the F6 assessment (2026-07-14) deferred it until corpus demand because the
non-isolated rule is *distinct* and must not be inferred from the isolated
case.

The corpus demand now exists: dalek-lite uses it at two sites
(`curve25519-dalek/src/scalar.rs:2338` and `:3160` at pin `de9ebf015`), and
the sequential-case-studies report's two `_no_spinoff` `vectors.rs` functions
are also waiting on it.

Requirements: a sound havoc rule that preserves the selected outer facts
(mirror `sst_to_air`'s non-isolated recipe — which facts survive is Verus's
choice, not ours to widen), `docs/vcgen.md` updated in the same slice,
positive and negative differential guards including one where an outer fact
must NOT survive (mutation of its subject), and the probe flip in
`case-studies/dalek-lite/explore.sh` (`count_loop_isolation.rs`, DL6).

**Closed 2026-07-20 (dalek-lite DL6).** Implemented per the requirements:
the lowering recognizes ast_to_sst's canonical non-isolated `while` shape
(the leading `cond_stm; if !cond { break }` prefix), reconstructs the
condition, and reuses the existing while machinery with a new
`isolated: false` flag carried by the IR loop node (`(loop noniso …)`;
the isolated form is byte-identical to the old grammar). The Lean (NLOOP)
rule keeps the enclosing hypotheses in front of the iteration facts —
sound under the SSA-style havoc binders because outer facts about
modified variables keep referring to their pre-loop symbols, exactly
`sst_to_air`'s snapshot semantics. Which facts survive is Verus's choice,
not widened: any *user* break/continue in a non-isolated loop fails
closed (Verus assumes nothing after a broken-out non-isolated loop, so
our at-exit invariants + ¬cond exit facts would be too strong there).
`docs/vcgen.md` gained the (NLOOP) rule in the same slice. Guards: c189
(the outer-fact-needed positive) and c190 (an outer fact about a havoced
variable must NOT survive — fails at the assert span in both verifiers).
The dalek-lite probe `count_loop_isolation.rs` verifies 5/5 automatic;
the two `_no_spinoff` `vectors.rs` functions noted here are unblocked for
their own case study's next measurement.
