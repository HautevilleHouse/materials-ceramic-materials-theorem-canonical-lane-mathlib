import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure CrystalLatticePackage where
  bravaisLattice : Type u
  unitCell : Type v
  latticeParameters : Prop
  atomicPositions : Prop
  symmetryGroup : Prop
  powderPattern : Prop

structure CrystalLatticeEvidence (C : CrystalLatticePackage) where
  latticeParametersClosed : C.latticeParameters
  atomicPositionsClosed : C.atomicPositions
  symmetryGroupClosed : C.symmetryGroup
  powderPatternClosed : C.powderPattern

def CrystalLatticeClosed (C : CrystalLatticePackage) : Prop :=
  C.latticeParameters ∧ C.atomicPositions ∧ C.symmetryGroup ∧ C.powderPattern

theorem crystal_lattice_closed_from_evidence (C : CrystalLatticePackage) (E : CrystalLatticeEvidence C) :
    CrystalLatticeClosed C := by
  exact And.intro E.latticeParametersClosed (And.intro E.atomicPositionsClosed (And.intro E.symmetryGroupClosed E.powderPatternClosed))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse