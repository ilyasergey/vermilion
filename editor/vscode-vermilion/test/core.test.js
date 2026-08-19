'use strict';

const assert = require('node:assert/strict');
const test = require('node:test');
const fs = require('node:fs');
const os = require('node:os');
const nodePath = require('node:path');
const {
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
  specNamespaceForFunction,
} = require('../core');

const source = `verus!{
fn main() {
    unsupported_dependency();
}

fn insert_if_absent() {
}

uninterp spec fn imported_view<T>(x: T) -> int;
}`;

test('parses exec and bodyless Verus function ranges', () => {
  assert.deepEqual(parseFunctionRanges(source), [
    { line: 1, start: 1, end: 3 },
    { line: 5, start: 5, end: 6 },
    { line: 8, start: 8, end: 8 },
  ]);
});

test('an array-typed parameter does not end the function range', () => {
  // The `;` in `&[u8; 32]` is part of the type, not a bodyless-declaration
  // terminator; the range must reach the closing brace (dalek-lite DL4,
  // ghost_high_byte/c184: broken zigzag + missing checkmark otherwise).
  const arraySource = `verus!{
pub fn high_bit_clear(bytes: &[u8; 32]) -> (result: bool)
    requires
        bytes[31] <= 127,
{
    true
}

uninterp spec fn imported_view(x: [u8; 32]) -> int;
}`;
  assert.deepEqual(parseFunctionRanges(arraySource), [
    { line: 1, start: 1, end: 6 },
    { line: 8, start: 8, end: 8 },
  ]);
});

test('a source-local refusal marks only its enclosing function', () => {
  assert.deepEqual(refusalFunctionRanges(source, [2]), [
    { line: 1, start: 1, end: 3 },
  ]);
});

test('a dependency-level refusal marks every unverified function', () => {
  assert.deepEqual(refusalFunctionRanges(source, null), [
    { line: 1, start: 1, end: 3 },
    { line: 5, start: 5, end: 6 },
    { line: 8, start: 8, end: 8 },
  ]);
});

function textAtRange(text, range) {
  const lines = text.split('\n');
  if (range.start.line === range.end.line) {
    return lines[range.start.line].slice(
      range.start.character,
      range.end.character
    );
  }
  return null;
}

test('a dependency refusal highlights its exact import target', () => {
  const entryApi = `use vstd::prelude::*;
use vstd::std_specs::hash::*;

verus! { fn main() {} }`;
  const range = dependencyImportRange(
    entryApi,
    '/checkout/source/vstd/std_specs/hash.rs'
  );
  assert.equal(textAtRange(entryApi, range), 'vstd::std_specs::hash::*');
});

test('a grouped dependency import is recognized', () => {
  const grouped = `use vstd::std_specs::{
    vec::*,
    hash::*,
};`;
  const range = dependencyImportRange(
    grouped,
    '/checkout/source/vstd/std_specs/hash.rs'
  );
  assert.ok(range);
  assert.equal(range.start.line, 0);
  assert.equal(range.end.line, 3);
});

test('an unrelated import does not become a dependency highlight', () => {
  assert.equal(
    dependencyImportRange(
      'use vstd::prelude::*;',
      '/checkout/source/vstd/std_specs/hash.rs'
    ),
    null
  );
});

test('c150 impl methods resolve to their per-function Lean namespaces', () => {
  const source = `verus! {
impl core::ops::IndexMut<(usize, usize)> for Grid {
    fn index_mut(&mut self, (x, y): (usize, usize)) -> (out: &mut u64)
        ensures *out == 0,
    {
        &mut self.0[2 * y + x]
    }
}
}`;
  const range = parseFunctionRanges(source)[0];
  const manifest = {
    mode: 'per-function',
    obligations: [
      {
        namespace: 'c150_custom_tuple_index_mut_ok.impl__2.index_mut',
        lean_file:
          'tests/differential/generated/c150_custom_tuple_index_mut_ok/impl__2_index_mut.lean',
        rust_span: { start_line: 4, end_line: 4 },
      },
    ],
  };
  assert.equal(
    obligationRecordForFunction(manifest, 'index_mut', range).namespace,
    'c150_custom_tuple_index_mut_ok.impl__2.index_mut'
  );
  assert.equal(
    `-- vrml:begin ${
      obligationRecordForFunction(manifest, 'index_mut', range).namespace
    }.`,
    '-- vrml:begin c150_custom_tuple_index_mut_ok.impl__2.index_mut.'
  );
});

test('c150 bodyless spec method resolves through its Specs marker', () => {
  const specs = `-- vrml:spec c150_custom_tuple_index_mut_ok.impl__1.index_req tests/differential/c150_custom_tuple_index_mut_ok.rs:19:15
def c150_custom_tuple_index_mut_ok.impl__1.index_req := True`;
  assert.equal(
    specNamespaceForFunction(
      specs,
      '/checkout/tests/differential/c150_custom_tuple_index_mut_ok.rs',
      'index_req',
      { start: 17, end: 21 }
    ),
    'c150_custom_tuple_index_mut_ok.impl__1.index_req'
  );
});

test('c150 multiline IndexMut contract lines select their ensures VCs', () => {
  const source = `verus! {
impl core::ops::IndexMut<(usize, usize)> for Grid {
    fn index_mut(&mut self, (x, y): (usize, usize)) -> (out: &mut u64)
        ensures
            *out == old(self).0@[(2 * y + x) as int],
            final(self).0@ == old(self).0@.update(
                (2 * y + x) as int,
                *final(out),
            ),
    {
        &mut self.0[2 * y + x]
    }
}
}`;
  const range = parseFunctionRanges(source)[0];
  const manifest = {
    obligations: [
      {
        namespace: 'c150_custom_tuple_index_mut_ok.impl__2.index_mut',
        name: 'c150_custom_tuple_index_mut_ok.impl__2.index_mut.assert_0',
        kind: 'assert',
        rust_span: { start_line: 11, end_line: 11 },
      },
      {
        namespace: 'c150_custom_tuple_index_mut_ok.impl__2.index_mut',
        name: 'c150_custom_tuple_index_mut_ok.impl__2.index_mut.ensures_3_0',
        kind: 'ensures',
        rust_span: { start_line: 3, end_line: 3 },
      },
      {
        namespace: 'c150_custom_tuple_index_mut_ok.impl__2.index_mut',
        name: 'c150_custom_tuple_index_mut_ok.impl__2.index_mut.ensures_3_1',
        kind: 'ensures',
        rust_span: { start_line: 3, end_line: 3 },
      },
    ],
  };
  const first = contractClauseAtLine(source, range, 4);
  const second = contractClauseAtLine(source, range, 5);
  assert.deepEqual(first, { kind: 'ensures', index: 0, start: 4, end: 4 });
  assert.deepEqual(second, { kind: 'ensures', index: 1, start: 5, end: 8 });
  assert.equal(
    obligationForContractClause(manifest, 'index_mut', range, second).name,
    'c150_custom_tuple_index_mut_ok.impl__2.index_mut.ensures_3_1'
  );
});

// A case study that verifies a vendored crate keeps `generated/` at the study
// root while the sources that produced the obligations live inside the
// (gitignored) checkout — dalek-lite's bit_lemmas.rs is the reference case.
const vendoredManifest = {
  mode: 'per-function',
  rust_file: 'case-studies/dalek-lite/layer_a.rs',
  obligations: [
    {
      namespace: 'layer_a.lemmas.common_lemmas.bit_lemmas.lemma_or_bit',
      name: 'layer_a.lemmas.common_lemmas.bit_lemmas.lemma_or_bit.assert_4',
      rust_span: {
        file: 'case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs',
        start_line: 120,
        end_line: 150,
      },
    },
  ],
};

test('a manifest covers the vendored sources its obligations came from', () => {
  assert.equal(
    manifestCoversRustFile(
      vendoredManifest,
      '/repo/case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs'
    ),
    true
  );
  assert.equal(
    manifestCoversRustFile(
      vendoredManifest,
      '/repo/case-studies/dalek-lite/upstream/curve25519-dalek/src/field.rs'
    ),
    false
  );
  assert.equal(manifestCoversRustFile(null, '/repo/anything.rs'), false);
});

test('a vendored source is verified by its study, not as a file of its own', () => {
  // dalek-lite's driver lowers layer_a.rs with the crate root and a
  // --verus-extern; every module's manifest lands under the study's
  // generated/. Pointing the shared driver at one of those crate members
  // would fail on the crate structure, so verify-on-save must skip it.
  const study = '/repo/case-studies/dalek-lite';
  assert.equal(
    manifestOwnedElsewhere(
      study,
      '/repo/case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs'
    ),
    true
  );
  // The study's own entry point stays runnable: artifacts sit beside it.
  assert.equal(
    manifestOwnedElsewhere(study, '/repo/case-studies/dalek-lite/layer_a.rs'),
    false
  );
  // So does every co-located example, and an unresolved file is not skipped.
  assert.equal(
    manifestOwnedElsewhere(
      '/repo/examples/m1-pipeline',
      '/repo/examples/m1-pipeline/simple.rs'
    ),
    false
  );
  assert.equal(manifestOwnedElsewhere(null, '/repo/examples/x/y.rs'), false);
});

test('manifest search walks from the file up to the workspace root', () => {
  assert.deepEqual(
    manifestSearchDirs('/repo', '/repo/a/b/c/source.rs'),
    ['/repo/a/b/c', '/repo/a/b', '/repo/a', '/repo']
  );
  // The co-located example layout resolves on the first hop.
  assert.deepEqual(manifestSearchDirs('/repo', '/repo/examples/m1-pipeline/simple.rs'), [
    '/repo/examples/m1-pipeline',
    '/repo/examples',
    '/repo',
  ]);
  // A file outside the root terminates instead of looping.
  assert.equal(manifestSearchDirs('/repo', '/elsewhere/x.rs').at(-1), '/');
});

test('obligation lookup can be pinned to the open source file', () => {
  const sibling = {
    mode: 'per-function',
    rust_file: 'case-studies/dalek-lite/layer_a.rs',
    obligations: [
      {
        namespace: 'layer_a.other.lemma_or_bit',
        name: 'layer_a.other.lemma_or_bit.assert_0',
        rust_span: {
          file: 'case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/other.rs',
          start_line: 120,
          end_line: 150,
        },
      },
      ...vendoredManifest.obligations,
    ],
  };
  const range = { start: 119, end: 149 };
  // Without a file the first namespace match wins; with one, the record from
  // the open file does — same function name, same lines, different source.
  assert.equal(
    obligationRecordForFunction(sibling, 'lemma_or_bit', range).namespace,
    'layer_a.other.lemma_or_bit'
  );
  assert.equal(
    obligationRecordForFunction(
      sibling,
      'lemma_or_bit',
      range,
      '/repo/case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs'
    ).namespace,
    'layer_a.lemmas.common_lemmas.bit_lemmas.lemma_or_bit'
  );
});


test('marks are attributed per source file across a dependency cone', () => {
  const dir = fs.mkdtempSync(nodePath.join(os.tmpdir(), 'vrml-marks-'));
  const a = nodePath.join(dir, 'a.rs');
  const b = nodePath.join(dir, 'b.rs');
  fs.writeFileSync(a, 'verus!{\nfn alpha() {\n    assert(true);\n}\n}\n');
  fs.writeFileSync(b, 'verus!{\nfn beta() {\n    assert(true);\n}\n}\n');
  const manifest = {
    rust_file: a,
    obligations: [
      {
        namespace: 'crate.alpha',
        name: 'crate.alpha.assert_0',
        rust_span: { file: a, start_line: 2, end_line: 2 },
      },
      {
        namespace: 'crate.beta',
        name: 'crate.beta.assert_0',
        rust_span: { file: b, start_line: 2, end_line: 2 },
      },
    ],
  };
  const marks = new Map();
  collectFunctionMarks(dir, manifest, new Set(['crate.beta.assert_0']), marks);
  // Each file gets its own mark, and only the failing one is red — before the
  // per-file attribution both landed on the manifest's entry point.
  assert.deepEqual(
    [...marks.keys()].sort(),
    [a, b].sort()
  );
  assert.equal(marks.get(a)[0].verified, true);
  assert.equal(marks.get(b)[0].verified, false);
  fs.rmSync(dir, { recursive: true, force: true });
});

test('a macro-generated obligation marks its invocation line', () => {
  // `macro_rules!` lemma factories have no `fn <name>` in the source: the
  // obligation's span points at the invocation, which encloses no function
  // range. dalek-lite's shift_lemmas.rs is 68 such lemmas.
  const dir = fs.mkdtempSync(nodePath.join(os.tmpdir(), 'vrml-macro-'));
  const file = nodePath.join(dir, 'shift.rs');
  fs.writeFileSync(
    file,
    'macro_rules! lemma_factory {\n    ($name:ident) => {\n        verus!{ pub proof fn $name() {} }\n    };\n}\nlemma_factory!(lemma_u8_shift);\n'
  );
  const manifest = {
    rust_file: file,
    obligations: [
      {
        namespace: 'crate.lemma_u8_shift',
        name: 'crate.lemma_u8_shift.ensures_0',
        rust_span: { file, start_line: 6, end_line: 6 },
      },
    ],
  };
  const marks = new Map();
  collectFunctionMarks(dir, manifest, new Set(), marks);
  assert.equal(marks.get(file).length, 1);
  assert.equal(marks.get(file)[0].line, 5); // zero-based invocation line
  assert.equal(marks.get(file)[0].verified, true);
  fs.rmSync(dir, { recursive: true, force: true });
});

test('extension.js imports every core helper it calls', () => {
  // `node --check` accepts a call to an undefined identifier — a core export
  // used in extension.js without being in its require block only fails at
  // runtime, in whichever command happens to reach it (a ⌘⇧J regression
  // shipped exactly this way: `sameSourceFile is not defined`).
  const source = fs.readFileSync(
    nodePath.join(__dirname, '..', 'extension.js'),
    'utf8'
  );
  const importBlock = source.match(
    /const \{[\s\S]*?\} = require\('\.\/core'\)/
  )[0];
  const body = source.replace(importBlock, '');
  const missing = Object.keys(require('../core')).filter(
    (name) =>
      new RegExp(`\\b${name}\\s*\\(`).test(body) && !importBlock.includes(name)
  );
  assert.deepEqual(missing, []);
});
