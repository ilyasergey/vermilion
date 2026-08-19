import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N case-studies/percolator/active_bitmap_get.rs:11:1
def active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N : Int :=
  16

-- vrml:spec active_bitmap_get.V16_ACTIVE_BITMAP_WORDS case-studies/percolator/active_bitmap_get.rs:12:1
def active_bitmap_get.V16_ACTIVE_BITMAP_WORDS : Int :=
  ((((active_bitmap_get.V16_MAX_PORTFOLIO_ASSETS_N + 63) % 18446744073709551616) / 64) % 18446744073709551616)

