'use strict';

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
function obligationRecordForFunction(manifest, name, range) {
  if (!manifest || !Array.isArray(manifest.obligations)) return null;
  const suffix = `.${name}`;
  const candidates = manifest.obligations.filter(
    (record) =>
      typeof record.namespace === 'string' &&
      (record.namespace === name || record.namespace.endsWith(suffix))
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

function obligationForContractClause(manifest, name, range, clause) {
  if (!clause) return null;
  const representative = obligationRecordForFunction(manifest, name, range);
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
  contractClauseAtLine,
  dependencyImportRange,
  obligationForContractClause,
  obligationRecordForFunction,
  parseFunctionRanges,
  refusalFunctionRanges,
  specNamespaceForFunction,
};
