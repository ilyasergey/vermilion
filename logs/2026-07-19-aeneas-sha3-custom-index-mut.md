# 2026-07-19 — Aeneas SHA-3 custom mutable-index milestone

## Outcome

The tuple-keyed custom `IndexMut` boundary and its returned-`&mut` effect now
work across the pinned Verus fork and Vermilion. This is infrastructure for
the unchanged Aeneas SHA-3 project; it is not yet a SHA-3 correctness claim.

- Verus fork commit `1fc6a46d156165be82c1ab3377c25f8a0925929f`
  reconstructs tuple patterns for contracted function signatures, scopes the
  destructured bindings in contracts and bodies, and supports statically
  dispatched custom `IndexMut` through `IndexSpecImpl`.
- Vermilion aliases callee results of type `&mut` to the returned borrow and
  maps their prophecy future to the caller's concrete indexed destination at
  resolution. The textual IR and Lean VC rules do not grow.
- Differential c150 is the positive tuple-keyed custom indexing case: all 11
  obligations verify. c151 changes only the expected value and is rejected at
  line 39 by both Verus and Lean.
- VS Code jump navigation resolves synthetic impl namespaces such as
  `impl__2.index_mut` through the manifest and bodyless impl spec methods such
  as `impl__1.index_req` through their Specs markers. Continuation lines in
  contracts map to their precise comma-delimited postcondition VC (line 28 of
  c150 opens `ensures_3_1`). Lake lists c150/c151 as
  differential proof roots, so the opened `impl__2_index_mut.lean` twin and
  its Specs import elaborate in the editor.

## Verification

- Verus `arrays`: 24/24.
- Verus `functions`: 11/11.
- vstd: 1,972 verified, 0 errors in debug and release.
- Vermilion focused c150: 11/11 Lean obligations.
- Vermilion focused c151: the intended assertion fails at the same source
  line as Verus.
- VS Code extension: 9/9 Node tests.
- Differential Lake/editor guard: c148 and the exact c150 generated/proof
  `impl__2_index_mut` units resolve their Specs imports.
- Complete six-phase Vermilion suite: 47/47 example/case-study runs;
  determinism, incrementality, ill-typed, evidence, and all twin libraries
  pass; differential verdict parity is 150/150 and failure-span agreement is
  72/72.
- Pinned upstream Aeneas SHA-3 Lean baseline: 6,822-target clean build passed,
  including `Shars.Verification.Sponge` and `Shars`.

## Measured next frontier

The refreshed unchanged-body probes no longer stop at custom indexing:

1. `keccak_iota` passes Verus and reaches Vermilion lowering, which refuses
   the unresolved associated binder type `Index::Output`;
2. `keccak_rho` is rejected by Verus at the destructuring assignment
   `(x, y) = ...`;
3. `keccak_chi` reaches the middle end and needs an allowed loop `decreases`
   annotation.

Before adding those semantic features, the next project stage is the
annotation-preservation harness: every upstream `src/` file must remain
present, and erasing marked verification-only additions must reproduce the
pristine source byte for byte.
