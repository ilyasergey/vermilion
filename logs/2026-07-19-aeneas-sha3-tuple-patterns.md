# 2026-07-19 — Aeneas SHA-3 acquisition, tuple parameters, and editor Specs imports

Session goal: acquire the complete `AeneasVerif/sha3.rs` Rust project in two
local copies, keep one pristine and annotate the other without changing its
executable Rust, then close the first measured Verus/Vermilion blocker toward
verifying the standalone library against Aeneas's Lean specification.

## Landed

- `case-studies/aeneas/sha3/{upstream,verification}` contain the exact pinned
  Cargo metadata and complete `src/` tree from commit `cb411d54ee0b` (tree
  `821339a40a26`). Integrity scripts check the pin, source inventory, and
  initial byte identity. Upstream and both copies pass 31 tests with 1 ignored.
- Verus fork commit `35f3268264fce96e1dd3d94704c9ad00989ccb4a`
  supports flat, nested, wildcard, mutable, and method tuple-pattern function
  parameters. Rust-to-VIR lowering uses synthetic formals plus entry
  destructuring; executable erasure maps those formals back to the original
  HIR patterns. The Verus `functions` regression binary passes 11/11 and vstd
  verifies 1972/0 in debug and release. The commit is pushed to
  `ilyasergey/verus` branch `dev`.
- Vermilion differential c148/c149 provide positive and negative parity tests.
  The corpus is 148/148 with 71/71 failure-span agreement; c149 is rejected by
  both backends on line 6. The complete six-phase suite passes all 47
  example/case-study runners, determinism, incrementality, ill-typed and
  evidence lifecycle checks, twin libraries, and the differential corpus.
- `DifferentialGenerated` and `DifferentialProofs` Lake roots make transient
  generated modules and proof twins visible to `lake setup-file` and the Lean
  language server. `scripts/test_differential_editor.sh` guards both forms of
  `Specs` import resolution and runs in the full suite.

## Decisions

- Verus annotations may live directly in the verification copy; no detached
  annotation ingestion layer is needed. The invariant is unchanged executable
  Rust, enforced against the pristine copy by an annotation-aware check.
- Tuple support belongs entirely in Verus's Rust-to-VIR/erasure path. It did
  not require a Vermilion VCGen extension.
- There are 148 corpus files despite the highest number being c149 because
  historical c109 is absent.
- At this checkpoint the clean upstream Aeneas Lean baseline was still
  compiling its first uncached Mathlib umbrella import. It subsequently
  completed all 6,822 targets successfully; see the follow-up log below.

## Next executable task

Implement a sound custom `IndexMut`/returned-`&mut` contract in the Verus fork,
with dedicated positive and negative Verus regressions. Re-run Verus/vstd,
commit and push the fork, update Vermilion's exact pin, re-run the complete
Vermilion suite, update the Aeneas ledgers, and commit/push before annotating
the unchanged `StateArray` implementation and verifying ι.

**Completed later the same day:** see
[the custom mutable-index milestone](2026-07-19-aeneas-sha3-custom-index-mut.md).
The fork is now pinned at `1fc6a46d1561`, the full corpus is 150/150 with
72/72 failure-span agreement, and the next measured adapter blocker is the
unchanged `Index::Output` associated-type projection.
