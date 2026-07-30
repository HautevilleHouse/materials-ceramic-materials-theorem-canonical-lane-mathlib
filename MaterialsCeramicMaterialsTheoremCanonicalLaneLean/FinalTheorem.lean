import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsCeramicMaterialsTheoremCanonicalLaneLean.CrystalStructure
import HautevilleHouse.MaterialsCeramicMaterialsTheoremCanonicalLaneLean.PhaseDiagram
import HautevilleHouse.MaterialsCeramicMaterialsTheoremCanonicalLaneLean.ElasticConstants
import HautevilleHouse.MaterialsCeramicMaterialsTheoremCanonicalLaneLean.FractureMechanics
import HautevilleHouse.MaterialsCeramicMaterialsTheoremCanonicalLaneLean.SinteringKinetics
import HautevilleHouse.MaterialsCeramicMaterialsTheoremCanonicalLaneLean.MechanicalStrength

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrystalStructureClosed A.object ∧ PhaseDiagramClosed A.object ∧
  ElasticConstantsClosed A.object ∧ FractureMechanicsClosed A.object ∧
  SinteringKineticsClosed A.object ∧ MechanicalStrengthClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCeramicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ceramic_endgame (A : AdmissibleClass) :
    ConstrainedCeramicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse