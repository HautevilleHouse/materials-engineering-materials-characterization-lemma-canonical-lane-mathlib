import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  hookesLaw : Prop
  elasticModuli : Prop
  yieldCriterion : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorClosed : E.stressTensor
  strainTensorClosed : E.strainTensor
  hookesLawClosed : E.hookesLaw
  elasticModuliClosed : E.elasticModuli
  yieldCriterionClosed : E.yieldCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressTensor ∧ E.strainTensor ∧ E.hookesLaw ∧
  E.elasticModuli ∧ E.yieldCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressTensorClosed
    (And.intro Ev.strainTensorClosed
      (And.intro Ev.hookesLawClosed
        (And.intro Ev.elasticModuliClosed Ev.yieldCriterionClosed)))

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse