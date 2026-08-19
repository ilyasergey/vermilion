# Vermilion — agent directives

User-set directives and durable project memory live in `.claude/memory/`,
versioned with the repository. They are binding for any agent working here.

@.claude/memory/vermilion-conventions.md
@.claude/memory/lean-side-ir-parsing.md
@.claude/memory/m1-user-tutorial-deliverable.md
@.claude/memory/reports-live-in-docs.md
@.claude/memory/foundational-vcgen.md
@.claude/memory/spec-fns-no-inlining-no-fuel.md
@.claude/memory/vcgen-policy-doc.md
@.claude/memory/no-verus2vermilion.md
@.claude/memory/m4-lean-native-libraries.md
@.claude/memory/interactive-proofs-first-class.md
@.claude/memory/issue-tracker-workflow.md
@.claude/memory/per-function-emission-default.md
@.claude/memory/aeneas-folder-read-only.md
@.claude/memory/dalek-lite-active-target.md

When a new durable directive lands, add it as a file in `.claude/memory/`
(one fact per file, same format) and reference it here.

Quick facts:

- Build everything: `./scripts/build.sh` (Lean first, then Rust, then the
  pinned Verus + direct adapter).
- Full pipeline + examples: `./scripts/run_suite.sh`.
- The Rust/Lean boundary is the textual IR: `docs/ir.md`.
- VC-generation policy: `docs/vcgen.md` is normative and MUST be updated in
  the same slice as any change to VC generation (`Ir/Vcgen.lean`,
  `Ir/Render.lean`). There is no automated guard — this is on the agent; see
  `.claude/memory/vcgen-policy-doc.md`.
- Plans and status: `plans/execution-plan.md`; session logs: `logs/`.
