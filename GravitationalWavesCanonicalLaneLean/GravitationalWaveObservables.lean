import canonicalLaneMathlib.AdmissibleClass

/-!
# Gravitational Wave Observables Package
-/

namespace HautevilleHouse
namespace GravitationalWavesCanonicalLaneLean

structure GravitationalWaveObservables where
  strainAmplitude : Type u
  frequency : Type v
  polarization : Type w
  waveformModeled : Prop
  matchedFilteringApplied : Prop
  detectionSignificanceCalculated : Prop

structure GravitationalWaveObservablesEvidence (O : GravitationalWaveObservables) where
  waveformModeledClosed : O.waveformModeled
  matchedFilteringAppliedClosed : O.matchedFilteringApplied
  detectionSignificanceCalculatedClosed : O.detectionSignificanceCalculated

def GravitationalWaveObservablesClosed (O : GravitationalWaveObservables) : Prop :=
  O.waveformModeled ∧ O.matchedFilteringApplied ∧ O.detectionSignificanceCalculated

theorem gravitational_wave_observables_closed_from_evidence
    (O : GravitationalWaveObservables) (E : GravitationalWaveObservablesEvidence O) :
    GravitationalWaveObservablesClosed O := by
  exact And.intro E.waveformModeledClosed
    (And.intro E.matchedFilteringAppliedClosed E.detectionSignificanceCalculatedClosed)

end GravitationalWavesCanonicalLaneLean
end HautevilleHouse