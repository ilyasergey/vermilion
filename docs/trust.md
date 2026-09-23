# What you trust when Vermilion says "verified"

Every obligation Vermilion emits is a Lean theorem checked by the Lean
kernel — the machine automation (`vrml`) and your interactive twin proofs
are **not** trusted; if they close a goal, the kernel re-checks it. What
*is* trusted is the translation that produced the theorem statements and
the conventions of the shallow embedding. This document enumerates those
trust assumptions and the argument for each, so they can be reviewed —
and eventually discharged by the planned foundational VC generator
([docs/vcgen.md](vcgen.md), the normative generation policy, records the
soundness obligations that effort must prove).

## The trusted computing base

Everything between the Rust source and the Lean kernel, from larger to
smaller trust surface (kept in step with
[DESIGN.md](../DESIGN.md#trusted-computing-base)):

1. **The pinned Verus front/middle end** — elaboration, mode checking,
   VC *placement* (which asserts exist, where overflow checks go). Verus
   is also the differential oracle, so bugs here are shared with Verus
   rather than introduced by Vermilion.
2. **The Rust lowering** (`vermilion_direct/src/lower.rs`) — the
   semantic translation of pre-poly SST to the neutral model:
   SSA/spec-let substitution, callee-contract substitution, type facts,
   branch joins, loop havoc sets, prophecy resolution, trait dispatch.
   *The largest Vermilion-specific trusted component* — the sections
   below are, in essence, its assumption ledger. Mitigations: the
   fail-closed principle, and the differential gate.
3. **The Lean generator** (`Vermilion.Ir`) — IR parsing and the
   syntactic assembly of obligation statements, following the normative
   policy in [docs/vcgen.md](vcgen.md). Mechanical, but today
   unverified; the roadmap replaces it with a foundational generator.
4. **The Lean prelude conventions** (`Vermilion.Prelude`) — the shallow
   embedding choices summarized in the next section. User spec fns are
   *not* part of this surface: they are ordinary Lean definitions the
   kernel checks.
5. **Lean's kernel and the axioms used by each proof.** The `smt` tactic
   uses cvc5 with reconstruction (`trust := false`); solver output becomes
   a Lean proof term checked by the kernel. Reconstruction does not establish
   that imported theorems are axiom-free: dependency assumptions require a
   separate axiom audit.
6. **Glue** — `vrml_check`'s failure-to-obligation mapping and
   `vrml_sync`'s twin reconciliation can misreport locations or
   staleness but cannot make a false obligation pass the kernel.

Not trusted for the Lean verdict: Verus's Z3 back end (used in baseline and
differential runs), the `vrml` automation (a
failed tactic is a `sorry`, never a false accept), and the generated
files themselves (regenerated and re-judged every run).

The rest of this page enumerates the *semantic assumptions* components
1–4 make — the specific claims a reviewer (or the future foundational
generator) must accept or discharge.

## The fail-closed principle

Anything the lowering does not recognize aborts translation with an
explicit `unsupported SST …` error — a program outside the fragment is
rejected, never silently mistranslated. There are **no identity
catch-alls**: unary operators, statement forms, expression forms, binder
forms, and IR heads all dispatch explicitly (audited 2026-07-13 after a
fail-open `UnaryOpr` catch-all was found and removed — `Box`/`Unbox`/
`CustomErr` are the only deliberate identities, being coercions and
diagnostic wrappers with no semantics in a natively-typed embedding).

The same audit standard found and fixed a scoping leak: `assert … by`
blocks (Verus's `DeadEnd`) were lowered transparently, so an `assume`
inside the block leaked into the continuation — accepting programs
Verus rejects. Proof blocks now lower to the `(scope …)` check-and-
discard construct (rule `(SCOPE)` in [docs/vcgen.md](vcgen.md)), and
the differential case `c87_assertby_assume_scoped` pins the fix: the
leaked-assume program must fail in both verifiers.

## Annotation-preserving external sources

The SHA-3 case study makes a separate source-identity claim before making a
verification claim. `vrml_source_guard` compares every verification-side Rust
file with its pinned pristine counterpart after erasing balanced, typed
annotation regions, then requires equal Rust token streams. Cargo/toolchain
metadata and non-Rust upstream sources remain byte-identical, and every
upstream Rust path must remain present. Only colocated Lean artefacts under
`verification/src/generated/` and `verification/src/proofs/` are excluded
from source inventory.

Erased verification-only impls are fail-closed: they may define only a closed
`View::view` or `IndexSpecImpl::index_req`; an ordinary or executable method is
rejected. This guard is conventional trusted tooling, not a kernel theorem:
its eight unit tests and the pinned Git blob checks mitigate mistakes in its
region parser and token comparison. It establishes unchanged executable Rust,
not functional correctness. The latter is claimed only for functions whose
Lean obligations and proof twins pass without `sorry`.

## Embedding conventions (prelude)

- Machine integers of every width embed as Lean `Int` with **explicit
  range facts** (`inUnsignedRange`/`inSignedRange`); `bool` embeds as
  `Prop`. Overflow is a proof obligation at the producing site; ranges
  are hypotheses at value-introduction sites (below). VIR `Clip` is not
  erased: `nat` saturates at zero, unsigned widths reduce modulo `2^w`,
  and signed widths use the corresponding two's-complement representative.
  This matters even when ordinary checked arithmetic has a paired range
  assertion: explicit `verus_builtin::{add,sub,mul}` operations can be
  wrapping. c144/c145 pin `u32` multiplication in both directions. `char`
  clips fail closed rather than approximating the Unicode scalar-value gap.
- `ediv`/`emod` agree with Verus's Euclidean division and are **opaque at
  divisor zero** (an arbitrary, unconstrained value — mirroring SMT's
  underspecification, so nothing can be proved about `x / 0` on either
  side).
- Spec conditionals over values use `iteP`, which takes explicit
  `[Decidable guard]` evidence; `Seq` is a Lean `List`, `Set` a `Finset`,
  `Multiset` a Mathlib `Multiset` — all with
  genuinely extensional equality. `Map` is a finite domain plus a
  **total** lookup that is unconstrained off-domain; see "Equality"
  below for the one place this bites.

## Lean typeclass evidence at the Verus boundary

Verus/Rust `bool` is always executable, but the shallow embedding represents
it as Lean `Prop`. A bare binder `p : Prop` therefore does not itself provide
the `Decidable p` dictionary needed to elaborate `iteP p a b`. Vermilion does
not silently install a global classical instance. The Lean generator derives
a first-class `typeclass_evidence` obligation, emitted after spec definitions
as a local instance in per-file mode or a shared imported `Evidence.lean`
instance in per-function mode, tracked in the manifest/twin like a logical VC.

The generated copy carries a conspicuous `sorry` so downstream VCs can be
checked *contingently*. This does not make a verification succeed:
`vrml_check` reports the unresolved evidence at its Rust span,
`vrml_sync --probe` rejects the twin, and `--fail-on-sorry` remains red. The
final success path kernel-checks the complete twin, including the evidence
term before every theorem that consumes it. For the Rust-bool bridge the
current twins make the classical choice explicit:

```lean
exact Classical.propDecidable p
```

This dictionary uses Lean's standard classical axioms, including choice;
it introduces no project-specific axiom. The kernel checks the term under
those axioms. Classical reasoning is also used by `chooseSpec` and by the
explicit `open Classical in` / `noncomputable` fallback for spec definitions
with opaque proposition guards. Evidence instances do not retroactively
supply those earlier definitions. See the
[typeclass-evidence policy](vcgen.md#typeclass-evidence-obligations). For each supported evidence producer, the trusted part is the
generator's **evidence-demand analysis and placement**—that it finds every
matching dictionary needed by rendered terms and does not accidentally use a
placeholder in a reported-success path. The initial theorem-layer
`Decidable` producer is guarded by
[c139](../tests/differential/c139_bool_ite_evidence_ok.rs) /
[c140](../tests/differential/c140_bool_ite_evidence_wrong.rs) plus
[`scripts/test_typeclass_evidence.sh`](../scripts/test_typeclass_evidence.sh);
general producer completeness remains a proof obligation of the planned
foundational generator (`docs/vcgen.md`).

## Type facts (the `typ_invariant` analogue)

At every value-introduction site — parameters, call results, branch
joins, loop havoc symbols, prophecy futures, quantifier binders — the
value's type contributes hypotheses: scalar ranges; quantified element
facts for `Seq`/`Vec`, `Set`/`Multiset`, and `Map` values at contained
keys; datatype field facts through the accessors, recursively and
generic-instantiated.

- **Assumption:** these facts are *no stronger than* Verus's own
  `has_type` axioms for the same type — Verus assumes exactly the same
  about every well-typed value.
- Datatype field facts are emitted **unguarded** (no `is_variant`
  condition). Sound because a wrong-variant accessor returns `default`,
  and every emitted fact holds of `default`: integer defaults are `0`
  (in every range), container defaults are empty (element facts
  vacuous), datatype defaults recurse. This argument depends on
  `deriving Inhabited` defaulting fields; it is re-verified by every
  example run since the accessors and facts are generated together.

## Mutable references (prophecy, resolved at lowering)

`&mut T` is lowered by resolving Verus's prophecy encoding at
translation time: the environment tracks the current referent, `old(x)`
on an own parameter is the entry binder, `assume has_resolved(x)`
snapshots the borrow's future, call-site futures are fresh symbols
constrained only by callee `ensures`.

- **Assumptions** (all properties of Verus's own SST generation, valid
  for the sequential fragment its borrow checking guarantees):
  `has_resolved` marks the end of the borrow (no writes after it); the
  two-phase borrow shape (temp definition, prophecy writeback before the
  call) is as emitted today; reference-typed temporaries only alias, and
  every other reference-valued assignment fails closed.
- **Guards:** differential cases c73–c77, including `ensures
  *final(x) == *old(x)` with a mutating body and a havocked caller
  assert — both must fail in *both* verifiers.

## Range `for` loops (specialized at lowering)

`for i in lo..hi { body }` desugars in Verus to a break-shaped loop
driving a ghost `VerusForLoopWrapper<Range<_>>` whose specifications
(prophetic spec fns, `call_ensures` existentials, broadcast groups) sit
outside the sequential fragment. The lowering recognizes exactly that
canonical desugaring and replaces it with the equivalent integer loop:
entry checks the user invariants at `ite(lo ≤ hi, lo, arb)`, iterations
assume `lo ≤ i < hi`, the back edge re-checks at `i + 1` with the
remaining count `hi − i` as the measure, and the exit instance sits at
`ite(lo ≤ hi, hi, arb)`.

- **Assumptions** (each pinned to the vstd definitions for `Range`):
  `peek(lo..hi, k) = if 0 ≤ k ≤ hi−lo { Some(lo+k) } else { None }` with
  an *inclusive* guard, so the exit instance evaluates at `hi`;
  `remaining` is the arithmetic progression, so `next()` yields `lo+k`
  at step `k` and the auto measure decreases by exactly one;
  `arbitrary()` is a single fixed unknown per type — the specialization
  shares ONE fresh `arb` symbol between the entry check and the exit
  assumption, so for empty ranges (`hi < lo`) the exit knowledge is
  precisely what the entry check proved.
- **What is dropped, and why that is sound:** only Verus's
  auto-generated wrapper bookkeeping (the `AutoDecreases` marker
  invariant, the wf/snapshot/init-tracking trio, the `AutoLoopEnsures`
  exit facts, the trigger-context assert — `true` by definition), whose
  entire content the synthesized integer facts re-derive. The
  exhausted-iterator arm's `assume has_resolved(x)` borrow expiries are
  relocated to the loop continuation, the same CFG point. Every
  user-written fact either survives verbatim (invariants and measures
  are unwrapped from the macro's `let i = peek(…)` binding) or aborts
  the translation: named-iterator loops (`for x in y: e`), invariants or
  bodies reaching the wrapper, user `break`/`continue` (stock Verus
  rejects them too, via the auto loop-ensures), user loop-`ensures`, and
  bodies assigning the loop variable or variables occurring in the
  bounds all fail closed.
- **Guards:** differential cases c117–c120 — a counting loop
  (invariant naming the loop variable), its off-by-one negative, and
  the two peek-semantics pins: `for i in 2..2 invariant i == 2`
  *passes* both verifiers (inclusive guard: `i` binds `lo` even when
  the body never runs) and a reversed range's invariant *fails* both
  (the loop variable is `arbitrary()`). The vec-reverse case study
  (double update through the loop, `final(v)` across the exit
  resolution) runs end to end.

## `while` loops holding a live `&mut` borrow

When a `while` loop holds a live `&mut` borrow, Verus's loop **condition
setup** is not a bare temp assignment but a branch that resolves the borrow
on the exit path: `tmp := if <cond> then true else { assume has_resolved(x);
tmp := false }`. Verus may precede this branch with pure temporary
assignments or deterministic calls (for example a slice `len` used by
`<cond>`). The lowering evaluates that prefix, uses `<cond>` as the loop
condition, and replays every false-arm resolution assumption in the loop
continuation (so `final(x)` sees the post-loop value) — the same relocation
the `for` lowering performs.

- **Assumption:** after a pure assignment/call prefix, the setup has exactly
  one `if` on the real condition; the true arm assigns the condition temp to
  `true`, and the false arm contains one or more `has_resolved` assumptions
  and exactly assigns it to `false`. Other effects or loose constant-like
  shapes fail closed.
- **Guards:** differential c125/c126 (`&mut` while-loop, with a
  wrong-length negative); c162/c163 (native slice length, projected mutation,
  and a wrong final assertion); `examples/m3-vec-set::zero_prefix` runs end to
  end.

Loop/for assignment collection also treats a projected place as an update to
its root object. `buf[i] = …` havocs `buf` using the root type recovered from
the function's variable table; it never binds `buf` at the element type.
Absent root type information is a fail-closed lowering error. This is a
front-end correspondence rule, not an additional Lean axiom or VCGen rule.

## `Vec::pop` / `Seq::subrange` (contiguous slices)

`v.pop()` uses vstd's contract: it returns `Option<T>` and, in the nonempty
branch, relates the shortened view to `old@.subrange(0, len-1)` and the
returned element to `old@[len-1]`. `Seq::subrange(s, i, j)` is modeled as the
`List` slice `(s.drop i).take (j-i)`, with `@[simp]` lemmas `len_subrange`
(length `j-i`) and `index_subrange` (slot `k` reads `s[i+k]`), both guarded
by the in-range side conditions `0 ≤ i ≤ j ≤ len` / `0 ≤ k < j-i` that Verus
also requires.

- **Assumptions:** the `List`-slice model is `subrange`'s meaning only in
  range; off-range it is unspecified (as in Verus). `Option`/`Some`/`None`
  are the ordinary lowered `core::option::Option` inductive; the returned
  element and the `None` branch carry no extra trust.
- **Automation note:** the side conditions are arithmetic, which simp's own
  discharger cannot prove (e.g. `4 ≤ len s` from `len s ≥ 5`); the `vrml`
  ladder gained a `simp (disch := omega)` rung so simple slice/pop
  obligations close without hand proofs. A failed tactic is still a `sorry`,
  never a false accept.
- **Guards:** differential cases c121–c124 (pop and subrange, each with a
  wrong-value negative). Case studies `vec-pop` and `vec-pop-uninterp` (the
  last `vectors.rs` function, blocked on both uninterpreted spec fns and
  pop) run end to end.

## Executable slice ranges

Rust expressions `&src[start..end]` and `&src[start..]` arrive from the pinned
Verus middle end through the generic `SliceIndex::index` contract. Mutable
forms arrive through `SliceIndex::index_mut` and Verus's returned-reference
prophecy encoding. For the two exact concrete index types
`core::ops::Range<usize>` and `core::ops::RangeFrom<usize>` over a slice,
Vermilion reconstructs ordinary call contracts over the same `Seq::subrange`
model:

- `Range` proves `start <= end && end <= src@.len()` and assumes
  `result@ = src@.subrange(start, end)`;
- `RangeFrom` proves `start <= src@.len()` and assumes
  `result@ = src@.subrange(start, src@.len())`.

The mutable contracts prove the same bounds, set the returned view's initial
value to the matching subrange of `old(src)`, and reconstruct `final(src)` as
the old prefix concatenated with `final(result)` and, for a bounded `Range`,
the old suffix. A following ordinary `copy_from_slice` call must prove equal
lengths and sets `final(result)` to the source view, so the owner writeback is
derived rather than assumed independently.

The explicit requirements are essential. Verus's delegated `call_ensures`
`FnDef` closure contains the result relation but, for this SST shape, not the
inherited `Index`/`IndexMut` trait precondition. Treating only that closure as
the whole contract would permit an out-of-bounds view. The adapter therefore
matches the exact core trait path, exact range type, slice receiver, and
resolved associated output, synthesizes both bounds and result relations, and
fails closed for every other delegated closure shape.

- **Assumptions:** this is a reviewed front-end/vstd correspondence boundary:
  the exact Verus slice-index specifications are represented by Vermilion's
  already documented `Seq::subrange`, sequence concatenation, and mutable
  prophecy models. The fork's contracts are part of the reviewed pin. No new
  Lean axiom, IR form, or VCGen rule is introduced.
- **Guards:** c164/c165 pin `Range` value semantics; c166/c167 pin
  `RangeFrom`; c168/c169 require both out-of-bounds forms to fail at the same
  Rust span as Verus. c173/c175 pin mutable bounded/suffix copying; c174 pins
  wrong owner writeback; c176 pins bounds; c177 pins unequal copy lengths.
  The fork also carries native positive and negative slice regressions.

## Checked assertions in `while` condition setup

Verus's SST can evaluate checked arithmetic before it computes a loop's
boolean condition, representing the safety check as `Assert` followed by the
matching `Assume`. Vermilion accepts only that immediately matched assumption
shape. The assertion is lowered as an ordinary obligation at the arbitrary
loop head, where only type facts and user invariants are available; the
condition is branched on only after those checks. Assertions reached through a
short-circuit arm are implication-guarded by the arm condition. A proved head
check may then be retained when the final condition is evaluated at exit.

- **Assumptions:** none beyond the already documented correspondence between
  Verus SST assertions/assumptions and Vermilion's existing `Assert`, `Branch`,
  and isolated `Loop` forms. An unmatched assumption, effectful setup, or
  unsupported statement fails closed. No Lean axiom or new VCGen rule is used.
- **Guards:** c170 proves checked arithmetic in a condition from an adequate
  invariant; c171 is rejected at the same bounds span as Verus when that fact
  is absent; c172 proves an unreachable short-circuit RHS does not impose its
  arithmetic check unconditionally.

## `Seq::add` (the spec `+` on sequences)

`s + t` on `Seq` (vstd `Seq::add`) is modeled as `List` append, with the
characterizing lemmas `len_add` (additive length) and the boundary split
`index_add_left` / `index_add_right` (`(s+t)[i]` reads `s[i]` below
`s.len()` and `t[i - s.len()]` from there on). All three are proved from
the model — nothing enters the trusted base.

- **Assumptions:** none beyond the `Seq`-as-`List` model itself; the
  boundary-split lemmas carry the same in-range side conditions Verus's
  axioms do, and off-range indexing stays unspecified.
- **Automation note:** the lemmas are tagged `@[simp, grind =]`. The grind
  tags matter: quantified per-element contract hypotheses (the `u64` range
  facts) make an uninformed `grind` — the ladder's first rung — e-match
  into a deep case split that burned the whole heartbeat budget and
  starved the simp rungs that would have closed the goal. Alongside the
  tags, every deterministic ladder rung now runs under its own bounded
  heartbeat budget, so a diverging rung registers as that rung's failure
  (fast, and with the tactic state rolled back) instead of timing the
  obligation out. A failed ladder is still a `sorry` twin to prove
  interactively, never a false accept.
- **Guards:** differential cases c127 (parity-pass) and c128 (wrong right
  element — both reject). `examples/m2-seqadd` runs end to end.

## S1: `Seq::to_multiset`, `Vec::clone`/`split_off`, functional views

Landed for the merge-sort case study (stage S1 of
docs/reports/target-projects.md); four distinct trust surfaces:

- **`Seq::to_multiset`** is a CLOSED vstd spec fn (sealed recursive body);
  we model it as `Multiset.ofList` over the `Seq`-as-`List` model. This is
  semantically the vstd definition (the multiset of elements), and every
  fact vstd exposes through `to_multiset_ensures` broadcast lemmas is a
  PROVED prelude/Mathlib lemma here (`toMultiset_add`, `toMultiset_push`,
  `toMultiset_len`) — nothing axiomatized.
- **`Vec` length bound**: a `Vec` binder's type facts now include
  `inUnsignedRange 64 (len v@)`, mirroring Verus's Vec type invariant
  (a vector's length physically fits usize). This is an ASSUMED fact with
  the same status as the per-element range facts; spec `Seq`s do not get
  it. It is what makes `i + 1` overflow checks against `i < v.len()`
  provable inside isolated loop iterations.
- **Functional-view substitution**: a call whose contract is requires-free
  with single ensures `result == e` (`Vec::len`) substitutes `e` for its
  destination instead of binding a contracted fresh symbol. Soundness:
  the substitution is exactly the contract's content (an equation), and
  the result's type-range facts are preserved as assumes; determinism is
  given by the equation's shape. Same folding powers pure while-condition
  setups (short-circuit `&&` over functional calls).
- **`<Vec<T> as Clone>::clone`, machine-int/bool `T` only**: synthesized
  contract `result@ == vec@`. vstd's real spec says `cloned::<T>`
  pointwise (via the higher-order `call_ensures` encoding) plus an
  extensionality bridge; for these `T` vstd's own clone specs `returns`
  the value, so `cloned` collapses to equality and the synthesized
  contract is equivalent. Other element types fail closed at the
  `cloned` predicate (with its span).
- **Guards:** c129/c130 (split_off subranges, wrong-subrange negative),
  c131/c132 (to_multiset congruence, push-changes-multiset negative);
  `case-studies/merge-sort` verified end to end (31 automatic + 9
  interactive twin proofs).

## The vstd mirror registry (V2)

vstd spec fns beyond the structural IR core lower as
`(vstdapply "vstd::…" args…)` and resolve by name against
`Vermilion.Vstd.Registry` (`specFnRegistry`). The registry has exactly
the trust status the hard-coded op table had — "this vstd function MEANS
this model definition" — moved from Rust code into reviewable Lean data,
one line per function next to the proved lemma surface that backs it.
Unregistered paths fail closed at generation time, naming the path.
`Vermilion/Vstd/Probes.lean` fails the build if a registry entry
references a nonexistent Lean name. The lemma half of the registry
(`lemmaRegistry`, for `broadcast use` hints — V4) is NOT trusted at all:
hints are droppable by construction and can only help automation close
an obligation that is stated in full either way.

Unsigned `rotate_left` is part of this reviewed mapping. The pinned Verus vstd
contract and `Vermilion.Vstd.Rotate` both reduce the shift modulo the unsigned
width, split out zero to avoid a full-width shift, and combine clipped-left
with logical-right bits. This is a conventional model-equivalence boundary,
not an axiom inside a proof: the generated goal uses the Lean definition and
the kernel checks all consequences.

Native u64 little-endian conversion is another reviewed mapping. Fork
ancestor `c329046d2…`, retained by current pin `32259d40b…`, attaches native
`to_le_bytes`/`from_le_bytes` to exact vstd byte
functions; `Vermilion.Vstd.Bytes` implements those functions arithmetically in
Lean. This is model equivalence at the registry boundary, not an assumed proof
fact. The fork's native positive/negative tests and differential c160/c161 pin
the direction and byte order.

- **Guards:** c133/c134 (`Multiset::add` through the registry:
  congruence positive, add-is-not-identity negative); c158/c159 (exact `u64`
  rotations including zero/width/oversized counts and a wrong-result
  negative); c160/c161 (native u64 endian round trip and wrong byte order),
  plus the Verus fork's per-width rotation and native byte tests.

## `broadcast use` hints (V4)

`broadcast use G` of a broadcast GROUP (e.g. `group_seq_properties`)
lowers to `(broadcast "vstd::…")`; the generator resolves the path
through `Vermilion.Vstd.lemmaHints` and adds the resulting proved
mirror-lemma names to that obligation's `vrml` simp set. This is NOT a
trust surface: hints can only help the ladder close a goal that is
stated in full either way, never change the proposition; an unregistered
path contributes nothing (fail-open). The mirror lemmas themselves are
ordinary proved Lean theorems. Single-lemma `broadcast use` never reaches
this path — it is lowered to an `assume` of the lemma's quantified fact,
whose soundness is the same as any assumed callee `ensures` (the lemma is
proved, by Verus and, when in-crate, by us). **Guards:** c137 (a group
closes a concat-length goal), c138 (a group cannot prove a false
identity — hints are not axioms).

## Definitions, contracts, and injected facts

- **Recursive spec fns are range-guarded for totality**: a `nat`/machine
  parameter's range is a typing fact the `Int` embedding does not carry
  into a definition, so recursive bodies guard on their decreases
  measures being nonnegative and return `default` off-range — a valid
  interpretation of Verus's *unconstrained* off-range semantics (the
  same `default` argument as wrong-variant accessors).
- **`usize`/`isize` carry the arch-neutral 64-bit bounds**: Verus
  verifies for a symbolic 32/64-bit word; the 64-bit bounds hold on
  both. Arch-pinned 32-bit programs may prove more in Verus
  (fail-closed direction, documented in docs/ir.md).
- **`broadcast use` facts are theorems, not axioms**: the lemma's own
  body is verified — by Verus and by us — before its quantified fact is
  assumed at any use point.
- **Generic trait bounds are dictionary-sound**: trait spec fns at an
  abstract `Self` are universally quantified function symbols, so the
  generic obligation is proved for *every* interpretation — in
  particular every impl. Exec-closure contracts use the same shape
  (`ClosureReq`/`ClosureEns` as fresh symbols constrained only by the
  assumed contract fact, exactly the SMT encoding's discipline).
- **Associated outputs are normalized only by a unique monomorphic impl
  equation** retained by the Verus middle end. No equation is assumed in Lean:
  the concrete type replaces the SST projection before IR emission. Abstract,
  generic, or ambiguous projections are rejected at lowering. Differential
  c152/c153 pin the concrete positive/negative semantics, and the generic
  refusal test pins the fail-closed side.

## Compute proof blocks

`by (compute)`/`by (compute_only)` goals are evaluated by Verus's
interpreter *inside the `ast_to_sst` rerun our middle performs*: a true
computation arrives pre-discharged (its equation assumed downstream), a
false one aborts translation with an explicit error — fail-closed,
verified empirically. The interpreter is part of the shared Verus
middle (TCB component 1); no new trust beyond what VC placement already
assumes.

## Bit-vector proof blocks

`by (bit_vector)` (with optional `requires`) discharges as an
**isolated query**, exactly Verus's spun-off BV query: the obligation
sees only the block's `requires` plus the accumulated *type facts*
(invariants, never assumed conclusions) — isolation matters, because
the outer block Verus emits ASSUMES the conclusions for downstream use,
and a context-sharing lowering proved a false identity from its own
circular assumption. **The differential harness caught that** (a false
identity passed here while Verus failed) before it could land — the
mitigation the corpus exists to provide. The isolation reuses the
`(LOOP)` rule's scoping; goals close through the `Vermilion.Bits`
lemma set (BitVec-backed, kernel-proved, nothing trusted).

## Nonlinear assertion queries

`assert … by (nonlinear_arith)` reaches SST as
`AssertQuery { mode: NonLinear }`. It uses the same isolated discharge as a
bit-vector query: accumulated type/range invariants and the query's explicit
`requires`/body are visible, but the enclosing H is not. This distinction is
essential because the outer SST stream assumes the asserted conclusion for
the continuation before the spun-off query; importing that context would be
circular. Query-local binders, facts, and reveals are discarded after the
check. c141 is the positive guard, while c142 rejects `x*x == x` and would
pass under the circular lowering. Unsupported query modes remain fail-closed.

## Equality

- Verus's extensional equality (`=~=`, and spec `==` where it desugars
  to `ext_equal`) lowers to plain Lean `=` **only** where the model is
  genuinely extensional — checked recursively through datatype fields.
  `Map` anywhere in the compared type, spec-fn values, type parameters,
  and deep `=~~=` fail closed: our `Map`'s structural equality is finer
  than Verus's domain-wise one, which in assume position would claim
  more than Verus grants.
- Plain `==` at `Map` or `spec_fn` type stays structural and is
  *internally consistent*: a callee's ensures is proved structurally on
  our side before a caller assumes it structurally. The boundary
  condition is **trusted contracts** (vstd `assume_specification`)
  mentioning Map equality — none are in the fragment today; the Map
  model must be quotiented or normalized before one is admitted.
- `spec_vec_len(v)` is identified with `v@.len()` — exactly the
  equation of vstd's `group_vec_axioms`, which is in the default
  broadcast group, so the identification is what Verus itself assumes.

## Trait dispatch

Statically-resolved trait calls take their contract from the **trait
method's declaration** (instantiated at the call's type arguments) when
the impl declares none; an impl that redeclares materializes the
inherited clauses into its own declaration, which is then used.
Inherited `requires` is proved at every call site; impl bodies are
checked against the inherited `ensures`.

- **Guards:** c83 (caller violating an inherited requires must fail both
  sides — this obligation was *missing* before 2026-07-13) and c84 (an
  impl violating the trait ensures must fail both sides).

## What keeps this honest

- The **differential corpus** (`tests/differential/`) runs every case
  through both verifiers and requires verdict *and* failure-span
  agreement (176/176 and 86/86 at the current checkpoint). Every soundness
  assumption above that can be exercised has a negative case that must
  fail on both sides.
- Deliberate divergences are documented in [docs/ir.md](ir.md)
  (trigger-starvation failures we don't reproduce; nonlinear truths
  Verus's default prover rejects but our `nlinarith` rung proves;
  Map-bearing `=~=` we reject while Verus proves it).
- The endgame is to *discharge* these assumptions: a formal semantics
  for the IR and a verified weakest-precondition generator
  ([docs/vcgen.md](vcgen.md) is the policy it must reproduce; see
  `.claude/memory/foundational-vcgen.md` and the plan's roadmap).

## Front-end accommodations (fork)

The pinned Verus is our fork (`ilyasergey/verus`, branch `dev`): upstream plus
the opt-in VIR export hook (`VERUS_VIR_EXPORT`, formerly a local patch),
statically checked `debug_assert!`, tuple-pattern function parameters and
contract bindings, custom tuple-keyed `IndexMut`, and tuple-destructuring
assignment. It also carries exact native endian/rotation contracts and the
missing `RangeFrom<usize>` slice-index specification. Nothing is assumed by
these accommodations. `debug_assert!`
becomes a proof obligation and is erased at runtime; tuple parameters become
synthetic formals plus entry destructuring; `IndexMut` uses the static vstd
contract; tuple assignment consumes rustc's evaluate-RHS-once synthetic
declaration followed by ordinary component assignments. Native positive,
negative, bounds, compile, and erasure tests pin these transformations, and vstd
re-verifies unchanged (1,972/0) in debug and release. Conditions whose spec
reading is ill-typed and component assignments outside the supported place
fragment still fail closed at the front end.
