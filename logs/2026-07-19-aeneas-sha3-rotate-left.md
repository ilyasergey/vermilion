# Exact unsigned rotation and generated `Specs` editor roots

## Outcome

The SHA-3 `rho` frontier no longer stops at `u64::rotate_left`. Verus fork
commit `a33ad15348aa7153de18a48a246b145bf4e2f483` specifies exact
modulo-width rotation for every unsigned type, and Vermilion mirrors those
canonical vstd calls through `Vermilion.Vstd.Rotate`. Differential c158/c159
raise the corpus to 158/158 verdict parity and 76/76 failure-span agreement.

The unchanged `keccak_rho` probe lowers fully and emits 23 obligations. Nine
index/bounds/precondition goals remain; the next stage is to add permitted
contracts and loop invariants in the annotated SHA-3 copy and prove the exact
poststate. Rotation lowering itself is complete.

The remaining Lean editor failure was broader than proof-root discovery:
generated trees outside `tests/differential` all use the same
`generated.<stem>` namespace. The Lake wrapper now activates the requested
generated stem through a disposable overlay and reports its canonical module
name. The regression opens the originally reported
`case-studies/aeneas/probes/generated/keccak_iota/impl__6_index.lean`, checks
`generated.keccak_iota.Specs`, and creates another generated root outside
`tests/` to prevent a hard-coded recurrence. Existing Lean language-server
workers need one restart after this wrapper update.

## Verification evidence

- focused c158: 12/12 Vermilion obligations;
- c159: Verus and Vermilion reject the same wrong assertion at line 8;
- Verus: focused rotation 2/2, standard 38/38, basic 62 passed/1 ignored,
  functions 11/11, debug and release vstd 1,972 verified/0 errors;
- SHA-3 runner: 12/12 current obligations; source guard 7 Rust files,
  38 annotation regions, and 3 metadata files;
- exact editor integration test: keccak-iota and fresh generated/proof roots
  resolve sibling `Specs` imports and survive add/remove/cache checks;
- full Vermilion suite: 48/48 runners, 158/158 differential verdicts,
  76/76 failure spans, determinism/incrementality/fail-closed/typeclass/twin
  gates passed; median differential slowdown 19.28x.

The first sandboxed full-suite run reached the final phase but could not write
the harness copy through `/dev/stderr`; the same suite was rerun with the
required permission and completed successfully. No executable SHA-3 Rust was
changed. The only SHA-3 probe edit is an allowed termination annotation.

## Remaining risks and next action

- `rho` is not yet verified: close its nine bounds/index goals and exact
  postcondition in `verification/src/algos.rs`.
- Then verify π, χ (with its allowed `decreases` clause), θ, `round`, and
  Keccak-p before byte/slice/sponge work.
- Upstream SHA-3 licence/redistribution provenance remains unresolved.
- The 19.28x median differential slowdown exceeds the nominal 10x performance
  target even though the correctness suite passes; do not report that
  performance gate as green.
