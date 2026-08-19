'use strict';

const assert = require('node:assert/strict');
const test = require('node:test');
const {
  contractClauseAtLine,
  dependencyImportRange,
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
