import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure ElasticConstantsPackage where
  elasticStiffnessTensor : Type u
  complianceTensor : Type v
  youngModulusDefined : Prop
  poissonRatioDefined : Prop
  shearModulusDefined : Prop
  bulkModulusDefined : Prop
  anisotropyFactors : Prop
  elasticStabilityCriterion : Prop

structure ElasticConstantsEvidence (E : ElasticConstantsPackage) where
  youngModulusDefinedClosed : E.youngModulusDefined
  poissonRatioDefinedClosed : E.poissonRatioDefined
  shearModulusDefinedClosed : E.shearModulusDefined
  bulkModulusDefinedClosed : E.bulkModulusDefined
  anisotropyFactorsClosed : E.anisotropyFactors
  elasticStabilityCriterionClosed : E.elasticStabilityCriterion

def ElasticConstantsClosed (E : ElasticConstantsPackage) : Prop :=
  E.youngModulusDefined ∧ E.poissonRatioDefined ∧
  E.shearModulusDefined ∧ E.bulkModulusDefined ∧
  E.anisotropyFactors ∧ E.elasticStabilityCriterion

theorem elastic_constants_closed_from_evidence (E : ElasticConstantsPackage)
    (Ev : ElasticConstantsEvidence E) : ElasticConstantsClosed E := by
  exact And.intro Ev.youngModulusDefinedClosed
    (And.intro Ev.poissonRatioDefinedClosed
      (And.intro Ev.shearModulusDefinedClosed
        (And.intro Ev.bulkModulusDefinedClosed
          (And.intro Ev.anisotropyFactorsClosed Ev.elasticStabilityCriterionClosed))))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse