import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Type u
  enthalpy : Prop
  entropy : Prop
  chemicalPotential : Prop
  phaseStability : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  chemicalPotentialClosed : T.chemicalPotential
  phaseStabilityClosed : T.phaseStability

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpy ∧ T.entropy ∧
  T.chemicalPotential ∧ T.phaseStability

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.enthalpyClosed
      (And.intro E.entropyClosed
        (And.intro E.chemicalPotentialClosed E.phaseStabilityClosed)))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse