# IMO 1988 problem 6 — Vieta jumping

[`imo_1988_6.rs`](imo_1988_6.rs) is a byte-for-byte copy of Verus's
[`examples/imo_1988_6.rs`](https://github.com/verus-lang/verus/blob/c569645bd37b00b23d349ef64bafee0aa0a49242/examples/imo_1988_6.rs)
at Vermilion's pinned Verus commit `c569645bd37b00b23d349ef64bafee0aa0a49242`
(MIT). Its SHA-256 is
`6bb4485af7c9f8a8cd0910e793a70ffa1009c4fe8e64ea3a2d8a2f0527a4b7ce`.
`verify_verus.sh` checks both the byte identity and Verus's baseline: **17
verified, 0 errors**.

The development proves the classical number-theory result by Vieta jumping.
It packages the quadratic-root transformation as `vieta_jump`, recursively
reduces the nonnegative pair `(a,b)`, and eliminates the exceptional
`q = 2` case. The source makes heavy use of isolated
`assert … by (nonlinear_arith)` queries with explicit local requirements.

Vermilion verifies the file verbatim as **67 Lean obligations: 66 automatic
and one interactive**. The only hand proof is the integer fact
`a² ≠ 2`: the twin derives `-2 < a < 2`, enumerates the possible integers,
and normalizes each case. It lives in
[`proofs/imo_1988_6/sqrt2_contradiction.lean`](proofs/imo_1988_6/sqrt2_contradiction.lean)
(the twin is one unit module per function under `proofs/imo_1988_6/`);
`generated/` remains disposable machine output.

This study forced two adapter fixes:

- `AssertQuery { mode: NonLinear }` now uses the same isolated-query
  discipline as bit-vector blocks. It sees type facts and the query's own
  requirements/body, never the enclosing assertion's already-assumed
  conclusion.
- named return destinations are typed before branch lowering, allowing
  return values from both arms to form a typed SSA join.

```console
./case-studies/imo-1988-6/verify_verus.sh
./case-studies/imo-1988-6/run.sh
```
