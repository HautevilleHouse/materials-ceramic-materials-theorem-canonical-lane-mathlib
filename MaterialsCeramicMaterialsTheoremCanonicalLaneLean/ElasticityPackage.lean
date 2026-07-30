import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage {C : CrystallographyPackage}
    (P : PhaseDiagramPackage C) where
  elasticConstants : Type u
  stressStrainRelation : Prop
  stiffnessTensor : Prop
  complianceTensor : Prop
  anisotropicBehavior : Prop

structure ElasticityEvidence {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} (E : ElasticityPackage P) where
  elasticConstantsClosed : E.elasticConstants
  stressStrainRelationClosed : E.stressStrainRelation
  stiffnessTensorClosed : E.stiffnessTensor
  complianceTensorClosed : E.complianceTensor
  anisotropicBehaviorClosed : E.anisotropicBehavior

def ElasticityClosed {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} (E : ElasticityPackage P) : Prop :=
  E.elasticConstants ∧ E.stressStrainRelation ∧ E.stiffnessTensor ∧
  E.complianceTensor ∧ E.anisotropicBehavior

theorem elasticity_closed_from_evidence {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} (E : ElasticityPackage P)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.elasticConstantsClosed
    (And.intro Ev.stressStrainRelationClosed
      (And.intro Ev.stiffnessTensorClosed
        (And.intro Ev.complianceTensorClosed Ev.anisotropicBehaviorClosed)))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse