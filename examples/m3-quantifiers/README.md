# m3-quantifiers — forall/exists as genuine Lean quantifiers

Run `./run.sh` (a `--manual-proofs` example). `quantified.rs` shows the
quantifier slice:

- `forall|i: int| …` / `exists|x: int| …` become genuine Lean `∀`/`∃`;
  `nat`/machine-int bound variables get their range guard folded into the
  body (`∀` → `guard → body`, `∃` → `guard ∧ body`) — exactly Verus's
  typ_invariant discipline, carried structurally;
- `#[trigger]` annotations and inferred triggers are preserved in the IR and
  generated obligation metadata for possible future e-matching tooling, but
  they do not constrain Lean's proof search;
- the automation ladder instantiates `∀`-hypotheses into linear goals
  (grind's e-matching), but goals needing a quantifier *witness* or an
  index case-split — both functions here — are today's automation
  boundary: their machine attempts fail honestly, and the committed
  `proofs/` twin carries the two hand-written proofs (`index_push`
  case analysis; `⟨x + 1, by omega⟩`), which survive regeneration.

Improving quantifier automation (witness synthesis via the smt rung,
instantiation heuristics) is an open ladder item tracked in the plan.
