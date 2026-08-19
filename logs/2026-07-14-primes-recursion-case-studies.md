# 2026-07-14 — case studies: primes (verified) + recursion (investigation target)

User-directed: adopt case studies that need only Lean-library work (no new
lowering/VC-gen, no Hilbert choice), each in its own folder with a
provenance README, preferring interactive proofs. Candidates were probed
through the pipeline to classify library-only (lowers) vs lowering-needed
(adapter refuses):

- **Refused (excluded, need lowering):** `imo_1988_6`/`power_of_2`
  (`by(nonlinear_arith)` block → `AssertQuery{NonLinear}`), `bitmap`
  (`BitNot`), `extensionality` (Map `=~=`), `broadcast_proof` (type-param
  `arbitrary`), plus S2/S3 (bst_map: Box/returns; chapter-1-22: choose).
- **Dropped:** `calc` (its obligations attribute to vstd's `calc!`/
  `assert_seqs_equal!` macro internals — a vstd artifact, not user code;
  and calc chains are just interactive Lean anyway, per the user).

## primes — VERIFIED (multi-file, number theory)

`case-studies/primes/`: the Verus summer-school primality development,
two files verified together —
- `primes_spec.rs` (`chapter-2-1`): `divides`/`is_prime` + a `main` that
  proves `is_prime(2/3/7)`, `!is_prime(6/9)`, including an
  `assert forall … by` factor-elimination block. 15 obligations, 14
  automatic + 1 interactive (`is_prime(3)`: the ladder does not
  instantiate the bounded `forall` over the single factor, so the twin
  supplies `factor = 2 ⇒ 3 % 2 ≠ 0`).
- `primes_exec.rs` (`chapter-2-2`): `test_prime`, a trial-division
  primality checker (`while` + invariant) proved `== is_prime(candidate)`.
  9 obligations, all automatic.

No fragment growth — it exercises a domain (divisibility) not otherwise in
the corpus, entirely within the existing fragment.

## recursion — investigation target (kept, not gated)

`case-studies/recursion/`: the Verus guide's recursion tutorial, kept with
a README + a non-gated `explore.sh` (so `run_suite`'s `run.sh` glob skips
it). It does not verify whole-file — it is pedagogical (deliberate
failures: `test_triangle_fail`, `bogus`, `circular_reasoning`) and uses
two lowering-level features we lack: `decreases_to!` and `via`/`#[via_fn]`.
Its clean core (`triangle`/`tail_triangle`, `ackermann` monotonicity,
mutual `is_even`/`is_odd`) lowers. Recorded in
`docs/reports/target-projects.md` (§S4) as the driver for those two
scheduled fragment features.

Docs: case-studies README table, target-projects.md (primes landed;
recursion investigation target with its gaps). Suite green (primes gated
via its `run.sh`; recursion's `explore.sh` not gated).

Next: the sorting case study (`multiset.rs`) — the one remaining
library-only fit, requiring a `sorted_by`/`sort_by`/`lemma_sorted_unique`
mirror in the Lean library.
