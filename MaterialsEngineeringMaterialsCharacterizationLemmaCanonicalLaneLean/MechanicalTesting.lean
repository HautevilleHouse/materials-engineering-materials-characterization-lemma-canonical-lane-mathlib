import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure MechanicalTestingPackage where
  tensileTest : Type u
  hardnessTest : Type v
  fatigueTest : Type w
  yieldStrength : Prop
  ultimateStrength : Prop
  elongation : Prop
  hardnessValue : Prop
  fatigueLimit : Prop

structure MechanicalTestingEvidence (M : MechanicalTestingPackage) where
  yieldStrengthClosed : M.yieldStrength
  ultimateStrengthClosed : M.ultimateStrength
  elongationClosed : M.elongation
  hardnessValueClosed : M.hardnessValue
  fatigueLimitClosed : M.fatigueLimit

def MechanicalTestingClosed (M : MechanicalTestingPackage) : Prop :=
  M.yieldStrength ∧ M.ultimateStrength ∧ M.elongation ∧ M.hardnessValue ∧ M.fatigueLimit

theorem mechanical_testing_closed_from_evidence (M : MechanicalTestingPackage)
    (E : MechanicalTestingEvidence M) : MechanicalTestingClosed M := by
  exact And.intro E.yieldStrengthClosed
    (And.intro E.ultimateStrengthClosed
      (And.intro E.elongationClosed
        (And.intro E.hardnessValueClosed E.fatigueLimitClosed)))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse