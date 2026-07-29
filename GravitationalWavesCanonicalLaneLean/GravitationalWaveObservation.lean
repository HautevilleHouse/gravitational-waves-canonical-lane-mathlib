import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure Interferometer where
  armLength : ℝ
  laserPower : ℝ
  strainSensitivity : ℝ
  noiseFloor : ℝ

def InterferometerSensitivity (I : Interferometer) : Prop :=
  I.strainSensitivity = 10^(-23 : ℤ) / sqrt (I.armLength) * 10^(-21 : ℤ)

structure DetectorEvent (I : Interferometer) where
  signalToNoiseRatio : ℝ
  matchedFilterOutput : ℝ
  pseudoLikelihood : ℝ
  detectionSignificance : ℝ
  significant : detectionSignificance > 5.0

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse