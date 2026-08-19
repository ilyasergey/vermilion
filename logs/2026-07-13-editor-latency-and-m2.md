# 2026-07-13 — editor file-open latency solved; M2 continuation

> Note: this session ran past midnight; entries below the M4 slices were
> written on 2026-07-14. Work from the editor-performance fix onward, plus
> the Verus benchmark, is in `logs/2026-07-14-editor-perf-and-benchmark.md`.


## Editor `.lean` file-open latency: root cause and fix

Symptom: opening any generated/proofs `.lean` file in VS Code took 10–20 s
before type checking even started; the Lean server start paid the same.

Diagnosis trail (measurements on this machine):

- Batch elaboration is *not* the problem: `lean` on
  `examples/m2-loops/generated/looping.lean` = 2.8 s total (1.3 s imports,
  1.4 s all proofs).
- `lake env true` / `lake setup-file` = ~17 s at <10 % CPU — the time is
  spent *waiting*, not computing.
- A git shim logging Lake's subprocesses showed **28 git invocations per
  Lake command** (workspace materialization: `git diff HEAD --exit-code`
  et al. per dependency checkout), each a uniform ~1.4 s **regardless of
  repository size** — cvc5 and mathlib identical, so not filesystem work.
- `GIT_TRACE_PERFORMANCE` put git's own work at **15 ms**; the rest happens
  before `main()`.
- The constant is a per-process-spawn tax: even `/usr/bin/true` takes
  0.26 s. An endpoint-security agent is resident and assesses
  every exec. 28 spawns × tax ≈ the observed 17 s.
- Red herrings eliminated on the way: `core.fsmonitor`/untracked-cache
  configs (set yesterday, now reverted — no effect), the `/usr/bin/git`
  xcrun shim (adds ~0.3 s but not the driver), package index staleness.

Fix (`editor/bin/lake` + `.vscode/settings.json`): the security agent is
not removable, so the fix is to stop spawning. A caching `lake` shim is
prepended to the lean4 extension's PATH via `lean4.envPathExtensions`
(repo-relative, no machine-specific paths):

- `lake serve --` → loads a cached workspace environment (captured once
  from `lake env env`, invalidated on `lakefile.lean` /
  `lake-manifest.json` / `lean-toolchain` changes), exports
  `LAKE=<the shim>` so file workers come back to it, and `exec`s
  `lean --server` directly — Lake's 28-git-call scan is skipped entirely.
- `lake setup-file <file> <header>` → answered from a cache keyed on the
  exact argument vector; the warm path is pure bash builtins (zero
  subprocesses) and re-validates that every `.olean` named in the cached
  answer still exists (3401 files, single-pass split). Miss → delegate to
  the real Lake, store, replay.
- Any other command → delegated to the toolchain Lake untouched.

Measured: server start 17.9 s → **0.56 s**; per-file `setup-file`
17.5 s → **0.36 s** (warm; the first open after a dependency change pays
one real Lake scan). LSP initialize verified against the shim-started
server. Documented in docs/TUTORIAL.md § 6½.

## M2 CLOSED at end of session — see the gate accounting in
plans/execution-plan.md (60 cases / 100% parity / 3.6 s edit loop /
6.64× median slowdown; marshalling and the discharge cache carried
explicitly). Stage-by-stage record below.

## M2 continuation

### Loop `break`/`continue` (fail-closed until today)

Semantics mirrored from Verus sst_to_air (isolated loops): any loop
containing a `break` arrives as the `cond = None` shape (the condition is
folded into the body as `if !cond { break }`), so neither the iteration
facts nor the exit facts carry a condition; a `break` asserts the at-exit
invariants (`invariant` + loop `ensures`, never `invariant_except_break`)
with **no** decreases check; a `continue` asserts the at-entry invariants
(`invariant` + `invariant_except_break`) **plus** the decreases obligation;
either site then closes its path. In our IR that expansion happens in the
Rust lowering: invariant checks with the new `break` phase (or `preserve`
at continues, ids suffixed `_bN`/`_cN` per site) followed by
`(assume false)` — inside a branch arm the guarded contribution to the
continuation becomes exactly the negated path condition, which is how
`if c == n { break }` teaches the back edge `c ≠ n`. Labeled
break/continue resolves against a loop-frame stack; targets that would
cross an isolated loop boundary fail closed, as does
`#[verifier::loop_isolation(false)]` (a different discharge contract) and
`continue` in `for` loops (Verus rejects it too).

Same-slice IR growth per the standing directive: `phase ::= entry |
preserve | break` in docs/ir.md, the Rust serializer (`InvariantPhase::
Break`), and the Lean side (`InvariantPhase.atBreak`, obligation kind
`invariant_break`, vrml_check human message).

New example `examples/m2-break` (loop-with-ensures counter, break-out
divisor search, continue with measure re-check): 34/34 obligations
discharged by the automation ladder. Differential cases c26–c30 (break
search pass, invariant violated at break, continue pass, measure not
decreased at continue, loop ensures violated at break).

### vstd Set / Map / Multiset in spec positions

Same-slice IR growth again: types `(set T)`, `(map K V)`, `(multiset T)`
and eleven table-driven collection ops (plus typed empties) enter the
grammar, the Rust serializer (`CollOp`), and the Lean decoder/renderer.
Carriers keep the automation on Mathlib's lemma library: `Set` is a
`Finset`, `Multiset` a Mathlib `Multiset`, `Map` a finite key set plus a
total lookup function (off-domain indexing is unconstrained, mirroring
Verus's underspecification; map extensional equality is deliberately not
yet lowered). Empirical SST findings baked into the lowering: inline impl
methods arrive with `impl&%N` middle path segments (dispatch keys on the
defining module instead); the finite `Set`'s `contains` arrives as
`ISet::contains(s.to_iset(), x)` and the view chain is collapsed, while
standalone infinite `ISet` values keep failing closed; `Map::contains_key`
arrives pre-inlined as `dom().contains`. The old M0 `κ → Option ν` Map
probes were migrated to the new carrier. `examples/m2-collections` grows
Set/Map/Multiset functions (16/16 obligations automatic); differential
cases c31–c35.

### Editor: navigate from a Rust function to its Lean proofs

User-requested mid-session: *Vermilion: Go to Function's Lean Proofs*
(command palette + Rust editor context menu, extension 0.5.2). From the
cursor's enclosing function (`proof fn` included) it opens the `proofs/`
twin — or `generated/` when no twin exists yet (also user-specified) — and
lands on the function's first theorem, located via the
`-- vrml:begin <stem>.<fn>.` block markers.

### Spec functions and reveal/hide: design settled (no inlining, no fuel)

Discussed with the user and recorded in plans/execution-plan.md and
.claude/memory/spec-fns-no-inlining-no-fuel.md: statement-level calls keep
the Dafny-style assert-requires/assume-ensures contract discipline already
implemented; spec fns in expressions will become real Lean definitions
applied as `f x` (IR grows function application), with per-occurrence
ground defining equations as machine hypotheses — never quantified
definition axioms, hence no fuel in the logic and nothing added to the
trusted base. Verus verdict coherence is preserved by suppressing the
equations under `hide`/opaque and restoring them under `reveal`
(`reveal_with_fuel(f, n)` = n ground-instantiation rounds at lowering).

### User spec functions land (first slice of the no-fuel design)

Same-slice IR growth: `(specfn id (binders …) (ret T) (body e))` top-level
forms and `(apply id expr*)` expressions; the Rust lowering registers each
referenced spec fn once (`SpecRegistry`, threaded through a new `ExpCtx`
that every expression lowering now carries), lowers its body in its own
parameter environment, and keeps call sites as applications. Recursion is
detected by an in-flight guard and fails closed, as do `reveal`/`hide`
(`StmX::Fuel`) until visibility narrowing lands. The Lean side emits each
spec fn as `@[simp] noncomputable def <qualified> … := body` at the top of
the generated module; obligations render `f x` applications and their
machine attempts carry a `vrml [names…]` unfold list — the per-obligation
visibility hook of the settled design (the simp equation is the ground
defining equation, applied only at present occurrences; nothing is
axiomatized, nothing is fueled). vrml_check's delta modules now reuse the
generated preamble so standalone re-elaboration sees the definitions.

Two workflow fixes surfaced by the example: `vrml` gained the `[ids]`
unfold form; `ediv`/`emod` gained conditional `@[simp]` rewrites to `/`/`%`
for provably nonzero divisors; and vrml_sync now **reclaims `sorry`
placeholders once automation catches up** — a placeholder is not a user
proof, so a hash-matching sorry block whose obligation now passes is
replaced by the successful generated block (user-edited proofs still
survive as before).

New example `examples/m2-specfns` (double/is_even/max_int; 5/5 obligations
automatic after the fixes); differential cases c36–c38 (spec-fn realized,
violated, and composed with nested `iteP`).

### Suite progress reporting (user-requested)

The differential harness gained a TTY-only, self-replacing progress bar in
the `[vermilion]` live-status style — filled bar, case counter, current
case, and phase (`verus front end + SMT oracle` / `lowering to IR` /
`lean judging obligations` / `cached verdict replay`) — cleared before the
results table; piped/captured runs stay clean. `run_suite.sh` prints
numbered phase banners (`[vermilion suite 3/6] examples: m2-loops (5/9)`).
Also removed a warm-run cost: the harness paid an unconditional
`lake build vrml_gen` (~17 s of per-package git scans under the
endpoint-security spawn tax) on every invocation; it is now gated behind
the `.vermilion/lake-build-stamp` staleness discipline.

### reveal/hide: per-obligation visibility, Verus-coherent, fuel-free

The second spec-fn slice. `StmX::Fuel` lowers to a new `(reveal id N)` IR
statement; `specfn` forms carry `(visible 0|1)` (`#[verifier::opaque]` ↦
0). The Lean VC generator threads a visibility map through the statement
walk — seeded from the specfn defaults, adjusted by reveals, and scoped
exactly like facts (arm- and loop-local reveals die with their scope) —
and every obligation now carries its own `unfolds` list, rendered as its
`vrml [names…]`. Emitted definitions deliberately lost `@[simp]`: the
unfold list is the *sole* visibility channel, so no ladder rung can see a
hidden definition. Result: an un-`reveal`ed opaque function fails exactly
where Verus fails (differential c39), a revealed one passes (c40) —
Verus-verdict coherence with zero fuel in the logic, per the user
directive. `examples/m2-specfns` grew the opaque/reveal pair (6/6
obligations); corpus at 40 cases, 40/40 verdicts, 18/18 spans.

### Recursive spec functions (third and final spec-fn slice)

The self-application inside a recursive spec fn's body arrives from Verus
as `CallFun::Recursive` with an explicit trailing `fuel%` argument (type
`Air`) — Verus's own fuel plumbing — which the fuel-free lowering simply
drops. A direct self-application while the fn is in flight marks it
recursive (mutual recursion fails closed); its termination measures are
recovered from the `decrease%init` bindings of the spec's own termination
check and travel as `(decreases expr*)` in the `specfn` IR form.

Emission (shape validated empirically before implementing): recursive
bodies render conditionals dependently (`if _h : c then …` under
`open Classical in` — a new dite mode threaded through the expression
renderer), because the equation compiler needs the branch hypotheses in
termination goals; `termination_by (measure).toNat` comes from the same
decreases Verus checked; `decreasing_by` climbs
`first | omega | (simp_all; omega) | simp_all`. Machine attempts unfold
recursion by **bounded rewriting** (`iterate N (try rw [f])`, N = reveal
rounds) — a recursive name in a simp set loops, which is the tactic-level
shadow of why SMT needs fuel; the logic itself remains fuel- and
axiom-free. `examples/m2-specfns` grows `sum_to` with
`reveal_with_fuel(sum_to, 4)` (7/7 obligations); differential c41/c42;
corpus at 42 cases, 42/42 verdicts, 19/19 spans.

### Differential corpus at 60 — the M2 gate's case count

Eighteen new cases (c43–c60) drive the corpus to the 60-case M2 gate:
nested loops, calls inside loops, branches inside loops, signed
arithmetic and its overflow, u32 underflow, `ediv`/`emod` properties,
Seq chains, Set/Map/Multiset contracts, spec fns inside loop invariants,
opaque-without-reveal, early returns, call chains, and a recursive spec
fn in a proof. First run flushed out three case bugs (nonlinear nested
invariants — replaced with a constant inner bound; two ill-typed `nat`
indices) and one automation gap: goals like `(x/2)*2 + x%2 = x` need
simp's `ediv`/`emod` rewrites *followed by* omega, so the ladder gained a
final composite `simp_omega` rung.

The second run exposed a real **ladder bug**: a rung that merely makes
progress (simp_all rewriting `emod` to `%` without closing) reported
success, ending the climb early with goals still open — later rungs never
ran. Completeness-only (the obligation then *failed* with unsolved goals;
a false goal could never be accepted), but it silently weakened
automation. `vrml_ladder` now accepts a rung only when no goals remain.
A conditional `Seq.index_push_at` prelude lemma also landed (an index
written `s.len + 1` now matches `(s.push a).len` with simp discharging
the side condition). Final: **60/60 verdict parity, 25/25 span
agreement** — the M2 gate's 60-case criterion is met at 100%, well above
its ≥90% requirement.

### M2 slowdown gate: measured, and a big fixed cost removed

The differential harness now times each cold case (Verus's full verify
run vs the Vermilion pipeline: lowering + generation + Lean judging) and
prints the median ratio — the M2 gate's ≤10× criterion, measured rather
than anecdotal. The first measurement (median 46.6×) exposed that
`vrml_check` invoked `lean` through `lake env` whenever LEAN_PATH was
unset — every standalone check (including all 60 differential cases) paid
Lake's ~17 s git-scan tax. It now reads the `.vermilion/lean-path` cache
that `scripts/lean_env.sh` maintains (same staleness rule), dropping a
standalone m2-loops check from 18.8 s to 3.3 s. Re-measured over the
60-case corpus: **median slowdown 6.64×** (median Verus 0.88 s vs
Vermilion 6.63 s per case, timed under the worker pool's contention, so
conservative) — the ≤10× M2 gate is met.

Gate accounting recorded in plans/execution-plan.md: 60 cases ✓ at 100%
parity ✓, edit loop ~3.6 s ✓; Vest/IronKV marshalling explicitly carried
into the M3 entry criteria (real marshalling needs datatypes, `Vec`,
traits, and generics — deliberately outside the M2 fragment), flagged
rather than silently dropped.

### Parallel differential harness

Each differential case is fully independent (per-stem artifact names), so
the cold path now runs on a thread pool (width min(6, cores) — Z3 and Lean
are memory-hungry, and the pool also hides the per-spawn security tax).
Results and the verdict cache are assembled in deterministic case order
after the pool drains; the progress bar became thread-safe (completion
count + latest event). Measured: cold 5m12s for the 38-case corpus
(38/38, 17/17) versus ~10+ min serial — only ~2× despite the 6-wide pool,
at ~28% CPU: the endpoint-security agent appears to serialize exec
authorizations machine-wide, putting a floor under any parallelism that
spawns processes. Warm replay: **3.3 s** for all 38 cases. README status
table and tutorial refreshed to the current M2 state (38-case corpus,
break/continue, collections, spec fns, ill-typed guarantee, editor 0.5.x)
in the same stage.

### Ill-typed guarantee: structural and suite-enforced

The plan TODO is resolved. `run_example.sh` now surfaces the front end's
exit status directly: a rejected program stops with exit 3 and writes
`.vermilion/<stem>-run.json` (`phase: front-end`); successful runs record
`phase: lean` with vrml_check's verdict. The editor reads this record
instead of the check-file-mtime heuristic (which stays only as a fallback
for pipelines predating it), and a structurally-detected front-end
rejection with unparseable spans now shows "does not type-check" rather
than the pipeline-broke popup. New suite step `scripts/test_ill_typed.sh`
(wired into `run_suite.sh`) asserts on `tests/ill_typed/broken_types.rs`
that the run stops in the front end, nothing is generated or judged, and
the rustc error lands at its exact span. Extension bumped to 0.5.1.
## M3 opened: user datatypes (first slice, same day)

Design scouted from the pinned source, recorded in the plan, then
implemented in one slice: the export already ships datatype declarations
(full `vir::ast::Krate`); `MiddleOutput` now threads the post-simplify
`krate.datatypes` (tuples included — `ast_simplify` synthesizes them as
single-variant structs); the lowering registers each referenced datatype
leaf-first (`register_datatype`, mutual recursion fails closed, generics
fail closed) and lowers `ExpX::Ctor` (fields re-ordered into declaration
order), `UnaryOpr::Field`, and `UnaryOpr::IsVariant`. `match` needed no
work at all: Verus desugars it into branch trees our machinery already
verifies.

IR growth in the same slice: `(datatype id (variant NAME (field NAME
TYPE)*)+)` top-level forms, `(data id)` types, and
`ctor`/`fieldof`/`isvariant` expressions. The Lean side emits each
datatype as a real `inductive` (kernel-given injectivity, disjointness,
exhaustiveness — zero axioms, same discipline as spec fns) plus `@[simp]`
variant predicates and field accessors; wrong-variant access returns
`default`, which makes the one-level **field range facts** sound
unguarded — `HasType` lowering, parameter facts, and loop-havoc facts now
share a `type_range_facts` helper (this also replaced the old
HasType-passthrough with honest semantics: non-range type facts are
`True` in the shallow embedding). `FunctionId.qualified`/`leanSegment`
moved into Ast so types can render datatype names.

`examples/m3-datatypes` (struct + enum + spec-fn `match` + exec
constructors): 5/5 obligations automatic, twin byte-identical.
Differential c61–c64 (struct swap pass/fail, enum match pass/fail); c63
exposed one more ladder gap — classical conditionals guarded by
arithmetic (exactly the shape of desugared spec-fn `match`) need case
splitting — so the ladder gained a final `split_ifs <;> simp_all <;> try
omega` rung (validated on the failing goal before wiring in).
## M3 second slice: quantifiers

`ExpX::Bind(BndX::Quant)` lowers to a genuine `∀`/`∃` (`(forall
((name TYPE)*) expr)` in the IR): bound variables enter the environment,
their range guards fold into the body (`∀` → guard → body, `∃` → guard ∧
body — Verus's typ_invariant discipline), and triggers (`ExpX::
WithTriggers`, `UnaryOp::Trigger`, and the `Trigs` on the binder) are
dropped as SMT-only. `choose`/`Lambda` fail closed.

Automation boundary, measured: grind instantiates ∀-hypotheses into
linear goals (differential c65/c66 pass at parity), but existential
witnesses and index case-splits defeat every rung — `examples/
m3-quantifiers` runs `--manual-proofs` with two committed twin proofs
(Seq push case analysis; `⟨x+1, by omega⟩`), the intended workflow.
Recorded as an open ladder item in the plan, together with the
deliberate trigger divergence: c65 initially FAILED in Verus while our
side passed, because Z3's trigger never fired — trigger incompleteness
is an SMT artifact we do not reproduce (the honest mirror image of the
reveal/hide coherence we do preserve).

Corpus at 66 cases: 66/66 verdict parity, 28/28 spans.
## Follow-ups (user-directed) and M3 pause point

- **Triggers preserved, not consumed** (user directive): quantifier
  trigger groups now travel through the IR (`(triggers (trigger expr*)*)`
  inside forall/exists) and are documented in each obligation's doc
  comment (`- Triggers (Verus, for future e-matching)`) for future grind
  e-matching use. Failed quantified machine attempts stay interactive in
  the twin — settled policy, no witness-automation rung.
- **`noncomputable` minimized** (user directive): datatype accessors are
  plain `@[simp] def`s; spec fns emit `noncomputable` only when the body
  forces it (classical `iteP`, `ediv`/`emod`), detected by an expression
  walk.
- **Twin coverage vs doc drift**: the new trigger doc lines exposed that
  `twin_covers` compared the whole pre-`:= by` text, so regenerated doc
  comments broke coverage and `--manual-proofs` runs printed
  `error[vermilion]` noise for goals the twin proves (user report). It
  now compares from `@[vrml_obligation] theorem` onward — doc/metadata
  may drift, the obligation may not. m3-quantifiers reports
  "2 discharged interactively 🎉" with no error noise.
- **Editor 0.5.3** (user request): *Go to Function's Lean Proofs* now
  falls back from obligation markers to the emitted definition — a
  `spec fn` lands on its `def <stem>.<name>`, a datatype would land on
  its `inductive`.
- **Generics design scouted and recorded** in the plan (pre-poly SST is
  unboxed; `TypParam` is bare; inhabitedness is the one semantic content
  of Verus's `as_type` axiom → `(T : Type) [Inhabited T]` binders;
  call-site type substitution). Implementation is the next session's
  slice — stopping here at a green suite per the user's instruction.
## Session tail (user-directed): noncomputable-free spec fns, editor jump chords

- **`noncomputable` eliminated from spec-fn and datatype counterparts**
  (user directive, repeated). Two root causes removed: `iteP` now takes
  the condition's `[Decidable c]` instance (`if c then a else b`) instead
  of `Classical.propDecidable` — Verus `if`-conditions are `bool`, hence
  decidable, so this is computable and total for everything the fragment
  produces (a genuinely undecidable guard fails to elaborate rather than
  silently going classical); a nonzero **literal** `ediv`/`emod` divisor
  renders to native `/`/`%` (identical term — `Vermilion.ediv` already
  reduces to those away from zero — but computable), while a possibly-zero
  (non-literal) divisor keeps the opaque-at-zero `Vermilion.ediv`/`emod`
  for Verus parity and is the only remaining `noncomputable` trigger.
  Datatypes emit a per-variant `Decidable (is_<variant> ·)` instance so a
  `match`-desugared spec fn (guarded by a variant test) stays computable.
  `renderSpecFn` now emits `noncomputable`/`open Classical` only when the
  body genuinely forces it. Verified: m2-specfns (max_int/is_even/sum_to/
  boxed) and m3-datatypes both at 0 occurrences of `noncomputable`, all
  obligations still discharged.
- **Twin-coverage doc-drift fix**: `twin_covers` compared the whole
  pre-`:= by` text, so a regenerated doc comment (e.g. new trigger lines)
  broke coverage and `--manual-proofs` runs printed `error[vermilion]`
  noise for goals the twin proves; it now compares from `@[vrml_obligation]
  theorem` onward.
- **Editor 0.6.1 — one context-aware jump** (user request, refined). A
  single `⌘⇧J` / `Ctrl+Shift+J` (scoped to Rust files — no editor-context
  default on either platform, so nothing is shadowed): *Vermilion: Go to
  Lean* dispatches on the cursor by matching the manifest's per-obligation
  Rust spans: on an `ensures` clause it opens that clause's Lean theorem,
  on an `assert` its assert VC (whichever obligation encloses the cursor,
  passed or not); anywhere else in a function it opens the function's Lean
  counterpart (a `spec fn`'s emitted def, a `proof fn`/`fn`'s first
  obligation theorem). Opens in the same editor group (no split). 0.6.2
  refined the span-matching to route each construct to its own theorem;
  0.6.3 sends an `assert` to the *start of its proof* (its VC's tactic
  body) while an `ensures` still lands on its theorem statement (kind-
  driven: twinGoalPosition vs twinTheoremPosition). Replaces the earlier
  two-key `… D` / `… G` chords. In the right-click
  menu; documented in README and tutorial.

## Editor 0.6.4: disambiguation picker when several VCs share a span

A single Verus construct can produce more than one obligation at the same
Rust span — most visibly a loop invariant, which yields both an
`invariant_entry` and an `invariant_preserve` check on the invariant's
line. `⌘⇧J` (Go to Lean) previously picked the tightest match silently;
now, when more than one obligation encloses the cursor, it opens a
QuickPick listing each by **theorem name**, its **status** (auto `✓` /
interactive `✎` / unproven `sorry` `✗`, read from the twin block), and its
goal, and jumps to the chosen one (asserts to the proof body, others to
the theorem statement). Single-match and no-match behaviour is unchanged.
Example: on `examples/m2-loops/looping.rs:46` (`s <= 10000`) the picker
shows `invariant_entry_0_3` (auto) and `invariant_preserve_0_3`
(interactive — the nlinarith proof), which is exactly the pair a user
would want to disambiguate.

## Editor 0.6.5: VC jumps land at the proof start (all kinds)

Per the user, `⌘⇧J` now lands at the *start of the proof* (the tactic
body) for every obligation kind — asserts, ensures, and invariant
entry/preserve alike — rather than the theorem statement for non-asserts.
`jumpTo` uses `twinGoalPosition` unconditionally (theorem statement is the
fallback only if no proof body is found); the picker for multi-VC spans
lands the same way.

## M3 generics: type parameters

Same-slice IR growth: `(typarams STRING*)` on datatype/specfn/function
forms, `(data id type*)` type args, and `(tyvar STRING)`. Pre-poly SST is
unboxed, so a type parameter arrives as a bare `TypX::TypParam(name)` →
`Ty::Var`; a generic datatype's `type_args` become `Ty::Data(id, args)`.
The lowering captures `typ_params` from `DatatypeX`, `FunctionSstX`
(checked fns), and spec fns; generic datatypes no longer fail closed.

Lean side: generic datatypes emit **parameterized inductives**
(`inductive S (A : Type) (B : Type)`); field accessors/predicates carry
the params (accessors also `[Inhabited …]` for the wrong-variant
`default`); spec fns take **implicit** `{T : Type}` binders so
applications infer them; and every obligation theorem is quantified over
`(T : Type) [Inhabited T]` — inhabitedness being the sole semantic
content of Verus's `as_type` axiom that a natively-typed embedding does
not get for free (equality on type-param values stays plain `Eq`, the
`Iff` routing gated on `Bool` only). Generic functions verify **once,
generically**, matching Verus.

New example `examples/m3-generics` (generic `Pair<A,B>` struct, generic
`id_spec<T>`, generic `swap<A,B>`): 3/3 obligations automatic. Differential
c67–c69 (generic swap pass/fail, generic spec fn). Corpus at 69 cases:
69/69 verdict parity, 29/29 spans. Trait bounds, const generics, and
generic recursion remain out of fragment (fail closed).

## M3 exec Vec<T> via its Seq view (read-only)

Scouted from vstd: `Vec<T, A>` is the external-spec'd `alloc::vec::Vec`
(datatype path `alloc::["vec","Vec"]`), and `v@` desugars (in the verus!
macro) to a `View::view` call whose associated view type is `Seq<T>`. So
Vermilion models a `Vec<T>` **as** its `Seq<T>` view — no new `Ty`
variant, no new Lean embedding: `binder_type` maps the alloc-Vec datatype
to `Ty::Seq(elem)` (ignoring the allocator arg), and the `View::view`
call (Vstd, `view`-first/`view`-last segments, 1 arg) lowers to the
identity on the already-`Seq` value, mirroring the finite-Set→ISet
`to_iset` collapse. Everything then reduces to the existing M2 Seq ops:
`v@.len()`→`SeqLen`, `v@.index(i)`→`SeqIndex`, and the exec `v[i]`
(vstd `vec_index`) rides the existing assert-requires/assume-ensures
contract call, so out-of-bounds indexing fails at its span.

Read-only slice: `v@`, `v@.len()`, `v@.index(i)`, `v[i]`. Deferred (fail
closed): `v.push(x)` / `&mut Vec` methods (need `old`/`final`
mut-reference threading) and exec `v.len()` (needs `spec_vec_len`, which
vstd ties to `v@.len()` only through a broadcast lemma). New example
`examples/m3-vec` (4/4 automatic); differential c70–c72 (view pass,
wrong ensures, out-of-bounds index). Corpus at 72 cases, 72/72 verdict
parity, 31/31 spans. Documented in the example README, README, DESIGN,
and docs/ir.md.

## VC-generation policy document (user-directed)

`docs/vcgen.md` now specifies the generation policy in conventional
judgment form: the state ⟨Γ, H, V, κ⟩, one inference rule per IR
statement (exactly `processStmt`), the program-level initial state, the
spec-fn unfold policy, and the soundness theorems the future Loom-based
foundational generator must discharge. Adopted as **normative project
policy**: any VC-gen change updates the document in the same slice —
enforced as a binding agent directive
(`.claude/memory/vcgen-policy-doc.md`, referenced from `CLAUDE.md`; the
user chose agent discipline over a mechanical guard). Linked from README,
DESIGN (TCB item 3 + roadmap), docs/ir.md, and the Vcgen.lean header.
Committed as d8408dc.

## M3 `&mut` parameters (sequential), prophecy resolved at lowering

Scouted empirically against the pinned front end (probe crates through
`VERMILION_VIR_EXPORT` + a `VERMILION_DEBUG_SST` statement dump added to
the adapter): this Verus models `&mut T` as first-class `TypX::MutRef`
with prophecy projections. The SST shapes that matter, all confirmed by
reading the raw statements:

- `*x = e` assigns through `Loc(mut_ref_current(VarLoc x))`;
- `assume has_resolved(x)` marks where the borrow expires;
- ensures clauses phrase `*final(x)` as `mut_ref_future(VarAt(x, Pre))`
  — the future of the **entry** reference (a prophecy is
  time-independent), which naive operand lowering would wrongly send to
  the entry *value*;
- call sites are two-phase: `assume mut_ref_current(tmp) == y`, a
  reference-typed temp **copy** (`tmp2 := tmp`), and the prophecy
  writeback `y = mut_ref_future(tmp2)` emitted **before** the Call.

Lowering (all in `vermilion_direct/src/lower.rs`; **no IR growth, no
Lean-side changes**): the substitution env tracks the current referent
(`mut_ref_current` = identity); `VarAt::Pre` on the enclosing function's
own parameters resolves to the entry binder (this split also fixed a
latent bug where `old(x)` after a write would have read the mutated env
value); `has_resolved` snapshots the current value as the borrow's
future — later `final(x)` means that snapshot; futures at call sites are
**demand-allocated** fresh symbols (the pre-call writeback or the call
contract, whichever comes first, allocates; both find the same symbol)
with range facts assumed at allocation; MutRef-typed temp copies are
tracked as aliases of the root borrow; the packaged
`has_type(&mut T)` assumes are dropped (reconstructed piecewise).
Fail-closed: `final` outside a resolved borrow/call/postcondition,
non-variable `&mut` arguments, `has_resolved` outside an assume, `&mut`
values escaping into expressions.

Soundness probes before anything else: conflation (`ensures final ==
old` with a mutating body), wrong increment, and caller-havoc (callee
with no ensures) all yield unprovable goals. Example
`examples/m3-mutref` — callee contracts (`incr`, `old_in_body` from the
Verus suite's mut_refs_old.rs, two-reference `swap`) plus a caller
chaining two calls and a swap: 11/11 obligations automatic.
Differential c73–c77 (two positive, three negative guards): corpus at
77 cases, **77/77 verdict parity, 34/34 failure-span agreement**, median
slowdown 6.59× (gate ≤10×). Docs: example README, docs/ir.md semantics,
README/TUTORIAL/DESIGN feature lists, plan slice record (M6 reworded to
the escaping-prophecy cases only).

**Follow-up fix:** a function with zero obligations (a trivial
`fn main() {}`, the contract-less `opaque_write` in c77) carries no span,
and `vrml_gen` grouped it under a bare `<name>.rs` — emitting a stray
CWD-relative `generated/` directory at the repo root (two such junk files
briefly rode the &mut commit; removed). Span-less functions now attach to
the document's first spanned source file (`lean/VrmlGen.lean`,
`groupBySourceFile`).

## M3 Vec mutation: ExtEq, spec_vec_len, call-site type substitution

Three gaps closed to make `Vec::new` / `v.push(x)` / exec `v.len()`
verify through the just-landed `&mut` machinery (probe: vstd's
`assume_specification` for push, `final(vec)@ == old(vec)@.push(value)`):

- **Extensional equality** (`BinaryOpr::ExtEq`): lowered to plain `eq`
  exactly where the Lean models are extensional — Seq (List), Set
  (Finset), Multiset, scalars, type params, datatypes recursively
  (`ext_eq_is_plain_eq`). `Map` anywhere in the compared type and deep
  `=~~=` fail closed (the Map model's off-domain lookup makes structural
  equality finer than Verus's domain-wise one).
- **`spec_vec_len(v)` → `(seqlen v)`**: the uninterp exec-len symbol is
  axiomatized as `v@.len()` by `group_vec_axioms`, which sits in vstd's
  default broadcast group — identification sound and verdict-coherent.
- **Call-site type arguments substitute into callee contracts**
  (`ExpCtx.typ_substs` + `vir::sst_util::subst_typ`, applied in
  `binder_type`/`type_range_facts`/bool-equality routing): previously
  `Vec::<u32>::new()`'s `ensures v@ == Seq::<T>::empty()` leaked the
  callee's `T` into the caller's IR. Generic callee contracts needed
  this regardless of Vec.
- Also: resolution markers of plain (non-reference) values are vacuous
  in the sequential fragment and their assumes drop; `fresh_binder_name`
  sanitizes SSA names (`tmp%` → `tmp_`) centrally; `index_push_prefix`
  became `@[simp]` (literal-index reads below a push — c78's
  `v@.index(0)` after two pushes — close by simp; the rewrite shrinks
  the term, no loop).

Example `examples/m3-vec-mut` (5/5 automatic). Differential c78–c81
(read-back through two pushes, wrong element, contract caller, false
same-length claim).

## Systematic type facts (user-directed) + trait contracts (static dispatch)

**Type facts, systematically** (user: "This should be done
systematically", after spotting that a `Vec<u32>` binder's elements
carried no range hypotheses). `type_range_facts` is now the recursive
`typ_invariant` analogue over the whole fragment: scalar ranges;
quantified element facts for Seq/Vec (`∀ i` in bounds → facts of
`s[i]`), Set/Multiset (contained elements), Map (values at contained
keys); datatype field facts through accessors — generic-instantiated
(subst_typ over the instance's type args), recursive with one unrolling
for recursive datatypes, and still sound unguarded (wrong-variant
accessors return `default`, of which every emitted fact holds:
0 ∈ every range, empty containers make element facts vacuous, datatype
defaults recurse). Emitted at every value-introduction site: parameters
and quantifier guards (already), call results (upgraded from
scalar-only), fresh ret-parameter results (new), branch joins (upgraded),
loop havocs and prophecy futures (inherited the upgrade). The ladder
instantiates the quantified facts without trigger machinery (verified on
the probe `assert(v@.index(0) >= 0)`); per user directive, goals beyond
it go interactive in the twin. All 16 examples re-verified, including
both tracked interactive twins.

**Traits (statically dispatched).** Empirical scouting (SST debug dump)
showed: contract-position trait spec-fn calls carry *no* resolution
(Verus's SMT encoding declares trait fns as symbols with per-impl
axioms), and a trait-method impl that declares no contract has an EMPTY
FuncDeclSst — the contract lives on the trait method's declaration
(impls that redeclare materialize inherited+own clauses; confirmed both
ways against ast_to_sst_func.rs). Lowering: `resolve_trait_method`
matches a call's (substituted) type args against `TraitMethodImpl`
declarations — used for spec-fn applications (each impl's spec fns are
real Lean defs under the impl name) and exec dispatch; the call contract
comes from the trait declaration with the trait's type args instantiated
(inherited `requires` proved at call sites — previously this obligation
was silently MISSING for trait calls, an accept-where-Verus-rejects
hole, now guarded by c83). Generic bounds/dynamic dispatch fail closed.
Example `examples/m3-traits` (8 obligations; the two nonlinear impl
overflow checks are interactive in the tracked twin — positivity +
nlinarith — per the user's "produce interactive proofs if needed").
Differential c82–c84. Corpus at 84: **84/84 verdicts, 38/38 spans**.
Generated modules also silence mathlib's nameCheck lint (impl__N names).

## M3 spec closures — genuine Lean functions

The easiest fragment the shallow embedding buys: `spec_fn(T…) -> U`
lowers to the Lean arrow type, `BndX::Lambda` to `fun x => e`,
`ExpX::CallLambda` to plain application. IR grammar grew
`(fnspec (type*) type)`, `(lambda ((x type)*) expr)`,
`(applyfn expr expr*)` — model, serializer, grammar doc, Lean
parser/printer in the same slice; no axioms, nothing trusted. Lambdas
are total over their binders' Lean types, exactly Verus's semantics;
machine-int constraints surface at application sites. Exec closures
(`StmX::ClosureInner` sub-verification + closure call contracts) are a
separate mechanism and fail closed — next candidate slice.

Example `examples/m3-closures` (higher-order apply_twice, composition
returning a closure): 3/3 automatic. Differential c85–c86. Corpus at 86:
**86/86 verdicts, 39/39 spans**.

## Soundness audit closed + docs/trust.md (user-directed)

The two mechanical holes from the audit are fixed in the lowering:
`ext_eq_is_plain_eq` now recurses over the VIR type **including datatype
fields** (a Map-typed field made structural equality finer than Verus's
domain-wise ext-eq — the wrong direction in assume position) and fails
closed on type parameters; the `UnaryOpr` identity catch-all is gone
(`Box`/`Unbox`/`CustomErr` explicit, everything else errors — the very
path that had silently mishandled `has_resolved` before). Probe
confirmed: `assert(h =~= h)` at a Map-bearing struct now rejects at
translation (Verus proves it — a documented deliberate divergence like
trigger starvation, pinned in docs/ir.md; not addable to the corpus,
which requires verdict agreement). Plain `==` at Map/spec-fn types
analyzed to be internally consistent (callee proves structurally what
callers assume structurally); the boundary is trusted vstd contracts
mentioning Map equality — none in fragment; quotient/normalize the Map
model before admitting one (plan TODO).

New `docs/trust.md` (user-directed): the semantic trust assumptions of
the translation and embedding, one by one — fail-closed principle,
prelude conventions, type facts vs has_type, prophecy assumptions,
equality boundaries, trait contract selection — each with its argument
and its differential guard, linked prominently near the top of README
and from DESIGN's TCB section.

## Scope construct: DeadEnd soundness leak fixed; exec closures scouted

Applying the audit standard to `ClosureInner` exposed a PRE-EXISTING
leak: `DeadEnd` (`assert … by` blocks) lowered transparently, so an
`assume` inside a proof block leaked into the continuation — accepting
programs Verus rejects. New IR statement `(scope stmt*)` (check-and-
discard): model, serializer, grammar (docs/ir.md), Lean parser, and the
`(SCOPE)` Vcgen rule — with docs/vcgen.md updated in the same slice per
the policy discipline — plus trust.md's fail-closed section. DeadEnd
now lowers to a scope; the `assert_by` conclusion still reaches the
continuation via the outer Assume Verus itself emits. Guard:
c87_assertby_assume_scoped (leaked-assume program must fail BOTH
verifiers; before the fix we accepted it). Corpus at 87: **87/87
verdicts, 40/40 spans**.

Exec closures remain fail-closed at `ClosureInner`; the slice design
(closure body in a scope + fresh params/type facts; ClosureReq/Ens as
demand-allocated fn-typed binders constrained by the assumed contract
fact; call sites assert/assume them) is recorded in the plan. Stopping
here per user directive; next tasks: exec closures, const generics,
View/DeepView beyond Vec, broadcast, generic trait bounds — then M3
gate projects; M4 opens Lean-native on explicit go-ahead.

## Two user-reported fixes: dead ⌘⇧R + zero-binder forall

**Editor 0.8.1.** The 0.8.0 verify-on-open startup sweep ran
synchronously mid-`activate()`, before `registerCommand` — any
exception there aborted activation and left ⌘⇧R/⌘⇧J dead (reported on
looping.rs). The sweep now runs deferred (setTimeout 0) after all
registrations, each document guarded, failures logged to the Vermilion
output channel. Extension reinstalled as a symlink; takes effect on
window reload.

**Zero-binder quantifiers.** Verus wraps some facts (an `assert_by`
conclusion among them) in a forall with NO binders; the lowering passed
it through and the printer emitted `∀ ,` — ill-formed Lean (reported on
c87's generated file, whose "fail" verdict had been accidentally right:
Lean rejected the malformed file, not the intended goal). A quantifier
over nothing is its body — the lowering now collapses it. c87
regenerates well-formed and fails for the real reason, same
verdict/span (12/12). Corpus re-run: 87/87, 40/40.

## Editor 0.9.0: ⌘⇧J jumps both ways

User-requested reverse navigation: in a generated or twin `.lean` file,
⌘⇧J inside an obligation's `-- vrml:begin/end` block (*Vermilion: Go to
Rust*, bound for Lean files only) parses the block's `ObligationMeta`
literal (`rustFile`/`startLine`/`startColumn`) straight from the
document text and opens the Rust source at that exact position, same
editor group. One key, two directions; documented in the extension
README, main README, and tutorial.

## Editor 0.9.1: Lean→Rust jump from spec-fn definitions

User-requested completion of the reverse jump: emitted spec-fn `def`s
now carry their Rust position. The IR `specfn` form gained the
definition's span (model, serializer, grammar in docs/ir.md, and the
Lean parser in the same slice — the span was simply absent before);
`renderSpecFn` emits a `-- vrml:spec <name> <file>:<line>:<col>` marker
above each definition, and the extension's ⌘⇧J-in-Lean falls back to
the nearest such marker when the cursor is not inside an obligation
block. VC generation untouched; docs/vcgen.md unaffected (the policy
covers statements, not declaration emission).

## M3 exec closures — landed

As designed (ClosureInner in a scope; ClosureReq/ClosureEns as
demand-allocated fn-typed fresh binders constrained by the assumed
contract fact; call sites prove req / assume ens) plus three pieces the
scout missed: (1) the opaque closure VALUE is an SST temporary read
before any definition — implicitly havocked, now a fresh sanitized
binder with type facts (also kills unsanitized `tmp%%` leaking into
Lean); (2) zero-variant anonymous-closure datatypes emit an opaque
single-variant inductive (inhabitable, nothing constructs it); (3)
synthesized tuple params (`T%0`) forced quoting `(tyvar STRING)` in the
serializer — the grammar always said STRING — with the Lean decoder
accepting both. Automation: grind instantiates the quantified contract
facts once the range predicates and datatype accessors carry
`@[grind]` (probe-verified; ladder unchanged otherwise). ProofNote
diagnostic wrappers are explicit identities. Example m3-exec-closures
6/6 automatic; differential c88–c90; corpus 90/90, 42/42 spans.

## M3 const generics

`GenericBoundX::ConstTyp` identifies const parameters: they leave the
type-parameter list and join the obligation binders as `Int`s with
their declared type's range facts; `NullaryOpr::ConstGeneric` lowers to
that binder inside the generic function and, through the existing
call-site type substitution, to the literal at instantiations
(`TypX::ConstInt`). Along the way: `usize`/`isize` had NO range_
constraint case at all (pre-existing gap — vec exec-len results
included); they now carry the arch-neutral 64-bit bounds, sound for
Verus's symbolic 32/64-bit word and documented as potentially weaker
than an arch-pinned Verus run. Const-generic spec fns/datatypes and
arrays fail closed. Example m3-const-generics 8/8 (the nonlinear x·N
variant is deferred to M4's nlinarith rung — kept the example linear);
differential c91–c92.

## M3 broadcast use (single lemma)

`broadcast use lemma` arrives as StmX::Fuel naming a proof fn with
`proof_exec_axioms = (Pars, Exp, Trigs)`; the lowering assumes the
∀-closure of requires → ensures over the lemma's parameters (type
facts folded as guards, same shape as quantifier lowering) at the use
point. The fact is a THEOREM — the lemma's own body is verified by
both verifiers — so nothing joins the trusted base, and scoping falls
out of the existing fact discipline (arm-/scope-local uses die there).
Differential guards go through an #[verifier::opaque] spec fn so the
fact flows only through the lemma: c93 (with use) passes, c94 (without)
fails, both sides, same spans. vstd broadcast GROUPS stay fail-closed
beyond the structural identities. Example m3-broadcast 2/2; corpus
94/94, 44/44.

## M3 generic trait bounds

As scouted: trait spec fns at abstract Self become fnspec-typed
universal binders of the enclosing function (registry-collected during
lowering, appended to FunctionView.binders — function-level symbols,
not statements); trait-method calls take the trait declaration's
contract at Self := T through the existing contract-source selection;
NullaryOpr::TraitBound lowers to True. Dictionary-sound: the generic
obligation quantifies over T and the symbols, so every impl is an
interpretation. Example m3-trait-bounds 7/7 (generic + concrete);
differential c95 (generic passes) / c96 (too-weak generic requires
fails both sides).

## M3 user View impls (+ latent view-identity bug fixed)

Probing user `impl View for Stack` exposed a latent mistyping: the
vstd `View::view` identity shortcut (right for Vec, whose Seq view IS
its model) fired for USER impls too, leaving `s@` at the struct type
(`seqlen (var s)` with s : Stack). The shortcut is now gated on the
argument being an alloc Vec; user views route through their impl's
emitted spec fn via ordinary static trait dispatch. Example
m3-user-view; differential c97–c98. Corpus 98/98, 46/46. DeepView
remains fail-closed. This closes the last planned M3 feature slice —
remaining M3 gate work (marshalling samples, gate projects, suite
coverage measurement) is assessment, not lowering.

## M3 completion: mutual spec-fn recursion (user-directed pull-forward)

User challenged the pre-M7 deferral of the four remaining M3 features —
correctly; implementing now. First: mutual recursion. Lowering admits
reference cycles (all in-flight members marked recursive); the renderer
computes reference SCCs (Expr.applies traversal + reachability) and
groups them into Lean `mutual` blocks. Two latent recursive-def issues
fixed for ALL recursive spec fns: (1) totality over Int — a nat param's
range being a typing fact, recursion needn't terminate at negatives;
bodies are now guarded on the decreases measures being nonnegative
(default off-range = a valid unconstrained interpretation), the guard
hypothesis also completing decreasing_by; (2) unfolding a mutual chain
requires INTERLEAVED alternation (iterate N (try first | rw [f] | rw
[g])) with summed rounds — sequential per-function loops stall (and
rw [a, b] is sequential-all, another trap found). Example
m3-mutual-rec (2/2 with reveal_with_fuel 6, exercising fuel coherence);
regressions m2-recursion/m2-specfns/m3-quantifiers green; differential
c99–c100.

## M3 completion: arrays + const-generic spec fns + Seq::new

`[T; N]` is its Seq view with the length pinned by a type fact
(`seqlen a = N`, N a const-generic binder or literal); spec/exec
indexing is seqindex (exec via the bounds contract, guarded by c102);
the array View is the identity (the View::view gate now admits arrays
alongside Vec); literals lower as pushes onto empty. Two prerequisites
landed with it: const-generic SPEC FNS (const params become leading
explicit Int arguments — not inferrable from value args in Lean; call
sites pass the instantiation from the type args) and vstd's Seq::new
comprehension (`(seqnew len f)` in the IR; Vermilion.Seq.new with
len_new/index_new lemmas — the definition needed an explicit
Int.ofNat coercion: the idiomatic lambda elaborated as a monadic list
lift, fusing map into flatMap and defeating every lemma). Example
m3-arrays 5/5; differential c101–c102; corpus 102/102, 48/48 spans.

## M3 completion: &mut through fields

Field writes through mutable references (`self.count = …`, any nesting)
are record updates of the root's tracked value: `destination_path`
collects root + field projections, `field_update` rebuilds the value as
a constructor with the written field replaced and every other field
projected from the previous value. The prophecy machinery is untouched.
Example m3-mut-fields (4/4, &mut-self method + caller write-back);
differential c103–c104; corpus 104/104, 49/49 spans.

## M3 completion: slices

`[T]` (Primitive::Slice) is its Seq view with unconstrained length:
binder type, quantified element facts, identity View (the gate now
admits Vec, arrays, and slices), bounds-checked exec indexing. Example
m3-slices 2/2; differential c105–c106; corpus 106/106, 50/50 spans.
Of the user's completion list only const-generic DATATYPES and &mut
RETURNS remain (both rare shapes; recorded as optional M3 tail) — the
M3 feature program is otherwise complete. M4 opens next.

## M4 slice 1: Bits library; differential catches a vacuous pass

Machine bit ops lower to `(bitop KIND SIGN BITS e e)` →
`Vermilion.Bits`: BitVec-backed defs (unsigned via toNat, signed via
toInt) with proved conversion (`toNat_ofInt_of_range`), range
(nonneg/`< 2^w`, @[simp, grind]), and curated identity lemmas — the M4
Lean-native pattern, nothing trusted. Contracts and plain asserts over
bit expressions verify through the set (example m4-bitvec 3/3).

The harness earned its keep: `by (bit_vector)` blocks arrive with their
expressions ERASED to true placeholders (the real content lives in
Verus's spun-off BV query, not rerun by our middle) — my first lowering
proved a FALSE identity vacuously, and differential c108 flagged the
pass-vs-fail mismatch immediately. AssertBitVector now fails closed
(documented in trust.md/ir.md/README of the example); rerunning the BV
queries with real content is the recorded follow-up. Also: per-site
unique ids for multi-assert statements (three bv asserts had collided
on one theorem name). Corpus 108/108, 51/51 spans.

## M4 slice 2: the nonlinear rung

The vrml ladder gained "nlinarith": intros; casesm* _ ∧ _ (split the
unfolded range conjunctions — nlinarith does not split hypotheses);
repeat' And.intro; all_goals nlinarith. Closes the bounded-product
overflow shapes deferred in M3 (const-generic x·N, the traits side²
checks) — example m4-nonlinear 4/4 automatic; guards c109 (side² at
u64 passes) / c110 (weak requires at u32 fails both sides). First
composite attempt looped (repeat' over rename_i+skip never terminates —
casesm* is the terminating idiom). Ladder order unchanged otherwise;
nlinarith sits last so only previously-failing goals pay its cost.

**Divergence (expected class):** c109 showed Verus-fail/Lean-pass — the
statement is TRUE but Verus's default prover disables nonlinear
arithmetic (needs explicit by (nonlinear_arith)); our nlinarith rung
proves it directly. The nonlinear twin of the trigger divergence:
documented in ir.md/trust.md/example README, case removed from the
verdict-agreement corpus (c110, agreeing on a false claim, stays).

## The nonlinear divergence, promoted to a showcase (user-directed)

Verified the discrepancy's nature: NOT an interactive-proof need on our
side — m4-nonlinear and the new m4-beyond-verus close fully
automatically (nlinarith certificate, kernel-checked). Stock Verus
rejects the same true goals until the user writes
`by (nonlinear_arith)` hint blocks: the divergence is Verus's prover
discipline, not the mathematics. Per the user ("It's a demonstration of
Lean benefits"), examples/m4-beyond-verus now pins it durably: a file
that verifies 4/4 automatically here and fails in stock Verus, with a
README explaining why and where the negative direction stays
corpus-guarded (c110). README's differential bullet now documents the
dual-run methodology (both verifiers on every case, agreement both
directions) and links the showcase.

## M4 slice 3: by (compute) — already sound via the shared interpreter

Probing showed by(compute) goals arrive PRE-EVALUATED: Verus's
interpreter runs inside ast_to_sst, which our middle reruns — a true
computation is discharged at lowering (assert true + the equation
assumed downstream), and a FALSE one aborts our translation with
"expression simplifies to …, which evaluates to false" (fail-closed,
verified empirically). No rung needed; no new trust (the interpreter is
TCB component 1, same class as VC placement). Example m4-compute (1/1);
guard c111; corpus 110/110, 52/52. A false-compute corpus case is
impossible (we reject at translation, Verus at verification) —
documented instead.

## M4 complete: by (bit_vector) as isolated queries; closeout

The final M4 slice replaced the fail-closed AssertBitVector arm with
the correct discharge: requires_in/ensures_in carry REAL content (the
earlier "erasure" diagnosis was wrong — trivial identities were merely
constant-folded by ast_simplify; the actual hole was the outer block's
ASSUMED conclusions preceding the query, letting a context-sharing
lowering prove goals circularly). The lowering now emits the query
through the LOOP rule's isolation: the obligation sees the block's
requires plus the accumulated type facts (invariants, never assumed
conclusions) and nothing else — exactly Verus's spun-off BV query.
Example m4-bitvec back to 7/7 with real by(bit_vector) content; c112
(false identity) fails BOTH verifiers at the same span. Corpus 111/111,
53/53.

M4 status: Bits library ✓, nlinarith rung ✓, beyond-verus showcase ✓,
by(compute) ✓, by(bit_vector) ✓. Honest closeout note: the M4 gate
PROJECTS (BLAKE3, page tables, rlsf bitmaps, curve25519, ≥75% suite
coverage) are large external measurements, recorded as outstanding
alongside M3's. Doc-drift from racing background doc-edits against
interactive ones was repaired (trust.md sections reconstructed, ir.md
bitop grammar restored, tutorial/README run-lists verified complete at
30 examples) — doc edits no longer run inside background tasks.
Stopping here per user directive (end of M4).

## VSCode verify latency: highlighting now paints at verdict-time (0.9.2)

User: IDE verify feels slower/less consistent than run.sh. Profiled the
pipeline (run_example.sh) directly:

- Wall ~7.5–9s but only **15–17% CPU** — it is spawn/IO-bound (~6s idle),
  not compute-bound. The two `lean` elaborations (vrml_check on the
  generated module, ~2.4s; the trailing twin kernel-check, ~2.3s) are the
  only large CPU items; everything else is per-process spawn/EDR tax
  across dozens of small subprocesses.
- The pipeline is **byte-identical from the terminal or the IDE spawn**:
  `zsh -lc` with a scrubbed GUI env costs only ~0.5s over the warm
  terminal (measured), so the shell wrapper is not the difference.

Root cause of the perceived gap: the extension withheld ALL highlighting
until `child.on('close')` — i.e. until run.sh fully exited, including the
optional trailing twin kernel-check — because `paintEditors` suppresses
result marks for any line still in the `verifying` set, and that set was
cleared only at close. The terminal, by contrast, streams the ✓ the
instant vrml_check finishes. Fix: poll the run-status file (the hidden
`.vermilion` dir makes the workspace FileSystemWatcher unreliable) and,
the moment it records phase "lean", clear `verifying`, stop the trembling
animation, and repaint — surfacing the verdict as promptly as the CLI,
with the twin check finishing silently in the background.
`stopAnimation` now follows the `verifying` set alone (not the process
lifetime).

Also identified (not a Vermilion-code issue): the workspace runs the
lean4 language server (`.vscode/settings.json` routes its lake calls
through `editor/bin/lake`), so writing `generated/*.lean` / `proofs/*.lean`
triggers a concurrent Mathlib elaboration the terminal never pays — the
main remaining IDE-only cost, mitigated but not eliminated by painting
the verdict early.
