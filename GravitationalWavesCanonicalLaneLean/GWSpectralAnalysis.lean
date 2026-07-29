import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure GravitationalWaveSpectralAnalysis where
  powerSpectralDensity : Prop
  frequencyPeak : Prop
  inspiralMergerRingdown : Prop
  parameterEstimation : Prop

structure SpectralEvidence (S : GravitationalWaveSpectralAnalysis) where
  powerSpectralDensityClosed : S.powerSpectralDensity
  frequencyPeakClosed : S.frequencyPeak
  inspiralMergerRingdownClosed : S.inspiralMergerRingdown
  parameterEstimationClosed : S.parameterEstimation

def SpectralClosed (S : GravitationalWaveSpectralAnalysis) : Prop :=
  S.powerSpectralDensity ∧ S.frequencyPeak ∧ S.inspiralMergerRingdown ∧ S.parameterEstimation

theorem spectral_closed_from_evidence (S : GravitationalWaveSpectralAnalysis) (E : SpectralEvidence S) : SpectralClosed S := by
  exact And.intro E.powerSpectralDensityClosed (And.intro E.frequencyPeakClosed (And.intro E.inspiralMergerRingdownClosed E.parameterEstimationClosed))

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse