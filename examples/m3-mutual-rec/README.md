# m3-mutual-rec — mutually recursive spec fns

Run `./run.sh`. `mutualrec.rs` defines `is_even`/`is_odd` by mutual
recursion and proves ground facts under `reveal_with_fuel`.

**How it lowers.** The lowering admits reference cycles among spec fns
(every member of the in-flight cycle is marked recursive); the renderer
groups mutually-referencing definitions into one Lean `mutual` block,
each with its own `termination_by` from the Verus-checked decreases.
Two subtleties this slice fixed for all recursive spec fns:

- **Totality over `Int`**: a `nat` parameter's range is a typing fact
  the `Int` embedding doesn't carry into the definition, so recursion
  need not terminate at negative inputs. Recursive bodies are now
  guarded on the decreases measures being nonnegative (off-range they
  return `default` — a valid interpretation of Verus's unconstrained
  off-range semantics), and the guard hypothesis hands `decreasing_by`
  the missing lower bound.
- **Interleaved unfolding**: machine attempts unfold a mutual chain by
  `iterate N (try first | rw [f] | rw [g])` — alternation, since the
  chain switches definitions at every step; per-function loops cannot
  follow it. `N` sums the reveal rounds, exactly Verus's fuel.

Both obligations close automatically. Differential guards: c99/c100.

## generated/ vs proofs/

- `generated/mutualrec/` (one unit module per function, shared spec-fn
  definitions in `Specs.lean`) is overwritten on every run.
- `proofs/mutualrec/` is yours; `vrml_sync` reconciles it.
