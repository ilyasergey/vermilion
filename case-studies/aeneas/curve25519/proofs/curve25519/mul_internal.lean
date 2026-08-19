import Vermilion.Obligations
import curve25519.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace curve25519.mul_internal

-- vrml:begin curve25519.mul_internal.assert_4 1fdabfb3dfa0bfe4
/--
Generated VC `curve25519.mul_internal.assert_4`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:70:5-70:9`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `4`
- Statement hash: `1fdabfb3dfa0bfe4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 70
  startColumn := 5
  endLine := 70
  endColumn := 9
  assertId := "4"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "1fdabfb3dfa0bfe4"
}
@[vrml_obligation] theorem assert_4
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) :
    (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)) := by
  vrml [curve25519.impl__0.index_req]
-- vrml:end curve25519.mul_internal.assert_4

-- vrml:begin curve25519.mul_internal.assert_11 7a1b4e6ea6f316de
/--
Generated VC `curve25519.mul_internal.assert_11`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:71:12-71:41`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `11`
- Statement hash: `7a1b4e6ea6f316de`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 71
  startColumn := 12
  endLine := 71
  endColumn := 41
  assertId := "11"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "7a1b4e6ea6f316de"
}
@[vrml_obligation] theorem assert_11
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) :
    Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_11

-- vrml:begin curve25519.mul_internal.assert_12 c673a6487678f854
/--
Generated VC `curve25519.mul_internal.assert_12`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:71:5-71:9`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `12`
- Statement hash: `c673a6487678f854`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 71
  startColumn := 5
  endLine := 71
  endColumn := 9
  assertId := "12"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "c673a6487678f854"
}
@[vrml_obligation] theorem assert_12
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))) :
    (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))) := by
  vrml [curve25519.impl__0.index_req]
-- vrml:end curve25519.mul_internal.assert_12

-- vrml:begin curve25519.mul_internal.assert_19 4b2711e5263277f9
/--
Generated VC `curve25519.mul_internal.assert_19`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:72:12-72:41`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `19`
- Statement hash: `4b2711e5263277f9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 72
  startColumn := 12
  endLine := 72
  endColumn := 41
  assertId := "19"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "4b2711e5263277f9"
}
@[vrml_obligation] theorem assert_19
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) :
    Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_19

-- vrml:begin curve25519.mul_internal.assert_23 1453a7e2d1b30274
/--
Generated VC `curve25519.mul_internal.assert_23`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:72:12-72:57`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `23`
- Statement hash: `1453a7e2d1b30274`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 72
  startColumn := 12
  endLine := 72
  endColumn := 57
  assertId := "23"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "1453a7e2d1b30274"
}
@[vrml_obligation] theorem assert_23
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) :
    Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_23

-- vrml:begin curve25519.mul_internal.assert_24 e13ff3b22e9b82a6
/--
Generated VC `curve25519.mul_internal.assert_24`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:72:5-72:9`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `24`
- Statement hash: `e13ff3b22e9b82a6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 72
  startColumn := 5
  endLine := 72
  endColumn := 9
  assertId := "24"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "e13ff3b22e9b82a6"
}
@[vrml_obligation] theorem assert_24
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))) :
    (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))) := by
  vrml [curve25519.impl__0.index_req]
-- vrml:end curve25519.mul_internal.assert_24

-- vrml:begin curve25519.mul_internal.assert_31 9eb90daaf02d8b0e
/--
Generated VC `curve25519.mul_internal.assert_31`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:73:12-73:41`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `31`
- Statement hash: `9eb90daaf02d8b0e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_31_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 73
  startColumn := 12
  endLine := 73
  endColumn := 41
  assertId := "31"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "9eb90daaf02d8b0e"
}
@[vrml_obligation] theorem assert_31
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) :
    Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_31

-- vrml:begin curve25519.mul_internal.assert_35 9e8976aff8be848d
/--
Generated VC `curve25519.mul_internal.assert_35`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:73:12-73:57`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `35`
- Statement hash: `9e8976aff8be848d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_35_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 73
  startColumn := 12
  endLine := 73
  endColumn := 57
  assertId := "35"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "9e8976aff8be848d"
}
@[vrml_obligation] theorem assert_35
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) :
    Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_35

-- vrml:begin curve25519.mul_internal.assert_39 3c1326f3acd000a2
/--
Generated VC `curve25519.mul_internal.assert_39`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:73:12-73:73`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `39`
- Statement hash: `3c1326f3acd000a2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_39_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 73
  startColumn := 12
  endLine := 73
  endColumn := 73
  assertId := "39"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "3c1326f3acd000a2"
}
@[vrml_obligation] theorem assert_39
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) :
    Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_39

-- vrml:begin curve25519.mul_internal.assert_40 2a2157795b2b23e1
/--
Generated VC `curve25519.mul_internal.assert_40`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:73:5-73:9`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `40`
- Statement hash: `2a2157795b2b23e1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_40_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 73
  startColumn := 5
  endLine := 73
  endColumn := 9
  assertId := "40"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "2a2157795b2b23e1"
}
@[vrml_obligation] theorem assert_40
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))) :
    (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))) := by
  vrml [curve25519.impl__0.index_req]
-- vrml:end curve25519.mul_internal.assert_40

-- vrml:begin curve25519.mul_internal.assert_47 46cf018bb8c54ae5
/--
Generated VC `curve25519.mul_internal.assert_47`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:74:12-74:41`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `47`
- Statement hash: `46cf018bb8c54ae5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_47_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 74
  startColumn := 12
  endLine := 74
  endColumn := 41
  assertId := "47"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "46cf018bb8c54ae5"
}
@[vrml_obligation] theorem assert_47
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) :
    Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_47

-- vrml:begin curve25519.mul_internal.assert_51 b4c5ae56606fb62e
/--
Generated VC `curve25519.mul_internal.assert_51`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:74:12-74:57`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `51`
- Statement hash: `b4c5ae56606fb62e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_51_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 74
  startColumn := 12
  endLine := 74
  endColumn := 57
  assertId := "51"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "b4c5ae56606fb62e"
}
@[vrml_obligation] theorem assert_51
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) :
    Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_51

-- vrml:begin curve25519.mul_internal.assert_55 6c222dc5d3915980
/--
Generated VC `curve25519.mul_internal.assert_55`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:74:12-74:73`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `55`
- Statement hash: `6c222dc5d3915980`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_55_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 74
  startColumn := 12
  endLine := 74
  endColumn := 73
  assertId := "55"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "6c222dc5d3915980"
}
@[vrml_obligation] theorem assert_55
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) :
    Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_55

-- vrml:begin curve25519.mul_internal.assert_59 1884902fd5f65111
/--
Generated VC `curve25519.mul_internal.assert_59`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:74:12-74:89`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `59`
- Statement hash: `1884902fd5f65111`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_59_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 74
  startColumn := 12
  endLine := 74
  endColumn := 89
  assertId := "59"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "1884902fd5f65111"
}
@[vrml_obligation] theorem assert_59
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) :
    Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_59

-- vrml:begin curve25519.mul_internal.assert_60 625345bd6cd943a3
/--
Generated VC `curve25519.mul_internal.assert_60`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:74:5-74:9`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `60`
- Statement hash: `625345bd6cd943a3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_60_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 74
  startColumn := 5
  endLine := 74
  endColumn := 9
  assertId := "60"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "625345bd6cd943a3"
}
@[vrml_obligation] theorem assert_60
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))) :
    (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))) := by
  vrml [curve25519.impl__0.index_req]
-- vrml:end curve25519.mul_internal.assert_60

-- vrml:begin curve25519.mul_internal.assert_67 ede21e15ca5d7f7b
/--
Generated VC `curve25519.mul_internal.assert_67`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:75:12-75:41`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `67`
- Statement hash: `ede21e15ca5d7f7b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_67_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 75
  startColumn := 12
  endLine := 75
  endColumn := 41
  assertId := "67"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "ede21e15ca5d7f7b"
}
@[vrml_obligation] theorem assert_67
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) :
    Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_67

-- vrml:begin curve25519.mul_internal.assert_71 91879238b192f813
/--
Generated VC `curve25519.mul_internal.assert_71`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:75:12-75:57`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `71`
- Statement hash: `91879238b192f813`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_71_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 75
  startColumn := 12
  endLine := 75
  endColumn := 57
  assertId := "71"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "91879238b192f813"
}
@[vrml_obligation] theorem assert_71
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) :
    Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_71

-- vrml:begin curve25519.mul_internal.assert_75 4c34baf0e1d03509
/--
Generated VC `curve25519.mul_internal.assert_75`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:75:12-75:73`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `75`
- Statement hash: `4c34baf0e1d03509`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_75_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 75
  startColumn := 12
  endLine := 75
  endColumn := 73
  assertId := "75"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "4c34baf0e1d03509"
}
@[vrml_obligation] theorem assert_75
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) :
    Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_75

-- vrml:begin curve25519.mul_internal.assert_76 3f3a06a80a455f11
/--
Generated VC `curve25519.mul_internal.assert_76`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:75:5-75:9`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `76`
- Statement hash: `3f3a06a80a455f11`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_76_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 75
  startColumn := 5
  endLine := 75
  endColumn := 9
  assertId := "76"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "3f3a06a80a455f11"
}
@[vrml_obligation] theorem assert_76
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))) :
    (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_76

-- vrml:begin curve25519.mul_internal.assert_83 6cae94f3f34b311a
/--
Generated VC `curve25519.mul_internal.assert_83`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:76:12-76:41`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `83`
- Statement hash: `6cae94f3f34b311a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_83_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 76
  startColumn := 12
  endLine := 76
  endColumn := 41
  assertId := "83"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "6cae94f3f34b311a"
}
@[vrml_obligation] theorem assert_83
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) :
    Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_83

-- vrml:begin curve25519.mul_internal.assert_87 3764d91a7b2e7e9b
/--
Generated VC `curve25519.mul_internal.assert_87`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:76:12-76:57`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `87`
- Statement hash: `3764d91a7b2e7e9b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_87_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 76
  startColumn := 12
  endLine := 76
  endColumn := 57
  assertId := "87"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "3764d91a7b2e7e9b"
}
@[vrml_obligation] theorem assert_87
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) :
    Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_87

-- vrml:begin curve25519.mul_internal.assert_88 f67dc4819a15d0bd
/--
Generated VC `curve25519.mul_internal.assert_88`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:76:5-76:9`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `88`
- Statement hash: `f67dc4819a15d0bd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_88_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 76
  startColumn := 5
  endLine := 76
  endColumn := 9
  assertId := "88"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "f67dc4819a15d0bd"
}
@[vrml_obligation] theorem assert_88
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))) :
    (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_88

-- vrml:begin curve25519.mul_internal.assert_95 9d30ecbf6adcba13
/--
Generated VC `curve25519.mul_internal.assert_95`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:77:12-77:41`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `95`
- Statement hash: `9d30ecbf6adcba13`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_95_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 77
  startColumn := 12
  endLine := 77
  endColumn := 41
  assertId := "95"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "9d30ecbf6adcba13"
}
@[vrml_obligation] theorem assert_95
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) :
    Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_95

-- vrml:begin curve25519.mul_internal.assert_96 507bbde935799bbe
/--
Generated VC `curve25519.mul_internal.assert_96`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:77:5-77:9`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `96`
- Statement hash: `507bbde935799bbe`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_96_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 77
  startColumn := 5
  endLine := 77
  endColumn := 9
  assertId := "96"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "507bbde935799bbe"
}
@[vrml_obligation] theorem assert_96
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))) :
    (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_96

-- vrml:begin curve25519.mul_internal.assert_100 a11ed09fd5f53391
/--
Generated VC `curve25519.mul_internal.assert_100`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:78:5-78:9`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `100`
- Statement hash: `a11ed09fd5f53391`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def assert_100_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 78
  startColumn := 5
  endLine := 78
  endColumn := 9
  assertId := "100"
  functionName := "curve25519.mul_internal"
  kind := "assert"
  statementHash := "a11ed09fd5f53391"
}
@[vrml_obligation] theorem assert_100
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) :
    (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456))) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.assert_100

-- vrml:begin curve25519.mul_internal.ensures_101_0 ad366b070a617538
/--
Generated VC `curve25519.mul_internal.ensures_101_0`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:52:9-52:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `101_0`
- Statement hash: `ad366b070a617538`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def ensures_101_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 52
  startColumn := 9
  endLine := 52
  endColumn := 46
  assertId := "101_0"
  functionName := "curve25519.mul_internal"
  kind := "ensures"
  statementHash := "ad366b070a617538"
}
@[vrml_obligation] theorem ensures_101_0
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assert_100 : (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)))) :
    Vermilion.Seq.index (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)) 8 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) 0 = (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  repeat rw [Vermilion.Seq.index_update_other _ _ _ _ (by omega)]
  rw [Vermilion.Seq.index_update_same _ _ _ (by omega)
    (by simp (disch := omega) only [Vermilion.Seq.len_update,
          Vermilion.Seq.len_fill]
        omega)]
  all_goals omega
-- vrml:end curve25519.mul_internal.ensures_101_0

-- vrml:begin curve25519.mul_internal.ensures_101_1 04e02a5ccb1442ef
/--
Generated VC `curve25519.mul_internal.ensures_101_1`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:53:9-53:78`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `101_1`
- Statement hash: `04e02a5ccb1442ef`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def ensures_101_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 53
  startColumn := 9
  endLine := 53
  endColumn := 78
  assertId := "101_1"
  functionName := "curve25519.mul_internal"
  kind := "ensures"
  statementHash := "04e02a5ccb1442ef"
}
@[vrml_obligation] theorem ensures_101_1
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assert_100 : (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)))) :
    Vermilion.Seq.index (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)) 8 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) 1 = ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.ensures_101_1

-- vrml:begin curve25519.mul_internal.ensures_101_2 6ea755c4815431aa
/--
Generated VC `curve25519.mul_internal.ensures_101_2`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:54:9-55:44`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `101_2`
- Statement hash: `6ea755c4815431aa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def ensures_101_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 54
  startColumn := 9
  endLine := 55
  endColumn := 44
  assertId := "101_2"
  functionName := "curve25519.mul_internal"
  kind := "ensures"
  statementHash := "6ea755c4815431aa"
}
@[vrml_obligation] theorem ensures_101_2
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assert_100 : (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)))) :
    Vermilion.Seq.index (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)) 8 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) 2 = (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.ensures_101_2

-- vrml:begin curve25519.mul_internal.ensures_101_3 24e01da31da90143
/--
Generated VC `curve25519.mul_internal.ensures_101_3`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:56:9-57:76`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `101_3`
- Statement hash: `24e01da31da90143`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def ensures_101_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 56
  startColumn := 9
  endLine := 57
  endColumn := 76
  assertId := "101_3"
  functionName := "curve25519.mul_internal"
  kind := "ensures"
  statementHash := "24e01da31da90143"
}
@[vrml_obligation] theorem ensures_101_3
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assert_100 : (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)))) :
    Vermilion.Seq.index (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)) 8 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) 3 = ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.ensures_101_3

-- vrml:begin curve25519.mul_internal.ensures_101_4 6cfd70a889cdb934
/--
Generated VC `curve25519.mul_internal.ensures_101_4`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:58:9-60:44`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `101_4`
- Statement hash: `6cfd70a889cdb934`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def ensures_101_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 58
  startColumn := 9
  endLine := 60
  endColumn := 44
  assertId := "101_4"
  functionName := "curve25519.mul_internal"
  kind := "ensures"
  statementHash := "6cfd70a889cdb934"
}
@[vrml_obligation] theorem ensures_101_4
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assert_100 : (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)))) :
    Vermilion.Seq.index (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)) 8 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) 4 = (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.ensures_101_4

-- vrml:begin curve25519.mul_internal.ensures_101_5 2de9670d0b25bd99
/--
Generated VC `curve25519.mul_internal.ensures_101_5`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:61:9-62:76`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `101_5`
- Statement hash: `2de9670d0b25bd99`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def ensures_101_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 61
  startColumn := 9
  endLine := 62
  endColumn := 76
  assertId := "101_5"
  functionName := "curve25519.mul_internal"
  kind := "ensures"
  statementHash := "2de9670d0b25bd99"
}
@[vrml_obligation] theorem ensures_101_5
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assert_100 : (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)))) :
    Vermilion.Seq.index (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)) 8 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) 5 = ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.ensures_101_5

-- vrml:begin curve25519.mul_internal.ensures_101_6 e97f589c4c79e7ce
/--
Generated VC `curve25519.mul_internal.ensures_101_6`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:63:9-64:44`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `101_6`
- Statement hash: `e97f589c4c79e7ce`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def ensures_101_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 63
  startColumn := 9
  endLine := 64
  endColumn := 44
  assertId := "101_6"
  functionName := "curve25519.mul_internal"
  kind := "ensures"
  statementHash := "e97f589c4c79e7ce"
}
@[vrml_obligation] theorem ensures_101_6
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assert_100 : (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)))) :
    Vermilion.Seq.index (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)) 8 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) 6 = (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.ensures_101_6

-- vrml:begin curve25519.mul_internal.ensures_101_7 930f0f0054ff83e9
/--
Generated VC `curve25519.mul_internal.ensures_101_7`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:65:9-65:78`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `101_7`
- Statement hash: `930f0f0054ff83e9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def ensures_101_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 65
  startColumn := 9
  endLine := 65
  endColumn := 78
  assertId := "101_7"
  functionName := "curve25519.mul_internal"
  kind := "ensures"
  statementHash := "930f0f0054ff83e9"
}
@[vrml_obligation] theorem ensures_101_7
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assert_100 : (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)))) :
    Vermilion.Seq.index (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)) 8 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) 7 = ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.ensures_101_7

-- vrml:begin curve25519.mul_internal.ensures_101_8 20b6fb8173c23708
/--
Generated VC `curve25519.mul_internal.ensures_101_8`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:66:9-66:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `101_8`
- Statement hash: `20b6fb8173c23708`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i⟩ ⟨Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i⟩ ⟨Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0⟩
-/
def ensures_101_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 66
  startColumn := 9
  endLine := 66
  endColumn := 46
  assertId := "101_8"
  functionName := "curve25519.mul_internal"
  kind := "ensures"
  statementHash := "20b6fb8173c23708"
}
@[vrml_obligation] theorem ensures_101_8
    (a : curve25519.Scalar52)
    (b : curve25519.Scalar52)
    (requires_0 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (curve25519.Scalar52.get_Scalar52__0 b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i < 4611686018427387904))))
    (requires_5 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) i < 4611686018427387904))))
    (assume_6 : Vermilion.Seq.len (Vermilion.Seq.fill 9 0) = 9)
    (assume_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0))) → Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (Vermilion.Seq.fill 9 0) vrml_i0))))
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_9 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_10 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_4 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (Vermilion.Seq.fill 9 0)))
    (assume_12 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_13 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_14 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_17 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_11 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_12 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))))
    (assume_20 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_21 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_22 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_25 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_19 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_27 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_29 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_23 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_24 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_32 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_33 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_34 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_35 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_37 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_31 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_39 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_41 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_35 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_45 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_39 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_40 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_48 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0))
    (assume_49 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_50 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_51 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_52 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_53 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_47 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_55 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_56 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_57 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_51 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_59 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_60 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_61 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_55 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assume_63 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_64 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assume_65 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0))
    (assert_59 : Vermilion.inUnsignedRange 128 ((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)))
    (assert_60 : (0 ≤ 4) ∧ (4 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_68 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1))
    (assume_69 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_70 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_71 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_72 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_73 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_67 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_75 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_76 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_77 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_71 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assume_79 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_80 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assume_81 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1))
    (assert_75 : Vermilion.inUnsignedRange 128 ((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)))
    (assert_76 : (0 ≤ 5) ∧ (5 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456))))
    (assume_84 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2))
    (assume_85 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_86 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_87 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_88 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_89 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_83 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assume_91 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_92 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assume_93 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2))
    (assert_87 : Vermilion.inUnsignedRange 128 ((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)))
    (assert_88 : (0 ≤ 6) ∧ (6 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456))))
    (assume_96 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3))
    (assume_97 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_98 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_99 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_100 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assume_101 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3))
    (assert_95 : Vermilion.inUnsignedRange 128 ((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)))
    (assert_96 : (0 ≤ 7) ∧ (7 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456))))
    (assume_104 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4))
    (assume_105 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assume_106 : Vermilion.inUnsignedRange 128 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4))
    (assert_100 : (0 ≤ 8) ∧ (8 < Vermilion.Seq.len (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)))) :
    Vermilion.Seq.index (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.update (Vermilion.Seq.fill 9 0) 0 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) 1 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 2 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 3 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 4 (((((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 0 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 0)) % 340282366920938463463374607431768211456)) 5 (((((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 1 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 1)) % 340282366920938463463374607431768211456)) 6 (((((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 2 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 2)) % 340282366920938463463374607431768211456)) 7 (((Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 3 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) + (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 3)) % 340282366920938463463374607431768211456)) 8 (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4)) 8 = (Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) 4 * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) 4) := by
  rw [requires_0] at requires_1
  rw [requires_2] at requires_3
  have P : ∀ (i j : Int), 0 ≤ i → i < 5 → 0 ≤ j → j < 5 →
      0 ≤ Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j ∧
      Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 a) i * Vermilion.Seq.index (curve25519.Scalar52.get_Scalar52__0 b) j < 21267647932558653966460912964485513216 := by
    intro i j hi0 hi5 hj0 hj5
    have ha := requires_1 i ⟨hi0, by omega⟩
    have hb := requires_3 j ⟨hj0, by omega⟩
    simp only [Vermilion.inUnsignedRange] at ha hb
    have ha4 := requires_4 i ⟨hi0, hi5⟩
    have hb5 := requires_5 j ⟨hj0, hj5⟩
    exact ⟨mul_nonneg ha.1 hb.1, by nlinarith [ha.1, hb.1]⟩
  have p00 := P 0 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p01 := P 0 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p02 := P 0 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p03 := P 0 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p04 := P 0 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p10 := P 1 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p11 := P 1 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p12 := P 1 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p13 := P 1 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p14 := P 1 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p20 := P 2 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p21 := P 2 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p22 := P 2 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p23 := P 2 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p24 := P 2 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p30 := P 3 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p31 := P 3 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p32 := P 3 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p33 := P 3 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p34 := P 3 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p40 := P 4 0 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p41 := P 4 1 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p42 := P 4 2 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p43 := P 4 3 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have p44 := P 4 4 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  simp only [Vermilion.inUnsignedRange] at *
  try simp (disch := omega) only [Vermilion.Seq.index_update_same,
    Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
    Vermilion.Seq.len_fill]
  all_goals omega
-- vrml:end curve25519.mul_internal.ensures_101_8

end curve25519.mul_internal

