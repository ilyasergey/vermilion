import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.encode_market_mode

-- vrml:begin enum_codecs.encode_market_mode.ensures_0 b2408b069de1fe51
/--
Generated VC `enum_codecs.encode_market_mode.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:185:9-189:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `b2408b069de1fe51`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 185
  startColumn := 9
  endLine := 189
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.encode_market_mode"
  kind := "ensures"
  statementHash := "b2408b069de1fe51"
}
@[vrml_obligation] theorem ensures_0
    (value : enum_codecs.MarketModeV16) :
    (Vermilion.iteP (enum_codecs.MarketModeV16.is_Live value) 0 (Vermilion.iteP (enum_codecs.MarketModeV16.is_Resolved value) 1 2)) = (Vermilion.iteP (enum_codecs.MarketModeV16.is_Live value) 0 (Vermilion.iteP (enum_codecs.MarketModeV16.is_Resolved value) 1 2)) := by
  vrml
-- vrml:end enum_codecs.encode_market_mode.ensures_0

end enum_codecs.encode_market_mode

