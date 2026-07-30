import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean.Crystallography
import MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean.PhaseDiagram
import MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean.Elasticity
import MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean.FractureMechanics

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

def materials_admissible_closed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

def ConstrainedMaterialsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem materials_characterization_endgame (A : AdmissibleClass) :
    ConstrainedMaterialsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse