import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCellParameters : Prop
  symmetryOperations : Prop
  diffractionPattern : Prop
  braggCondition : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  unitCellParametersClosed : C.unitCellParameters
  symmetryOperationsClosed : C.symmetryOperations
  diffractionPatternClosed : C.diffractionPattern
  braggConditionClosed : C.braggCondition

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.unitCellParameters ∧ C.symmetryOperations ∧
  C.diffractionPattern ∧ C.braggCondition

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.unitCellParametersClosed
      (And.intro E.symmetryOperationsClosed
        (And.intro E.diffractionPatternClosed E.braggConditionClosed)))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse