// Vermilion editor support: surface Lean's results on the Rust source,
// with Dafny-style look and feel.
//
// Verification runs automatically when you OPEN a Rust file containing a
// `verus!` macro whose stored verdict is missing or older than the source
// (a current verdict is painted from disk without re-running the pipeline),
// when you SAVE any Rust file in the workspace, and on demand via
// Cmd+Shift+R (macOS) / Ctrl+Shift+R (elsewhere) or the status-bar click. A file with an example run.sh next to it is driven through that; any
// other Rust file is driven directly through scripts/run_example.sh (no
// run.sh required). Runs are silent — no terminal; output goes to the
// "Vermilion" output channel.
//
//   - while a file is being (re-)verified, the functions under
//     verification show a trembling green zigzag in the gutter and their
//     checkmarks disappear;
//   - green gutter checkmarks (next to the line numbers) mark every
//     function whose obligations all passed; editing inside a function
//     removes its checkmark until the next run;
//   - red squiggles sit at the exact Rust span of every rejected
//     obligation, each linking to the `sorry` awaiting a proof in the
//     proofs/ twin;
//   - files that do not type-check fail in the pipeline's own front end
//     (the only rustc that understands verus! macros) and those errors are
//     surfaced at their spans; rust-analyzer is deliberately not consulted;
//   - the status bar reports the active file only.
//
// Results are read from the artifacts on disk, so a file is highlighted as
// soon as it is opened if it has been judged before — by an earlier session,
// another window, or (for a vendored case-study source) the study's own
// driver. A verdict older than the source it judged is reported as stale
// rather than shown as current.

const vscode = require('vscode');
const childProcess = require('child_process');
const fs = require('fs');
const path = require('path');
const {
  contractClauseAtLine,
  dependencyImportRange,
  collectFunctionMarks,
  manifestOwnedElsewhere,
  manifestCoversRustFile,
  manifestSearchDirs,
  obligationForContractClause,
  obligationRecordForFunction,
  parseFunctionRanges,
  refusalFunctionRanges,
  sameSourceFile,
  specNamespaceForFunction,
} = require('./core');

/**
 * Read-through file cache keyed by mtime. `refresh()` resolves the twin
 * link of every diagnostic it paints, and each resolution used to re-read
 * the whole twin from disk: with a big case study judged (dalek-lite: ~2000
 * diagnostics over multi-MB twins) one refresh did ~10s of synchronous
 * reads on the extension-host thread — every jump between editors stalled.
 * A stat per lookup keeps the cache honest against pipeline rewrites.
 */
const textCache = new Map(); // path -> { mtimeMs, text }
function readTextCached(filePath) {
  let mtimeMs;
  try {
    mtimeMs = fs.statSync(filePath).mtimeMs;
  } catch {
    textCache.delete(filePath);
    return null;
  }
  const hit = textCache.get(filePath);
  if (hit && hit.mtimeMs === mtimeMs) return hit.text;
  let text;
  try {
    text = fs.readFileSync(filePath, 'utf8');
  } catch {
    textCache.delete(filePath);
    return null;
  }
  textCache.set(filePath, { mtimeMs, text });
  return text;
}

/**
 * Where the manual proof goes in the twin: the exact position of `sorry`
 * inside the obligation's block if present, otherwise the first
 * non-whitespace character of the line after the theorem's `:= by`.
 * Returns { line, character }, 1-based line / 0-based character, or null.
 *
 * Looked up through a per-file index built in ONE pass over the twin: the
 * refresh path resolves this for every diagnostic, and a per-file-mode twin
 * holds hundreds of obligations in one multi-MB module — scanning it afresh
 * per obligation multiplied into seconds of work per refresh.
 */
const goalIndexCache = new Map(); // path -> { text, index: Map(obligation -> pos) }
function twinGoalIndex(twinPath) {
  const text = readTextCached(twinPath);
  if (text === null) return null;
  const hit = goalIndexCache.get(twinPath);
  if (hit && hit.text === text) return hit.index;
  const index = new Map();
  const lines = text.split('\n');
  let current = null; // obligation whose block encloses this line
  let bodyStart = null;
  let settled = false; // a sorry already pinned this block's position
  const close = () => {
    if (current !== null && !index.has(current) && bodyStart !== null) {
      index.set(current, bodyStart);
    }
    current = null;
  };
  for (let i = 0; i < lines.length; i += 1) {
    const line = lines[i];
    const begin = line.match(/^-- vrml:begin (\S+) /);
    if (begin) {
      close();
      current = begin[1];
      bodyStart = null;
      settled = index.has(current);
      continue;
    }
    if (current === null) continue;
    if (line.startsWith(`-- vrml:end ${current}`)) {
      close();
      continue;
    }
    if (settled) continue;
    const sorryColumn = line.search(/\bsorry\b/);
    if (sorryColumn >= 0) {
      index.set(current, { line: i + 1, character: sorryColumn });
      settled = true;
      continue;
    }
    if (bodyStart === null && line.trimEnd().endsWith(':= by')) {
      const next = lines[i + 1] || '';
      const column = Math.max(0, next.search(/\S/));
      bodyStart = { line: i + 2, character: column };
    }
  }
  close();
  goalIndexCache.set(twinPath, { text, index });
  return index;
}
function twinGoalPosition(twinPath, obligation) {
  const index = twinGoalIndex(twinPath);
  if (!index) return null;
  return index.get(obligation) || null;
}

/**
 * Position of one obligation's *theorem statement* in a Lean module (twin
 * or generated): the `theorem` keyword line inside the obligation's
 * `-- vrml:begin <name> …` block. This is where a specific `ensures`
 * clause or `assert` lands — its own theorem/VC.
 */
function twinTheoremPosition(leanPath, obligation) {
  const text = readTextCached(leanPath);
  if (text === null) return null;
  const beginMarker = `-- vrml:begin ${obligation} `;
  const endMarker = `-- vrml:end ${obligation}`;
  const lines = text.split('\n');
  let inside = false;
  for (let index = 0; index < lines.length; index += 1) {
    const line = lines[index];
    if (!inside) {
      if (line.startsWith(beginMarker)) inside = true;
      continue;
    }
    if (line.startsWith(endMarker)) break;
    const column = line.search(/\btheorem\b/);
    if (column >= 0) return { line: index + 1, character: column };
  }
  return null;
}

/**
 * The goal (conclusion) of one obligation's theorem in a Lean module — the
 * text before `:= by` on the signature's last line. Used to label the
 * disambiguation picker when several VCs share a Rust span.
 */
function obligationGoal(leanPath, obligation) {
  const text = readTextCached(leanPath);
  if (text === null) return null;
  const beginMarker = `-- vrml:begin ${obligation} `;
  const endMarker = `-- vrml:end ${obligation}`;
  const lines = text.split('\n');
  let inside = false;
  for (let index = 0; index < lines.length; index += 1) {
    const line = lines[index];
    if (!inside) {
      if (line.startsWith(beginMarker)) inside = true;
      continue;
    }
    if (line.startsWith(endMarker)) break;
    const cut = line.indexOf(':= by');
    if (cut >= 0) return line.slice(0, cut).trim();
  }
  return null;
}

/**
 * Status of one obligation, read from its twin block: `sorry` (unproven —
 * automation failed and no manual proof yet), `interactive` (a
 * hand-written proof), or `auto` (the plain `vrml` ladder). Drives the
 * disambiguation picker's markers.
 */
function obligationStatus(leanPath, obligation) {
  const text = readTextCached(leanPath);
  if (text === null) return 'auto';
  const beginMarker = `-- vrml:begin ${obligation} `;
  const endMarker = `-- vrml:end ${obligation}`;
  const lines = text.split('\n');
  let inside = false;
  let afterBy = false;
  const body = [];
  for (const line of lines) {
    if (!inside) {
      if (line.startsWith(beginMarker)) inside = true;
      continue;
    }
    if (line.startsWith(endMarker)) break;
    if (afterBy) {
      body.push(line);
      continue;
    }
    if (line.includes(':= by')) afterBy = true;
  }
  if (body.some((l) => /\bsorry\b/.test(l))) return 'sorry';
  const tactics = body.map((l) => l.trim()).filter(Boolean);
  if (tactics.length === 1 && /^vrml(\s*\[.*\])?$/.test(tactics[0])) return 'auto';
  return tactics.length === 0 ? 'auto' : 'interactive';
}

/**
 * The runner script in `directory` that verifies `documentPath`. A directory
 * can hold several runnable Rust files, each with its own runner (merge-sort:
 * run.sh → mergesort_clean.rs, run_verbatim.sh → mergesort.rs), or one runner
 * that verifies several files (primes/run.sh drives primes_spec.rs and
 * primes_exec.rs). We pick the `*.sh` whose non-comment lines pass this file's
 * basename as a whitespace-delimited token, preferring `run.sh`. Comment lines
 * are skipped so a runner that merely *mentions* a sibling file in a comment
 * does not claim it. Returns an absolute path or null.
 */
function runnerForFile(directory, documentPath) {
  const base = path.basename(documentPath);
  const escaped = base.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
  const token = new RegExp(`(^|\\s)${escaped}(\\s|$)`);
  let names;
  try {
    names = fs.readdirSync(directory).filter((name) => name.endsWith('.sh'));
  } catch {
    return null;
  }
  names.sort((a, b) =>
    a === 'run.sh' ? -1 : b === 'run.sh' ? 1 : a.localeCompare(b)
  );
  for (const name of names) {
    const scriptPath = path.join(directory, name);
    let content;
    try {
      content = fs.readFileSync(scriptPath, 'utf8');
    } catch {
      continue;
    }
    for (const line of content.split('\n')) {
      if (/^\s*#/.test(line)) continue; // skip comments
      if (token.test(line)) return scriptPath;
    }
  }
  return null;
}

/** Modification time in ms, or null when the path cannot be stat'ed. */
function mtimeOf(filePath) {
  try {
    return fs.statSync(filePath).mtimeMs;
  } catch {
    return null;
  }
}

// Parsed-JSON companion to `readTextCached`: manifests are re-resolved for
// every open Rust document on every refresh, and a case-study manifest is
// hundreds of KB — parse each version once. Callers treat the result as
// read-only.
const jsonCache = new Map(); // path -> { text, value }
function readJson(filePath) {
  const text = readTextCached(filePath);
  if (text === null) return null;
  const hit = jsonCache.get(filePath);
  if (hit && hit.text === text) return hit.value;
  let value;
  try {
    value = JSON.parse(text);
  } catch {
    value = null;
  }
  jsonCache.set(filePath, { text, value });
  return value;
}

/**
 * The manifest that owns a Rust file's obligations, with the directory and
 * stem its Lean artifacts are keyed by.
 *
 * The co-located layout (`<dir>/generated/<stem>.json` beside `<stem>.rs`) is
 * the fast path and stays authoritative for examples. It is not the only
 * layout: a case study that verifies a vendored crate lowers a whole
 * dependency cone, so the sources that produced the obligations sit deep
 * inside the checkout while `generated/` lives at the study root. For those,
 * walk up to the nearest ancestor whose `generated/` holds a manifest that
 * actually mentions this file, so navigation works from the source the
 * obligations came from rather than only from the lowering entry point.
 */
function resolveManifestContext(root, documentPath) {
  const stem = path.basename(documentPath, '.rs');
  for (const directory of manifestSearchDirs(root, documentPath)) {
    const generated = path.join(directory, 'generated');
    if (!fs.existsSync(generated)) continue;
    // Same-stem manifest first: it is the co-located example layout, and for
    // a vendored source it is still the likeliest owner (one manifest per
    // lowered module keeps the module's own name).
    const preferred = path.join(generated, `${stem}.json`);
    const candidates = [preferred];
    let entries = [];
    try {
      entries = fs.readdirSync(generated);
    } catch {
      entries = [];
    }
    for (const entry of entries) {
      if (!entry.endsWith('.json')) continue;
      const candidate = path.join(generated, entry);
      if (candidate !== preferred) candidates.push(candidate);
    }
    for (const candidate of candidates) {
      const manifest = readJson(candidate);
      if (!manifestCoversRustFile(manifest, documentPath)) continue;
      return {
        manifest,
        exampleDir: directory,
        stem: path.basename(candidate, '.json'),
      };
    }
  }
  // No manifest yet (never verified, or an ad-hoc file): keep the co-located
  // guess so callers report "run a verification first" rather than misfiling.
  return { manifest: null, exampleDir: path.dirname(documentPath), stem };
}

/** The user-owned proofs twin of a generated path (file or directory). */
function twinOf(generatedPath) {
  return generatedPath.replace(`${path.sep}generated${path.sep}`, `${path.sep}proofs${path.sep}`);
}

/**
 * The Lean files that can carry one obligation's block, best first: the
 * proofs twin, then the generated module. Mode-aware — in per-function
 * mode each obligation record names its own unit file (`lean_file`).
 */
function leanFilesForObligation(root, exampleDir, stem, record) {
  const files = [];
  if (record && record.lean_file) {
    const generated = path.isAbsolute(record.lean_file)
      ? record.lean_file
      : path.join(root, record.lean_file);
    files.push(twinOf(generated), generated);
  } else {
    files.push(
      path.join(exampleDir, 'proofs', `${stem}.lean`),
      path.join(exampleDir, 'generated', `${stem}.lean`)
    );
  }
  return files.filter((file) => fs.existsSync(file));
}

/** Parse one check file: failure/covered diagnostics per Rust file. */
function collectDiagnostics(root, checkPath, manifest, byFile, tally) {
  const text = readTextCached(checkPath);
  if (text === null) return { failedObligations: new Set() };
  const failedObligations = new Set();
  // `lean_file` is present in every manifest the pipeline writes, but a
  // manifest is now resolved in more situations (whole-crate judging, open
  // files) — so treat it as optional rather than letting one odd manifest
  // throw and take down all painting.
  const fallbackTwin = manifest && manifest.lean_file
    ? path.join(root, manifest.lean_file.replace('/generated/', '/proofs/'))
    : null;
  for (const line of text.split('\n')) {
    if (!line.startsWith('{')) continue;
    let message;
    try {
      message = JSON.parse(line);
    } catch {
      continue;
    }
    const span = message.spans && message.spans[0];
    const meta = message.vermilion || {};
    if (!span || !span.file_name) continue;
    // Per-function mode: the diagnostic names its own unit twin.
    const twin = meta.twin_file
      ? path.isAbsolute(meta.twin_file)
        ? meta.twin_file
        : path.join(root, meta.twin_file)
      : fallbackTwin;
    const covered = Boolean(meta.covered_by_twin);
    if (!covered && meta.obligation) failedObligations.add(meta.obligation);
    // rustc-style spans are 1-based with an exclusive end column.
    const startLine = Math.max(0, (span.line_start || 1) - 1);
    const startColumn = Math.max(0, (span.column_start || 1) - 1);
    const endLine = Math.max(0, (span.line_end || span.line_start || 1) - 1);
    const endColumn = Math.max(startColumn + 1, (span.column_end || 2) - 1);
    const range = new vscode.Range(startLine, startColumn, endLine, endColumn);
    const detail = covered
      ? `goal discharged interactively in the proofs twin (${meta.obligation})`
      : `${message.message} — Lean rejected \`${meta.obligation}\``;
    const diagnostic = new vscode.Diagnostic(
      range,
      detail,
      covered
        ? vscode.DiagnosticSeverity.Information
        : vscode.DiagnosticSeverity.Error
    );
    diagnostic.source = 'vermilion';
    diagnostic.code = covered ? 'discharged-interactively' : 'obligation-failed';
    if (twin && meta.obligation) {
      const goal = twinGoalPosition(twin, meta.obligation);
      if (goal !== null) {
        diagnostic.relatedInformation = [
          new vscode.DiagnosticRelatedInformation(
            new vscode.Location(
              vscode.Uri.file(twin),
              new vscode.Position(goal.line - 1, goal.character)
            ),
            covered
              ? 'your manual proof lives here, in the proofs twin'
              : 'the goal awaits its proof here, in the user-owned proofs twin'
          ),
        ];
      }
    }
    const file = path.isAbsolute(span.file_name)
      ? span.file_name
      : path.join(root, span.file_name);
    if (!byFile.has(file)) byFile.set(file, []);
    byFile.get(file).push(diagnostic);
    if (covered) tally.covered += 1;
    else tally.failed += 1;
  }
  return { failedObligations };
}

/**
 * Per-function verification marks from a manifest: anchored at the `fn`
 * declaration line of the enclosing function (parsed from the source),
 * carrying the function's full range and whether any goal failed.
 */
// `collectFunctionMarks` lives in core.js (pure, unit-tested).

/** rustc front-end errors in pipeline output: `error...: --> file:l:c`. */
function parseFrontEndErrors(root, log) {
  const results = new Map();
  const pattern = /error(\[[^\]]+\])?: ([^\n]*)\n\s+--> ([^\s:]+):(\d+):(\d+)/g;
  let match;
  while ((match = pattern.exec(log)) !== null) {
    const [, , message, file, line, column] = match;
    if (message.startsWith('aborting due to')) continue;
    const absolute = path.isAbsolute(file) ? file : path.join(root, file);
    const position = new vscode.Position(
      Math.max(0, Number(line) - 1),
      Math.max(0, Number(column) - 1)
    );
    const diagnostic = new vscode.Diagnostic(
      new vscode.Range(position, position.translate(0, 1)),
      `the file does not type-check: ${message}`,
      vscode.DiagnosticSeverity.Error
    );
    diagnostic.source = 'rustc (vermilion front end)';
    if (!results.has(absolute)) results.set(absolute, []);
    results.get(absolute).push(diagnostic);
  }
  return results;
}

/**
 * Adapter refusals in pipeline output: a construct outside the supported
 * fragment, reported by vermilion_direct as
 *   error[vermilion]: outside the supported fragment: <message>
 *     --> <file>:<line>:<col>
 *      = note: span ends at <line>:<col>
 * The optional note widens the squiggle to the construct's full span.
 */
function parseLoweringErrors(root, log) {
  const results = new Map();
  const pattern =
    /error\[vermilion\]: outside the supported fragment: ([^\n]*)\n\s+--> ([^\s:]+):(\d+):(\d+)(?:\n\s+= note: span ends at (\d+):(\d+))?/g;
  let match;
  while ((match = pattern.exec(log)) !== null) {
    const [, message, file, line, column, endLine, endColumn] = match;
    const candidates = path.isAbsolute(file)
      ? [file]
      : [
          path.join(root, file),
          path.join(root, '.verus-checkout', 'source', file),
        ];
    const absolute =
      candidates.find((candidate) => fs.existsSync(candidate)) || candidates[0];
    const start = new vscode.Position(
      Math.max(0, Number(line) - 1),
      Math.max(0, Number(column) - 1)
    );
    const end =
      endLine !== undefined
        ? new vscode.Position(
            Math.max(0, Number(endLine) - 1),
            Math.max(0, Number(endColumn) - 1)
          )
        : start.translate(0, 1);
    const diagnostic = new vscode.Diagnostic(
      new vscode.Range(start, end),
      `not supported by Vermilion yet: ${message}`,
      vscode.DiagnosticSeverity.Error
    );
    diagnostic.source = 'vermilion (fragment)';
    if (!results.has(absolute)) results.set(absolute, []);
    results.get(absolute).push(diagnostic);
  }
  return results;
}

function activate(context) {
  const folders = vscode.workspace.workspaceFolders;
  if (!folders || folders.length === 0) return;
  const root = folders[0].uri.fsPath;
  const checkDir = path.join(root, '.vermilion');

  const diagnostics = vscode.languages.createDiagnosticCollection('vermilion');
  const frontEndDiagnostics =
    vscode.languages.createDiagnosticCollection('vermilion-frontend');
  const output = vscode.window.createOutputChannel('Vermilion');
  const icon = (name) =>
    vscode.Uri.file(context.asAbsolutePath(path.join('media', name)));
  const verifiedMark = vscode.window.createTextEditorDecorationType({
    gutterIconPath: icon('check.svg'),
    gutterIconSize: '80%',
  });
  const failedMark = vscode.window.createTextEditorDecorationType({
    gutterIconPath: icon('cross.svg'),
    gutterIconSize: '80%',
  });
  const verifyingMarks = [
    vscode.window.createTextEditorDecorationType({
      gutterIconPath: icon('verifying-1.svg'),
      gutterIconSize: 'contain',
    }),
    vscode.window.createTextEditorDecorationType({
      gutterIconPath: icon('verifying-2.svg'),
      gutterIconSize: 'contain',
    }),
  ];
  const status = vscode.window.createStatusBarItem(
    vscode.StatusBarAlignment.Left,
    50
  );
  status.command = 'vermilion.verifyCurrentFile';
  context.subscriptions.push(
    diagnostics,
    frontEndDiagnostics,
    output,
    verifiedMark,
    failedMark,
    ...verifyingMarks,
    status
  );

  // Set once a verification completes in this session. Painting no longer
  // depends on it (artifacts on disk are authoritative), but the run/refusal
  // bookkeeping still tracks whether this session produced the results.
  let sessionHasResults = false;
  let running = 0;
  // file -> [{ verified, line, start, end }] from the latest manifests.
  let marksByFile = new Map();
  // file -> { failed, covered } outcome of the latest run.
  let resultsByFile = new Map();
  // Refusals happen before a manifest/check file exists, so keep their
  // per-file outcome and gutter marks independently across `refresh()`.
  const refusalsByFile = new Map();
  const refusalMarksByFile = new Map();
  // Files whose displayed verdict predates their last edit.
  const staleFiles = new Set();
  // Files currently under verification: file -> [{ start, end }] ranges.
  const verifying = new Map();
  let zigzagPhase = 0;
  let animation = null;

  const paintEditors = () => {
    for (const editor of vscode.window.visibleTextEditors) {
      const file = editor.document.uri.fsPath;
      const beingVerified = verifying.get(file) || [];
      const zigzagLines = [];
      const inVerification = (line) =>
        beingVerified.some((range) => range.start <= line && line <= range.end);
      for (const range of beingVerified) {
        const last = Math.min(range.end, editor.document.lineCount - 1);
        for (let line = range.start; line <= last; line += 1) {
          zigzagLines.push(new vscode.Range(line, 0, line, 0));
        }
      }
      editor.setDecorations(verifyingMarks[zigzagPhase], zigzagLines);
      editor.setDecorations(verifyingMarks[1 - zigzagPhase], []);
      // Verified checkmarks / failed crosses on the fn lines of functions
      // that are neither stale (edited) nor currently under verification.
      const marks = (marksByFile.get(file) || []).filter(
        (mark) => !mark.stale && !inVerification(mark.line)
      );
      editor.setDecorations(
        verifiedMark,
        marks
          .filter((mark) => mark.verified)
          .map((mark) => new vscode.Range(mark.line, 0, mark.line, 0))
      );
      editor.setDecorations(
        failedMark,
        marks
          .filter((mark) => !mark.verified)
          .map((mark) => new vscode.Range(mark.line, 0, mark.line, 0))
      );
    }
  };

  const updateStatus = () => {
    if (running > 0) {
      status.text = '$(sync~spin) vermilion: verifying…';
      status.tooltip = 'Lean is judging the obligations.';
      status.backgroundColor = undefined;
      status.show();
      return;
    }
    const editor = vscode.window.activeTextEditor;
    const active = editor && editor.document.uri.fsPath;
    const result = active ? resultsByFile.get(active) : null;
    if (!result) {
      status.text = '$(circle-outline) vermilion';
      status.tooltip =
        'Save a Rust example (or press Cmd/Ctrl+Shift+R) to verify it.';
      status.backgroundColor = undefined;
      status.show();
      return;
    }
    if (result.refusal) {
      status.text = result.statusText;
      status.tooltip = result.statusTooltip;
      status.backgroundColor = new vscode.ThemeColor(
        'statusBarItem.errorBackground'
      );
      status.show();
      return;
    }
    const name = path.basename(active);
    if (staleFiles.has(active)) {
      status.text = `$(history) vermilion: ${name} edited since it was verified`;
      status.tooltip =
        'The displayed verdict predates your edits — save (or press ' +
        'Cmd/Ctrl+Shift+R) to re-verify.';
      status.backgroundColor = undefined;
      status.show();
      return;
    }
    if (result.failed > 0) {
      status.text = `$(error) vermilion: ${result.failed} failed in ${name}`;
      status.tooltip =
        'Lean rejected obligations in this file — each Problems entry links to its goal in the proofs twin.';
      status.backgroundColor = new vscode.ThemeColor(
        'statusBarItem.errorBackground'
      );
    } else {
      const interactive =
        result.covered > 0 ? ` (${result.covered} interactive)` : '';
      status.text = `$(check) vermilion: ${name} fully verified${interactive}`;
      status.tooltip = 'Every obligation of this file is verified by Lean.';
      status.backgroundColor = undefined;
    }
    status.show();
  };

  const refresh = () => {
    const byFile = new Map();
    const tally = { failed: 0, covered: 0, checks: 0 };
    staleFiles.clear();
    marksByFile = new Map(
      [...refusalMarksByFile].map(([file, marks]) => [
        file,
        marks.map((mark) => ({ ...mark })),
      ])
    );
    resultsByFile = new Map(refusalsByFile);
    // Artifacts on disk are shown as soon as they exist — a file whose
    // obligations were judged by an earlier run (or by another window, or by
    // the study's own driver) is highlighted the moment it is opened, without
    // requiring a run in this session. Results that a later source edit
    // invalidated are marked stale below instead of being displayed as
    // current.
    if (fs.existsSync(checkDir)) {
      // Manifests reachable from the files currently open: this is what makes
      // whole-crate case studies work, where one run judges every manifest
      // under a study's generated/ (check files named `ga-<manifest>`) and no
      // per-source run status is written at all.
      const manifestsByStem = new Map();
      for (const document of vscode.workspace.textDocuments) {
        if (document.languageId !== 'rust') continue;
        if (document.uri.scheme !== 'file') continue;
        const context = resolveManifestContext(root, document.uri.fsPath);
        if (context.manifest) manifestsByStem.set(context.stem, context.manifest);
      }
      for (const name of fs.readdirSync(checkDir)) {
        if (!name.endsWith('-check.json')) continue;
        const stem = name.replace(/-check\.json$/, '');
        // Directory-agnostic manifest lookup: the pipeline records the
        // verified source in .vermilion/<stem>-run.json, and the manifest is
        // always colocated at <source dir>/generated/<stem>.json. Works for
        // examples/, case-studies/, tests/, and any ad-hoc directory alike.
        let manifest = null;
        const runStatus = readJson(path.join(checkDir, `${stem}-run.json`));
        if (runStatus && runStatus.source) {
          const sourcePath = path.isAbsolute(runStatus.source)
            ? runStatus.source
            : path.join(root, runStatus.source);
          const candidate = path.join(
            path.dirname(sourcePath),
            'generated',
            `${stem}.json`
          );
          if (fs.existsSync(candidate)) manifest = readJson(candidate);
        }
        // Whole-crate judging writes `ga-<manifest stem>-check.json` with no
        // matching run status; resolve those through the open files' own
        // manifests.
        if (!manifest) {
          manifest = manifestsByStem.get(stem.replace(/^ga-/, '')) || null;
        }
        tally.checks += 1;
        const { failedObligations } = collectDiagnostics(
          root,
          path.join(checkDir, name),
          manifest,
          byFile,
          tally
        );
        const marksBefore = new Map(
          [...marksByFile].map(([file, marks]) => [file, marks.length])
        );
        collectFunctionMarks(root, manifest, failedObligations, marksByFile);
        // A verdict older than the source it judged is not current. Keep the
        // marks (so the file still shows what was proved) but flag them stale:
        // `paintEditors` withholds stale checkmarks exactly as it does for a
        // function the user just edited, and the status line says so.
        const judgedAt = mtimeOf(path.join(checkDir, name));
        for (const [file, marks] of marksByFile) {
          const sourceAt = mtimeOf(file);
          if (sourceAt === null || judgedAt === null || sourceAt <= judgedAt) {
            continue;
          }
          for (let index = marksBefore.get(file) || 0; index < marks.length; index += 1) {
            marks[index].stale = true;
          }
          staleFiles.add(file);
        }
        // Attribute the outcome to every source this check file judged, not
        // just the manifest's entry point (a whole-crate manifest covers a
        // cone of sources, each of which can be the active editor).
        const judgedFiles = new Set();
        if (manifest && Array.isArray(manifest.obligations)) {
          for (const record of manifest.obligations) {
            const span = record.rust_span || {};
            const file = span.file || manifest.rust_file;
            if (file) {
              judgedFiles.add(
                path.isAbsolute(file) ? file : path.join(root, file)
              );
            }
          }
        } else if (manifest && manifest.rust_file) {
          judgedFiles.add(
            path.isAbsolute(manifest.rust_file)
              ? manifest.rust_file
              : path.join(root, manifest.rust_file)
          );
        }
        for (const file of judgedFiles) {
          // Per file, straight from its own diagnostics: failures are Errors,
          // obligations discharged by a twin proof are Information. Counting
          // them here (rather than splitting the run-wide tally) keeps the
          // status line right for every source a manifest covers.
          const entries = byFile.get(file) || [];
          const failed = entries.filter(
            (entry) => entry.severity === vscode.DiagnosticSeverity.Error
          ).length;
          const covered = entries.filter(
            (entry) => entry.code === 'discharged-interactively'
          ).length;
          resultsByFile.set(file, { failed, covered });
        }
      }
    }
    // Results are surfaced only for files open in the editor (one file at
    // a time for now).
    const openFiles = new Set(
      vscode.workspace.textDocuments.map((doc) => doc.uri.fsPath)
    );
    diagnostics.clear();
    for (const [file, list] of byFile) {
      if (openFiles.has(file)) diagnostics.set(vscode.Uri.file(file), list);
    }
    for (const file of [...marksByFile.keys()]) {
      if (!openFiles.has(file)) marksByFile.delete(file);
    }
    paintEditors();
    updateStatus();
  };

  // Event-driven refreshes are coalesced: a pipeline run rewrites hundreds
  // of generated/twin files in a burst (one watcher event each), and
  // navigation opens/closes documents in quick succession — running the
  // full refresh once per event serialized seconds of repeated work on the
  // extension-host thread. One trailing refresh per quiet 200ms repaints
  // exactly the same final state.
  let refreshTimer = null;
  const requestRefresh = () => {
    if (refreshTimer) clearTimeout(refreshTimer);
    refreshTimer = setTimeout(() => {
      refreshTimer = null;
      refresh();
    }, 200);
  };

  // The pipeline touches the check file first and the twin last; watching
  // all three keeps the diagnostics and their twin links current.
  for (const pattern of [
    '**/.vermilion/*-check.json',
    '**/generated/*.json',
    // `**` also matches zero segments, so this covers both the per-file
    // twin (proofs/<stem>.lean) and per-function unit twins
    // (proofs/<stem>/<function>.lean).
    '**/proofs/**/*.lean',
  ]) {
    const watcher = vscode.workspace.createFileSystemWatcher(pattern);
    const onEvent = () => {
      sessionHasResults = true;
      requestRefresh();
    };
    watcher.onDidChange(onEvent);
    watcher.onDidCreate(onEvent);
    watcher.onDidDelete(requestRefresh);
    context.subscriptions.push(watcher);
  }
  context.subscriptions.push(
    vscode.window.onDidChangeVisibleTextEditors(paintEditors),
    vscode.window.onDidChangeActiveTextEditor(() => {
      paintEditors();
      updateStatus();
    }),
    vscode.workspace.onDidOpenTextDocument(requestRefresh),
    vscode.workspace.onDidCloseTextDocument(requestRefresh)
  );

  // Editing a function makes its verdict stale: drop its checkmark
  // immediately (it returns when the file is re-verified on save).
  context.subscriptions.push(
    vscode.workspace.onDidChangeTextDocument((event) => {
      if (event.document.languageId !== 'rust') return;
      const file = event.document.uri.fsPath;
      const marks = marksByFile.get(file);
      if (!marks || marks.length === 0) return;
      const touched = event.contentChanges.map((change) => ({
        start: change.range.start.line,
        end: change.range.end.line,
      }));
      let dirtied = false;
      for (const mark of marks) {
        const hit = touched.some(
          (change) => change.start <= mark.end && mark.start <= change.end
        );
        if (hit && !mark.stale) {
          mark.stale = true;
          dirtied = true;
        }
      }
      if (dirtied) paintEditors();
    })
  );

  const startAnimation = () => {
    if (animation) return;
    animation = setInterval(() => {
      zigzagPhase = 1 - zigzagPhase;
      paintEditors();
    }, 280);
  };
  const stopAnimation = () => {
    // The trembling zigzag tracks the `verifying` set: once a file's
    // verdict is surfaced (which clears it from `verifying`), its animation
    // must stop even if the pipeline process is still finishing background
    // work (e.g. the trailing twin kernel-check), so the real marks show.
    if (animation && verifying.size === 0) {
      clearInterval(animation);
      animation = null;
    }
  };

  /**
   * Verify a Rust file silently in the background. If it has an example
   * run.sh next to it we honour that (it may pass --lib to kernel-check the
   * twin); otherwise we drive scripts/run_example.sh directly, so ANY Rust
   * file under the workspace verifies without a run.sh authored for it. The
   * shared driver emits the same generated/ twin and .vermilion status files
   * either way; without --lib it simply skips the twin kernel-check.
   */
  const sharedRunner = path.join(root, 'scripts', 'run_example.sh');
  const inFlight = new Set();
  // The live child per runner, so an explicit re-verify (⌘⇧R) can cancel a
  // long-running pass (e.g. the merge-sort twin kernel-check) and start
  // fresh, instead of no-opping behind the inFlight guard.
  const children = new Map();

  // A pipeline refusal that never reached Lean (the front end rejected the
  // file, or the adapter refused an out-of-fragment construct). Surface it
  // like any failure: drop the trembling zigzag, clear stale obligation
  // marks/squiggles, put the parsed errors at their spans, and show a ✗ on
  // every function containing one. Returns true once it painted at least
  // one parsed error (the caller falls back otherwise).
  const applyRefusal = (
    documentPath,
    parsed,
    statusText,
    statusTooltip,
    options = {}
  ) => {
    if (parsed.size === 0) return false;
    for (const [file, list] of parsed) {
      frontEndDiagnostics.set(vscode.Uri.file(file), list);
    }
    // Build ✗ marks for the edited file: each error line → its enclosing
    // function. Replaces any stale ✓/✗ so a checkmark never survives a
    // refusal, and clears the (now meaningless) obligation squiggles.
    let source = '';
    try {
      source = fs.readFileSync(documentPath, 'utf8');
    } catch {
      source = '';
    }
    let errors = parsed.get(documentPath);
    const dependencyLevel =
      !errors && options.moduleWideIfExternal && parsed.size > 0;
    if (dependencyLevel) {
      const [externalFile, externalErrors] = [...parsed.entries()][0];
      const external = externalErrors[0];
      const importRange = dependencyImportRange(source, externalFile);
      const firstFunction = parseFunctionRanges(source)[0];
      const fallback = new vscode.Position(
        firstFunction ? firstFunction.line : 0,
        0
      );
      const range = importRange
        ? new vscode.Range(
            importRange.start.line,
            importRange.start.character,
            importRange.end.line,
            importRange.end.character
          )
        : new vscode.Range(fallback, fallback.translate(0, 1));
      const diagnostic = new vscode.Diagnostic(
        range,
        (importRange
          ? 'the imported module contains a fragment Vermilion cannot lower: '
          : 'verification stopped before per-function obligations were emitted: ') +
          external.message,
        vscode.DiagnosticSeverity.Error
      );
      diagnostic.source = 'vermilion (fragment dependency)';
      diagnostic.relatedInformation = [
        new vscode.DiagnosticRelatedInformation(
          new vscode.Location(vscode.Uri.file(externalFile), external.range),
          'the unsupported dependency fragment is here'
        ),
      ];
      errors = [diagnostic];
      frontEndDiagnostics.set(vscode.Uri.file(documentPath), errors);
    }
    if (errors) {
      const ranges = refusalFunctionRanges(
        source,
        dependencyLevel
          ? null
          : errors.map((diagnostic) => diagnostic.range.start.line)
      );
      const marks = ranges.map((range) => ({
        verified: false,
        stale: false,
        line: range.line,
        start: range.start,
        end: range.end,
      }));
      marksByFile.set(documentPath, marks);
      refusalMarksByFile.set(documentPath, marks);
      diagnostics.delete(vscode.Uri.file(documentPath));
    }
    const refusal = {
      failed: Math.max(1, errors ? errors.length : 0),
      covered: 0,
      refusal: true,
      statusText,
      statusTooltip,
    };
    refusalsByFile.set(documentPath, refusal);
    resultsByFile.set(documentPath, refusal);
    status.text = statusText;
    status.tooltip = statusTooltip;
    status.backgroundColor = new vscode.ThemeColor(
      'statusBarItem.errorBackground'
    );
    status.show();
    verifying.delete(documentPath);
    stopAnimation();
    paintEditors();
    return true;
  };

  const applyFrontEndFailure = (documentPath, log) =>
    applyRefusal(
      documentPath,
      parseFrontEndErrors(root, log),
      '$(error) vermilion: the file does not type-check',
      'The Verus front end rejected the file — fix the highlighted type errors.'
    );

  // Lowering refusals are not the user's error: the file type-checks, it
  // just uses a construct the fragment does not cover yet. Same painting
  // (squiggle at the offending span + ✗ on its function), different words.
  const applyLoweringFailure = (documentPath, log) =>
    applyRefusal(
      documentPath,
      parseLoweringErrors(root, log),
      '$(warning) vermilion: outside the supported fragment',
      'Vermilion cannot lower the highlighted construct yet — the file is fine. ' +
        'docs/reports/target-projects.md schedules the fragment growth.',
      { moduleWideIfExternal: true }
    );

  const verify = (documentPath, document, opts = {}) => {
    const directory = path.dirname(documentPath);
    // Pick the runner that actually verifies THIS file — a directory may hold
    // several runnable Rust files, each with its own run script. Falling back
    // to a bare `run.sh` verified whichever file that script hard-codes, so
    // opening a sibling (mergesort.rs next to run.sh → mergesort_clean.rs)
    // never got its own marks.
    const localRunner = runnerForFile(directory, documentPath);
    let command;
    let runner; // key for inFlight + the label shown in the output channel
    if (localRunner) {
      command = `'${localRunner}'`;
      runner = localRunner;
    } else if (
      manifestOwnedElsewhere(
        resolveManifestContext(root, documentPath).exampleDir,
        documentPath
      )
    ) {
      // A source that only contributes obligations to another entry point's
      // manifest (a member of a vendored crate a case study lowers) is not a
      // runnable program: the shared driver would fail on it as a file, and
      // that failure is not the user's. Its verdicts already come from the
      // study's own run, and ⌘⇧J navigates its obligations, so leave the
      // diagnostics alone instead of painting a spurious failure.
      return false;
    } else if (
      fs.existsSync(sharedRunner) &&
      documentPath.startsWith(root + path.sep)
    ) {
      // Ad-hoc file: point the shared driver at this file's directory and
      // basename. No --lib — no Lake library need exist for this file.
      command = `'${sharedRunner}' '${directory}' '${path.basename(documentPath)}'`;
      runner = documentPath;
    } else {
      return false;
    }
    if (inFlight.has(runner)) {
      // An automatic trigger (open + save firing together) dedupes — one run
      // is enough. An EXPLICIT re-verify (⌘⇧R) means "run it again now": cancel
      // the in-flight pass and fall through to a fresh one. The cancelled
      // child's `close` will see `canceled` and skip its bookkeeping so it
      // cannot clobber the new run's state.
      if (!opts.force) return true;
      const previous = children.get(runner);
      if (previous) {
        previous.canceled = true;
        previous.child.kill();
        children.delete(runner);
        // Stop the cancelled run's zigzag (its `close` now skips bookkeeping).
        verifying.delete(previous.documentPath);
      }
      inFlight.delete(runner);
      running = Math.max(0, running - 1);
    }
    // Files that do not type-check are not sent past the front end: the
    // pipeline's own rustc (the only checker that understands verus!
    // macros) rejects them and its errors are surfaced at their spans
    // below. rust-analyzer diagnostics are deliberately NOT consulted —
    // it cannot expand verus! and would block every file.
    inFlight.add(runner);
    running += 1;
    refusalsByFile.delete(documentPath);
    refusalMarksByFile.delete(documentPath);
    resultsByFile.delete(documentPath);
    frontEndDiagnostics.delete(vscode.Uri.file(documentPath));
    // The pipeline records the run's structural outcome in
    // .vermilion/<stem>-run.json: phase "front-end" means the program never
    // type-checked (nothing was generated or judged); phase "lean" carries
    // vrml_check's verdict. The check-file mtime remains only as a fallback
    // for pipelines predating the status file.
    const stem = path.basename(documentPath, '.rs');
    const checkFile = path.join(checkDir, `${stem}-check.json`);
    const runStatusFile = path.join(checkDir, `${stem}-run.json`);
    const checkStampBefore = fs.existsSync(checkFile)
      ? fs.statSync(checkFile).mtimeMs
      : 0;
    const runStampBefore = fs.existsSync(runStatusFile)
      ? fs.statSync(runStatusFile).mtimeMs
      : 0;
    // The pipeline re-verifies the whole file, so the trembling zigzag
    // covers every function in it — each function's range ends at its own
    // closing brace, never further.
    const source = document
      ? document.getText()
      : (() => {
          try {
            return fs.readFileSync(documentPath, 'utf8');
          } catch {
            return '';
          }
        })();
    const targets = parseFunctionRanges(source).map((range) => ({
      start: range.start,
      end: range.end,
    }));
    verifying.set(documentPath, targets);
    startAnimation();
    paintEditors();
    updateStatus();
    output.appendLine(`[vermilion] verifying ${documentPath}`);
    let log = '';
    const child = childProcess.spawn('/bin/zsh', ['-lc', command], {
      cwd: root,
    });
    // Record this run so an explicit re-verify can cancel it (see the
    // inFlight guard above). `canceled` is read in the handlers below.
    const record = { child, canceled: false, documentPath };
    children.set(runner, record);
    child.stdout.on('data', (data) => {
      log += data.toString();
      output.append(data.toString());
    });
    child.stderr.on('data', (data) => {
      log += data.toString();
      output.append(data.toString());
    });
    // Surface the verdict the moment it is KNOWN, not when the process
    // exits. run_example.sh writes the run-status file with phase "lean"
    // right after vrml_check — before the optional twin kernel-check
    // (~2s) that does not affect the highlighting. Polling that file (the
    // workspace FileSystemWatcher is unreliable for the hidden .vermilion
    // dir) lets us drop the trembling zigzag and paint the real marks as
    // soon as the CLI would have streamed the ✓, instead of stalling
    // behind the twin check. This is the whole difference in perceived
    // speed between the terminal and the editor.
    let verdictShown = false;
    const surfaceVerdict = () => {
      if (record.canceled) return false;
      if (verdictShown) return false;
      let phase = null;
      try {
        if (
          fs.existsSync(runStatusFile) &&
          fs.statSync(runStatusFile).mtimeMs > runStampBefore
        ) {
          phase = JSON.parse(fs.readFileSync(runStatusFile, 'utf8')).phase;
        }
      } catch {
        phase = null;
      }
      // A written status means the pipeline has decided. "lean" carries a
      // real verdict (paint the obligation marks); "front-end" is a
      // type-check rejection (clear the zigzag, show ✗ + rustc squiggles).
      // Either way, surface it now instead of waiting for process close.
      if (phase === 'lean') {
        verdictShown = true;
        verifying.delete(documentPath);
        stopAnimation();
        sessionHasResults = true;
        refresh();
        return true;
      }
      if (phase === 'front-end') {
        // The stderr the errors come from may not have reached `log` yet;
        // if so, leave it for the next tick / close.
        if (applyFrontEndFailure(documentPath, log)) {
          verdictShown = true;
          sessionHasResults = true;
          return true;
        }
      }
      if (phase === 'lowering') {
        if (applyLoweringFailure(documentPath, log)) {
          verdictShown = true;
          sessionHasResults = true;
          return true;
        }
      }
      return false;
    };
    const verdictPoll = setInterval(surfaceVerdict, 120);
    // A spawn that never starts (bad shell, missing runner) emits 'error' and
    // may never emit 'close'; without this the runner would stay wedged in
    // inFlight and every later ⌘⇧R would silently no-op. Release the guard.
    child.on('error', (error) => {
      clearInterval(verdictPoll);
      output.appendLine(`[vermilion] ${runner} failed to run: ${error}`);
      if (record.canceled) return;
      inFlight.delete(runner);
      children.delete(runner);
      running = Math.max(0, running - 1);
      verifying.delete(documentPath);
      stopAnimation();
      updateStatus();
      paintEditors();
    });
    child.on('close', (code) => {
      clearInterval(verdictPoll);
      // Superseded by an explicit re-verify: the new run owns inFlight/children
      // and already adjusted `running` when it cancelled us. Do nothing else.
      if (record.canceled) return;
      inFlight.delete(runner);
      children.delete(runner);
      running -= 1;
      verifying.delete(documentPath);
      stopAnimation();
      output.appendLine(`[vermilion] ${runner} exited with ${code}`);
      const checkStampAfter = fs.existsSync(checkFile)
        ? fs.statSync(checkFile).mtimeMs
        : 0;
      // Prefer the structural record over exit-code archaeology.
      let runStatus = null;
      try {
        if (
          fs.existsSync(runStatusFile) &&
          fs.statSync(runStatusFile).mtimeMs > runStampBefore
        ) {
          runStatus = JSON.parse(fs.readFileSync(runStatusFile, 'utf8'));
        }
      } catch {
        runStatus = null;
      }
      // The early poller may already have surfaced the verdict / type-check
      // failure; if so, nothing left to paint (refresh below is idempotent)
      // — UNLESS the run went on to fail. The poller paints the verdict from
      // the run-status "lean" phase, which is written after `vrml_check`
      // judges the GENERATED obligations but BEFORE the `proofs/` twin
      // kernel-check (the `--lib` step). So a green generated verdict
      // followed by a nonzero exit means the twin failed to kernel-check (a
      // broken interactive proof, or a remaining `sorry` under
      // `--manual-proofs`): the Rust file is NOT fully verified, and the
      // optimistic green must be downgraded.
      if (verdictShown) {
        if (code !== 0) {
          const marks = (marksByFile.get(documentPath) || []).map((mark) => ({
            ...mark,
            verified: false,
            stale: false,
          }));
          marksByFile.set(documentPath, marks);
          status.text =
            '$(error) vermilion: proofs twin failed — not fully verified';
          status.tooltip =
            'The generated obligations verified, but the proofs/ twin failed to ' +
            'kernel-check (a broken interactive proof, or a remaining `sorry`). ' +
            'The Rust file is not fully verified until the twin checks.';
          status.backgroundColor = new vscode.ThemeColor(
            'statusBarItem.errorBackground'
          );
          status.show();
          paintEditors();
        }
        return;
      }
      const leanJudged = runStatus
        ? runStatus.phase === 'lean'
        : checkStampAfter > checkStampBefore;
      // An out-of-fragment refusal is surfaced regardless of exit code: a
      // blocked case study's run.sh (--expect-unsupported) exits 0 by
      // design, but the editor should still squiggle the refused construct.
      if (runStatus && runStatus.phase === 'lowering') {
        if (applyLoweringFailure(documentPath, log)) {
          return; // squiggle at the unsupported construct; no popup
        }
        // Refusal without a parseable span — still not a breakage.
        status.text = '$(warning) vermilion: outside the supported fragment';
        status.tooltip =
          'Vermilion cannot lower a construct in this file yet — see the Vermilion output channel.';
        status.backgroundColor = new vscode.ThemeColor(
          'statusBarItem.errorBackground'
        );
        status.show();
        return;
      }
      if (code !== 0 && !leanJudged) {
        // The run died before Lean judged anything — surface the front
        // end's type errors at their spans (rust-analyzer cannot see
        // these cargo-less verus! files), or point at the log.
        if (applyFrontEndFailure(documentPath, log)) {
          return; // ✗ marks + rustc squiggles painted; skip normal refresh
        }
        if (runStatus && runStatus.phase === 'front-end') {
          // Structurally a front-end rejection, but no span could be
          // parsed — still report it as a type-check failure, not a
          // pipeline breakage.
          status.text = '$(error) vermilion: the file does not type-check';
          status.tooltip =
            'The Verus front end rejected the file — see the Vermilion output channel.';
          status.backgroundColor = new vscode.ThemeColor(
            'statusBarItem.errorBackground'
          );
          status.show();
          return;
        }
        vscode.window
          .showErrorMessage(
            'Vermilion: the verification pipeline broke.',
            'Show Log'
          )
          .then((choice) => {
            if (choice === 'Show Log') output.show(true);
          });
      }
      sessionHasResults = true;
      refresh();
    });
    return true;
  };

  context.subscriptions.push(
    vscode.workspace.onDidSaveTextDocument((document) => {
      if (document.languageId !== 'rust') return;
      if (document.uri.scheme !== 'file') return; // skip diff/virtual docs
      // Only files carrying a `verus!` macro are Vermilion's to analyse. A
      // plain Rust file — or one whose macro was just removed — must not spin
      // up the pipeline AND must shed any stale Vermilion marks/squiggles, so
      // it looks like a normal Rust file again (the "make it normal back"
      // the user asked for). `hasVerusMacro` is defined below; this closure
      // only runs on save, well after activation completes.
      if (!hasVerusMacro(document)) {
        const file = document.uri.fsPath;
        diagnostics.delete(document.uri);
        frontEndDiagnostics.delete(document.uri);
        marksByFile.delete(file);
        refusalMarksByFile.delete(file);
        refusalsByFile.delete(file);
        resultsByFile.delete(file);
        paintEditors();
        updateStatus();
        return;
      }
      verify(document.uri.fsPath, document);
    })
  );

  // Verify automatically when a Rust file containing a `verus!` macro is
  // opened (user directive). Plain Rust files are left alone — opening them
  // should not spin up the pipeline. `verify`'s own inFlight guard makes a
  // redundant trigger a no-op.
  const hasVerusMacro = (document) => /verus!\s*\{/.test(document.getText());
  // …but only when there is something new to learn: VSCode re-fires
  // onDidOpenTextDocument every time navigation revisits a closed document,
  // and each pipeline run costs a Verus front-end pass plus a Lean check
  // whose file rewrites make any open twin re-elaborate. If the stored
  // verdict already postdates the source, `refresh()` paints it as-is and
  // no run is owed. Saving and ⌘⇧R verify unconditionally, and refresh()
  // flags any verdict older than the source as stale.
  const verdictIsCurrent = (documentPath) => {
    const stem = path.basename(documentPath, '.rs');
    const judgedAt = mtimeOf(path.join(checkDir, `${stem}-check.json`));
    const sourceAt = mtimeOf(documentPath);
    return judgedAt !== null && sourceAt !== null && sourceAt <= judgedAt;
  };
  const verifyIfVerus = (document) => {
    if (document.languageId !== 'rust') return;
    if (document.uri.scheme !== 'file') return; // skip diff/virtual documents
    if (!hasVerusMacro(document)) return;
    if (verdictIsCurrent(document.uri.fsPath)) return;
    verify(document.uri.fsPath, document);
  };
  context.subscriptions.push(
    vscode.workspace.onDidOpenTextDocument(verifyIfVerus)
  );
  // Files already open when the extension activates never fire
  // onDidOpenTextDocument — sweep them once AFTER activation completes.
  // The sweep must never run inline here: an exception (or slow pipeline
  // spawn) mid-activate would abort activate() before the commands below
  // are registered, leaving the ⌘⇧R/⌘⇧J shortcuts dead.
  setTimeout(() => {
    for (const document of vscode.workspace.textDocuments) {
      try {
        verifyIfVerus(document);
      } catch (error) {
        output.appendLine(`verify-on-open failed: ${error}`);
      }
    }
  }, 0);

  context.subscriptions.push(
    vscode.commands.registerCommand('vermilion.verifyCurrentFile', () => {
      const editor = vscode.window.activeTextEditor;
      if (!editor) return;
      if (editor.document.languageId !== 'rust') {
        vscode.window.showInformationMessage(
          'Vermilion: verification runs on Rust files.'
        );
        return;
      }
      // Explicit request: restart even if a pass is already running.
      if (
        !verify(editor.document.uri.fsPath, editor.document, { force: true })
      ) {
        // Not runnable as a file of its own. Say why, and — when the file is
        // part of a case study that lowers it — name the driver that does
        // verify it, instead of blaming a missing script.
        const documentPath = editor.document.uri.fsPath;
        const { exampleDir, manifest } = resolveManifestContext(
          root,
          documentPath
        );
        if (manifest && manifestOwnedElsewhere(exampleDir, documentPath)) {
          const owner = path.relative(root, exampleDir) || '.';
          const runner = fs.existsSync(path.join(exampleDir, 'run.sh'))
            ? `${owner}/run.sh`
            : owner;
          refresh();
          vscode.window.showInformationMessage(
            `Vermilion: ${path.basename(documentPath)} is verified as part of ` +
              `${owner} — run ${runner} to re-verify it. Showing the results ` +
              'of its last run.'
          );
        } else {
          vscode.window.showInformationMessage(
            'Vermilion: this file is outside the workspace, or scripts/run_example.sh is missing.'
          );
        }
      }
    })
  );

  context.subscriptions.push(
    vscode.commands.registerCommand('vermilion.openFunctionProofs', () => {
      const editor = vscode.window.activeTextEditor;
      if (!editor || editor.document.languageId !== 'rust') {
        vscode.window.showInformationMessage(
          'Vermilion: place the cursor inside a function in a Rust file.'
        );
        return;
      }
      const documentPath = editor.document.uri.fsPath;
      const cursorLine = editor.selection.active.line;
      const text = editor.document.getText();
      const enclosing = parseFunctionRanges(text).find(
        (range) => cursorLine >= range.start && cursorLine <= range.end
      );
      if (!enclosing) {
        vscode.window.showInformationMessage(
          'Vermilion: place the cursor inside a function.'
        );
        return;
      }
      const declaration = text.split('\n')[enclosing.start];
      const name = (declaration.match(/fn\s+([A-Za-z0-9_]+)/) || [])[1];
      if (!name) return;
      // The proofs twin is where the user works; fall back to the
      // machine-generated module when no twin exists yet. In per-function
      // mode obligation blocks live in the function's own unit file and
      // spec-fn/datatype definitions in the shared Specs module.
      const root =
        (vscode.workspace.workspaceFolders || [])[0]?.uri.fsPath ||
        path.dirname(documentPath);
      const { manifest, exampleDir, stem } = resolveManifestContext(
        root,
        documentPath
      );
      const blockTargets = [];
      const definitionTargets = [];
      let emittedFunctionName = `${stem}.${name}`;
      if (manifest && manifest.mode === 'per-function') {
        const record = obligationRecordForFunction(
          manifest,
          name,
          enclosing,
          documentPath
        );
        if (record && record.namespace) emittedFunctionName = record.namespace;
        blockTargets.push(...leanFilesForObligation(root, exampleDir, stem, record));
        if (manifest.specs_lean) {
          const specs = path.isAbsolute(manifest.specs_lean)
            ? manifest.specs_lean
            : path.join(root, manifest.specs_lean);
          definitionTargets.push(
            ...[twinOf(specs), specs].filter((file) => fs.existsSync(file))
          );
        }
      } else {
        const legacy = [
          path.join(exampleDir, 'proofs', `${stem}.lean`),
          path.join(exampleDir, 'generated', `${stem}.lean`),
        ].filter((file) => fs.existsSync(file));
        blockTargets.push(...legacy);
        definitionTargets.push(...legacy);
      }
      if (blockTargets.length === 0 && definitionTargets.length === 0) {
        vscode.window.showInformationMessage(
          'Vermilion: no proofs or generated Lean file yet — run a verification first.'
        );
        return;
      }
      // Land on the first theorem of this function's obligation blocks
      // (`-- vrml:begin <stem>.<fn>.<obligation> <hash>`); spec fns have
      // no obligations — their emitted Lean definition
      // (`def <stem>.<fn> …`) is the landing site instead. Datatypes
      // likewise land on their `inductive`.
      const marker = `-- vrml:begin ${emittedFunctionName}.`;
      let landing = null;
      let target = null;
      for (const candidate of blockTargets) {
        const lines = fs.readFileSync(candidate, 'utf8').split('\n');
        for (let index = 0; index < lines.length; index += 1) {
          if (!lines[index].startsWith(marker)) continue;
          landing = { line: index, character: 0 };
          target = candidate;
          for (let scan = index + 1; scan < lines.length; scan += 1) {
            const column = lines[scan].search(/\btheorem\b/);
            if (column >= 0) {
              landing = { line: scan, character: column };
              break;
            }
            if (lines[scan].startsWith('-- vrml:end')) break;
          }
          break;
        }
        if (landing !== null) break;
      }
      if (landing === null) {
        // `def` for spec fns, `inductive` for datatypes, `opaque` for
        // uninterpreted spec fns (`uninterp spec fn`).
        for (const candidate of definitionTargets) {
          const lines = fs.readFileSync(candidate, 'utf8').split('\n');
          const specsText = lines.join('\n');
          const emittedName =
            specNamespaceForFunction(specsText, documentPath, name, enclosing) ||
            `${stem}.${name}`;
          const escapedName = emittedName.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
          const definition = new RegExp(
            `^(?:open Classical in$|@\\[simp\\] )?` +
              `(?:noncomputable )?(?:def|inductive|opaque) ${escapedName}\\b`
          );
          for (let index = 0; index < lines.length; index += 1) {
            if (definition.test(lines[index])) {
              const column = Math.max(0, lines[index].indexOf(emittedName));
              landing = { line: index, character: column };
              target = candidate;
              break;
            }
          }
          if (landing !== null) break;
        }
      }
      if (landing === null) {
        vscode.window.showInformationMessage(
          `Vermilion: nothing emitted for \`${name}\` — re-run verification if the function is new.`
        );
        return;
      }
      const position = new vscode.Position(landing.line, landing.character);
      vscode.window.showTextDocument(vscode.Uri.file(target), {
        selection: new vscode.Range(position, position),
      });
    })
  );

  context.subscriptions.push(
    vscode.commands.registerCommand('vermilion.openProofObligation', () => {
      const editor = vscode.window.activeTextEditor;
      if (!editor) return;
      const active = diagnostics.get(editor.document.uri) || [];
      for (const diagnostic of active) {
        const related =
          diagnostic.relatedInformation && diagnostic.relatedInformation[0];
        if (related && diagnostic.range.contains(editor.selection.active)) {
          vscode.window.showTextDocument(related.location.uri, {
            selection: new vscode.Range(
              related.location.range.start,
              related.location.range.start
            ),
          });
          return;
        }
      }
      vscode.window.showInformationMessage(
        'Vermilion: place the cursor on a failed obligation first.'
      );
    })
  );

  // One context-aware jump to the Lean side (⌘⇧J / Ctrl+Shift+J), opening
  // in the active editor group:
  //   - on an `assert`/`ensures`/invariant (any obligation whose Rust span
  //     encloses the cursor) → the start of that VC's proof (its tactic
  //     body, where you'd edit); several VCs at one span → a picker;
  //   - anywhere else in a function → the function's Lean counterpart (a
  //     `proof fn`/`fn`'s first obligation theorem, a `spec fn`'s
  //     definition).
  context.subscriptions.push(
    // The reverse jump: from a generated/twin Lean file back to the Rust
    // position of the obligation whose vrml:begin/end block encloses the
    // cursor. The block's ObligationMeta literal carries the Rust file
    // and 1-based span start.
    vscode.commands.registerCommand('vermilion.goToRust', () => {
      const editor = vscode.window.activeTextEditor;
      if (!editor || !/\.lean$/.test(editor.document.uri.fsPath)) {
        vscode.window.showInformationMessage(
          'Vermilion: place the cursor inside a generated or proofs .lean file.'
        );
        return;
      }
      const lines = editor.document.getText().split('\n');
      const cursor = editor.selection.active.line; // 0-based
      // Enclosing block: nearest vrml:begin above the cursor whose
      // matching vrml:end is at or below it.
      let begin = -1;
      for (let i = cursor; i >= 0; i -= 1) {
        if (/^-- vrml:end /.test(lines[i]) && i < cursor) break;
        if (/^-- vrml:begin /.test(lines[i])) { begin = i; break; }
      }
      if (begin < 0) {
        // Not inside an obligation block — maybe inside an emitted spec-fn
        // definition: the nearest `-- vrml:spec NAME FILE:LINE:COL` marker
        // above the cursor names its Rust position (markers sit directly
        // above their def, and defs precede all obligation blocks).
        for (let i = cursor; i >= 0; i -= 1) {
          const spec = lines[i].match(/^-- vrml:spec \S+ (.+):(\d+):(\d+)$/);
          if (spec) {
            const specTarget = path.isAbsolute(spec[1])
              ? spec[1]
              : path.join(root, spec[1]);
            if (!fs.existsSync(specTarget)) break;
            const specPosition = new vscode.Position(
              Number(spec[2]) - 1,
              Number(spec[3]) - 1
            );
            vscode.window.showTextDocument(vscode.Uri.file(specTarget), {
              selection: new vscode.Range(specPosition, specPosition),
            });
            return;
          }
          if (/^-- vrml:(begin|end) /.test(lines[i])) break;
        }
        vscode.window.showInformationMessage(
          'Vermilion: no obligation or spec-fn block encloses the cursor.'
        );
        return;
      }
      let rustFile;
      let line = 1;
      let column = 1;
      for (let i = begin; i < lines.length; i += 1) {
        if (i > begin && /^-- vrml:begin /.test(lines[i])) break;
        const file = lines[i].match(/^\s*rustFile := "(.+)"/);
        if (file) rustFile = file[1];
        const startLine = lines[i].match(/^\s*startLine := (\d+)/);
        if (startLine) line = Number(startLine[1]);
        const startColumn = lines[i].match(/^\s*startColumn := (\d+)/);
        if (startColumn) column = Number(startColumn[1]);
        if (/^-- vrml:end /.test(lines[i])) break;
      }
      if (!rustFile) {
        vscode.window.showInformationMessage(
          'Vermilion: the enclosing block carries no Rust span.'
        );
        return;
      }
      const target = path.isAbsolute(rustFile) ? rustFile : path.join(root, rustFile);
      if (!fs.existsSync(target)) {
        vscode.window.showInformationMessage(
          `Vermilion: ${rustFile} not found in this workspace.`
        );
        return;
      }
      const position = new vscode.Position(line - 1, column - 1);
      vscode.window.showTextDocument(vscode.Uri.file(target), {
        selection: new vscode.Range(position, position),
      });
    })
  );

  context.subscriptions.push(
    vscode.commands.registerCommand('vermilion.goToLean', () => {
      const editor = vscode.window.activeTextEditor;
      if (!editor || editor.document.languageId !== 'rust') {
        vscode.window.showInformationMessage(
          'Vermilion: place the cursor inside a Rust file.'
        );
        return;
      }
      const documentPath = editor.document.uri.fsPath;
      const cursorLine = editor.selection.active.line + 1; // spans are 1-based
      const sourceText = editor.document.getText();
      const sourceRange = parseFunctionRanges(sourceText).find(
        (range) =>
          range.start <= cursorLine - 1 && cursorLine - 1 <= range.end
      );
      const declaration = sourceRange
        ? sourceText.split('\n')[sourceRange.start]
        : '';
      const functionName = (declaration.match(/fn\s+([A-Za-z0-9_]+)/) || [])[1];
      const root =
        (vscode.workspace.workspaceFolders || [])[0]?.uri.fsPath ||
        path.dirname(documentPath);
      const { manifest, exampleDir, stem } = resolveManifestContext(
        root,
        documentPath
      );
      // Each obligation's own Lean home (its unit twin in per-function
      // mode, the module twin in per-file mode), generated as fallback.
      const twinFor = (o) =>
        leanFilesForObligation(root, exampleDir, stem, o)[0] || null;
      // The obligation whose Rust span most tightly encloses the cursor.
      const obligations = (manifest && manifest.obligations) || [];
      // Every obligation whose Rust span encloses the cursor, tightest
      // first — one Verus construct can produce several VCs (e.g. a loop
      // invariant's entry and preserve checks share a span).
      const enclosing = obligations
        .filter(
          (o) =>
            o.rust_span &&
            // A manifest can span several sources (the lowering pulls in a
            // whole dependency cone), so line numbers alone would match an
            // obligation from a different file at the same line.
            sameSourceFile(documentPath, o.rust_span.file || '') &&
            o.rust_span.start_line <= cursorLine &&
            cursorLine <= o.rust_span.end_line
        )
        .sort(
          (a, b) =>
            a.rust_span.end_line -
            a.rust_span.start_line -
            (b.rust_span.end_line - b.rust_span.start_line)
        );

      // Every VC lands at the start of its proof (the tactic body, where
      // you edit); the theorem statement is the fallback if no proof body
      // is found.
      const jumpTo = (o) => {
        const twin = twinFor(o);
        if (!twin) return false;
        const position =
          twinGoalPosition(twin, o.name) || twinTheoremPosition(twin, o.name);
        if (!position) return false;
        vscode.window.showTextDocument(vscode.Uri.file(twin), {
          selection: new vscode.Range(
            new vscode.Position(position.line - 1, position.character),
            new vscode.Position(position.line - 1, position.character)
          ),
        });
        return true;
      };

      // Verus currently reports postcondition VCs at the declaration line.
      // Recover the precise multiline contract clause from the Rust source so
      // a cursor on (for example) c150's second `ensures` opens ensures_3_1,
      // instead of falling back to the method's first body assertion.
      const clause = contractClauseAtLine(
        sourceText,
        sourceRange,
        cursorLine - 1
      );
      const contractObligation = functionName
        ? obligationForContractClause(
            manifest,
            functionName,
            sourceRange,
            clause,
            documentPath
          )
        : null;
      if (contractObligation && jumpTo(contractObligation)) return;

      if (enclosing.length === 1) {
        if (jumpTo(enclosing[0])) return;
      } else if (enclosing.length > 1) {
        // Several VCs here — let the user pick, showing each one's name
        // plus its status (auto / interactive / sorry) and goal.
        const marker = {
          sorry: '$(error)',
          interactive: '$(edit)',
          auto: '$(check)',
        };
        const note = {
          sorry: 'unproven (sorry)',
          interactive: 'interactive proof',
          auto: 'auto',
        };
        const items = enclosing.map((o) => {
          const twin = twinFor(o);
          const status = twin ? obligationStatus(twin, o.name) : 'auto';
          return {
            label: `${marker[status]} ${o.leaf}`,
            description: `${o.kind} · ${note[status]}`,
            detail: (twin && obligationGoal(twin, o.name)) || '',
            obligation: o,
          };
        });
        vscode.window
          .showQuickPick(items, {
            placeHolder: `${items.length} verification conditions here — pick one`,
            matchOnDescription: true,
            matchOnDetail: true,
          })
          .then((pick) => {
            if (pick) jumpTo(pick.obligation);
          });
        return;
      }
      // Not on a specific obligation span — jump to the function's
      // definition or proofs (shared logic).
      vscode.commands.executeCommand('vermilion.openFunctionProofs');
    })
  );

  refresh();
}

function deactivate() {}

module.exports = { activate, deactivate };
