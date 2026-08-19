# 2026-07-19 — SHA-3 tuple-destructuring assignment

## Outcome

Tuple-destructuring assignment is now accepted by the pinned Verus fork and
therefore by Vermilion's exported-VIR pipeline. This removes the first blocker
inside the unchanged `rho` loop:

```rust
(x, y) = (y, (2 * x + 3 * y) % 5);
```

Rustc already lowers destructuring assignment to a synthetic `let` that
evaluates the right-hand side once, followed by ordinary component
assignments. The Verus change removes its blanket rejection of that lowering;
no Vermilion Rust lowering, neutral IR, or Lean VCGen change was required.

The Verus fork change is commit
`7734d271ad796ba134200fd2fa8ac1e706200342` on branch `dev`, pushed to
`ilyasergey/verus`. Vermilion's bootstrap pin now names that exact commit.

## Verification evidence

Verus:

- focused positive/negative tuple-assignment tests: 2/2;
- complete `basic`: 62 passed, 1 ignored;
- complete `functions`: 11/11;
- debug and release vstd suites: 1972/1972 each;
- formatting check: clean.

Vermilion:

- c156 proves swap/evaluate-once and nested tuple semantics;
- c157 is rejected by Verus and Lean at the same wrong assertion, line 10;
- differential corpus: 156/156 verdict parity and 75/75 failure-span
  agreement;
- complete six-phase suite: 48/48 end-to-end runners, all twin libraries,
  deterministic emission, incrementality/evidence/fail-closed checks, and the
  complete differential gate pass. Median slowdown was 17.76x; the existing
  10x M2 performance target remains informational.

## SHA-3 boundary

The unchanged `rho` probe now crosses tuple assignment and stops exactly at
`u64::rotate_left`. The verified production claim remains the first `iota`
slice only; other SHA-3 bodies are still explicitly external.

The next executable stage is an exact, width-correct specification and
Vermilion model for `u64::rotate_left`, with native Verus tests, dedicated
positive/negative Vermilion parity tests, the full regression gates, updated
status documents, and separate commits/pushes for each repository changed.
