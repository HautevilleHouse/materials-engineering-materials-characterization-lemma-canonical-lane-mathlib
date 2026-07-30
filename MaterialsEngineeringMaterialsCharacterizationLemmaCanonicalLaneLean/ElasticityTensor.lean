import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure ElasticityModel where
  stressStrainRelation : Prop
  elasticConstants : Prop
  isotropicSymmetry : Prop
  anisotropyParameter : Prop

structure ElasticityEvidence (E : ElasticityModel) where
  stressStrainRelationClosed : E.stressStrainRelation
  elasticConstantsClosed : E.elasticConstants
  isotropicSymmetryClosed : E.isotropicSymmetry
  anisotropyParameterClosed : E.anisotropyParameter

def ElasticityModelClosed (E : ElasticityModel) : Prop :=
  E.stressStrainRelation ∧ E.elasticConstants ∧ E.isotropicSymmetry ∧ E.anisotropyParameter

theorem elasticity_model_closed_from_evidence (E : ElasticityModel) (Ev : ElasticityEvidence E) :
    ElasticityModelClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.elasticConstantsClosed
      (And.intro Ev.isotropicSymmetryClosed Ev.anisotropyParameterClosed))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse