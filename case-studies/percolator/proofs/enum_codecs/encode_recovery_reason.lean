import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.encode_recovery_reason

-- vrml:begin enum_codecs.encode_recovery_reason.ensures_0 1bb808dd80fd8ccb
/--
Generated VC `enum_codecs.encode_recovery_reason.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:253:9-262:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `1bb808dd80fd8ccb`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 253
  startColumn := 9
  endLine := 262
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.encode_recovery_reason"
  kind := "ensures"
  statementHash := "1bb808dd80fd8ccb"
}
@[vrml_obligation] theorem ensures_0
    (value : enum_codecs.PermissionlessRecoveryReasonV16) :
    (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_BelowProgressFloor value) 0 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_BlockedSegmentHeadroomOrRepresentability value) 1 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_AccountBSettlementCannotProgress value) 2 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_BIndexHeadroomExhausted value) 3 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_ActiveBankruptCloseCannotProgress value) 4 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_ExplicitLossOrDustAuditOverflow value) 5 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_OracleOrTargetUnavailableByAuthenticatedPolicy value) 6 7))))))) = (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_BelowProgressFloor value) 0 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_BlockedSegmentHeadroomOrRepresentability value) 1 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_AccountBSettlementCannotProgress value) 2 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_BIndexHeadroomExhausted value) 3 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_ActiveBankruptCloseCannotProgress value) 4 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_ExplicitLossOrDustAuditOverflow value) 5 (Vermilion.iteP (enum_codecs.PermissionlessRecoveryReasonV16.is_OracleOrTargetUnavailableByAuthenticatedPolicy value) 6 7))))))) := by
  vrml
-- vrml:end enum_codecs.encode_recovery_reason.ensures_0

end enum_codecs.encode_recovery_reason

