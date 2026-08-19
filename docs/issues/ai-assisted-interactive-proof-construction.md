---
title: AI-assisted interactive proof construction
labels: [feature, vscode-extension]
state: open
github: 1
---

**Goal.** When automation (`vrml`) cannot discharge an obligation, the user
should not have to switch to Lean and prove it cold. An assistant, driven by a
configurable model, should attempt to construct the interactive proof in the
user-owned `proofs/` twin — turning a `sorry` into a checked proof, or getting
close enough that the user only has to finish it.

This fits the project's existing grain rather than fighting it:

- The generated/proofs twin methodology already produces a `sorry` +
  warning exactly where automation fails (see
  [`vermilion-conventions`](../../.claude/memory/vermilion-conventions.md) and
  [`interactive-proofs-first-class`](../../.claude/memory/interactive-proofs-first-class.md)).
  The assistant fills those holes in the *user-owned* twin; the generated
  twin stays machine-authored and overwritten.
- Interactive proofs are already a first-class outcome, not a failure. An
  assisted proof is the same kind of artifact a user would hand-write —
  kernel-checked, and (longer-term) a candidate to feed back into the `vrml`
  ladder as a lemma.
- Nothing enters the TCB: the model's output is ordinary Lean text that the
  Lean kernel checks. A wrong suggestion cannot make an unproven goal look
  proven; it just fails to check, the same as any human attempt.

### 1a. Model configuration (settings)

New VS Code settings under a `vermilion.assistant.*` namespace (the extension
has no `contributes.configuration` block yet — this adds the first one), with
a matching section in `docs/TUTORIAL.md`:

| Setting | Purpose |
| --- | --- |
| `vermilion.assistant.enabled` | Master switch; off by default. |
| `vermilion.assistant.provider` | Which backend serves the model (e.g. Anthropic API, a local endpoint, or an already-running Claude Code / agent session). |
| `vermilion.assistant.model` | Model id for proof construction. |
| `vermilion.assistant.endpoint` | Base URL for self-hosted / proxy backends. |
| `vermilion.assistant.apiKeyRef` | *Reference* to a credential resolved from the OS keychain / env var — never the key itself in `settings.json`. |
| `vermilion.assistant.maxAttempts` | Cap on prover iterations per obligation. |
| `vermilion.assistant.timeoutSeconds` | Per-obligation wall-clock budget. |
| `vermilion.assistant.autoRun` | Whether to attempt automatically on a fresh `sorry`, or only on explicit invocation. |

Design notes:

- **Credentials stay out of the repo and out of settings.** Store the secret
  in VS Code `SecretStorage` / the OS keychain; `settings.json` holds only a
  reference. Honour the project's no-machine-specific-paths rule.
- **Provider-neutral core.** The model call goes through a thin adapter so the
  same proof loop works against the Anthropic API, a local model, or a
  delegated agent session. Default to the latest Claude models when the
  Anthropic provider is selected.
- **CLI parity.** Expose the same capability headless as `vrml_prove` (or a
  `vrml_sync --assist` flag) so the assistant is usable outside the editor and
  in scripts, matching the short-`vrml*`-command convention.

### 1b. The interactive construction loop (UI)

What the user sees when an obligation is left unproven:

1. A code lens / gutter action on the unproven obligation — in the Rust file
   (on the highlighted assertion/contract) and on the `sorry` in the
   `proofs/` twin — reading e.g. **"Prove with Vermilion assistant"**.
2. Invoking it opens (or reuses) a side panel that shows, live:
   - the obligation goal state (as Lean would print it),
   - the attempt currently being tried,
   - the kernel's verdict on each attempt.
3. On success the panel offers **Insert into twin**, which replaces the
   `sorry` with the checked proof and re-runs `vrml_check` so the blue
   "discharged interactively" squiggle and the green function mark update.
4. On failure it leaves the best partial proof (with a residual `sorry`) plus
   the remaining goal, so the user continues by hand from the furthest point
   reached — never worse off than the plain `sorry`.

Design notes:

- **Human-in-the-loop by default.** The assistant proposes; the user accepts
  the diff into the user-owned twin. `autoRun` can make trivial cases silent,
  but the twin is the user's file — edits should be reviewable, not sprung.
- **Reuse the existing plumbing.** The loop is: read the goal from the twin /
  `vrml_check` diagnostics → ask the model for a tactic block → write to a
  scratch copy → kernel-check → repeat within the attempt/time budget. This is
  the same generated-vs-twin reconciliation `vrml_sync` already performs, with
  a model in the loop.
- **Statement-hash coherence.** An assisted proof is subject to the same
  staleness rule as any user proof: it survives while its statement hash
  matches and is flagged when the underlying obligation changes.

### 1c. Progress feedback (it takes a while)

Model-driven proof search is slow and variable, so the UX must make the wait
legible and cancellable — never a frozen editor:

- **Status bar item** with a spinner and phase text
  (`Vermilion assistant: attempt 2/5 — checking…`), mirroring how
  verification already surfaces state.
- **Live transcript** in the side panel: each attempt, elapsed time against
  the budget, and the current goal — so a long run is observably making
  progress, not hung.
- **Cancellable**, reusing the ⌘⇧R cancel-in-flight pattern already added for
  verification. Cancelling leaves the last checked partial proof in place.
- **Per-attempt budgets**, echoing the `vrml_ladder` heartbeat discipline so a
  diverging attempt can't starve the run or turn failure into a minute-long
  stall. Emit a clear terminal message on timeout/exhaustion.
- **Non-blocking.** The editor stays responsive; verification and navigation
  keep working while an attempt runs in the background.

### Open questions

- Where does the model run in headless / CI contexts, and should the
  differential harness ever consult it? (Likely no — parity is measured over
  unmodified sources and existing automation.)
- Should accepted assisted proofs be mined into the `vrml` ladder / lemma
  library automatically, or only surfaced as candidates?
- How much project context (prelude lemmas, sibling proofs, the IR of the
  function) should the model see, and how is that context assembled reproducibly?
- Reproducibility: an assisted proof, once inserted and checked, is a normal
  twin proof — but re-generating it is nondeterministic. Do we record the
  model/prompt provenance anywhere, or treat the checked proof as the sole
  artifact?
