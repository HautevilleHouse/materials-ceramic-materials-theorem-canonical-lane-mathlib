import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  spaceGroup : Type v
  unitCellParameters : Prop
  atomicPositions : Prop
  symmetryOperations : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  unitCellParametersClosed : C.unitCellParameters
  atomicPositionsClosed : C.atomicPositions
  symmetryOperationsClosed : C.symmetryOperations

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.unitCellParameters ∧ C.atomicPositions ∧ C.symmetryOperations

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.unitCellParametersClosed
    (And.intro E.atomicPositionsClosed E.symmetryOperationsClosed)

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse