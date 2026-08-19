# m3-traits — traits with contracts, statically dispatched

Run `./run.sh`. `traits.rs` declares a trait whose methods carry
contracts over trait spec fns (`area_spec` for meaning, `wf` for the
precondition — Verus only allows `requires` on the trait declaration),
two impls, and a caller reasoning through the dispatched contracts.

**How it lowers.**

- Each impl's spec fns become ordinary Lean definitions under the impl's
  name (`impl__0.area_spec`, …); a trait spec-fn *call* resolves
  statically to the impl for its `Self` type. Contract positions carry no
  resolution in the SST (Verus's SMT encoding declares trait fns as
  symbols with per-impl axioms), so the lowering matches the call's type
  arguments against the `TraitMethodImpl` declarations itself.
- An exec trait-method call verifies against the **trait method's
  declaration** — the inherited `requires` is proved at the call site
  (`call_requires` obligations; see the differential guard
  `c83_trait_requires_violated`) and the inherited `ensures`, instantiated
  at the impl's spec fns, is assumed for the result. An impl that
  redeclares its contract materializes the inherited clauses into its own
  declaration, which is then used directly.
- Each impl's method body is checked against that same inherited
  contract (`c84_trait_impl_violates_ensures` fails in both verifiers).
- Generic bounds (`T: Shape`) are covered by the later
  `examples/m3-trait-bounds` slice. Dynamic dispatch stays out of the
  fragment and fails closed.

**Interactive proofs.** The two impl overflow checks (`side · side < 2³²`
from `side < 100`) are nonlinear — beyond the automation ladder, so the
tracked `proofs/traits/impl__0_area.lean` and `proofs/traits/impl__1_area.lean`
twins prove them manually (`positivity` +
`nlinarith`), the same workflow as `examples/m2-loops` and
`examples/m3-quantifiers`. The run script passes `--manual-proofs`.

## generated/ vs proofs/

- `generated/traits/` (one unit module per function, shared spec-fn
  definitions in `Specs.lean`) is overwritten on every run — never edit it.
- `proofs/traits/` is yours (tracked here, since it carries manual
  proofs); `vrml_sync` keeps proved obligations and flags stale ones
  when the Rust changes.
