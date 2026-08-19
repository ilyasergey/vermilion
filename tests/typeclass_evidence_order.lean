import Vermilion.Ir.Render

open Vermilion.Ir

private def testFunction : FunctionId := {
  crateName := "evidence_test"
  modules := #[]
  name := "subject"
}

private def base : EvidenceObligation := {
  function := testFunction
  leaf := "base"
  span := default
  typeParams := #[]
  binders := #[]
  target := { className := #["DecidableEq"], args := #[.type (.var "T")] }
  origin := "test"
}

private def dependent : EvidenceObligation := {
  base with
  leaf := "dependent"
  target := { className := #["Some", "Evidence"], args := #[.term (.var "x")] }
  dependencies := #[base.qualifiedName]
}

private def hasError {α : Type} (expected : String) : Except String α → Bool
  | .error actual => actual == expected
  | .ok _ => false

#guard ({ className := #["Inhabited"], args := #[.type (.var "T")] } :
  EvidenceTarget).render == "Inhabited T"

#guard match orderEvidenceObligations #[dependent, base] with
  | .ok ordered => ordered.map EvidenceObligation.qualifiedName ==
      #[base.qualifiedName, dependent.qualifiedName]
  | .error _ => false

#guard hasError
  "evidence evidence_test.subject.dependent has unknown dependency evidence_test.subject.missing"
  (orderEvidenceObligations #[{
  dependent with dependencies := #["evidence_test.subject.missing"]
}])

#guard hasError
  "cyclic typeclass evidence dependencies: evidence_test.subject.base, evidence_test.subject.dependent"
  (orderEvidenceObligations #[
  { base with dependencies := #[dependent.qualifiedName] },
  dependent
])

#guard hasError "conflicting evidence obligations named evidence_test.subject.base"
  (orderEvidenceObligations #[base, {
  base with target := { className := #["Inhabited"], args := #[.type (.var "T")] }
}])
