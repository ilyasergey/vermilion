# m3-broadcast — `broadcast proof fn` + `broadcast use`

Run `./run.sh`. `broadcast.rs` proves a broadcast lemma about a spec fn
and injects it into a using function's scope.

**How it lowers.** A `broadcast use lemma` statement arrives as Verus's
reveal machinery pointing at a *proof* fn; the lemma's quantified fact —
its parameters universally quantified (with their type facts as
guards) over `requires → ensures` — becomes a plain hypothesis at the
use point. The lemma is **proven**, by Verus and by us (its own
obligation is in this example's generated file), so the hypothesis is a
theorem, not an axiom — nothing enters the trusted base. Scoping falls
out of the fact discipline: a `broadcast use` inside a branch arm or
proof block dies with it.

The differential guards use an `#[verifier::opaque]` spec fn so the
fact is available *only* through the lemma: c93 passes with the use,
c94 fails without it — in both verifiers at the same span.

vstd's default broadcast groups (e.g. `group_vec_axioms`) are handled
where their equations are structural identities of the embedding
(`spec_vec_len ≡ v@.len()`); group `use` statements beyond that fail
closed for now.

## generated/ vs proofs/

- `generated/broadcast/` (one unit module per function) is overwritten on
  every run — never edit it.
- `proofs/broadcast/` is yours; `vrml_sync` keeps proved obligations
  and flags stale ones when the Rust changes.
