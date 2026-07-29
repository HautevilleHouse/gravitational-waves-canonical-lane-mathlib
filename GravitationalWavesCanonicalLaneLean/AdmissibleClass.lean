import GravitationalWavesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure AdmissibleClass where
  object : GravitationalWaveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GravitationalWaveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse
