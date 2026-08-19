# m3-trait-bounds — generic functions under trait bounds

Run `./run.sh`. `traitbounds.rs` verifies `fn generic_user<T: HasVal>`
once, generically, and a concrete caller through the `C` impl.

**How it lowers.** Inside the generic function, a trait spec fn applied
at the abstract `Self = T` (`x.val()`) becomes a **universally
quantified function-typed binder** of the enclosing function (the
dictionary of the bound); the trait-method call takes the trait
declaration's contract at `Self = T`, phrased in those symbols — so the
inherited `requires` is proved and the `ensures` assumed exactly as in
the concrete case (guard: c96, a generic caller with too-weak requires,
fails in both verifiers). `TraitBound` predicates lower to `true`:
their verification content *is* the contracts. Proving over all
interpretations of the symbols covers every impl — Verus's dictionary
semantics. Instantiated calls substitute concrete types and the static
trait dispatch takes over (`impl&%0::val` in the concrete caller's
contract). Dynamic dispatch (`dyn`) stays out of the fragment.

## generated/ vs proofs/

- `generated/traitbounds/` (one unit module per function, shared spec-fn
  definitions in `Specs.lean`) is overwritten on every run.
- `proofs/traitbounds/` is yours; `vrml_sync` reconciles it.
