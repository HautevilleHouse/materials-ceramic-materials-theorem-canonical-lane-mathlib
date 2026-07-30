import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

structure MechanicalTestResult where
  testType : String
  strength : ℝ
  strain : ℝ
  modulus : ℝ

structure MechanicalTestingPackage where
  flexuralStrengthMeasured : Prop
  compressionStrengthMeasured : Prop
  hardnessMeasured : Prop
  fractureToughnessMeasured : Prop
  weibullModulusComputed : Prop
  slowCrackGrowthCharacterized : Prop

structure MechanicalTestingEvidence (M : MechanicalTestingPackage) where
  flexuralStrengthMeasuredClosed : M.flexuralStrengthMeasured
  compressionStrengthMeasuredClosed : M.compressionStrengthMeasured
  hardnessMeasuredClosed : M.hardnessMeasured
  fractureToughnessMeasuredClosed : M.fractureToughnessMeasured
  weibullModulusComputedClosed : M.weibullModulusComputed
  slowCrackGrowthCharacterizedClosed : M.slowCrackGrowthCharacterized

def MechanicalTestingClosed (M : MechanicalTestingPackage) : Prop :=
  M.flexuralStrengthMeasured ∧ M.compressionStrengthMeasured ∧
  M.hardnessMeasured ∧ M.fractureToughnessMeasured ∧
  M.weibullModulusComputed ∧ M.slowCrackGrowthCharacterized

theorem mechanical_testing_closed_from_evidence (M : MechanicalTestingPackage) (E : MechanicalTestingEvidence M) :
    MechanicalTestingClosed M := by
  exact And.intro E.flexuralStrengthMeasuredClosed
    (And.intro E.compressionStrengthMeasuredClosed
      (And.intro E.hardnessMeasuredClosed
        (And.intro E.fractureToughnessMeasuredClosed
          (And.intro E.weibullModulusComputedClosed E.slowCrackGrowthCharacterizedClosed))))

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse