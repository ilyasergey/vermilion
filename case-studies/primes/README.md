# Primality — verified number theory (multi-file)

Two related Verus programs about primality, verified through Vermilion
(Lean is the only verifier). Verbatim from the Verus repository's summer
school (`source/rust_verify/../examples/summer_school/`, MIT/Apache-2.0):

- [`primes_spec.rs`](primes_spec.rs) — `chapter-2-1.rs`: the **spec-level**
  reasoning. `divides` and `is_prime` (a `forall` over factors), plus a
  `main` that proves concrete facts — `is_prime(2)`, `is_prime(3)`,
  `!is_prime(6)`, and `is_prime(7)` via an `assert forall … by` block that
  rules out each factor. 15 obligations — 14 automatic, 1 interactive
  (`is_prime(3)`: the ladder does not instantiate the bounded `forall`
  over the single candidate factor, so the twin supplies the one-line
  `factor = 2 ⇒ 3 % 2 ≠ 0` argument).
- [`primes_exec.rs`](primes_exec.rs) — `chapter-2-2.rs`: the **executable
  algorithm**. `test_prime`, a trial-division primality checker (a `while`
  loop scanning candidate factors) proved to satisfy
  `result == is_prime(candidate)` against the same spec — the loop
  invariant carries "no smaller factor divides". 9 obligations, all
  automatic.

Together they are a small verified development spanning two files: the
declarative specification and an imperative implementation proved to
refine it.

```console
./case-studies/primes/run.sh
```

runs both through `scripts/run_example.sh` (Verus front end under
`--no-verify`; Lean judges every obligation; the `proofs/` twin holds the
one interactive proof and is kernel-checked).

This case study needed **no fragment growth** — it lowers entirely within
the existing sequential fragment (quantified spec fns, `%`/`emod`,
`while` + invariant, `assert forall … by`). It exercises a domain
(number theory / divisibility) not otherwise in the corpus, and follows
the interactive-proofs-first policy: where the `vrml` ladder does not
close a bounded-quantifier goal, a short Lean proof does, rather than
tuning automation toward Verus's SMT behaviour.
