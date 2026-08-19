# M2 range `for` loops

[`forloop.rs`](forloop.rs) exercises `for i in lo..hi` loops, which Verus
desugars into a break-shaped loop over a ghost
`VerusForLoopWrapper<Range<_>>`. Vermilion recognizes exactly that canonical
desugaring and specializes it to the equivalent integer loop
([docs/trust.md](../../docs/trust.md) has the full argument):

- **entry** checks each invariant at the first peek value
  (`ite(lo ≤ hi, lo, arb)` — `arb` standing in for vstd's `arbitrary()`,
  one fixed unknown per loop);
- **iterations** assume `lo ≤ i < hi` plus the invariants at `i`;
- the **back edge** re-checks at `i + 1`, with the remaining count `hi − i`
  as the termination measure;
- the **exit** hands the continuation the invariants at
  `ite(lo ≤ hi, hi, arb)` — vstd peek's guard is *inclusive*, so after a
  nonempty loop the loop variable reads `hi`, which is what discharges
  postconditions.

Anything non-canonical fails closed: other iterators, `for x in y: e`,
invariants or bodies touching the iterator, user `break`/`continue`, bodies
assigning the bounds.

```console
./examples/m2-forloop/run.sh
```

`count_up` verifies fully automatically (12 obligations, including both ITE
instances); `fill`'s quantified prefix-preservation is the interactive twin
proof (`proofs/forloop/fill.lean`), per the generated/proofs methodology. The
heavyweight companion is the [vec-reverse case study](../../case-studies/vec-reverse/),
whose double-update swap needs five interactive proofs.
