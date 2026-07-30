import MaterialsCeramicMaterialsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

def gateClosed (A : CeramicAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CeramicAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse