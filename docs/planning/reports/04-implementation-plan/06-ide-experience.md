# Chapter 6: The IDE Experience — Rust and Lean, Side by Side

**Design goal (locked, E4):** in VSCode, the user works on Rust code and *sees* verification
status there — while being able to prove Lean theorems in a separate buffer as they go, with the
two views continuously synchronized. This chapter designs that experience end to end. It is the
user-visible payoff of the whole architecture: Verus's authoring model with a real escape hatch.

## 6.1 The cast

- **verus-analyzer** (the existing rust-analyzer fork with Verus syntax support) provides the
  Rust-buffer language experience — unchanged.
- **The Vermilion VSCode extension** (`editors/vscode/`): thin; renders verification state onto
  Rust buffers and orchestrates navigation. Talks to the watch daemon over LSP-style JSON.
- **The `vermilion --watch` daemon**: front end + emitter incrementally on save; keeps one
  persistent Lean server (the manager) alive; streams per-obligation status.
- **The stock lean4 VSCode extension** on the Lean buffers: goals in the InfoView, tactics,
  mathlib — nothing Vermilion-specific to build there. This is the point: the proof experience is
  *ordinary Lean*, so every Lean skill, tool, and AI agent applies.

## 6.2 The two workspaces on disk

```
mycrate/
  src/lib.rs                     # Rust + verus!{} — the only file the user must edit
  vermilion/
    generated/                   # emitted obligations — read-only, regenerated, gitignored
      MyCrate/Foo.lean           #   defs + theorem *statements* (auto-proved ones closed by ladder)
    proofs/                      # USER-OWNED, committed
      MyCrate/Foo.lean           #   @[vermilion] theorems for goals automation couldn't close
    lakefile.lean, lean-toolchain (4.28)
```

The generated/user split is the load-bearing decision: generated files are disposable and never
hand-edited (the extension opens them read-only); user proofs live in stable, committed files
whose `@[vermilion]` attribute binds them to obligations **by deterministic name**, and the
manager statement-checks each against the current generated statement (Veil's
`TheoremDischarger` mechanism, reused verbatim).

## 6.3 The Rust buffer: what the user sees

1. **Gutter status per function** — ✅ all obligations proved / 🟡 running / ❌ n failed /
   ⏱ timeout / ✋ proved-by-hand (has `@[vermilion]` proofs). Live-updating as the manager streams
   results (Veil's per-VC streaming, re-rendered through the extension).
2. **Diagnostics on precise spans**: a failing `ensures` underlines the ensures clause; a failing
   overflow check underlines the expression — same spans Verus uses (`AssertId` metadata).
3. **Code lenses per function**: `4/5 obligations · 320 ms · open in Lean`. Per failing
   obligation, quick actions:
   - **Prove interactively** → creates/extends the user proof file with a statement-matched stub
     `@[vermilion] theorem foo.ensures_2 : <beautified statement> := by vermilion_init; sorry`
     and opens it beside the Rust buffer (VSCode column 2), InfoView live. (Veil's "Try this"
     code-action pattern.)
   - **Show counterexample** → rendered Rust-level values inline (lean-smt model → struct/local
     names), Veil's model widget reused.
   - **Explain** → goal-decomposition view (the `expand_errors` successor): which conjunct of
     which postcondition fails.
4. **Hover on a spec** shows the Lean image of that spec expression — building trust in the
   translation one hover at a time (emitter metadata makes this a lookup, not a re-translation).

## 6.4 The Lean buffer: proving as you go

The generated statement the user lands on is **beautified at emission** (`unveil` discipline:
coercions collapsed, names sourced from Rust locals, no encoding artifacts), so the goal reads
like the Rust spec. The user proves with ordinary tactics/mathlib; saving the proof file makes
the manager re-check it (priority discharger, preempting automation), and the Rust gutter flips
to ✋✅ within a second — *without re-running the Rust side*.

**Staleness contract** — the part that makes dual-view livable:

- Editing Rust re-emits obligations. Unchanged statements (SST-hash-stable) keep their names and
  their proofs — nothing flickers.
- If a statement *changed*, the bound `@[vermilion]` proof no longer statement-matches: the proof
  file gets a `stale proof: statement changed` diagnostic with a one-click diff (old vs new
  statement), and the Rust side shows ❌ (not silently re-assumed). Stale proofs never count.
- If an obligation *disappeared*, the orphaned proof gets an `orphaned` warning (kept, inert) —
  deletions are the user's call.

## 6.5 Interaction loops, with latency budgets

| Loop | Path | Budget |
|---|---|---|
| edit Rust → statuses update | save → front end (incremental) → re-emit changed fns → manager re-checks changed obligations, ladder-first | < 5 s for a one-function change (M2 gate) |
| edit Lean proof → status updates | lean server re-elaborates one file → manager notified | < 1.5 s |
| open obligation from Rust | lens → reveal/create stub in column 2 | instant |
| jump from Lean theorem to Rust | code lens on the theorem (span metadata) → reveal span in column 1 | instant |

The daemon keeps both directions warm: one rustc session (front end as a library) and one Lean
server across saves. Full-crate cold verification is a progress bar in the status bar, never a
blocked editor.

## 6.6 Failure-mode UX (designed, not incidental)

- **Automation timeout** is rendered differently from *disproof* (counterexample available):
  🟡→⏱ suggests "prove interactively or raise budget"; ❌ with a model says "this is false".
- **Ladder attribution** is visible (which rung closed each obligation, how long) — the data that
  teaches users what the automation is good at, and feeds the M-gate reports.
- **Panic hygiene**: if the emitter or manager crashes, the extension shows the last-good state
  grayed out plus a single actionable error — never a wall of Lean stderr.

## 6.7 AI agents in this design

The dual view is agent-ready by construction: an open obligation is an ordinary Lean theorem in
an ordinary file with a `sorry` — pointable at any Lean-capable agent with zero Vermilion-specific
prompting (the thesis's stated rationale for `unveil`-style goals). The extension exposes a
"delegate open obligations" action that hands the proof file + goal statements to a configured
agent and lets the ordinary staleness/statement-matching machinery validate whatever comes back —
agents get no trust the human doesn't.

## 6.8 An end-to-end verification session in VSCode (storyboard)

The full session, from a fresh crate to committed proofs. Layout throughout:

```
┌──────────────┬──────────────────────────┬──────────────────────────┬───────────────┐
│ EXPLORER     │ column 1: src/stack.rs   │ column 2: proofs/…lean   │ LEAN INFOVIEW │
│  src/        │  (verus-analyzer,        │  (lean4 extension,       │  goals, term  │
│  vermilion/  │   Vermilion gutter/lens) │   @[vermilion] proofs)   │  state, msgs  │
│ VERIFICATION │                          │                          │               │
│  panel (tree)│                          │                          │               │
└──────────────┴──────────────────────────┴──────────────────────────┴───────────────┘
  status bar:  ⚙ Vermilion: 41/44 ✅ · 2 🟡 · 1 ❌ · daemon: watching · 4.28
```

**Phase 0 — setup (once per crate).** `vermilion init` in a cargo crate: scaffolds `vermilion/`
(lakefile, `lean-toolchain` = 4.28, empty `proofs/`), fetches the Lean dependency set, and prints
"open in VSCode and install the Vermilion extension". On first open the extension detects
`vermilion/`, starts the watch daemon, and offers to run the initial verification.

**Phase 1 — cold verification.** The status bar shows live progress (`emitting 44 fns → checking
128 obligations`); the **Verification panel** (a tree view: module → function → obligation) fills
in as the manager streams results, each leaf showing which ladder rung closed it and in how long
(`ensures_1 · grind · 40 ms`). Cold run on a Vest-sized crate: a progress bar, not a blocked
editor; results cache so the next open is instant.

**Phase 2 — the edit loop.** The user writes a new function with `requires`/`ensures`, hits
save. Within the 5 s budget: gutter 🟡 → ✅, panel updates, status-bar counts tick. Hovering the
`ensures` clause shows its Lean image (the §6.3 translation hover) — trust built one hover at a
time. No Lean buffer needed yet; most sessions end here, exactly like Verus.

**Phase 3 — a failure.** The user introduces an off-by-one. On save: ❌ gutter, a red underline
on the precise `ensures` conjunct, a Problems-panel entry (`stack.rs:42 · pop_min: postcondition
'r <= v@[i]' may not hold`), and — when the lean-smt rung produced a model — an inline
**counterexample lens**: `v = [3, 1], r = 3`. The `Explain` action opens the goal-decomposition
view showing which conjunct of which branch fails. For a genuine bug, this is where it ends: fix
the Rust, save, green.

**Phase 4 — automation runs out (the Vermilion moment).** The spec is right but the ladder times
out (⏱, rendered differently from disproof). The user clicks `prove interactively`: a
statement-matched stub lands in `vermilion/proofs/…`, column 2 opens on it, the InfoView shows
the beautified goal. The user proves it with ordinary Lean (or clicks `delegate to agent` and
reviews what comes back). On save: manager re-checks, gutter flips to ✋✅, the panel leaf reads
`ensures_2 · interactive · proofs/Stack.lean:17`. Optionally they factor the insight into a
lemma marked for the ladder's hint set so future goals close automatically.

**Phase 5 — refactoring under proofs.** The user renames a field and strengthens a `requires`.
Unchanged obligations keep their names and proofs (SST-hash stability) — no flicker. The two
affected obligations: one is re-closed by `grind`; the other's `@[vermilion]` proof goes
**stale** — the proofs file gets a diagnostic with a one-click old-vs-new statement diff, the
Rust side shows ❌ until the proof is repaired or deleted. Orphaned proofs (obligation gone) get
an inert warning.

**Phase 6 — crate hygiene and commit.** The Verification panel's summary row doubles as the
**proof-debt view**: counts of `external_body` stubs, prelude axioms in scope, interactive vs
automatic obligations, slowest 10 obligations (the performance ledger's local view). The user
commits `src/**` + `vermilion/proofs/**` (+ lakefile pins); `generated/` is gitignored. CI runs
`vermilion verify --ci` headlessly — same daemon, same results, JSON output — and annotates the
PR with any verdict changes, so the IDE session and CI can never disagree.

**Command palette** (all IDE actions are also CLI subcommands, §6.9): `Vermilion: Verify crate`,
`Verify current function`, `Open obligation in Lean`, `Insert proof stub`, `Show counterexample`,
`Explain failure`, `Delegate open obligations`, `Show proof debt`, `Restart daemon`.

## 6.9 Worked example: the companion-file workflow, end to end

`src/stack.rs` contains:

```rust
verus! {
pub fn pop_min(v: &mut Vec<u64>) -> (r: u64)
    requires old(v)@.len() > 0,
    ensures  v@.len() == old(v)@.len() - 1,
             forall|i: int| 0 <= i < v@.len() ==> r <= v@[i],   // (E2)
{ ... }
}
```

1. **Save.** The daemon re-emits the companion file
   `vermilion/generated/MyCrate/Stack.lean`, which now contains (beautified):

   ```lean
   /-- src/stack.rs:42 · pop_min · ensures#2 -/
   @[vermilion_obligation mycrate.stack.pop_min.ensures_2]
   theorem pop_min.ensures_2
       (v₀ : Vermilion.Seq UInt64') (v : Vermilion.Seq UInt64') (r : UInt64')
       (h_req : v₀.len > 0) (h_body : ⟨loop-summary facts⟩) :
       ∀ i, 0 ≤ i → i < v.len → r ≤ v[i] := by vermilion_auto
   ```

   The ladder closes the length obligation (✅) but times out on `ensures_2` (⏱ in the gutter).
2. **Click the code lens** `prove interactively` on the `forall` clause. The extension appends a
   statement-matched stub to the *user* companion `vermilion/proofs/MyCrate/Stack.lean` and opens
   it in column 2:

   ```lean
   @[vermilion mycrate.stack.pop_min.ensures_2]
   theorem pop_min.ensures_2_proof : <same statement> := by
     vermilion_init
     sorry
   ```

3. **Prove in ordinary Lean** — InfoView goals, mathlib, `grind` with an extra lemma, whatever
   works. On save, the manager statement-checks the theorem against the current generated
   obligation and flips the Rust gutter to ✋✅.
4. **Edit the Rust** (say, strengthen the requires). The obligation statement changes → the proof
   file shows `stale proof: statement changed` with a diff lens; the Rust side shows ❌ until the
   proof is repaired. Nothing is ever silently re-trusted.
5. **Commit** `src/stack.rs` + `vermilion/proofs/**` (generated files are gitignored). CI re-runs
   `vermilion --verify`, which re-derives everything and replays the committed proofs.

**The same workflow without VSCode** (CLI-only users, CI, agents): `vermilion emit` writes the
companion files; any editor with Lean support (or none) edits `proofs/`; `vermilion verify`
prints per-obligation status with Rust spans, and `vermilion stubs --failing` appends stubs for
whatever automation couldn't close. The VSCode extension is sugar over exactly these commands —
there is one workflow, with two front doors.

## 6.10 Build order — UI is prioritized (M2.5)

By user decision (2026-07-12), the UI ships **immediately after base camp, before further
language features**: M2 itself needs only the daemon plumbing (gutter status via CLI polling is
acceptable during base-camp development), and then **M2.5 delivers the full dual-view
experience** — gutter status, diagnostics, prove-interactively stubs, staleness contract,
bidirectional navigation, minimal counterexample display — *plus the experimentation kit*:

- `getting-started.md`: install both toolchains, open the sample project, verify, break a proof,
  inspect the goal in the Lean buffer, close it interactively — with screenshots;
- ~15 graded runnable examples (from `assert(1+1==2)` through loops/invariants to a small
  verified data structure), each with a two-paragraph narrative of what to try;
- CLI-only instructions (`vermilion emit / verify / stubs --failing`) so the workflow is usable
  without VSCode.

M2.5's gate is human-tested usability (see the milestones chapter). Later polish lands with the
stages that need it: hover-translation and richer counterexamples at M3, the goal-decomposition
view at M3–M4, agent delegation when the rest is stable. The VSCode extension remains the
thinnest component — every hard problem (incrementality, statement stability, streaming) is owned
by the daemon/manager where it's testable headlessly.
