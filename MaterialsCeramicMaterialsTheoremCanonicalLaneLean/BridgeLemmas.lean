import MaterialsCeramicMaterialsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCeramicMaterialsTheoremCanonicalLaneLean

def bridgeClosed (A : CeramicAdmissibleClass) : Prop :=
  CeramicWitnessClosed A.object

theorem bridge_from_admissible_class (A : CeramicAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsCeramicMaterialsTheoremCanonicalLaneLean
end HautevilleHouse