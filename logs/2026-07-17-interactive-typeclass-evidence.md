# Interactive Lean typeclass evidence obligations

Date: 2026-07-17

## Request and issue stage

The Percolator `encode_bool` driver exposed a backend-language distinction:
Rust/Verus `bool` is computational, while Vermilion embeds it as Lean `Prop`.
A standalone theorem containing `Vermilion.iteP value …` therefore needed a
`Decidable value` dictionary before its proposition could elaborate. The user
directed that this not be patched by silently enabling classical reasoning;
missing Lean instances should become first-class proof obligations that users
can fill interactively.

Created and synchronized GitHub issue #25, “Generate interactive Lean
typeclass evidence obligations,” and linked issue #18's narrower elaboration
invariant to it. The issue-design stage is commit `f64890b`.

Three pre-existing Percolator twin edits were present at the start of this
stage (`active_bitmap_get.lean`, `enum_codecs.lean`, `policy_gates.lean`, each
with a trailing blank line). They were treated as user-owned and never staged
or overwritten while developing the new isolated drivers.

## Design landed

- `EvidenceArg` and `EvidenceTarget` describe a generic structured Lean class
  application with type and term arguments. `EvidenceObligation` adds its
  telescope, span/origin, stable identity/hash, dependencies, and consumers.
- `collectEvidenceObligations` is an evidence-closure pass after ordinary VC
  generation. Its first producer detects theorem-layer `iteP` guards that
  lack structurally available decisions and deduplicates them into one
  module-local `(p : Prop) : Decidable p` dictionary.
- Evidence is rendered after spec definitions and before logical VCs as a
  flattened, project-unique `@[vrml_evidence] noncomputable local instance`.
  Keeping it inside an enclosing section makes it available to every later
  theorem without leaking into imported modules or earlier executable spec
  definitions.
- Generated evidence has a loud `sorry`. `vrml_check` may use that placeholder
  to elaborate dependent VCs contingently, but emits a distinct
  `vermilion::evidence_unresolved` diagnostic and exits nonzero. `vrml_sync`
  preserves the block, counts it for `--fail-on-sorry`, and recognizes a
  `sorry`-free changed body as interactive coverage. The current-twin fast
  path kernel-checks the instance and all consumers together.
- Watch deltas carry all evidence blocks in their preamble even when only a
  downstream VC changed.

No textual-IR grammar changed: evidence is derived on the Lean side from the
parsed VCs. The normative generation policy and the IR/trust boundary were
updated in the same slice.

## Interactive solutions and corpus guards

`case-studies/percolator/proofs/encode_bool_decidable.lean` and
`result_gates.lean` solve their generated dictionary explicitly:

```lean
exact Classical.propDecidable p
```

Their five logical VCs then discharge automatically. Percolator's supported
verbatim subset grows from 16 functions / 46 logical obligations to 18
functions / 53 logical-or-evidence obligations.

Differential cases c139/c140 pin both directions:

- c139 is true and passes only with its interactive evidence twin;
- c140 has the same solved evidence but a false postcondition, which Lean
  still rejects at the Verus span.

`scripts/test_typeclass_evidence.sh` exercises the complete unresolved →
interactive lifecycle in a temporary workspace: exit 1 and evidence JSON,
visible `sorry`, failed `vrml_sync --probe`, explicit dictionary proof, direct
Lean kernel check, successful probe, successful rerun, and proof persistence.

## Commands run so far

```console
lake build vrml_gen
lake build Vermilion
cargo check -p vermilion_backend --bins
./scripts/test_typeclass_evidence.sh
./scripts/run_example.sh case-studies/percolator encode_bool_decidable.rs --lib CasePercolator --manual-proofs
./scripts/run_example.sh case-studies/percolator result_gates.rs --lib CasePercolator --manual-proofs
./scripts/run_example.sh tests/differential c139_bool_ite_evidence_ok.rs
./scripts/run_example.sh tests/differential c140_bool_ite_evidence_wrong.rs --expect-failure
```

Focused commands are green after the interactive instance bodies are filled.

## Final verification and closure

The generic layer also has direct Lean guards in
`tests/typeclass_evidence_order.lean`: structured non-`Decidable` targets,
dependency ordering, conflicting duplicates, unknown dependencies, and cycles
are all exercised. The final verification pass was:

```console
lake env lean tests/typeclass_evidence_order.lean
./scripts/test_incrementality.sh
./scripts/test_typeclass_evidence.sh
cargo test --workspace
./scripts/run_example.sh case-studies/percolator encode_bool_decidable.rs
./scripts/run_example.sh case-studies/percolator result_gates.rs
python3 scripts/run_differential.py
./scripts/build.sh
lake build CasePercolator
```

All commands passed. The differential corpus reports 139/139 verdict parity
and 67/67 failure-span agreement. The timing report remains above the existing
M2 performance target (median 18.93× Verus versus a 10× target); this slice
does not claim to resolve that independent performance backlog. The three
pre-existing Percolator trailing-blank edits remained unstaged and untouched.

Issue #25 was then marked closed and synchronized to GitHub. The distinct
polymorphic `Inhabited ?m` ambiguity remains open under issue #18.

## Prominent trigger clarification

After the implementation commit, the top-level README and tutorial were made
explicit about when the initial producer runs. A Rust `bool` or source-level
`if` alone does not generate evidence. The trigger is a surviving `iteP` in a
logical VC hypothesis/goal whose guard is not recognized as constructively
decidable; one universal `Decidable p` obligation is then deduplicated across
the generated module. The normative VC-generation text now states the same
non-trigger rule.

## Source-link audit

The Percolator README's supported progression now links every stage directly
to its copied Rust driver and persistent Lean twin, while the boundary table
links every blocked Rust driver. It also links the two pinned upstream source
files and the study's run/verification scripts. The tutorial, trust document,
and progress ledger now link directly to the evidence example, lifecycle
test, and positive/negative differential guards instead of leaving those
paths as plain text.

## README placement and design account

The prominent “When does Vermilion generate `Decidable` evidence?” section
was moved after the feature inventory and key design points, immediately
before “Build and test.” `DESIGN.md` now gives the same demand-driven account
at the generator/render boundary: exact `iteP` trigger, constructive
non-triggers, module-level deduplication, declaration placement, and the
unresolved-evidence success condition.
