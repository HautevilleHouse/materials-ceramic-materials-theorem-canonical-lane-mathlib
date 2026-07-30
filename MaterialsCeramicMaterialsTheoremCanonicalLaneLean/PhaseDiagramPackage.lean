import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage (C : CrystallographyPackage) where
  temperatureRange : Prop
  pressureRange : Prop
  stablePhases : Prop
  phaseBoundaries : Prop
  eutecticPoints : Prop

structure PhaseDiagramEvidence {C : CrystallographyPackage}
    (P : PhaseDiagramPackage C) where
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  stablePhasesClosed : P.stablePhases
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointsClosed : P.eutecticPoints

def PhaseDiagramClosed {C : CrystallographyPackage}
    (P : PhaseDiagramPackage C) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.stablePhases ∧
  P.phaseBoundaries ∧ P.eutecticPoints

theorem phase_diagram_closed_from_evidence {C : CrystallographyPackage}
    (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.pressureRangeClosed
      (And.intro E.stablePhasesClosed
        (And.intro E.phaseBoundariesClosed E.eutecticPointsClosed)))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse