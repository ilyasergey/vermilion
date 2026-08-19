# m2-break — `break`/`continue` in loops

Run `./run.sh`. Three functions exercise early loop exits
(`breaking.rs`):

- `count_up_to` — a `loop` with a `break` and a loop `ensures` clause: at
  the break both the `invariant` and the `ensures` are checked; after the
  loop only they are assumed (a break-capable loop contributes no negated
  condition).
- `find_divisor` — a `while` left early through `break`: the at-exit
  invariants must hold at the break site, no decreases check fires there,
  and the continuation cannot rely on `¬(d < n)`.
- `sum_evens` — `continue` re-checks the at-entry invariants **and** the
  termination measure at the continue site before closing the path.

This mirrors Verus's sst_to_air discharge exactly: a `break` asserts the
`invariant` + loop `ensures` clauses (`invariant_except_break` is exempt);
a `continue` asserts `invariant` + `invariant_except_break` plus the
decreases obligation.

As in every example, `generated/` holds the machine attempts (untracked,
overwritten on each run) and `proofs/` is your editable twin: identical to
`generated/` while automation succeeds, `sorry` where it fails — your
proofs survive future runs while the obligation statement is unchanged.
