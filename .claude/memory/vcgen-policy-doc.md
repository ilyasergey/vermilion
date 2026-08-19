On 2026-07-13 the user asked that `docs/vcgen.md` — the conventional
(judgment / inference-rule) specification of the VC-generation policy — be
kept in sync with the code, and be discoverable from the top-level docs.

- `docs/vcgen.md` specifies the generation state `⟨Γ, H, V, κ⟩`, the
  per-statement transition `σ ⊢ s ⇒ σ' ⊣ O` (one rule per `Stmt`), the
  program-level initial state, the spec-fn unfold policy, and the soundness
  obligations the planned foundational generator must discharge. It is the
  reference that the Loom-based foundational VC generator must reproduce.
- It mirrors `lean/Vermilion/Ir/Vcgen.lean` (`GenState`, `processStmt`,
  `generateObligations`) and `Render.lean` (`renderObligation`).
- Linked from `README.md` (the "one boundary" bullet), `DESIGN.md` (TCB
  item 3, the roadmap note, and "Where to look"), `docs/ir.md`, and the
  `Vcgen.lean` header.

`docs/vcgen.md` is **normative project policy**, not just documentation
(user directive, 2026-07-13: "adopted as a policy per project"). There is no
CI/script guard — the user chose to rely on this agent directive instead of a
mechanical check: **the agent is responsible for keeping the VC-generation
implementation and `docs/vcgen.md` in sync.**

**Why:** The user wants the VC-generation policy documented in conventional
form for later foundational formalisation, and treated as a first-class spec
that does not drift from the implementation — enforced by agent discipline,
not tooling.

**How to apply:** Whenever you touch VC generation — a new/changed rule in
`processStmt`/`generateObligations` (`lean/Vermilion/Ir/Vcgen.lean`), a change
to the generation state, the obligation shape, the unfold/visibility policy,
or the emitted theorem form in `Render` (`renderObligation`) — update
`docs/vcgen.md` in the **same slice** so the per-statement judgment,
correspondence table, and prose stay accurate. This mirrors the same-slice
discipline `docs/ir.md` records for grammar growth (Rust serializer, Lean
parser, grammar doc, policy doc, differential corpus together). Before
finishing any VC-gen change, re-read `docs/vcgen.md` and confirm every rule
still matches the code. Related: [[foundational-vcgen]],
[[lean-side-ir-parsing]], [[spec-fns-no-inlining-no-fuel]].
