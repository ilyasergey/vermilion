# m3-const-generics — `const N: usize` parameters

Run `./run.sh`. `constgenerics.rs` verifies a function generic over a
`const N: usize` once, and two instantiated calls.

**How it lowers.** A const generic is a *value* parameter: the
`ConstTyp` bound moves `N` out of the type-parameter list and into the
obligation binders as an `Int`, carrying the range facts of its declared
Rust type (`usize` gets the arch-neutral 64-bit bound — Verus verifies
for a symbolic 32/64-bit word, and the 64-bit bound holds for both).
Uses of `N` in code and contracts (`NullaryOpr::ConstGeneric`) are the
binder; at an instantiated call (`shift::<3>`), the type-argument
substitution turns them into the literal, so callers compute
numerically. Const-generic spec fns are supported as definitions with leading
explicit `Int` parameters (see `examples/m3-arrays`); const-generic datatype
declarations still fail closed.

All 8 obligations close automatically. Differential guards: c91/c92.

## generated/ vs proofs/

- `generated/constgenerics/` (one unit module per function) is
  overwritten on every run — never edit it.
- `proofs/constgenerics/` is yours; `vrml_sync` keeps proved
  obligations and flags stale ones when the Rust changes.
