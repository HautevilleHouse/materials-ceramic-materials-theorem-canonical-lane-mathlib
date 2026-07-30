import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure CrystallographicLattice where
  bravaisType : String
  unitCellVectors : Type
  symmetryGroup : Type
  basisAtoms : List String

structure CrystallographyPackage where
  bravaisLatticeClassified : Prop
  pointGroupDetermined : Prop
  spaceGroupEnumerated : Prop
  xrayDiffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  pointGroupDeterminedClosed : C.pointGroupDetermined
  spaceGroupEnumeratedClosed : C.spaceGroupEnumerated
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.pointGroupDetermined ∧
  C.spaceGroupEnumerated ∧ C.xrayDiffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.pointGroupDeterminedClosed
      (And.intro E.spaceGroupEnumeratedClosed E.xrayDiffractionPatternClosed))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse