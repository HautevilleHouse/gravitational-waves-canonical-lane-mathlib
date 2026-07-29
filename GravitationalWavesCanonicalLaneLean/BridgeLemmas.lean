import GravitationalWavesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GravitationalWaveWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse
