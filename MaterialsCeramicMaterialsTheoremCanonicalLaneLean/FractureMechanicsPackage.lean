import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure FractureMechanicsPackage {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} {E : ElasticityPackage P} where
  fractureToughness : Prop
  crackPropagation : Prop
  stressIntensityFactor : Prop
  brittleness : Prop
  fractureSurfaceEnergy : Prop

structure FractureMechanicsEvidence {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} {E : ElasticityPackage P}
    (F : FractureMechanicsPackage C P E) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  stressIntensityFactorClosed : F.stressIntensityFactor
  brittlenessClosed : F.brittleness
  fractureSurfaceEnergyClosed : F.fractureSurfaceEnergy

def FractureMechanicsClosed {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} {E : ElasticityPackage P}
    (F : FractureMechanicsPackage C P E) : Prop :=
  F.fractureToughness ∧ F.crackPropagation ∧
  F.stressIntensityFactor ∧ F.brittleness ∧ F.fractureSurfaceEnergy

theorem fracture_mechanics_closed_from_evidence {C : CrystallographyPackage}
    {P : PhaseDiagramPackage C} {E : ElasticityPackage P}
    (F : FractureMechanicsPackage C P E) (Ev : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro Ev.fractureToughnessClosed
    (And.intro Ev.crackPropagationClosed
      (And.intro Ev.stressIntensityFactorClosed
        (And.intro Ev.brittlenessClosed Ev.fractureSurfaceEnergyClosed)))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse