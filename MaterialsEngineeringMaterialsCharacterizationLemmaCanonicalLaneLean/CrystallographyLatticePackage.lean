import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure CrystalLattice where
  unitCellVectors : List (Float × Float × Float)
  bravaisType : String
  symmetryGroup : String
  latticeParameters : (Float × Float × Float × Float × Float × Float)

default latticeParameters := (1,1,1,90,90,90)

structure CrystallographyLatticePackage where
  lattice : CrystalLattice
  bravaisLatticeClassification : Prop
  reciprocalLatticeDefined : Prop
  millerIndices : Nat -> Nat -> Nat -> Prop
  bravaisLatticeClassificationClosed : bravaisLatticeClassification
  reciprocalLatticeDefinedClosed : reciprocalLatticeDefined

def CrystallographyLatticeClosed (P : CrystallographyLatticePackage) : Prop :=
  P.bravaisLatticeClassification ∧ P.reciprocalLatticeDefined

theorem crystallography_lattice_closed_from_evidence
    (P : CrystallographyLatticePackage) : CrystallographyLatticeClosed P := by
  exact And.intro P.bravaisLatticeClassificationClosed P.reciprocalLatticeDefinedClosed

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse