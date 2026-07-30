import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure ThermodynamicPropertiesPackage where
  enthalpy : Float
  entropy : Float
  gibbsFreeEnergy : Float
  specificHeat : Float
  thermalConductivity : Float
  enthalpyClosed : enthalpy ≠ 0
  entropyClosed : entropy ≠ 0
  gibbsFreeEnergyClosed : gibbsFreeEnergy ≠ 0
  specificHeatClosed : specificHeat ≠ 0
  thermalConductivityClosed : thermalConductivity ≠ 0

def ThermodynamicPropertiesClosed (P : ThermodynamicPropertiesPackage) : Prop :=
  P.enthalpyClosed ∧ P.entropyClosed ∧ P.gibbsFreeEnergyClosed ∧
  P.specificHeatClosed ∧ P.thermalConductivityClosed

theorem thermodynamic_properties_closed_from_evidence
    (P : ThermodynamicPropertiesPackage) : ThermodynamicPropertiesClosed P := by
  exact And.intro P.enthalpyClosed
    (And.intro P.entropyClosed
      (And.intro P.gibbsFreeEnergyClosed
        (And.intro P.specificHeatClosed P.thermalConductivityClosed)))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse