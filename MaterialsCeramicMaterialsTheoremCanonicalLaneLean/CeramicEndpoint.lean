import MaterialsCeramicMaterialsTheoremCanonicalLaneLean.FractureMechanics

/-!
# Ceramic Endpoint Classification Package
-/

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure CeramicEndpointPackage where
  targetCeramicMaterial : Type u
  targetApplication : String
  ceramicStrengthAchieved : Prop
  heatResistanceAchieved : Prop
  endpointMatchesCeramicSpec : Prop

structure CeramicEndpointEvidence (C : CeramicEndpointPackage) where
  ceramicStrengthAchievedClosed : C.ceramicStrengthAchieved
  heatResistanceAchievedClosed : C.heatResistanceAchieved
  endpointMatchesCeramicSpecClosed : C.endpointMatchesCeramicSpec

def CeramicEndpointClosed (C : CeramicEndpointPackage) : Prop :=
  C.ceramicStrengthAchieved ∧ C.heatResistanceAchieved ∧
  C.endpointMatchesCeramicSpec

theorem ceramic_endpoint_closed_from_evidence (C : CeramicEndpointPackage)
    (E : CeramicEndpointEvidence C) : CeramicEndpointClosed C := by
  exact And.intro E.ceramicStrengthAchievedClosed
    (And.intro E.heatResistanceAchievedClosed E.endpointMatchesCeramicSpecClosed)

theorem ceramic_endpoint_supplies_material_spec (C : CeramicEndpointPackage) :
    C.ceramicStrengthAchieved := C.ceramicStrengthAchieved

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse