import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure SinteringKineticsPackage where
  diffusionMechanism : Type u
  grainGrowthModel : Type v
  densificationCurve : Type w
  temperatureProfile : Type x
  initialPorosity : Prop
  finalDensity : Prop
  grainSizeEvolution : Prop
  activationEnergyDetermined : Prop

structure SinteringKineticsEvidence (S : SinteringKineticsPackage) where
  initialPorosityClosed : S.initialPorosity
  finalDensityClosed : S.finalDensity
  grainSizeEvolutionClosed : S.grainSizeEvolution
  activationEnergyDeterminedClosed : S.activationEnergyDetermined

def SinteringKineticsClosed (S : SinteringKineticsPackage) : Prop :=
  S.initialPorosity ∧ S.finalDensity ∧
  S.grainSizeEvolution ∧ S.activationEnergyDetermined

theorem sintering_kinetics_closed_from_evidence (S : SinteringKineticsPackage)
    (E : SinteringKineticsEvidence S) : SinteringKineticsClosed S := by
  exact And.intro E.initialPorosityClosed
    (And.intro E.finalDensityClosed
      (And.intro E.grainSizeEvolutionClosed E.activationEnergyDeterminedClosed))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse