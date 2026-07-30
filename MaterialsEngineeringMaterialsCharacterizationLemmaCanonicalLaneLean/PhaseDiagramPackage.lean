import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure PhaseBoundary where
  temperature : Float
  pressure : Float
  phases : List String

structure PhaseDiagramPackage where
  components : List String
  phases : List String
  boundaries : List PhaseBoundary
  gibbsPhaseRule : Prop
  leverRule : Prop
  eutecticPoint : Prop
  gibbsPhaseRuleClosed : gibbsPhaseRule
  leverRuleClosed : leverRule
  eutecticPointClosed : eutecticPoint

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.gibbsPhaseRule ∧ P.leverRule ∧ P.eutecticPoint

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) : PhaseDiagramClosed P := by
  exact And.intro P.gibbsPhaseRuleClosed (And.intro P.leverRuleClosed P.eutecticPointClosed)

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse