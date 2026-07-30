import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure ThermalConductivityData where
  temperature : ℝ
  conductivity : ℝ
  measurementMethod : String

structure ThermalPropertiesPackage where
  specificHeatCapacityComputed : Prop
  thermalConductivityModeled : Prop
  thermalExpansionCoefficientMeasured : Prop
  thermalShockResistanceEstimated : Prop
  heatCapacityDulongPetit : Prop
  thermalDiffusivityComputed : Prop

structure ThermalPropertiesEvidence (T : ThermalPropertiesPackage) where
  specificHeatCapacityComputedClosed : T.specificHeatCapacityComputed
  thermalConductivityModeledClosed : T.thermalConductivityModeled
  thermalExpansionCoefficientMeasuredClosed : T.thermalExpansionCoefficientMeasured
  thermalShockResistanceEstimatedClosed : T.thermalShockResistanceEstimated
  heatCapacityDulongPetitClosed : T.heatCapacityDulongPetit
  thermalDiffusivityComputedClosed : T.thermalDiffusivityComputed

def ThermalPropertiesClosed (T : ThermalPropertiesPackage) : Prop :=
  T.specificHeatCapacityComputed ∧ T.thermalConductivityModeled ∧
  T.thermalExpansionCoefficientMeasured ∧ T.thermalShockResistanceEstimated ∧
  T.heatCapacityDulongPetit ∧ T.thermalDiffusivityComputed

theorem thermal_properties_closed_from_evidence (T : ThermalPropertiesPackage) (E : ThermalPropertiesEvidence T) :
    ThermalPropertiesClosed T := by
  exact And.intro E.specificHeatCapacityComputedClosed
    (And.intro E.thermalConductivityModeledClosed
      (And.intro E.thermalExpansionCoefficientMeasuredClosed
        (And.intro E.thermalShockResistanceEstimatedClosed
          (And.intro E.heatCapacityDulongPetitClosed E.thermalDiffusivityComputedClosed))))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse