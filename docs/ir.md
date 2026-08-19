# The Vermilion textual IR

The boundary between the Rust front half (pinned Verus front end + middle end + SST lowering) and the Lean back half (VC generation, obligation emission, manifests) is a **textual, S-expression IR**. Rust serializes the neutral `FunctionView` model into one IR file per translation run; the Lean library
`Vermilion.Ir` lexes and parses it with a proper tokenizer — never substring matching — and owns everything downstream.

Design rules:

- The IR is **structured**: expressions are trees, not Lean-syntax strings.
  Rust never renders Lean source.
- The format is versioned (`(vrml-ir <version> ...)`) and fails closed on
  unknown heads, so fragment growth is explicit.
- Every construct carries the data the Lean side needs for diagnostics and
  incrementality: spans, assert ids, descriptions.

## Lexical grammar

```
token   ::= "(" | ")" | integer | symbol | string
integer ::= "-"? [0-9]+
symbol  ::= [A-Za-z_] [A-Za-z0-9_.-]*
string  ::= '"' (char | escape)* '"'
escape  ::= "\\" | "\"" | "\n"          -- backslash, quote, newline
comment ::= ";" ... end of line
```

Whitespace and comments separate tokens and are otherwise ignored.

## Grammar

```
file      ::= (vrml-ir 1 datatype* (specfn | specfn-opaque)* function* refused*)

id        ::= (id STRING (STRING*) STRING)             ; crate, modules, name

typarams  ::= (typarams STRING*)                       ; M3: type parameters

datatype  ::= (datatype id typarams                    ; M3: user struct/enum/
                (variant STRING (field STRING type)*)+) ; tuple, emitted as a
                                                       ; real Lean inductive

specfn    ::= (specfn id typarams span                 ; M2: user spec fn,
                (binders binder*)                      ; emitted as a Lean def
                (ret type) (visible INT)               ; carrying its Rust span
                (decreases expr*)                      ; (editor navigation);
                (ranges expr*)                         ; visible 0 = opaque;
                (body expr))                           ; nonempty decreases =
                                                       ; recursive definition;
                                                       ; ranges = parameter
                                                       ; typing facts (DL8),
                                                       ; conjoined into the
                                                       ; recursive guard

specfn-opaque ::= (specfn-opaque id typarams span      ; uninterpreted spec fn
                (binders binder*) (ret type))          ; (`uninterp spec fn`):
                                                       ; a fixed unknown total
                                                       ; function, emitted as a
                                                       ; Lean `opaque` constant.
                                                       ; No body/decreases; never
                                                       ; unfolded; congruence is
                                                       ; free (Lean application).
                                                       ; typarams may be nonempty
                                                       ; (#19): ONE generic
                                                       ; symbol, `{T : Type}
                                                       ; [Inhabited T]` binders;
                                                       ; const generics are
                                                       ; leading Int binders

function  ::= (function id typarams
                (binders binder*)
                (requires expr*)
                (body stmt*))

refused   ::= (refused id span STRING)                 ; DL1: a checked function
                                                       ; the adapter could NOT
                                                       ; lower — its identity,
                                                       ; the offending
                                                       ; construct's span, and a
                                                       ; one-line sanitized
                                                       ; message. The Lean side
                                                       ; emits NO module for it;
                                                       ; it becomes a manifest
                                                       ; disposition and
                                                       ; vrml_check keeps the
                                                       ; run non-green while any
                                                       ; exists. A file whose
                                                       ; functions ALL refuse
                                                       ; never reaches the IR
                                                       ; (whole-run refusal,
                                                       ; exit 1, unchanged).

binder    ::= (STRING type)
typs      ::= (typs (STRING type)*)                    ; explicit named type-
                                                       ; argument instantiations;
                                                       ; OMITTED when empty (the
                                                       ; node form is then byte-
                                                       ; identical to the pre-DL5
                                                       ; grammar). On `apply`:
                                                       ; generic uninterp spec-fn
                                                       ; applications (#19 — Lean
                                                       ; cannot infer a parameter
                                                       ; of an opaque symbol that
                                                       ; appears only in its
                                                       ; return type). On `ctor`:
                                                       ; exactly the parameters
                                                       ; the variant's fields
                                                       ; never mention (#18 —
                                                       ; `Ok(())`'s error type),
                                                       ; rendered as Lean named
                                                       ; arguments `(T := τ)`
type      ::= Int | Prop | (seq type)                      ; M2
            | (set type) | (map type type)                 ; M2
            | (multiset type)                              ; M2
            | (data id type*)                              ; M3, type args
            | (tyvar STRING)                               ; M3, type param
            | (fnspec (type*) type)                        ; M3, spec_fn arrow
            | str                                          ; DL5, Verus `&str`
                                                           ; (Vermilion.StrSlice;
                                                           ; type + literals only,
                                                           ; no string operations)

span      ::= (span STRING INT INT INT INT)            ; file, start l/c, end l/c
clause    ::= (clause STRING span expr STRING?)        ; assert-id, span, goal,
                                                       ; optional description

stmt      ::= (assume expr)
            | (assert clause)
            | (ensures clause)
            | (call STRING (requires clause*) result? (ensures expr*))
            | (fresh binder)                                    ; M2
            | (branch expr (then stmt*) (else stmt*))          ; M2
            | (invariant phase clause)                          ; M2
            | (loop noniso?                                    ; M2; DL6: the
                (iteration expr*) (body stmt*) (exit expr*))   ; optional noniso
                                                               ; marker mirrors
                                                               ; loop_isolation(false):
                                                               ; the body keeps the
                                                               ; enclosing hypotheses
                                                               ; (vcgen.md (NLOOP));
                                                               ; omitted = isolated,
                                                               ; byte-identical to
                                                               ; the old form
            | (reveal id INT)                                   ; M2, rounds
            | (broadcast STRING)                                ; V4, broadcast-use
                                                                ; group → registry hints
            | (scope stmt*)                                     ; M3, check+discard
result    ::= (result binder)
phase     ::= entry | preserve | break                     ; M2

expr      ::= (var STRING)
            | (int INT)
            | true | false
            | (BINOP expr expr)
            | (not expr)
            | (ite expr expr expr)                              ; M2
            | (urange INT expr)                                 ; inUnsignedRange
            | (srange INT expr)                                 ; inSignedRange
            | (natclip expr)                                    ; Vermilion.natClip (DL8)
            | (sclip INT expr)                                  ; Vermilion.sclip (DL8)
            | (seqlen expr) | (seqpush expr expr)               ; M2, Vermilion.Seq
            | (seqindex expr expr) | (seqempty type)            ; M2, Vermilion.Seq
            | (sequpdate expr expr expr)                        ; legacy structural form
            | (seqsubrange expr expr expr)                      ; legacy structural form
            | (seqadd expr expr)                                ; legacy structural form
            | (seqtomultiset expr)                              ; legacy structural form
            | (vstdapply STRING expr*)                          ; vstd spec fn by
                                                                ; canonical path,
                                                                ; registry-resolved
                                                                ; (V2 Phase B: the
                                                                ; emission path for
                                                                ; all non-core ops)
            | (seqnew expr expr)                                ; M3, Seq::new
            | (setinsert expr expr) | (setcontains expr expr)   ; M2, Vermilion.Set
            | (setremove expr expr) | (setlen expr)             ; M2, Vermilion.Set
            | (setempty type)                                   ; M2, Vermilion.Set
            | (mapinsert expr expr expr) | (mapindex expr expr) ; M2, Vermilion.Map
            | (mapdom expr) | (mapcontainskey expr expr)        ; M2, Vermilion.Map
            | (mapempty type type)                              ; M2, Vermilion.Map
            | (msinsert expr expr) | (mscount expr expr)        ; M2, Vermilion.Multiset
            | (mslen expr) | (msempty type)                     ; M2, Vermilion.Multiset
            | (apply id typs? expr*)                            ; M2, user spec fn
            | (ctor id STRING typs? expr*)                      ; M3, decl order
            | (strlit STRING)                                   ; DL5, &str literal
                                                                ; (StrSlice.mk)
            | (fieldof id STRING STRING expr)                   ; M3, variant+field
            | (isvariant id STRING expr)                        ; M3
            | (forall ((STRING type)*) triggers expr)           ; M3, guards folded
            | (exists ((STRING type)*) triggers expr)           ; M3, guards folded
            | (choose ((STRING type)) triggers expr)            ; DL2: Verus
                                                       ; choose|x| P — exactly ONE
                                                       ; binder (body = the bound
                                                       ; variable; scalar type),
                                                       ; rendered as
                                                       ; Vermilion.chooseSpec over
                                                       ; the guard-conjoined
                                                       ; predicate; the generator
                                                       ; injects the conditional
                                                       ; characterizing fact per
                                                       ; occurrence (docs/vcgen.md
                                                       ; (CHOOSE)); triggers stay
                                                       ; preserved metadata
            | (lambda ((STRING type)*) expr)                    ; M3, spec closure
            | (applyfn expr expr*)                              ; M3, spec_fn value app
            | (bitop KIND SIGN INT expr expr)                   ; M4, machine bit op
                                                       ; KIND = and|or|xor|shl|shr
                                                       ; SIGN = u|s, INT = width

triggers  ::= (triggers (trigger expr*)*)              ; preserved from Verus

BINOP     ::= add | sub | mul | ediv | emod
            | lt | le | gt | ge
            | eq | ne                                           ; Int equality
            | iff | niff                                        ; Prop (bool) equality
            | and | or | implies
```

## Semantics on the Lean side

- `Int`-typed Verus values (all machine widths, `int`, `nat`) become Lean
  `Int` binders; range facts travel as explicit `urange`/`srange` hypotheses.
  VIR `Clip` expressions are preserved exactly: `int` is the identity;
  unsigned width `w` is `emod x (2^w)`; `nat` is the dedicated
  single-occurrence form `(natclip x)` (`Vermilion.natClip`, definitionally
  `iteP (x ≥ 0) x 0`) and signed width `w` is `(sclip w x)`
  (`Vermilion.sclip`, the Euclidean residue mapped into
  `[-2^(w-1), 2^(w-1))`). The dedicated forms exist because the inline
  conditional expansions restate their operand, and nested `nat`
  arithmetic then grows exponentially in the clip depth (dalek-lite DL8,
  `from_bytes`). `usize`/`isize` use the project's architecture-neutral
  64-bit convention. `char` clipping fails closed because Unicode scalar
  values are not one contiguous range.
- vstd collections keep their vstd operation names structurally: `Seq` is a
  Lean `List`, `Set` a `Finset`, `Multiset` a Mathlib `Multiset`, and `Map`
  a finite key set plus a total lookup function (indexing off the domain is
  unconstrained, mirroring Verus's underspecification). The finite `Set`'s
  `contains` arrives from Verus as an inlined `ISet::contains ∘ to_iset`
  chain, which the lowering collapses; a standalone infinite `ISet` value
  still fails closed at its constructor. An exec `Vec<T>` is likewise
  modeled by its `Seq<T>` view (its `View::V`): the binder lowers to
  `(seq T)` and `v@`/`view()` is the identity, so `v[i]`/`v@.len()`/
  `v@.index(i)` reduce to the `seq*` operations. A `Vec` binder's type
  facts include `(urange 64 (seqlen v))` — the view's length physically
  fits usize (Verus's Vec type invariant); a spec `Seq` carries no such
  bound. `Seq::to_multiset` (a CLOSED vstd spec fn) is a known op
  (`seqtomultiset`), modeled as `Multiset.ofList`, so its vstd lemma
  surface (`to_multiset_ensures`) is proved Mathlib territory, not an
  axiomatization.
- **The vstd mirror boundary** (`(vstdapply STRING expr*)`): vstd spec
  fns beyond the structural core travel as name-resolved applications —
  the adapter serializes the CANONICAL vstd path
  (`vstd::multiset::Multiset::add`) verbatim and the Lean decoder
  resolves it against the shipped mirror registry
  (`Vermilion.Vstd.Registry`, Mathlib-free so `vrml_gen` can read it),
  failing CLOSED on unregistered paths with a message naming the path
  and the registry to extend. Growing this part of the fragment is a
  Lean-library-only change: model definition + lemma surface + registry
  entry — no Rust rebuild, no grammar growth. The structural core that
  stays first-class is exactly what the RUST side fabricates itself
  (`seqlen`/`seqindex` in type facts and loop machinery) plus the
  type-carrying `empty` constructors (their rendering needs a type
  ascription) and bitops; since V2 Phase B every other collection op —
  `push`, `update`, `subrange`, `add`, `to_multiset`, the Set/Map/
  Multiset value-arg ops — is EMITTED as `vstdapply` (the registry
  renders the identical Lean text the old structural forms produced, so
  generated modules, statement hashes, and proof twins were unaffected
  by the migration). The legacy structural productions remain parsed for
  fabricated-fact sites and corpus stability but are no longer the
  growth path. One vstd::array entry rides the same boundary: the
  array-repeat literal `[t; N]` desugars through the generic
  uninterpreted `spec_array_fill_for_copy_type::<T, N>(t)`, which the
  adapter emits as
  `(vstdapply "vstd::array::spec_array_fill_for_copy_type" N t)` — the
  const-generic length resolved to an Int literal (or the enclosing
  function's const-generic binder) as the LEADING argument, the same
  convention const-generic spec-fn instantiations use; the mirror is
  the constant sequence `Vermilion.Seq.fill`. vstd's unsigned
  `wrapping_{add,sub,mul}` spec fns ride the same boundary
  (`(vstdapply "vstd::wrapping::u32_specs::wrapping_add" x y)` —
  the width-impl segment is the registry key), mirrored by
  `Vermilion.Vstd.Wrapping.*`, the `(x op y) % 2^w` models with their
  in-range collapse lemmas. Unsigned `rotate_left` uses the same canonical
  vstd path and resolves to `Vermilion.Vstd.Rotate.u*_rotate_left`: reduce the
  shift modulo the type width, return the input for zero, otherwise combine
  width-clipped left and logical-right shifts with bitwise-or. Signed variants
  and the remaining shift family stay on the generic spec-fn emission path
  until registered. Native `u64::to_le_bytes` and `u64::from_le_bytes` also
  use this boundary and resolve to `Vermilion.Vstd.Bytes.u64ToLeBytes` and
  `u64FromLeBytes`: the former emits the eight base-256 digits least
  significant first, and the latter reconstructs them with width-clipped
  shifts and bitwise-or. The pinned Verus assume-spec contracts use the same existing vstd
  byte functions; c160/c161 guard round-trip and byte-order semantics.
- Executable slice ranges use an exact, narrow contract boundary. Only the
  concrete core `SliceIndex::{index,index_mut}` delegated closures for
  `Range<usize>` or `RangeFrom<usize>` over a slice are recognized; the
  associated `SliceIndex::Output` projection is normalized to the slice type
  only for those same resolved implementations. Immutable calls require
  `start <= end && end <= len` or `start <= len` and return the corresponding
  `Seq.subrange`. Mutable calls additionally ensure that the initial returned
  view is that old subrange and that the final owner is the old prefix,
  followed by the returned reference's future value, followed by the old
  suffix when one exists. Verus's SST closure supplies the result relation but
  not the inherited `Index`/`IndexMut` requirement, so the Rust adapter
  reconstructs both together. Other `FnDef` closure contracts fail closed.
  `copy_from_slice` remains an ordinary contract call: its length requirement
  and final destination equality compose with the mutable range prophecy.
  This introduces no new IR node: it emits existing `(call …)`, `seqsubrange`,
  and `seqadd` forms. c164–c169 pin immutable values and bounds; c173–c177 pin
  mutable values, final-owner writeback, copy length, and negative cases.
- Calls whose contract is requires-free with the single ensures
  `result == e` (functional views: `Vec::len`, vstd `Seq` constructors)
  are DETERMINISTIC and lower by substituting `e` for the destination —
  no `(call …)` statement, no fresh contracted symbol. The result type's
  range facts are kept as `(assume …)` on the substituted value. This is
  what lets a for-range bound `v.len()` keep its identity inside isolated
  loop iterations. While-condition setups fold the same way. Checked-
  arithmetic or user assertions in that setup are retained as guarded
  clauses: the lowering emits existing `assert` statements at the isolated
  arbitrary loop head, before an existing `branch` on the condition. Thus the
  checks must follow from type facts and invariants, not circularly from the
  condition they make safe to evaluate. Short-circuit arms contribute guarded
  implications, and established checks are included among loop exit facts.
  c170–c172 pin success, failure-span parity, and unreachable-RHS behavior;
  no new textual-IR form is involved. The canonical
  Verus mutable-borrow form may have a pure assignment/call prefix followed by
  one branch whose true arm assigns `true` and whose false arm resolves one or
  more borrows then assigns `false`; the prefix is evaluated and the
  resolution effects are moved to loop exit. Other condition setup effects
  fail closed. `<Vec<T> as
  Clone>::clone` for machine-int/bool `T` lowers with the synthesized
  contract `result == vec` (vstd's per-element `cloned::<T>` collapses to
  equality for those `T`; the `call_ensures` FnDef encoding behind
  `cloned` is an SMT artifact this boundary does not carry). Other
  element types fail closed.
- `bool` becomes `Prop`; `eq`/`ne` on bools are serialized as `iff`/`niff`.
  This erases the executable decision procedure Rust carries. When a rendered
  theorem uses such a proposition as an `iteP` guard and Lean cannot
  synthesize `Decidable` structurally, the Lean-side evidence-closure pass
  emits a first-class `@[vrml_evidence]` instance obligation. This is derived
  from the parsed IR/VCs and does not add a textual-IR grammar form; the
  normative policy is in `docs/vcgen.md`.
- VC generation folds the statement list exactly as the M1 Rust generator
  did: assumes and proved assertions extend the context, call preconditions
  and `ensures` clauses become obligations, call results become fresh
  universally quantified binders constrained by callee contracts. The full
  policy — the per-statement generation relation in conventional
  judgment/inference-rule form, and the soundness obligations for the planned
  foundational generator — is specified in `docs/vcgen.md`.
- `branch` scopes its arms under the positive/negative condition; context
  discovered inside an arm survives only under that guard.
- `scope` is check-and-discard (Verus's `DeadEnd`: `assert … by` blocks,
  exec-closure body checks): its children prove in the enclosing context
  and nothing they introduce escapes. Before this construct existed, the
  `DeadEnd` pass-through leaked `assume`s from proof blocks into the
  continuation — fixed 2026-07-13 (see `docs/trust.md`).
- `loop` follows the Verus loop-isolation discharge: entry clauses are
  checked in the outer context; the havoc set plus `iteration` facts open the
  arbitrary-iteration scope whose body must re-establish the invariants; the
  continuation sees the havoc set plus the `exit` facts only. Lowering records
  the root identifier of an assigned place, not the projected element: a write
  such as `buf[i] = v` therefore freshens `buf` with the root's sequence type.
  Missing root type information is a lowering refusal, never an element-typed
  havoc. This correction changes no textual-IR or Lean VC rule.
- Isolated prover queries also need no new IR form. The Rust lowering maps
  `AssertBitVector` and `AssertQuery { mode: NonLinear }` to an empty-exit
  `loop`: its `iteration` list contains only accumulated type facts and its
  body contains the explicit query requirements/statements. In particular,
  it excludes the enclosing hypotheses, where Verus has already assumed the
  queried conclusion for downstream use. Other assertion-query modes fail
  closed. Differential c112 and c142 pin the no-circularity direction.
- Range `for` loops need no IR form of their own: the Rust lowering
  specializes Verus's `VerusForLoopWrapper<Range<_>>` desugaring into this
  same `loop` shape (entry/exit invariant instances at the peek values,
  `lo ≤ i < hi` iteration facts, `hi − i` measure) before serialization —
  the semantic argument lives in `docs/trust.md`. Non-range `for` loops
  fail closed on the Rust side.
- User spec functions are **never inlined and never fueled**
  (plans/execution-plan.md): each `specfn` becomes a real
  Lean `def` at the top of the generated module (deliberately not `@[simp]`;
  `noncomputable` only when opaque-at-zero division/remainder forces it), and
  `(apply id …)` renders as an ordinary application of its qualified name.
  Visibility flows exclusively through each obligation's
  `vrml [names…]` unfold list: `(visible 0|1)` sets the default (opaque
  functions hidden), and `(reveal id N)` statements adjust it per program
  point with the same scoping as facts (arm- and loop-local reveals die
  with their scope) — so an un-`reveal`ed opaque definition fails exactly
  where Verus fails, with no fuel anywhere. Interactive twin proofs may
  still `unfold` anything.
- Quantifiers become genuine Lean `∀`/`∃`. Range guards for the bound
  variables are folded into the body at lowering time (`∀` → `guard →
  body`, `∃` → `guard ∧ body`) — Verus's typ_invariant discipline carried
  structurally. Trigger groups are **preserved in the IR** (user
  directive, 2026-07-13) and documented in each obligation's doc comment
  (`- Triggers (Verus, for future e-matching)`) for future tooling (e.g.
  grind e-matching patterns); the Lean backend does not consume them.
  Verus verdicts that *fail because a trigger never fires* remain a
  known, deliberate divergence (our automation instantiates without
  trigger discipline and is more complete there); the same class covers
  **nonlinear arithmetic**: Verus's default prover disables it (goals
  need explicit `by (nonlinear_arith)` blocks), while our `nlinarith`
  rung proves bounded-product truths directly — we accept true
  statements Verus's discipline rejects (pinned by the m4-nonlinear
  example; not representable in the verdict-agreement corpus); when a quantified goal
  defeats the ladder, the settled workflow is an interactive proof in the
  twin. `choose` fails closed for now.
- Generated definitions avoid `noncomputable` unless the body forces it
  (currently possibly-zero `ediv`/`emod`); `iteP` stays computable when its
  guard has constructive `Decidable` evidence. Interactive proposition
  decision evidence is emitted only after spec definitions, so it cannot
  leak classical computation into them. Datatype accessors and
  plain-arithmetic spec fns emit as ordinary `def`s.
- User datatypes (structs, enums, and the tuple datatypes Verus
  synthesizes) become real Lean `inductive`s at the top of the generated
  module — injectivity, disjointness, and exhaustiveness come from the
  kernel, never from axioms — plus `@[simp]` per-variant predicates
  (`is_<variant>`) and field accessors (`get_<variant>_<field>`;
  wrong-variant access returns `default`, mirroring Verus's
  underspecification, which also makes unguarded field range facts sound:
  a datatype's type fact is the conjunction of its integer-ranged fields'
  ranges, one level deep). `match` never reaches the IR: Verus desugars it
  into branch trees over `isvariant` guards and `fieldof` projections.
  Generic datatypes and mutually recursive spec fns are supported
  (`examples/m3-generics`, `examples/m3-mutual-rec`); const-generic
  *datatypes* still fail closed.
- Fixed-size arrays `[T; N]` are their `Seq<T>` view (like `Vec`): the
  length is a type fact (`seqlen a = N`), indexing is `seqindex`, the
  array `View` is the identity, literals are pushes onto empty, and
  vstd's `Seq::new` comprehension lowers to `(seqnew len f)`
  (`Vermilion.Seq.new`). Const-generic *spec fns* pass their const
  instantiations as leading explicit `Int` arguments (not
  Lean-inferrable from value arguments); const-generic datatypes still
  fail closed.
- Mutually recursive spec fns share one Lean `mutual` block (reference
  cycles detected at lowering); recursive bodies are guarded on their
  decreases measures being nonnegative — totality over `Int` where a
  `nat` param's range is a typing fact the embedding does not carry —
  returning `default` off-range (a valid interpretation of Verus's
  unconstrained off-range semantics); machine attempts unfold mutual
  chains by interleaved alternation with the summed reveal rounds. Ground
  arithmetic is normalized between rewrites so exact clipped `nat`
  predecessors do not leave an exponentially branching conditional tree.
- Self-recursive spec fns become genuinely recursive Lean definitions:
  the body renders its conditionals dependently (`if _h : c then …`) so
  the equation compiler gets the branch hypotheses, `termination_by`
  comes from the same decreases measures Verus already checked (the
  self-application's trailing `fuel%` argument is dropped), and machine
  attempts unfold by **bounded rewriting** — `iterate N (try rw [f])`
  with N the reveal rounds — never by simp, which would loop on a
  recursive equation. Mutual recursion fails closed.
- Type facts are systematic (the `typ_invariant` analogue): every
  value-introduction site — parameters, call results, branch joins, loop
  havoc symbols, prophecy futures, quantifier guards — carries the
  recursive facts of its type: scalar `urange`/`srange`; quantified
  element facts for `Seq`/`Vec` (`∀ i` in bounds), `Set`/`Multiset`
  (contained elements), `Map` (values at contained keys); datatype field
  facts through the accessors (generic-instantiated, sound unguarded
  because wrong-variant access returns `default`, of which every such
  fact holds; recursive datatypes unroll once). The quantified facts are
  plain hypotheses — the ladder instantiates them without trigger
  machinery, and goals beyond it go interactive in the twin.
- Spec closures are genuine Lean functions: `spec_fn(T…) -> U` lowers to
  the arrow type, `|x| e` to `fun x => e`, and application of a
  `spec_fn`-typed value to plain application — no defunctionalization, no
  axioms. Like Verus, lambdas are total over their binders' Lean types
  (no range guards at the binder). Exec closures (`ClosureInner`, closure
  call contracts) are a separate, supported mechanism
  (`examples/m3-exec-closures`).
- User `View` impls dispatch like any trait impl (the `v@` identity is
  gated to `Vec`, whose `Seq` view is its model; it previously fired for
  user impls — a mistyping fixed and guarded 2026-07-13). `DeepView`
  fails closed.
- Generic trait bounds need no new constructs: a trait spec fn applied
  at an abstract `Self` becomes a fresh `fnspec`-typed universal binder
  of the enclosing function (one per (fn, type-args) pair); trait-method
  calls take the trait declaration's contract at `Self = T`;
  `TraitBound` predicates lower to `true`. Sound for every
  interpretation of the symbols — in particular every impl.
- `broadcast use lemma` needs no new constructs: the lemma's quantified
  fact (parameters universally quantified with their type facts as
  guards, over `requires → ensures`) is assumed at the use point — a
  theorem, since the lemma's own body is verified — with ordinary fact
  scoping. Group `use`s beyond the structurally-handled vstd identities
  fail closed.
- Const generics need no new constructs: a `const N: usize` parameter
  (recognized by its `ConstTyp` bound) becomes an `Int` value binder
  with its declared type's range facts; `ConstGeneric` uses are the
  binder inside the generic function and the substituted literal at
  instantiated calls. `usize`/`isize` range facts are the arch-neutral
  64-bit bounds (Verus verifies for a symbolic 32/64-bit word; programs
  pinning 32 bits may prove more in Verus). Const-generic spec fns and
  datatypes fail closed.
- Exec closures need no new constructs: the body check is a `(scope …)`
  with fresh parameter binders; `ClosureReq`/`ClosureEns` are fresh
  `fnspec`-typed binders (per anonymous-closure type) that the assumed
  contract fact and the `exec_nonstatic_call` contracts apply; the
  opaque closure value — an SST temporary read before any definition,
  i.e. implicitly havocked — becomes a fresh binder of the anonymous
  closure datatype (emitted as an opaque single-variant inductive).
  Nothing is axiomatized; the predicates are ordinary quantified
  symbols. Range predicates and datatype accessors carry `@[grind]` so
  the ladder can instantiate the quantified contract facts.
- Traits dispatch statically: impl spec fns are emitted under the impl's
  name and trait spec-fn calls resolve to the impl of their `Self` type
  (contract positions carry no resolution in the SST, so the lowering
  matches type arguments against `TraitMethodImpl` declarations). Exec
  trait-method calls verify against the trait declaration's contract —
  inherited `requires` proved at the call site, inherited `ensures`
  assumed, both instantiated at the call's type arguments; impls that
  redeclare contracts materialize the inherited clauses into their own
  declarations, used directly. A unique monomorphic associated-type equation
  (for example `Index::Output = u64` for a concrete `StateArray` impl) is
  normalized on the Rust side before binder types enter this IR, so it needs no
  new type form or Lean axiom. Generic, unresolved, or ambiguous projections
  retain their SST projection and fail closed. Generic bounds and dynamic
  dispatch otherwise keep their existing behavior.
- Verus's extensional equality (`ext_equal`; `=~=`, and the spec `==`
  that desugars to it on collection types) lowers to plain `eq` exactly
  where the Lean models are extensional: `Seq` (`List`), `Set`
  (`Finset`), `Multiset` (Mathlib `Multiset`), scalars, type parameters,
  and user datatypes (structurally, recursively). `Map` — anywhere in
  the compared type — and deep ext-eq (`=~~=`) fail closed: the Map
  model's unconstrained off-domain lookup makes its structural equality
  strictly finer than Verus's domain-wise extensionality.
- vstd's `spec_vec_len(v)` (the uninterpreted exec-`len` symbol) lowers
  to `(seqlen v)`: the always-broadcast `group_vec_axioms` identifies it
  with `v@.len()`, so the identification is sound and verdict-coherent.
  With `&mut` parameters this completes `Vec` mutation: `v.push(x)` is
  an ordinary contract call whose ensures relates the borrow's future
  view to the entry view.
- Call-site type arguments substitute into callee contracts while they
  are lowered (`Vec::<u32>::new()`'s `ensures v@ == Seq::<T>::empty()`
  reaches the caller as `Seq<u32>`).
- Field writes through `&mut` are record updates: the destination path
  (root + field projections) rebuilds the root's tracked value as a
  constructor with the written field replaced, nested paths recursively.
- `&mut T` parameters (sequential fragment) never reach the IR as a type:
  Verus's prophecy encoding (`mut_ref_current`/`mut_ref_future`
  projections, `has_resolved` markers, two-phase borrows) is **resolved at
  lowering time**, sound for the non-aliased sequential code Verus's
  borrow checking guarantees. The substitution environment tracks the
  current referent value (`mut_ref_current` is the identity; `*old(x)` on
  the enclosing function's own parameter is the entry binder);
  `assume has_resolved(x)` snapshots the current value as the borrow's
  future, which is what a later `*final(x)` means; each `&mut` call
  argument's future becomes a fresh `(fresh …)` symbol constrained only
  by the callee's `(call … (ensures …))` — Verus emits the caller
  writeback `y = mut_ref_future(tmp)` *before* the call, so the symbol is
  allocated on first demand and shared; reference-typed temporaries are
  tracked as aliases of the root borrow. Calls that themselves return
  `&mut T` use the same discipline: lowering aliases the callee's named
  result to its returned borrow temporary, allocates one caller-side future
  for the result, and at `has_resolved` equates that future with the current
  value of the concrete destination. This supports static custom `IndexMut`
  calls without exposing references or prophecies in the textual IR.
  Everything outside this
  discipline (`final` in a spec position with no resolved borrow, call
  contract, or postcondition; non-variable `&mut` arguments; `&mut`
  values escaping into data) fails closed.
- `break`/`continue` never appear as IR statements: the Rust lowering
  expands each site inside the loop body into its Verus obligations — at a
  `continue`, `(invariant preserve …)` checks for the at-entry invariants
  plus the decreases assert; at a `break`, `(invariant break …)` checks for
  the at-exit invariants (loop `invariant` + `ensures`, no decreases) — and
  closes the path with `(assume false)`. Break-capable loops arrive with no
  condition fact in `iteration` or `exit` (Verus folds the condition into
  the body), so the continuation of such a loop assumes only the at-exit
  invariants.

The concrete Lean entry point is `lake exe vrml_gen <file.sexp>`, which emits
the colocated generated modules and the `generated/<stem>.json` manifest
previously produced by Rust — by default one unit module per function
(`generated/<stem>/<function>.lean`) around a shared imported
`generated/<stem>/Specs.lean` (and, when typeclass evidence exists, a
shared `generated/<stem>/Evidence.lean`); `--mode per-file` restores the
single `generated/<stem>.lean`. The IR itself is identical in both modes.
The manifest's `obligations` array contains both logical VC records and any
`kind: "typeclass_evidence"` records; both use the same marker/hash/span
lifecycle in `vrml_check` and `vrml_sync`.

## Coverage

The IR deliberately covers the **lowered fragment**, not the full Verus SST:

- The Rust lowering fails closed — any SST construct outside the fragment
  aborts translation with an explicit `unsupported SST …` error, so no gap is
  ever silent. The Lean parser likewise rejects unknown heads.
- The IR is *post-lowering*: SSA and spec-let substitution, callee-contract
  substitution, and integer-range facts are already applied. Unstable Verus
  internals never enter the Rust↔Lean contract; pin bumps stay contained in
  `vermilion_direct`.
- Coverage grows per milestone and is measured by the differential corpus
  (`tests/differential/`): M1 straight-line; M2 adds `branch`, `loop`, `ite`,
  and collection types; quantifiers/triggers, datatypes, traits/closures,
  specialty arithmetic, and ghost memory follow in M3–M6. Full disposition of
  the Verus suite is the M7 gate.
