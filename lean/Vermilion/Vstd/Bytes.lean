import Vermilion.Prelude

/-! # vstd native little-endian byte conversion mirror

These definitions mirror `vstd::bytes::{spec_u64_to_le_bytes,
spec_u64_from_le_bytes}`. The Verus fork connects the native Rust
`u64::{to_le_bytes,from_le_bytes}` methods to those specifications; the
Vermilion registry resolves the specification calls to these ordinary Lean
definitions.
-/

namespace Vermilion.Vstd.Bytes

/-- Byte `i` of a 64-bit lane in little-endian order. -/
def u64ByteAt (x shift : Int) : Int :=
  Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 x shift) 255

/-- Exact eight-byte little-endian expansion of a `u64`. -/
def u64ToLeBytes (x : Int) : Vermilion.Seq Int := [
  u64ByteAt x 0,
  u64ByteAt x 8,
  u64ByteAt x 16,
  u64ByteAt x 24,
  u64ByteAt x 32,
  u64ByteAt x 40,
  u64ByteAt x 48,
  u64ByteAt x 56
]

/-- Exact `u64` reconstruction from eight little-endian bytes. Off-length
inputs retain `Seq.index`'s totalized reading, but executable callers always
carry the native array-length fact `len = 8`. -/
def u64FromLeBytes (s : Vermilion.Seq Int) : Int :=
  let b0 := Vermilion.Seq.index s 0
  let b1 := Vermilion.Bits.shl 64 (Vermilion.Seq.index s 1) 8
  let b2 := Vermilion.Bits.shl 64 (Vermilion.Seq.index s 2) 16
  let b3 := Vermilion.Bits.shl 64 (Vermilion.Seq.index s 3) 24
  let b4 := Vermilion.Bits.shl 64 (Vermilion.Seq.index s 4) 32
  let b5 := Vermilion.Bits.shl 64 (Vermilion.Seq.index s 5) 40
  let b6 := Vermilion.Bits.shl 64 (Vermilion.Seq.index s 6) 48
  let b7 := Vermilion.Bits.shl 64 (Vermilion.Seq.index s 7) 56
  Vermilion.Bits.bor 64
    (Vermilion.Bits.bor 64
      (Vermilion.Bits.bor 64
        (Vermilion.Bits.bor 64
          (Vermilion.Bits.bor 64
            (Vermilion.Bits.bor 64
              (Vermilion.Bits.bor 64 b0 b1) b2) b3) b4) b5) b6) b7

@[simp] theorem u64ToLeBytes_len (x : Int) :
    Vermilion.Seq.len (u64ToLeBytes x) = 8 := by
  rfl

end Vermilion.Vstd.Bytes
