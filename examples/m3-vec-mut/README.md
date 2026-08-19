# m3-vec-mut — mutating `Vec<T>`: `new`, `push`, exec `len`

Run `./run.sh`. `vecmut.rs` builds vectors and verifies both sides of the
mutation contracts: the callee proves `final(v)@ == old(v)@.push(x)`, and
callers reason about the written-back view.

**What this slice combines.** Three pieces, each landed separately:

- **`&mut` prophecy contracts** (see
  [examples/m3-mutref](../m3-mutref/README.md)): `v.push(x)` is an
  ordinary contract call on a `&mut Vec<u32>` argument — the future of
  the borrow is a fresh symbol constrained by vstd's
  `ensures final(vec)@ == old(vec)@.push(value)`.
- **Extensional equality**: that ensures is Verus `ext_equal` on
  `Seq<T>`. Our `Seq` is a Lean `List`, whose equality *is*
  extensional, so `=~=`-style equality lowers to plain `=`. The same
  holds for `Set` (`Finset`) and `Multiset`; `Map` fails closed (our
  model's off-domain lookup makes structural equality finer than
  Verus's domain-wise one), as does deep ext-eq (`=~~=`).
- **exec `len()`**: vstd specifies it as `len == spec_vec_len(vec)`,
  an uninterpreted symbol axiomatized as `v@.len()` by the
  always-broadcast `group_vec_axioms` — so `spec_vec_len`
  applications lower directly to the view length, verdict-coherently.

Call-site type arguments now substitute into callee contracts
(`Vec::<u32>::new()`'s `ensures v@ == Seq::<T>::empty()` arrives as
`Seq<u32>` at the caller), which any generic callee needed.

All 5 obligations close automatically. Differential guards: c78–c81
(element read-back through two pushes, wrong element, contract caller,
and a false same-length claim that must fail in both verifiers).

## generated/ vs proofs/

- `generated/vecmut/` (one unit module per function) is overwritten on
  every run — never edit it.
- `proofs/vecmut/` is yours; `vrml_sync` keeps proved obligations and
  flags stale ones when the Rust changes.
