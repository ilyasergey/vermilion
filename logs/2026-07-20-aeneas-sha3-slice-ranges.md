# Aeneas SHA3 immutable executable slice ranges

## Outcome

The first remaining executable-subslice capability for the unchanged
`AeneasVerif/sha3.rs` scalar path is complete. Vermilion now gives exact
semantics to immutable `&src[start..end]` and `&src[start..]`, including the
panic-freedom bounds Verus requires. The current Verus fork is
`32259d40b05103fbeab45142dd51c3557f6426c8`, pushed to `origin/dev`.

This is a tooling milestone, not yet a larger SHA3 theorem claim. The local
SHA3 project remains 43 verified / 0 errors in Verus and 142/142 Lean
obligations in 20 proof twins with no `sorry`. Its verified surface still ends
at unchanged `xor_lane`; unchanged `xor` is the immediate consumer of the new
immutable range support.

## Verus fork change

Upstream vstd already specified `SliceIndex<[T]>` for `Range<usize>`, but the
pinned fork had no corresponding `RangeFrom<usize>` implementation. The fork
now:

- imports `core::ops::RangeFrom` in `vstd/std_specs/slice.rs`;
- requires `start <= slice.len()` for suffix indexing;
- specifies the result as `slice@.subrange(start, slice@.len())`; and
- adds direct-index and method-call positive tests, wrong-suffix negatives,
  and out-of-bounds negatives to the native slice regression file.

The focused slice suite passes 23/23. The full upstream
`rust_verify_test` suite passes, and rebuilding release vstd reports 1,972
verified, 0 errors. The complete Cargo test group reported 19/19 groups in
1,874.24 seconds.

## Vermilion lowering and soundness finding

Verus represents these indexing results through a delegated higher-order
`call_ensures(<I as SliceIndex>::index, ...)` `FnDef` closure. Vermilion now
recognizes only the exact concrete core `Range<usize>` and
`RangeFrom<usize>` shapes and synthesizes ordinary call contracts:

| Rust expression | Call requirement | Result relation |
|---|---|---|
| `&src[start..end]` | `start <= end && end <= src.len()` | `result@ == src@.subrange(start, end)` |
| `&src[start..]` | `start <= src.len()` | `result@ == src@.subrange(start, src.len())` |

The investigation found a subtle soundness hazard: the SST closure exposes
the result relation but does not carry the inherited `Index` trait
precondition. Lowering only that closure would make out-of-bounds subslices
appear safe. The adapter therefore reconstructs the exact bounds requirement
together with the result relation. It refuses all other delegated `FnDef`
contracts, and it does not infer mutable range semantics from this immutable
case.

No textual IR form, Lean definition, axiom, or VCGen rule changed. Lowering
uses the existing call contract and `Seq::subrange`; the existing `(CALL)`
rule emits the bounds obligations and admits the postcondition only afterward.

## Differential guards

Six new dedicated cases cover semantics and safety:

- c164: correct `Range` view;
- c165: wrong `Range` result, rejected at line 10 by both verifiers;
- c166: correct `RangeFrom` suffix;
- c167: wrong `RangeFrom` result, rejected at line 10 by both;
- c168: out-of-bounds `Range`, rejected at line 9 by both; and
- c169: out-of-bounds `RangeFrom`, rejected at line 9 by both.

These cases are intentionally split. Correct-view tests alone would not have
caught the missing inherited precondition.

## Whole-suite evidence

After pinning the fork and rebuilding vstd, `./scripts/run_suite.sh` completed
all six phases:

- 48/48 example and case-study runners;
- SHA3 142/142 obligations, 20 twins, 0 `sorry`;
- seven SHA3 Rust files present and executable-token-identical after erasing
  76 typed annotation regions; three metadata files byte-identical;
- deterministic emission, incrementality, fail-closed lowering, typeclass
  evidence, every registered twin library, and fresh editor `Specs` roots;
- 168/168 differential verdict parity; and
- 82/82 failure-span agreement.

The first sandboxed run passed phases 1–3 and the complete SHA3 runner, then
hit only an environment permission denial while the harness tried to write
through `/dev/stderr` in phase 4. The identical suite was rerun with the needed
permission and completed. This was not a verifier or source failure.

The median differential slowdown was 17.52× over 168 timed cases. That remains
above the historical 10× performance target and is logged as a performance
miss, not as a soundness or verification failure.

## Remaining parity path

The ordered path to the same six scalar results as upstream Aeneas is now:

1. annotate and prove unchanged `StateArray::xor` using the landed immutable
   range/suffix contracts;
2. implement exact mutable sub-slice prophecy/write-back and
   `copy_from_slice` length semantics, then prove unchanged `copy_to`;
3. prove absorb-initial/final, absorb, squeeze, and sponge, including all
   bounds and termination obligations;
4. prove SHA3-224/256/384/512 and SHAKE128/256; and
5. connect those contracts to the exact pinned `sha3.lean` `Sha3.Spec`
   definitions and audit the public theorems for zero added axioms.

Only after step 5 will Vermilion match the upstream Aeneas scalar theorem
boundary. Full-crate breadth (`lib.rs`, `simple.rs`, tests, and the unproved
NEON module) remains the stretch goal after that milestone.
