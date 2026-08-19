# Recursion — investigation target (NOT yet a green gate)

[`recursion.rs`](recursion.rs) is the Verus guide's recursion tutorial
(`source/.../examples/guide/recursion.rs`, MIT/Apache-2.0), kept here as a
**target to investigate what the fragment is still missing** — it does
NOT verify end to end today, by design of the file and of our fragment:

- It is **pedagogical**: it deliberately includes functions that are
  *meant to fail* (`test_triangle_fail`, `bogus`/`exploit_bogus`,
  `circular_reasoning`) to teach what Verus rejects — so "verify the whole
  file" is not the right goal.
- It uses constructs **outside the current sequential fragment**:
  `decreases_to!` (custom decreases relations) and `via`/`#[via_fn]`
  (user-supplied termination proofs), plus a proof block inside a spec fn
  (`floor_log2`). These are lowering-level gaps, not library gaps.

The clean core (`triangle`, `rec_triangle`, `tail_triangle`, `ackermann`
monotonicity, mutual `is_even`/`is_odd`) already lowers and largely
verifies. Run

```console
./case-studies/recursion/explore.sh
```

to see the current state (what lowers, what the adapter refuses, what
automation leaves as `sorry`). The script is named `explore.sh`, not
`run.sh`, precisely so the suite's `run.sh` glob does not gate on it while
it is a work in progress. The gaps it surfaces (`decreases_to!`, `via_fn`)
are scheduled follow-ups; see `docs/reports/target-projects.md`.
