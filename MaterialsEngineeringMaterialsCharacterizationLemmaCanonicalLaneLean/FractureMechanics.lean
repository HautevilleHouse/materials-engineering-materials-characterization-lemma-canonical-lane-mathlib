import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure FractureCriterion where
  stressIntensity : Prop
  energyReleaseRate : Prop
  crackTipField : Prop
  failureSurface : Prop

structure FractureEvidence (F : FractureCriterion) where
  stressIntensityClosed : F.stressIntensity
  energyReleaseRateClosed : F.energyReleaseRate
  crackTipFieldClosed : F.crackTipField
  failureSurfaceClosed : F.failureSurface

def FractureCriterionClosed (F : FractureCriterion) : Prop :=
  F.stressIntensity ∧ F.energyReleaseRate ∧ F.crackTipField ∧ F.failureSurface

theorem fracture_criterion_closed_from_evidence (F : FractureCriterion) (E : FractureEvidence F) :
    FractureCriterionClosed F := by
  exact And.intro E.stressIntensityClosed
    (And.intro E.energyReleaseRateClosed
      (And.intro E.crackTipFieldClosed E.failureSurfaceClosed))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse