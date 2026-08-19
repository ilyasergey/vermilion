import Vermilion.Obligations
import active_bitmap_clear.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS

-- vrml:begin active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS.assert_0 1d97f065bd6cf4d8
/--
Generated VC `active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS.assert_0`.

- Rust source: `case-studies/percolator/active_bitmap_clear.rs:12:44-12:77`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `1d97f065bd6cf4d8`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_clear.rs"
  startLine := 12
  startColumn := 44
  endLine := 12
  endColumn := 77
  assertId := "0"
  functionName := "active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS"
  kind := "assert"
  statementHash := "1d97f065bd6cf4d8"
}
@[vrml_obligation] theorem assert_0 :
    Vermilion.inUnsignedRange 64 (active_bitmap_clear.V16_MAX_PORTFOLIO_ASSETS_N + 63) := by
  vrml [active_bitmap_clear.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS.assert_0

-- vrml:begin active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS.assert_1 052fdcbc3255ed79
/--
Generated VC `active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS.assert_1`.

- Rust source: `case-studies/percolator/active_bitmap_clear.rs:12:44-12:82`
- Rust/SST construct: possible division by zero
- AssertId: `1`
- Statement hash: `052fdcbc3255ed79`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/active_bitmap_clear.rs"
  startLine := 12
  startColumn := 44
  endLine := 12
  endColumn := 82
  assertId := "1"
  functionName := "active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS"
  kind := "assert"
  statementHash := "052fdcbc3255ed79"
}
@[vrml_obligation] theorem assert_1
    (assert_0 : Vermilion.inUnsignedRange 64 (active_bitmap_clear.V16_MAX_PORTFOLIO_ASSETS_N + 63)) :
    64 ≠ 0 := by
  vrml [active_bitmap_clear.V16_MAX_PORTFOLIO_ASSETS_N]
-- vrml:end active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS.assert_1

end active_bitmap_clear.V16_ACTIVE_BITMAP_WORDS

