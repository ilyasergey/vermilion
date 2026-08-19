# m3-exec-closures — exec closures with contracts

Run `./run.sh`. `execclosures.rs` defines an exec closure carrying
`requires`/`ensures` and calls it twice; the caller proves the
precondition at each call and reasons from the postcondition.

**How Verus phrases it.** The closure body arrives as an inline
sub-verification (`ClosureInner`: assume the requires, check the body,
assert the ensures); the closure's contract reaches call sites through
two internal predicates, `ClosureReq`/`ClosureEns`, constrained by an
assumed quantified fact, and every call goes through
`exec_nonstatic_call` — `req` proved at the call, `ens` assumed of the
result.

**How Vermilion lowers it, with no axioms.**

- the body check lands in a `(scope …)` block: fresh binders (with type
  facts) for the closure parameters, the body's own assumes and asserts
  inside — everything dying with the scope;
- `ClosureReq`/`ClosureEns` become **fresh function-typed binders**
  (`… → Prop`), demand-allocated per anonymous-closure type; the assumed
  contract fact and the call contracts apply them — ordinary
  universally quantified symbols, exactly the SMT encoding's discipline;
- the opaque closure *value* (an SST temporary that is read but never
  assigned) becomes a fresh binder of the anonymous-closure datatype,
  emitted as an opaque single-variant inductive;
- `grind` discharges the call-site goals by instantiating the contract
  fact (the range predicates and datatype accessors carry `@[grind]`
  so e-matching can open them).

All 6 obligations close automatically. Differential guards: c88 (call
chain passes), c89 (requires violated at the call — fails both sides),
c90 (body violates its ensures — fails both sides).

## generated/ vs proofs/

- `generated/execclosures/` (one unit module per function) is
  overwritten on every run — never edit it.
- `proofs/execclosures/` is yours; `vrml_sync` keeps proved
  obligations and flags stale ones when the Rust changes.
