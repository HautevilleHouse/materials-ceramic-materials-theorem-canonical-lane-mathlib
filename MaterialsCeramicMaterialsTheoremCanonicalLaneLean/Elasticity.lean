import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressStrainTensor : Type u
  elasticConstants : Prop
  hookesLaw : Prop
  youngModulus : Prop
  poissonRatio : Prop
  anistropyFactor : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticConstantsClosed : E.elasticConstants
  hookesLawClosed : E.hookesLaw
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  anistropyFactorClosed : E.anistropyFactor

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticConstants ∧ E.hookesLaw ∧ E.youngModulus ∧ E.poissonRatio ∧ E.anistropyFactor

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.elasticConstantsClosed (And.intro Ev.hookesLawClosed (And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed Ev.anistropyFactorClosed)))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse