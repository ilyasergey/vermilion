'use strict';

const fs = require('node:fs');
const path = require('node:path');

/**
 * Function ranges parsed from Verus/Rust source. Each range starts at the
 * declaration and ends at the matching closing brace (or the semicolon of a
 * bodyless declaration).
 */
function parseFunctionRanges(text) {
  const lines = text.split('\n');
  const declaration =
    /^\s*(?:pub(?:\s*\([^)]*\))?\s+)?(?:(?:open|closed|uninterp|broadcast|proof|spec|exec|axiom)(?:\s*\([^)]*\))?\s+)*fn\s+[A-Za-z0-9_]+/;
  const ranges = [];
  for (let index = 0; index < lines.length; index += 1) {
    if (!declaration.test(lines[index])) continue;
    let depth = 0;
    let paren = 0;
    let bracket = 0;
    let opened = false;
    let end = index;
    let done = false;
    for (let scan = index; scan < lines.length && !done; scan += 1) {
      for (const character of lines[scan]) {
        if (character === '{') {
          depth += 1;
          opened = true;
        } else if (character === '}') {
          depth -= 1;
        } else if (character === '(') {
          paren += 1;
        } else if (character === ')') {
          paren -= 1;
        } else if (character === '[') {
          bracket += 1;
        } else if (character === ']') {
          bracket -= 1;
        } else if (
          character === ';' &&
          !opened &&
          depth === 0 &&
          paren === 0 &&
          bracket === 0
        ) {
          // A `;` terminates only a bodyless declaration — a `;` inside a
          // parameter list or an array type (`bytes: &[u8; 32]`) does not.
          done = true;
          break;
        }
      }
      end = scan;
      if (done || (opened && depth <= 0)) break;
    }
    ranges.push({ line: index, start: index, end });
    index = end;
  }
  return ranges;
}

/**
 * Turn refusal positions into the function ranges that should carry a red
 * gutter mark. `errorLines === null` means lowering failed while processing
 * an imported declaration, before it could attribute the refusal to one
 * source function; in that case none of the module's functions verified, so
 * all of them are marked.
 */
function refusalFunctionRanges(text, errorLines) {
  const ranges = parseFunctionRanges(text);
  if (errorLines === null) return ranges;
  const selected = [];
  const seen = new Set();
  for (const line of errorLines) {
    const range = ranges.find(
      (candidate) => candidate.start <= line && line <= candidate.end
    );
    if (!range || seen.has(range.line)) continue;
    seen.add(range.line);
    selected.push(range);
  }
  return selected;
}

function positionAt(text, offset) {
  const prefix = text.slice(0, offset);
  const lines = prefix.split('\n');
  return { line: lines.length - 1, character: lines[lines.length - 1].length };
}

function pathComponents(file) {
  const components = file.replaceAll('\\', '/').split('/').filter(Boolean);
  if (components.length === 0) return components;
  components[components.length - 1] = components[components.length - 1].replace(
    /\.rs$/,
    ''
  );
  if (components[components.length - 1] === 'mod') components.pop();
  return components;
}

function startsWithComponents(path, prefix) {
  return (
    prefix.length <= path.length &&
    prefix.every((component, index) => path[index] === component)
  );
}

/**
 * Pick an obligation record belonging to the source function under the
 * cursor.  Impl methods are emitted in synthetic namespaces such as
 * `crate.impl__2.index_mut`, so matching only `crate.index_mut` loses their
 * per-function Lean unit.  The Rust span disambiguates methods with the same
 * name in different impl blocks.
 */
function obligationRecordForFunction(manifest, name, range, sourceFile) {
  if (!manifest || !Array.isArray(manifest.obligations)) return null;
  const suffix = `.${name}`;
  const candidates = manifest.obligations.filter(
    (record) =>
      typeof record.namespace === 'string' &&
      (record.namespace === name || record.namespace.endsWith(suffix)) &&
      // One manifest can cover a whole dependency cone, where the same
      // function name recurs across sources; the open file disambiguates.
      (!sourceFile ||
        (record.rust_span &&
          sameSourceFile(sourceFile, record.rust_span.file || '')))
  );
  if (!range) return candidates[0] || null;
  const inFunction = candidates.find((record) => {
    const span = record.rust_span;
    if (!span) return false;
    const start = Number(span.start_line) - 1;
    const end = Number(span.end_line) - 1;
    return start <= range.end && range.start <= end;
  });
  return inFunction || (candidates.length === 1 ? candidates[0] : null);
}

/**
 * Identify a comma-delimited requires/ensures clause at a source line. Verus
 * currently anchors emitted postcondition VCs at the function declaration,
 * not at multiline clause continuations, so editor navigation supplements
 * the manifest with this syntax-only source mapping.
 */
function contractClauseAtLine(text, range, cursorLine) {
  if (!range) return null;
  const lines = text.split('\n');
  const section = /^\s*(requires|ensures)\b/;
  const boundary =
    /^\s*(?:requires|ensures|decreases|returns|opens_invariants|no_unwind)\b/;
  for (let start = range.start; start <= range.end; start += 1) {
    const match = lines[start].match(section);
    if (!match) continue;
    let end = range.end;
    for (let scan = start + 1; scan <= range.end; scan += 1) {
      if (boundary.test(lines[scan]) || /^\s*\{/.test(lines[scan])) {
        end = scan - 1;
        break;
      }
    }
    if (cursorLine < start || cursorLine > end) continue;

    const sectionLines = lines.slice(start, end + 1);
    sectionLines[0] = sectionLines[0].slice(match[0].length);
    const source = sectionLines.join('\n');
    let paren = 0;
    let bracket = 0;
    let brace = 0;
    let clauseStart = 0;
    let index = 0;
    const clauses = [];
    for (let offset = 0; offset < source.length; offset += 1) {
      const char = source[offset];
      if (char === '(') paren += 1;
      else if (char === ')') paren -= 1;
      else if (char === '[') bracket += 1;
      else if (char === ']') bracket -= 1;
      else if (char === '{') brace += 1;
      else if (char === '}') brace -= 1;
      else if (char === ',' && paren === 0 && bracket === 0 && brace === 0) {
        const before = source.slice(0, clauseStart);
        const body = source.slice(clauseStart, offset);
        const leadingLines = (before.match(/\n/g) || []).length;
        const bodyLines = body.split('\n');
        let first = bodyLines.findIndex((line) => /\S/.test(line));
        if (first < 0) first = 0;
        let last = bodyLines.length - 1;
        while (last > first && !/\S/.test(bodyLines[last])) last -= 1;
        clauses.push({
          kind: match[1],
          index,
          start: start + leadingLines + first,
          end: start + leadingLines + last,
        });
        index += 1;
        clauseStart = offset + 1;
      }
    }
    return (
      clauses.find(
        (clause) => clause.start <= cursorLine && cursorLine <= clause.end
      ) || null
    );
  }
  return null;
}

function obligationForContractClause(manifest, name, range, clause, sourceFile) {
  if (!clause) return null;
  const representative = obligationRecordForFunction(
    manifest,
    name,
    range,
    sourceFile
  );
  if (!representative) return null;
  const records = manifest.obligations.filter(
    (record) =>
      record.namespace === representative.namespace && record.kind === clause.kind
  );
  return records[clause.index] || null;
}

function sameSourceFile(left, right) {
  const a = path.normalize(left).replaceAll('\\', '/');
  const b = path.normalize(right).replaceAll('\\', '/');
  return a === b || a.endsWith(`/${b}`) || b.endsWith(`/${a}`);
}

/**
 * Gutter marks per source file: one entry per emitted function, verified
 * unless one of its obligations failed. Reads each source to find the
 * function ranges, so it needs `fs`; it is otherwise pure.
 */
function collectFunctionMarks(root, manifest, failedObligations, marksByFile) {
  if (!manifest || !Array.isArray(manifest.obligations)) return;
  const absolute = (file) =>
    path.isAbsolute(file) ? file : path.join(root, file);
  // Each obligation is attributed to the source its span names, falling back
  // to the manifest's entry point. One manifest can cover several sources
  // (the lowering pulls in a dependency cone), so marks must not all land on
  // the entry point's file.
  const perFunction = new Map();
  for (const record of manifest.obligations) {
    const span = record.rust_span || {};
    const file = absolute(span.file || manifest.rust_file || '');
    if (!file) continue;
    const key = `${file}\u0000${record.namespace}`;
    if (!perFunction.has(key)) {
      perFunction.set(key, { file, failed: false, min: Infinity });
    }
    const entry = perFunction.get(key);
    if (failedObligations.has(record.name)) entry.failed = true;
    if (span.start_line && span.start_line < entry.min) {
      entry.min = span.start_line;
    }
  }
  const rangesByFile = new Map();
  const rangesFor = (file) => {
    if (rangesByFile.has(file)) return rangesByFile.get(file);
    let ranges = null;
    try {
      ranges = parseFunctionRanges(fs.readFileSync(file, 'utf8'));
    } catch {
      ranges = null;
    }
    rangesByFile.set(file, ranges);
    return ranges;
  };
  for (const [, entry] of perFunction) {
    if (entry.min === Infinity) continue;
    const ranges = rangesFor(entry.file);
    if (!ranges) continue;
    const zeroBasedLine = entry.min - 1;
    let range = null;
    for (const candidate of ranges) {
      if (candidate.start <= zeroBasedLine && zeroBasedLine <= candidate.end) {
        range = candidate;
      }
    }
    // Macro-generated items (`pub proof fn $name` inside a `macro_rules!`
    // body) have no `fn <name>` in the source: the obligations' spans point
    // at the macro INVOCATION, which encloses no parsed function range. Mark
    // that line itself — it is where the reader looks for the verdict —
    // rather than dropping the verdict on the floor.
    const mark = range
      ? { line: range.line, start: range.start, end: range.end }
      : { line: zeroBasedLine, start: zeroBasedLine, end: zeroBasedLine };
    if (!marksByFile.has(entry.file)) marksByFile.set(entry.file, []);
    marksByFile.get(entry.file).push({
      verified: !entry.failed,
      stale: false,
      ...mark,
    });
  }
}

/**
 * True when a manifest describes obligations lowered from this Rust file —
 * either because the file is the manifest's own lowering entry point, or
 * because it is one of the sources reached through it. The call-graph-aware
 * lowering pulls in whole dependency cones, so a case study that verifies a
 * vendored crate keeps `generated/` at the study root while the `.rs` files
 * that produced the obligations live deep inside the (gitignored) checkout.
 */
function manifestCoversRustFile(manifest, documentPath) {
  if (!manifest) return false;
  if (manifest.rust_file && sameSourceFile(documentPath, manifest.rust_file)) {
    return true;
  }
  return (manifest.obligations || []).some(
    (record) =>
      record.rust_span &&
      record.rust_span.file &&
      sameSourceFile(documentPath, record.rust_span.file)
  );
}

/**
 * True when a file's Lean artifacts are owned by a directory other than its
 * own — the vendored-crate layout, where a study's driver (its `run.sh`, with
 * the crate root and any `--verus-extern` it needs) lowers a cone of sources
 * that live elsewhere and writes every manifest under the study's
 * `generated/`. Such a file has obligations to navigate to, but it is a crate
 * member rather than a self-contained program: pointing the shared driver at
 * the file itself would fail on the crate structure, and that failure is not
 * the user's to see.
 */
function manifestOwnedElsewhere(exampleDir, documentPath) {
  if (!exampleDir) return false;
  return path.resolve(exampleDir) !== path.resolve(path.dirname(documentPath));
}

/**
 * Directories that can own the manifest for a Rust source, nearest first:
 * the file's own directory (the one-example-one-directory layout), then each
 * ancestor up to and including the workspace root. Anything outside the root
 * is not ours to search.
 */
function manifestSearchDirs(root, documentPath) {
  const normalizedRoot = path.resolve(root);
  const dirs = [];
  let current = path.resolve(path.dirname(documentPath));
  while (true) {
    dirs.push(current);
    if (current === normalizedRoot) break;
    const parent = path.dirname(current);
    if (parent === current) break; // filesystem root: the file is outside `root`
    current = parent;
  }
  return dirs;
}

/**
 * Find the emitted namespace of a spec function from its source marker.
 * Spec functions have no obligation records, so this is the corresponding
 * impl-aware lookup for the shared Specs module.
 */
function specNamespaceForFunction(specsText, rustFile, name, range) {
  const marker = /^-- vrml:spec (\S+) (.+):(\d+):(\d+)$/gm;
  const suffix = `.${name}`;
  let match;
  while ((match = marker.exec(specsText)) !== null) {
    const namespace = match[1];
    const line = Number(match[3]) - 1;
    if (
      (namespace === name || namespace.endsWith(suffix)) &&
      sameSourceFile(rustFile, match[2]) &&
      (!range || (range.start <= line && line <= range.end))
    ) {
      return namespace;
    }
  }
  return null;
}

/**
 * Find the `use` target in the active source that imports a dependency file.
 * This is the honest source-local anchor when lowering rejects a declaration
 * inside that dependency before any per-function obligations are emitted.
 *
 * Exact imports, ancestor globs, item imports, and grouped imports are
 * recognized. The returned range is zero-based and end-exclusive, matching
 * VS Code's Range convention. A null result tells the caller to retain its
 * conservative module-level fallback.
 */
function dependencyImportRange(text, dependencyFile) {
  const dependency = pathComponents(dependencyFile);
  const declaration = /^([ \t]*(?:pub(?:\s*\([^)]*\))?\s+)?use\s+)([^;]+);/gm;
  let best = null;
  let match;
  while ((match = declaration.exec(text)) !== null) {
    const target = match[2];
    const compact = target.replace(/\s/g, '');
    const rootMatch = compact.match(/^([A-Za-z_][A-Za-z0-9_]*)/);
    if (!rootMatch) continue;
    const dependencyRoot = dependency.lastIndexOf(rootMatch[1]);
    if (dependencyRoot < 0) continue;
    const modulePath = dependency.slice(dependencyRoot);

    let imported = false;
    let specificity = 0;
    const brace = compact.indexOf('{');
    if (brace >= 0) {
      const prefix = compact
        .slice(0, brace)
        .replace(/::$/, '')
        .split('::')
        .filter(Boolean);
      if (startsWithComponents(modulePath, prefix)) {
        const remainder = modulePath.slice(prefix.length);
        const group = compact.slice(brace + 1, compact.lastIndexOf('}'));
        imported =
          remainder.length === 0 ||
          group === '*' ||
          group.split(/[,:{}]/).includes(remainder[0]);
        specificity = prefix.length + (imported && remainder.length > 0 ? 1 : 0);
      }
    } else {
      const withoutAlias = target.split(/\s+as\s+/)[0].replace(/\s/g, '');
      const targetPath = withoutAlias.split('::').filter(Boolean);
      if (targetPath[targetPath.length - 1] === '*') {
        targetPath.pop();
        imported = startsWithComponents(modulePath, targetPath);
      } else {
        imported =
          startsWithComponents(targetPath, modulePath) ||
          startsWithComponents(modulePath, targetPath);
      }
      specificity = Math.min(targetPath.length, modulePath.length);
    }
    if (!imported || (best && best.specificity >= specificity)) continue;

    const leading = target.length - target.trimStart().length;
    const startOffset = match.index + match[1].length + leading;
    const endOffset = startOffset + target.trim().length;
    best = {
      specificity,
      start: positionAt(text, startOffset),
      end: positionAt(text, endOffset),
    };
  }
  if (!best) return null;
  return { start: best.start, end: best.end };
}

module.exports = {
  collectFunctionMarks,
  contractClauseAtLine,
  dependencyImportRange,
  manifestOwnedElsewhere,
  manifestCoversRustFile,
  manifestSearchDirs,
  obligationForContractClause,
  obligationRecordForFunction,
  parseFunctionRanges,
  refusalFunctionRanges,
  sameSourceFile,
  specNamespaceForFunction,
};
