import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.decode_recovery_reason

-- vrml:begin enum_codecs.decode_recovery_reason.ensures_0 21f4e7e20f438242
/--
Generated VC `enum_codecs.decode_recovery_reason.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:278:9-288:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `21f4e7e20f438242`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 278
  startColumn := 9
  endLine := 288
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.decode_recovery_reason"
  kind := "ensures"
  statementHash := "21f4e7e20f438242"
}
@[vrml_obligation] theorem ensures_0
    (value : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 value) :
    (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.BelowProgressFloor) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.BlockedSegmentHeadroomOrRepresentability) (Vermilion.iteP (value = 2) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.AccountBSettlementCannotProgress) (Vermilion.iteP (value = 3) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.BIndexHeadroomExhausted) (Vermilion.iteP (value = 4) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.ActiveBankruptCloseCannotProgress) (Vermilion.iteP (value = 5) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.ExplicitLossOrDustAuditOverflow) (Vermilion.iteP (value = 6) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.OracleOrTargetUnavailableByAuthenticatedPolicy) (Vermilion.iteP (value = 7) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.CounterOrEpochOverflowDeclaredRecovery) (core.result.Result.Err (T := enum_codecs.PermissionlessRecoveryReasonV16) enum_codecs.V16Error.InvalidConfig))))))))) = (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.BelowProgressFloor) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.BlockedSegmentHeadroomOrRepresentability) (Vermilion.iteP (value = 2) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.AccountBSettlementCannotProgress) (Vermilion.iteP (value = 3) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.BIndexHeadroomExhausted) (Vermilion.iteP (value = 4) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.ActiveBankruptCloseCannotProgress) (Vermilion.iteP (value = 5) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.ExplicitLossOrDustAuditOverflow) (Vermilion.iteP (value = 6) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.OracleOrTargetUnavailableByAuthenticatedPolicy) (Vermilion.iteP (value = 7) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.PermissionlessRecoveryReasonV16.CounterOrEpochOverflowDeclaredRecovery) (core.result.Result.Err (T := enum_codecs.PermissionlessRecoveryReasonV16) enum_codecs.V16Error.InvalidConfig))))))))) := by
  vrml
-- vrml:end enum_codecs.decode_recovery_reason.ensures_0

end enum_codecs.decode_recovery_reason

