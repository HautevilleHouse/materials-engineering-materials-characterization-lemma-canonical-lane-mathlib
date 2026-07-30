import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure CrystalSystem where
  latticeType : Prop
  bravaisClass : Prop
  symmetryGroup : Prop
  unitCellDimensions : Prop

structure CrystalEvidence (C : CrystalSystem) where
  latticeTypeClosed : C.latticeType
  bravaisClassClosed : C.bravaisClass
  symmetryGroupClosed : C.symmetryGroup
  unitCellDimensionsClosed : C.unitCellDimensions

def CrystalSystemClosed (C : CrystalSystem) : Prop :=
  C.latticeType ∧ C.bravaisClass ∧ C.symmetryGroup ∧ C.unitCellDimensions

theorem crystal_system_closed_from_evidence (C : CrystalSystem) (E : CrystalEvidence C) :
    CrystalSystemClosed C := by
  exact And.intro E.latticeTypeClosed
    (And.intro E.bravaisClassClosed
      (And.intro E.symmetryGroupClosed E.unitCellDimensionsClosed))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse