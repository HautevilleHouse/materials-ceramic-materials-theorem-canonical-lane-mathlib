import MaterialsCeramicMaterialsTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Ceramic Microstructure Package
-/

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure GrainBoundaryPackage where
  grainSizeDistribution : Prop
  grainOrientation : Prop
  grainBoundaryPhase : Prop
  porosityDistribution : Prop

structure GrainBoundaryEvidence (G : GrainBoundaryPackage) where
  grainSizeDistributionClosed : G.grainSizeDistribution
  grainOrientationClosed : G.grainOrientation
  grainBoundaryPhaseClosed : G.grainBoundaryPhase
  porosityDistributionClosed : G.porosityDistribution

def GrainBoundaryClosed (G : GrainBoundaryPackage) : Prop :=
  G.grainSizeDistribution ∧ G.grainOrientation ∧
  G.grainBoundaryPhase ∧ G.porosityDistribution

theorem grain_boundary_closed_from_evidence (G : GrainBoundaryPackage)
    (E : GrainBoundaryEvidence G) : GrainBoundaryClosed G := by
  exact And.intro E.grainSizeDistributionClosed
    (And.intro E.grainOrientationClosed
      (And.intro E.grainBoundaryPhaseClosed E.porosityDistributionClosed))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse