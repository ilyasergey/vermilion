# 2026-07-14 — target-project ladder; merge-sort study; spanned lowering refusals

Follow-up to the F7 slice (same day, `4a320d4`). Three strands:

- **The staged target ladder** (`docs/reports/target-projects.md`, linked
  from README and case-studies/README): swept the full Verus example
  corpus locally and surveyed external Verus projects online; stages
  S1–S5 (multisets/sorting → recursive heap datatypes → `choose` →
  gap-map singles → external projects: Vest, pmemlog, Verdict parser,
  IronKV marshalling, nrkernel page table, Verus-Bench as bulk corpus)
  each name the fragment features they force. **User-adopted as the
  operative milestones.** Notables: CreuSAT has no Verus port (drop from
  the M3 gate list); an M1–M4 doc audit scheduled everything else still
  promised-but-unlanded into the plan (three stale doc claims fixed the
  same day).
- **Merge sort in the tree** (`case-studies/merge-sort`, the S1 driver):
  the verbatim Verus `mergesort.rs` plus `mergesort_clean.rs` — same
  algorithm and contracts with ALL inline SMT scripting deleted (~80
  lines of proof blocks/broadcast machinery), per the
  interactive-proofs-first policy; on the Lean side `to_multiset` is
  Mathlib's `Multiset.ofList` and the user's distributivity broadcast
  lemma is a library fact. New `--expect-unsupported` mode in
  run_example.sh (exit 4 + run-status phase "lowering" for refusals):
  the blocked study succeeds *because* the adapter refuses, and fails
  loudly once the fragment catches up.
- **Lowering refusals are now legible** (user-directed): the adapter
  annotates errors with the innermost offending construct's span
  (`annotate_span` wrappers on `lower_exp`/`statement`/`function_view`)
  and renders `error[vermilion]: outside the supported fragment: … -->
  file:line:col`; the editor (0.9.5) paints the squiggle at the span
  with "not supported by Vermilion yet: …" and a ✗ on the function — the
  "verification pipeline broke" popup is gone for this case. Handled in
  both the early-verdict poller and the close handler, independent of
  exit code (blocked studies exit 0).

Verification: `./case-studies/merge-sort/run.sh` (refusal at
`mergesort_clean.rs:57:13`, the `to_multiset` invariant, rendered with
span), `./examples/m2-seqadd/run.sh` (still green),
`./examples/m1-diagnostics/run.sh` (expected-failure path intact).

Next up: **S1** — `Seq::to_multiset` as a known op, `Vec::clone`,
`Vec::split_off`; then flip merge-sort's flag and verify it (interactive
twin proofs expected). Full handoff in plans/execution-plan.md
§Saturation push.
