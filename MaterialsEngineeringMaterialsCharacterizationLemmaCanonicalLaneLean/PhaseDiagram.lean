import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  phases : List String
  equilibriumPhases : Prop
  phaseBoundaries : Prop
  tieLines : Prop
  phaseRuleSatisfied : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  equilibriumPhasesClosed : P.equilibriumPhases
  phaseBoundariesClosed : P.phaseBoundaries
  tieLinesClosed : P.tieLines
  phaseRuleSatisfiedClosed : P.phaseRuleSatisfied

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.equilibriumPhases ∧ P.phaseBoundaries ∧ P.tieLines ∧ P.phaseRuleSatisfied

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.equilibriumPhasesClosed
    (And.intro E.phaseBoundariesClosed
      (And.intro E.tieLinesClosed E.phaseRuleSatisfiedClosed))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse