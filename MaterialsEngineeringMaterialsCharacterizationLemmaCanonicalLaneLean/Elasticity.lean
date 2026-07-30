import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  stiffnessTensor : Type w
  hookeLaw : Prop
  equilibriumEquation : Prop
  boundaryConditions : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookeLawClosed : E.hookeLaw
  equilibriumEquationClosed : E.equilibriumEquation
  boundaryConditionsClosed : E.boundaryConditions

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookeLaw ∧ E.equilibriumEquation ∧ E.boundaryConditions

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (E' : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro E'.hookeLawClosed
    (And.intro E'.equilibriumEquationClosed E'.boundaryConditionsClosed)

end MaterialsEngineeringMaterialsCharacterizationLemmaCanonicalLaneLean
end HautevilleHouse