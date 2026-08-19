# 2026-07-19 — Aeneas SHA-3 concrete associated-output normalization

## Outcome

The unchanged `Index`/`IndexMut` return types `&Self::Output` and
`&mut Self::Output` now lower when the post-simplify Verus crate supplies one
exact monomorphic associated-type impl equation. The equation is applied
before neutral IR emission; the Lean type grammar and VCGen are unchanged.

- `MiddleOutput` retains the crate's associated-type impl declarations.
- `resolve_typ` substitutes call-site type parameters, then resolves only a
  unique, exact, parameter-free trait-path/name/type-argument match.
- No match, a generic impl, or multiple matches leaves the SST projection in
  place, where binder lowering rejects it explicitly.

## Focused verification

- c152: positive tuple-keyed `Index`/`IndexMut` using `Self::Output`, 11/11
  Lean obligations verified and Verus accepted it.
- c153: identical surface with one wrong assertion, rejected at line 39 by
  both Verus and Lean.
- Generic refusal: Verus accepts
  `tests/lowering_refusals/associated_projection_generic.rs`; Vermilion records
  phase `lowering` and refuses its abstract projection.
- Differential corpus: 152/152 verdict parity and 73/73 failure-span
  agreement.
- The differential verdict cache now replays a case only while that case's
  generated manifest, `Specs`, and obligation modules remain materialized.
  A cold run rebuilt all 152 module sets, and the Lake/editor guard resolved
  both c148 and c150 generated/proof imports. This closes the cached-clean-tree
  failure exposed by the first complete-suite attempt.
- Unchanged `keccak_iota` probe: advances from lowering refusal to Lean, emits
  12 obligations, and leaves 10 unproved without state/index contracts.

## Complete-suite gate

The post-fix six-phase suite passed: Rust workspace tests; six source-guard
unit tests; nine VS Code tests; the 7/7 Rust plus 3/3 metadata preservation
check; all 47 end-to-end example runners; deterministic IR/Lean emission;
incrementality, ill-typed, generic-refusal, and evidence lifecycle guards; all
proof-twin libraries; 152/152 differential verdict parity; 73/73 failure-span
agreement; and the differential Lake/editor-resolution guard.

## Next gate

Add typed annotation regions directly to
`case-studies/aeneas/sha3/verification/src/algos.rs` for the Verus wrapper,
imports, named results, `IndexSpecImpl`, and `Default`/`Deref`/`Index` contracts.
The source guard must continue to report identical executable tokens. Verify
the unchanged `iota` body before moving to destructuring assignment and the
remaining Keccak steps.
