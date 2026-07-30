import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure ProcessingMicrostructurePackage {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} {E : ElasticityPackage P}
    {F : FractureMechanicsPackage C P E} where
  sinteringConditions : Prop
  grainGrowth : Prop
  porosityControl : Prop
  microstructureEvolution : Prop
  propertyPrediction : Prop

structure ProcessingMicrostructureEvidence {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} {E : ElasticityPackage P}
    {F : FractureMechanicsPackage C P E}
    (M : ProcessingMicrostructurePackage C P E F) where
  sinteringConditionsClosed : M.sinteringConditions
  grainGrowthClosed : M.grainGrowth
  porosityControlClosed : M.porosityControl
  microstructureEvolutionClosed : M.microstructureEvolution
  propertyPredictionClosed : M.propertyPrediction

def ProcessingMicrostructureClosed {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} {E : ElasticityPackage P}
    {F : FractureMechanicsPackage C P E}
    (M : ProcessingMicrostructurePackage C P E F) : Prop :=
  M.sinteringConditions ∧ M.grainGrowth ∧ M.porosityControl ∧
  M.microstructureEvolution ∧ M.propertyPrediction

theorem processing_microstructure_closed_from_evidence {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} {E : ElasticityPackage P}
    {F : FractureMechanicsPackage C P E}
    (M : ProcessingMicrostructurePackage C P E F)
    (Ev : ProcessingMicrostructureEvidence M) :
    ProcessingMicrostructureClosed M := by
  exact And.intro Ev.sinteringConditionsClosed
    (And.intro Ev.grainGrowthClosed
      (And.intro Ev.porosityControlClosed
        (And.intro Ev.microstructureEvolutionClosed Ev.propertyPredictionClosed)))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse