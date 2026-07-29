import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure CompactBinarySource where
  massOne : ℝ
  massTwo : ℝ
  orbitalFrequency : ℝ
  chirpMass : ℝ
  energyFlux : ℝ
  orbitalDecay : Prop
  chirpMassClosed : chirpMass = ((massOne * massTwo)^(3/5 : ℝ) / (massOne + massTwo)^(1/5 : ℝ))

structure GravitationalWaveSource (S : CompactBinarySource) where
  inspiralPhase : ℝ
  postNewtonianOrder : ℕ
  waveformAmplitude : Prop
  energyFluxClosed : S.energyFlux = (32/5) * S.chirpMass^(10/3 : ℝ) * S.orbitalFrequency^(2/3 : ℝ)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse