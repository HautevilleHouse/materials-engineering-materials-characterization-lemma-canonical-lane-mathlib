import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure MicrostructurePackage where
  grainStructure : Type u
  phaseDistribution : Type v
  defects : Type w
  grainBoundaryCharacter : Prop
  porosity : Prop
  textureOrientations : Prop

structure MicrostructureEvidence (M : MicrostructurePackage) where
  grainBoundaryCharacterClosed : M.grainBoundaryCharacter
  porosityClosed : M.porosity
  textureOrientationsClosed : M.textureOrientations

def MicrostructureClosed (M : MicrostructurePackage) : Prop :=
  M.grainBoundaryCharacter ∧ M.porosity ∧ M.textureOrientations

theorem microstructure_closed_from_evidence (M : MicrostructurePackage)
    (E : MicrostructureEvidence M) : MicrostructureClosed M := by
  exact And.intro E.grainBoundaryCharacterClosed
    (And.intro E.porosityClosed E.textureOrientationsClosed)

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse