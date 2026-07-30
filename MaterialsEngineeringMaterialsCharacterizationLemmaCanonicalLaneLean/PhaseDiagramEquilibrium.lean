import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure PhaseEquilibrium where
  phaseBoundary : Prop
  gibbsFreeEnergy : Prop
  leverRule : Prop
  compositionPath : Prop

structure PhaseEquilibriumEvidence (P : PhaseEquilibrium) where
  phaseBoundaryClosed : P.phaseBoundary
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  leverRuleClosed : P.leverRule
  compositionPathClosed : P.compositionPath

def PhaseEquilibriumClosed (P : PhaseEquilibrium) : Prop :=
  P.phaseBoundary ∧ P.gibbsFreeEnergy ∧ P.leverRule ∧ P.compositionPath

theorem phase_equilibrium_closed_from_evidence (P : PhaseEquilibrium) (E : PhaseEquilibriumEvidence P) :
    PhaseEquilibriumClosed P := by
  exact And.intro E.phaseBoundaryClosed
    (And.intro E.gibbsFreeEnergyClosed
      (And.intro E.leverRuleClosed E.compositionPathClosed))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse