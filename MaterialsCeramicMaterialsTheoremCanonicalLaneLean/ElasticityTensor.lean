import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure ElasticityTensorPackage where
  elasticStiffness : Type u
  elasticCompliance : Type v
  symmetryReduction : Type w
  stiffnessMatrixDetermined : Prop
  complianceMatrixDetermined : Prop
  positiveDefinitenessVerified : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  stiffnessMatrixDeterminedClosed : E.stiffnessMatrixDetermined
  complianceMatrixDeterminedClosed : E.complianceMatrixDetermined
  positiveDefinitenessVerifiedClosed : E.positiveDefinitenessVerified

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.stiffnessMatrixDetermined ∧ E.complianceMatrixDetermined ∧ E.positiveDefinitenessVerified

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.stiffnessMatrixDeterminedClosed
    (And.intro Ev.complianceMatrixDeterminedClosed Ev.positiveDefinitenessVerifiedClosed)

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse