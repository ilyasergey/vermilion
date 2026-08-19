import Vermilion.Ir.Ast

/-!
# Stable names and fingerprints

Ports of the Rust `naming` helpers so obligation names and statement hashes
stay identical across the Rust→Lean generator move. The FNV-1a 64 hash is the
fingerprint primitive of the incremental pipeline; its exact bytes matter.
-/

namespace Vermilion.Ir

-- `leanSegment` and `FunctionId.qualified` moved to Ast.lean (types
-- render datatype names); this module keeps the fingerprints.

/-- FNV-1a 64 over UTF-8 bytes, rendered as 16 lowercase hex digits. -/
def fnv1a (text : String) : String :=
  let hash := text.toUTF8.foldl (init := (0xcbf29ce484222325 : UInt64)) fun h b =>
    (h ^^^ (UInt64.ofNat b.toNat)) * 0x100000001b3
  let digits := "0123456789abcdef".toList.toArray
  let rec hex (n : Nat) (h : UInt64) (acc : List Char) : List Char :=
    match n with
    | 0 => acc
    | k + 1 => hex k (h >>> 4) (digits[(h &&& 0xf).toNat]! :: acc)
  String.ofList (hex 16 hash [])

end Vermilion.Ir
