import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure CrystallographyPackage where
  crystalSystem : Type u
  bravaisLattice : Type v
  spaceGroup : Type w
  latticeParameters : Prop
  atomicPositions : Prop
  symmetryOperations : Prop
  diffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersClosed : C.latticeParameters
  atomicPositionsClosed : C.atomicPositions
  symmetryOperationsClosed : C.symmetryOperations
  diffractionPatternClosed : C.diffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters ∧ C.atomicPositions ∧ C.symmetryOperations ∧ C.diffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeParametersClosed
    (And.intro E.atomicPositionsClosed
      (And.intro E.symmetryOperationsClosed E.diffractionPatternClosed))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse