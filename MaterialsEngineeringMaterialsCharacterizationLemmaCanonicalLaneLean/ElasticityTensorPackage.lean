import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure ElasticConstants where
  youngModulus : Float
  poissonRatio : Float
  shearModulus : Float
  bulkModulus : Float

default youngModulus := 200.0

structure ElasticityTensorPackage where
  stiffnessMatrix : List (List Float)
  complianceMatrix : List (List Float)
  isotropicLinearElasticity : Prop
  hookesLaw : Prop
  strainEnergyDensity : Prop
  isotropicLinearElasticityClosed : isotropicLinearElasticity
  hookesLawClosed : hookesLaw
  strainEnergyDensityClosed : strainEnergyDensity

def ElasticityTensorClosed (P : ElasticityTensorPackage) : Prop :=
  P.isotropicLinearElasticity ∧ P.hookesLaw ∧ P.strainEnergyDensity

theorem elasticity_tensor_closed_from_evidence (P : ElasticityTensorPackage) : ElasticityTensorClosed P := by
  exact And.intro P.isotropicLinearElasticityClosed (And.intro P.hookesLawClosed P.strainEnergyDensityClosed)

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse