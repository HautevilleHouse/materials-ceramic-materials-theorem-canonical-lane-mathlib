import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  componentSystem : Type u
  temperaturePressureRange : Prop
  phaseRegions : Prop
  phaseBoundaries : Prop
  equilibriumConditions : Prop
  leverRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperaturePressureRangeClosed : P.temperaturePressureRange
  phaseRegionsClosed : P.phaseRegions
  phaseBoundariesClosed : P.phaseBoundaries
  equilibriumConditionsClosed : P.equilibriumConditions
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperaturePressureRange ∧ P.phaseRegions ∧ P.phaseBoundaries ∧ P.equilibriumConditions ∧ P.leverRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperaturePressureRangeClosed
    (And.intro E.phaseRegionsClosed (And.intro E.phaseBoundariesClosed (And.intro E.equilibriumConditionsClosed E.leverRuleClosed)))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse