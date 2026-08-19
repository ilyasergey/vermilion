import Lake

open Lake DSL

-- Proof twins are generated artifacts, so a registered `proofs/` source
-- directory gains a new first-level module root whenever a Rust file/stem is
-- added. Discover those roots uniformly instead of maintaining another list
-- in every library declaration. Each name remains an exact Lake prefix;
-- unlike an anonymous catch-all glob, this cannot steal imports owned by a
-- different workspace library.
def discoverProofRoots
  (directory : System.FilePath) : IO (Array String × Array String) := do
  if !(← directory.pathExists) then
    return (#[], #[])
  let mut directories := #[]
  let mut files := #[]
  for entry in ← directory.readDir do
    if ← entry.path.isDir then
      directories := directories.push entry.fileName
    else if entry.path.extension == some "lean" then
      files := files.push <| entry.path.fileStem.getD entry.fileName
  return (directories.qsort (· < ·), files.qsort (· < ·))

def proofGlobs (roots : Array String × Array String) : Array Glob :=
  roots.1.map (fun root => .submodules (.mkSimple root)) ++
    roots.2.map fun root => .one (.mkSimple root)

require veil from git
  "https://github.com/verse-lab/veil.git" @
  "8872eb7b462a58145a20087eead2b0bfeecad351"

package vermilion where
  preferReleaseBuild := true
  -- lean-smt invokes cvc5 through native FFI while elaborating proofs. Lake's
  -- batch builder loads this plugin through per-module setup JSON; the language
  -- server needs it from process startup so `smt` does not crash the server.
  moreGlobalServerArgs := #[s!"--plugin=.lake/packages/cvc5/.lake/build/lib/{nameToSharedLib "cvc5_cvc5"}"]

@[default_target]
lean_lib Vermilion where
  srcDir := "lean"

-- The Lean half of the pipeline (docs/ir.md): parse the textual IR from
-- vermilion_direct, generate VCs, emit generated/ modules and manifests.
-- Mathlib-free by design, so this builds long before the proof libraries.
lean_exe vrml_gen where
  srcDir := "lean"
  root := `VrmlGen

-- Generated modules are written beside each example/case study, but every
-- unit consistently imports `generated.<stem>.Specs`. The editor shim builds
-- a disposable, duplicate-checked symlink overlay of the generated stem each
-- file worker requests, so Lake has one unambiguous owner for that namespace
-- instead of incorrectly resolving every import through tests/differential.
-- Generated obligations remain checker-owned, not a build-all library.
lean_lib DifferentialGenerated where
  srcDir := ".vermilion/lake-shim/generated-src"
  globs := #[.submodules `generated]

-- Proof twins under tests/ are transient differential artifacts rather than
-- a build-all library (some deliberately retain a failing obligation). It uses
-- the same automatic exact-root discovery as every ordinary proof library.
lean_lib DifferentialProofs where
  srcDir := "tests/differential/proofs"
  globs := proofGlobs (run_io discoverProofRoots "tests/differential/proofs")

-- Example libraries build the `proofs/` twins: user-editable modules that
-- vrml_sync reconciles with the regenerated `generated/` modules (identical
-- when automation proves everything and nothing was edited; `sorry` where
-- automation failed). `generated/` itself is judged by vrml_check, not Lake.
-- Not default targets: build through the example scripts, which regenerate
-- and sync first. See docs/TUTORIAL.md.
--
-- Each lib roots its modules at its `proofs/` directory. `proofGlobs`
-- discovers every first-level stem: per-function twins are
-- `<stem>.<function>` plus shared `<stem>.Specs`; a per-file twin or standalone
-- side file is plain `<stem>`. Module names must remain unique workspace-wide
-- so Lake can resolve `import <stem>.Specs` to one library; a single shared
-- `proofs` root would make every library claim every twin module.
lean_lib M1Pipeline where
  srcDir := "examples/m1-pipeline/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m1-pipeline/proofs")

lean_lib M1Widening where
  srcDir := "examples/m1-widening/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m1-widening/proofs")

lean_lib M2Branches where
  srcDir := "examples/m2-branches/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m2-branches/proofs")

lean_lib M2Loops where
  srcDir := "examples/m2-loops/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m2-loops/proofs")

lean_lib M2Recursion where
  srcDir := "examples/m2-recursion/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m2-recursion/proofs")

lean_lib M2Collections where
  srcDir := "examples/m2-collections/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m2-collections/proofs")

-- Case studies (real Verus benchmarks); see case-studies/README.md.
lean_lib CaseBinarySearch where
  srcDir := "case-studies/binary-search/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/binary-search/proofs")

lean_lib CaseVecUninterp where
  srcDir := "case-studies/vec-uninterp/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/vec-uninterp/proofs")

lean_lib M2Uninterp where
  srcDir := "examples/m2-uninterp/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m2-uninterp/proofs")

lean_lib M3VecSet where
  srcDir := "examples/m3-vec-set/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-vec-set/proofs")

lean_lib M2ForLoop where
  srcDir := "examples/m2-forloop/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m2-forloop/proofs")

lean_lib CaseVecReverse where
  srcDir := "case-studies/vec-reverse/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/vec-reverse/proofs")

lean_lib M3VecPop where
  srcDir := "examples/m3-vec-pop/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-vec-pop/proofs")

lean_lib CaseVecPopUninterp where
  srcDir := "case-studies/vec-pop-uninterp/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/vec-pop-uninterp/proofs")

lean_lib M2SeqAdd where
  srcDir := "examples/m2-seqadd/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m2-seqadd/proofs")

lean_lib CaseMergeSort where
  srcDir := "case-studies/merge-sort/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/merge-sort/proofs")

lean_lib CasePrimes where
  srcDir := "case-studies/primes/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/primes/proofs")

lean_lib CaseSorting where
  srcDir := "case-studies/sorting/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/sorting/proofs")

-- New Percolator stems are picked up by the same automatic root discovery.
lean_lib CasePercolator where
  srcDir := "case-studies/percolator/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/percolator/proofs")

lean_lib CaseDalekLite where
  srcDir := "case-studies/dalek-lite/probes/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/dalek-lite/probes/proofs")

lean_lib CaseImo1988Six where
  srcDir := "case-studies/imo-1988-6/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/imo-1988-6/proofs")

lean_lib CasePowerOfTwo where
  srcDir := "case-studies/power-of-2/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/power-of-2/proofs")

lean_lib CaseAeneasProbes where
  srcDir := "case-studies/aeneas/probes/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/aeneas/probes/proofs")

lean_lib CaseAeneasSha3 where
  srcDir := "case-studies/aeneas/sha3/verification/src/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/aeneas/sha3/verification/src/proofs")

lean_lib CaseCurve25519 where
  srcDir := "case-studies/aeneas/curve25519/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/aeneas/curve25519/proofs")

lean_lib M1Diagnostics where
  srcDir := "examples/m1-diagnostics/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m1-diagnostics/proofs")

lean_lib M2Break where
  srcDir := "examples/m2-break/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m2-break/proofs")

lean_lib M2Specfns where
  srcDir := "examples/m2-specfns/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m2-specfns/proofs")

lean_lib M3Arrays where
  srcDir := "examples/m3-arrays/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-arrays/proofs")

lean_lib M3Broadcast where
  srcDir := "examples/m3-broadcast/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-broadcast/proofs")

lean_lib M3Closures where
  srcDir := "examples/m3-closures/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-closures/proofs")

lean_lib M3ConstGenerics where
  srcDir := "examples/m3-const-generics/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-const-generics/proofs")

lean_lib M3Datatypes where
  srcDir := "examples/m3-datatypes/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-datatypes/proofs")

lean_lib M3ExecClosures where
  srcDir := "examples/m3-exec-closures/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-exec-closures/proofs")

lean_lib M3Generics where
  srcDir := "examples/m3-generics/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-generics/proofs")

lean_lib M3MutFields where
  srcDir := "examples/m3-mut-fields/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-mut-fields/proofs")

lean_lib M3Mutref where
  srcDir := "examples/m3-mutref/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-mutref/proofs")

lean_lib M3MutualRec where
  srcDir := "examples/m3-mutual-rec/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-mutual-rec/proofs")

lean_lib M3Namespaces where
  srcDir := "examples/m3-namespaces/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-namespaces/proofs")

lean_lib M3Quantifiers where
  srcDir := "examples/m3-quantifiers/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-quantifiers/proofs")

lean_lib M3Slices where
  srcDir := "examples/m3-slices/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-slices/proofs")

lean_lib M3TraitBounds where
  srcDir := "examples/m3-trait-bounds/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-trait-bounds/proofs")

lean_lib M3Traits where
  srcDir := "examples/m3-traits/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-traits/proofs")

lean_lib M3UserView where
  srcDir := "examples/m3-user-view/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-user-view/proofs")

lean_lib M3Vec where
  srcDir := "examples/m3-vec/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-vec/proofs")

lean_lib M3VecMut where
  srcDir := "examples/m3-vec-mut/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m3-vec-mut/proofs")

lean_lib M4BeyondVerus where
  srcDir := "examples/m4-beyond-verus/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m4-beyond-verus/proofs")

lean_lib M4Bitvec where
  srcDir := "examples/m4-bitvec/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m4-bitvec/proofs")

lean_lib M4Compute where
  srcDir := "examples/m4-compute/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m4-compute/proofs")

lean_lib M4Nonlinear where
  srcDir := "examples/m4-nonlinear/proofs"
  globs := proofGlobs (run_io discoverProofRoots "examples/m4-nonlinear/proofs")

lean_lib TestLoweringIsolation where
  srcDir := "tests/lowering_isolation/proofs"
  globs := proofGlobs (run_io discoverProofRoots "tests/lowering_isolation/proofs")

lean_lib CaseDalekLiteLayerA where
  srcDir := "case-studies/dalek-lite/proofs"
  globs := proofGlobs (run_io discoverProofRoots "case-studies/dalek-lite/proofs")
