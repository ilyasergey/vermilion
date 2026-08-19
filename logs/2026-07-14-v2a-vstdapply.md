# 2026-07-14 — V2 Phase A: registry-resolved vstd applications

The vstd mirror goes live in the pipeline (plan §V-series, status note
updated there). Design decision recorded in the plan discussion: a
two-tier split — a small structural IR core (ops the generator itself
fabricates in type facts/loop machinery, plus type-carrying empties and
bitops) stays first-class; everything else on the recognized vstd
collection modules travels as a name-resolved application.

- **IR**: one new generic production, `(vstdapply STRING expr*)` — the
  String is the canonical vstd path (`vstd::multiset::Multiset::add`),
  built from module + recognized type + method (the raw middle segment is
  a rustc impl-block name, useless as a key). `docs/ir.md` grammar +
  semantics updated.
- **Adapter**: the vstd op table's refusal arm now emits `VstdApply`
  instead of an error — per-function Rust code is no longer the growth
  path.
- **Registry split**: `Vermilion/Vstd/Registry.lean` is import-free
  (pure string data) so the Mathlib-free `vrml_gen` closure can resolve
  against it at decode time; the `Vstd/<Module>.lean` files keep the
  documentation and will host the (V3) mirrored theorem statements;
  `Vstd/Probes.lean` still fails the build on dangling registry names.
  Set/Map spec-fn entries added (names pinned to the `CollOp` table's
  renderings, ready for Phase B).
- **Decoder**: `vstdapply` resolves through `specFnRegistry` at decode
  time — SEMANTICS, fail closed: unregistered paths abort generation
  with a message naming the path and the registry file to extend.
  Renders as an ordinary application (`HAdd.hAdd a c`), same
  atomization as user spec-fn applications.
- **Proof of life**: `Multiset::add` — needed by the verbatim
  `mergesort.rs` — now lowers end to end with ZERO Rust code beyond the
  generic arm: its meaning is one registry line (`HAdd.hAdd`). Guards
  c133 (congruence positive) / c134 (add-is-not-identity negative).
- Differential corpus **133/133 verdict parity, 64/64 span agreement**;
  full suite green.
- Known follow-up (queued with Phase B): generation-time refusals name
  the vstd path but not the call span (IR exprs are span-free); span
  recovery for `vstdapply` refusals.

Docs updated in the same slice: docs/ir.md (grammar + mirror-boundary
semantics), docs/trust.md (registry = the op table's trust status, moved
from code to reviewable data; lemma registry not trusted at all),
docs/TUTORIAL.md (the add-a-mirror workflow), DESIGN.md, README (V2 row,
corpus 133), plans/execution-plan.md (V-series status).

Next: Phase B — migrate the non-core op table (`seqpush`, `seqadd`,
`seqsubrange`, `seqtomultiset`, `seqnew`, the Set/Map/Multiset value-arg
ops) onto `vstdapply`. Renderings coincide by construction, so generated
bytes, statement hashes, and twins stay stable; the op table shrinks to
the structural core.
